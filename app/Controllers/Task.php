<?php

namespace App\Controllers;

use App\Models\TaskModel;
use DateTime;
use LengthException;

use function PHPUnit\Framework\isEmpty;

class Task extends BaseController
{
	//On définie une variable qui va nous permettre d'acceder au model
	public $taskModel;
	public $validation;



	public function __construct()
	{
		helper('form');
		helper('Form_helper');

		// On instancie en créant un objet de type taskModel
		$this->taskModel = new TaskModel();

		$this->validation = \Config\Services::validation();
	}

	/**
	 * Récupère toutes les tâches 
	 *
	 * @return void
	 */
	public function getAllTasks()
	{
		$count = 0;
		// $priorite=0;
		$date = new DateTime("00-00-00 00:00:00");



		// $d1=new DateTime("2022-10-16 21:53:16");
		// $d2=new DateTime("2022-10-16 22:05:36");

		// var_dump($d1==$d2);
		// var_dump($d1<$d2);
		// var_dump($d1>$d2);
		// die;



		/**
		 * Rechercher toutes les taches en fonction de l'id de l'étudiant
		 */
		$id = $this->request->getVar('id');


		$tasks = $this->taskModel->getAllTasks($id);
		$data['tasks'] = $this->taskModel->getAllTasks($id);
		$priorite = $tasks[0]['priorite'];
		$idTache = $tasks[0]['id_tache'];

		/**
		 * La logique d'affichage du dropdown des action est telle que qu'on récupère
		 * d'abord toutes les tâches puis on vérifie une par une si le statur est différent de 0
		 * Or le statut= 0 signifie que le tâche est en attente, 1 pour 1 pour en cours et 2 pour terminer
		 * Ainsi on utilise un compteur count pour compter le nombre d'ocurrence possibles quand statut != 0
		 * 
		 * 
		 * 
		 */

		foreach ($tasks as $task) {

			//Renvoie l'id de la tâche dont la priorité est la plus élevée et dont la tache n'est pas terminée
			if ($task['priorite'] < $priorite && $task['etat'] != 3) {
				$priorite = $task['priorite'];
				$idTache = $task['id_tache'];
			}





			if ($task['etat'] == 1 || $task['etat'] == 2) {
				session()->set('currentTask', $task['id_tache']);

				$count += 1;
			}


			//Vérifie toutes tache par anciennété de
			// if(new DateTime($task['date_soumission'])>$date){
			// 	$date =new DateTime($task['date_soumission']);
			// }


		}



		$data['visibility'] = $count;
		$data['priorite'] = $priorite;
		$data['date'] = $date;
		$data['idTache'] = $idTache;

		echo json_encode($data);
	}

	/**
	 * Elle permet de modifier l'état de la tache de 0 qui signifie en attente
	 * à 1 qui signifie en cours
	 * 0 -> En Attente
	 * 1 -> En Cours
	 *
	 * @return void
	 */
	public function updateEtatToInProgress()
	{
		$taskId = $this->request->getPost('taskId');

		$status = $this->taskModel->updateEtatToInProgress($taskId);
		if ($status) {
			//Définir une session pour récupérer la tache courante
			session()->set('currentTask', $taskId);
		} else {
			session()->remove('currentTask');
		}
	}


	/**
	 * Elle permet de modifier le statut de la tache à 0
	 *
	 * @return void
	 */
	public function updateEtatToCancel()
	{
		$taskId = $this->request->getPost('taskId');

		$status = $this->taskModel->updateEtatToCancel($taskId);
		if ($status) {
			session()->remove('currentTask');
		} else {
			session()->set('currentTask', $taskId);
		}
	}

	/**
	 * Elle permet de modifier le statut de la tache à 2 
	 * Avant de valider si une tâche est terminée, l'étudiant devrait au préalable
	 * avoir soumis un fichier dans le cas contraire le statut ne sera pas modifié
	 *
	 * @return void
	 */
	public function updateEtatToCompleted()
	{
		$taskId = $this->request->getPost('taskId');

		$task = $this->taskModel->checkTaskFileSubmitted(session()->get('loggedUser'), session()->get('currentTask'));

		if ($task['doc'] == "") {

			echo json_encode(['code' => 0, 'msg' => "Vous n'avez soumis aucun fichier ! Veuillez compléter la procedure! "]);
		} else {
			$status = $this->taskModel->updateEtatToCompleted($taskId);
			if ($status) {
				//Définir une session pour récupérer la tache courante
				session()->set('currentTask', $taskId);
			} else {
				session()->remove('currentTask');
			}
		}
	}

	
	/**
	 * Elle permet de modifier le statut de la tache à 3 
	 * M'encadreur valide la tache
	 * @return void
	 */
	public function updateEtatTaskValidated()
	{
		$taskId = $this->request->getPost('taskId');

		
			$status = $this->taskModel->updateEtatTaskValidated($taskId);
			if ($status) {
				//Définir une session pour récupérer la tache courante
				session()->remove('currentTask');
			} 
	}




	/**
	 * Rechercher s'il y a une tâche en cours => id_tache = 1
	 * Une seule tâche peut être en cours
	 *
	 * @return void
	 */
	public function fetchInProgressTask()
	{
		$id = $this->request->getVar('id');


		$data['task'] = $this->taskModel->fetchInProgressTask($id);

		echo json_encode($data);
	}

	public function uploadFile()
	{
		return view('upload_file_view');
	}

	/**
	 * Modifie la photo de profile
	 *
	 * @return void
	 */
	public function editTaskFile()
	{

		$this->validate([
			'file' =>
			[


				'rules' => 'uploaded[file]|ext_in[file,pdf, docx]',
				'errors' => [
					'uploaded' => 'Veuillez ajouter votre fichier',
					'ext_in' => 'Fichier doit être en pdf ou docx'
				],
			],
		]);
		if ($this->validation->run() == FALSE) {
			$errors = $this->validation->getErrors();
			echo json_encode(['error' => $errors]);
		} else {
			$oldPath = $this->request->getVar('path');
			$file = $this->request->getFile('file');
			if ($file->isValid() && !$file->hasMoved()) {
				if ($file->move(FCPATH . 'importer/taches', $file->getRandomName())) {
					$path = base_url() . "/importer/taches/" . $file->getName();
					if ($this->taskModel->updatePhotoProfile(session()->get('loggedUser'), $path, session()->get('currentTask'))) {
						if ($this->taskModel->updatePhotoProfile(session()->get('loggedUser'), $path, session()->get('currentTask')) == 0) {
							echo json_encode(['code' => 1, 'msg' => 'Document tâche importé avec succès']);
						} else {
							$uri = new \CodeIgniter\HTTP\URI($oldPath);
							unlink(FCPATH . $uri->getSegment(3) . '/' . $uri->getSegment(4) . '/' . $uri->getSegment(5));
							echo json_encode(['code' => 1, 'msg' => 'Document tâche importé avec succès']);
						}
					} else {
						echo json_encode(['code' => 0, 'msg' => 'Une erreur est survenue...']);
					}
				} else {
					echo json_encode(['code' => 0, 'msg' => 'Une erreur est survenue...']);
				}
			} else {
				echo json_encode(['code' => 0, 'msg' => 'Une erreur est survenue...']);
			}
		}
	}


	/**
	 * Elle permet de vérifier si un fichier a été soumis pour une tâche en particulier
	 *
	 * @return void
	 */
	public function checkTaskFileSubmitted()
	{
		if (!session()->has('currentTask')) {
			echo json_encode(['code' => 0, 'msg' => "Aucune tâche n'a été selectionnée"]);
		} else {
			$task = $this->taskModel->checkTaskFileSubmitted(session()->get('loggedUser'), session()->get('currentTask'));

			if ($task['doc'] == "") {
				echo json_encode(['code' => 2, 'msg' => "Veuillez télécharger le fichier ! "]);
			} else {
				echo json_encode([
					'code' => 1, 
					'msg' => "Voulez avez déjà téléchargé un  fichier ",
					// 'file'=> $task
				],);
			}
		}
	}

	
	/**
	 * Elle permet de vérifier si un fichier a été soumis pour une tâche en particulier
	 *
	 * @return void
	 */
	public function checkTaskFileSubmittedFramer()
	{
		if (!session()->has('currentTask')) {
			echo json_encode(['code' => 0, 'msg' => "Aucune document n'a été soumis"]);
		} else {
			$task = $this->taskModel->checkTaskFileSubmittedFramer( session()->get('currentTask'));

			if ($task['doc'] == "") {
				echo json_encode(['code' => 2, 'msg' => "Aucune document n'a été soumis! "]);
			} else {
				echo json_encode([
					'code' => 1, 
					'msg' => "Voulez avez déjà téléchargé un  fichier ",
					'file'=> $task
				],);
			}
		}
	}

	


	/**
	 * Ajouter un commentaire
	 *
	 * @return void
	 */
	public function commenter()
	{
		$this->validate([
			'message' => [
				'rules' => 'required',
				'errors' => [
					'required' => 'Vous devez remplir le champs',
				],
			],
		]);

		if ($this->validation->run() == FALSE) {
			$errors = $this->validation->getErrors();
			echo json_encode(['error' => $errors]);
		} else {

			// $idBlog = $this->request->getVar('idBlog');

			if (session()->get('loggedUserRole') == 1) {
				$dat = [
					'commentaire' => $this->request->getVar('message'),
					'id_etudiant' => session()->get('loggedUser'),
					'id_tache' => session()->get('currentTask')
				];
				if ($this->taskModel->ajouterCommentaireEtudiant($dat)) {
					/**
					 * Cela va nous permettre de classer les articles populaires en fonction des commentaires
					 */
					// $nbrCom = $this->blogModel->getNombreAllComments($idBlog);
					// $this->blogModel->incrementerNbrComment($nbrCom, $idBlog);
					echo json_encode(['code' => 1, 'msg' => 'Commentaire ajouté']);
				} else {
					echo json_encode(['code' => 0, 'msg' => 'Une erreur est survenue...']);
				}
			} else if (session()->get('loggedUserRole') == 2) {
				$dat = [
					'commentaire' => $this->request->getVar('message'),
					'id_enc' => session()->get('loggedUser'),
					'id_tache' => session()->get('currentTask')
				];
				if ($this->taskModel->ajouterCommentairePersonnel($dat)) {
					/**
					 * Cela va nous permettre de classer les articles populaires en fonction des commentaires
					 */
					// $nbrCom = $this->blogModel->getNombreAllComments($idBlog);
					// $this->blogModel->incrementerNbrComment($nbrCom, $idBlog);
					echo json_encode(['code' => 1, 'msg' => 'Commentaire ajouté']);
				} else {
					echo json_encode(['code' => 0, 'msg' => 'Une erreur est survenue...']);
				}
			} else if (session()->get('loggedUserRole') == 3) {
				$dat = [
					'commentaire' => $this->request->getVar('message'),
					'id_enc' => session()->get('loggedUser'),
					'id_tache' => session()->get('currentTask')
				];
				if ($this->taskModel->ajouterCommentaireIndustriel($dat)) {
					/**
					 * Cela va nous permettre de classer les articles populaires en fonction des commentaires
					 */
					// $nbrCom = $this->blogModel->getNombreAllComments($idBlog);
					// $this->blogModel->incrementerNbrComment($nbrCom, $idBlog);
					echo json_encode(['code' => 1, 'msg' => 'Commentaire ajouté']);
				} else {
					echo json_encode(['code' => 0, 'msg' => 'Une erreur est survenue...']);
				}
			}
		}
	}


	/**
	 * Récupérer tous les commentaires
	 *
	 * @return void
	 */
	public function getAllComments()
	{
		$id_tache = session()->get('currentTask');

		// if(session()->get('loggedUserRole') == 1){
		// 	$data['comment']=$this->taskModel->getAllCommentsEtudiant($id_tache,session()->get('loggedUser'));
		// }else if(session()->get('loggedUserRole') == 2){
		// 	$data['comment']=$this->taskModel->getAllCommentsPersonnel($id_tache,session()->get('loggedUser'));

		// }else if(session()->get('loggedUserRole') == 3){
		// 	$data['comment']=$this->taskModel->getAllCommentsIndustriel($id_tache,session()->get('loggedUser'));

		// }
		$data['comment'] = $this->taskModel->getAllComments($id_tache);


		// $this->blogModel->initialiserVuReponse();

		echo json_encode($data);
	}

	/**
	 * Supprime un commentaire à partir de son id
	 *
	 * @return void
	 */
	public function deleteComment()
	{
		$commentaireId = $this->request->getPost('id');
		$data['res'] = $this->taskModel->deleteComment($commentaireId);
		echo json_encode($data);
	}

	public function discussion()
	{
		return view('discussion_view');
	}
}
