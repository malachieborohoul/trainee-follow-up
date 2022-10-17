<?php

namespace App\Controllers;

use App\Models\FrameModel;

use function PHPUnit\Framework\isEmpty;

class Frame extends BaseController
{
	//On définie une variable qui va nous permettre d'acceder au model
	public $taskModel;
	public $validation;



	public function __construct()
	{
		helper('form');
		helper('Form_helper');

		// On instancie en créant un objet de type taskModel
		$this->frameModel = new FrameModel();

		$this->validation = \Config\Services::validation();
	}

	/**
	 * Récupère toutes les tâches 
	 *
	 * @return void
	 */
	public function getAllFramedStudents()
	{
		$count = 0;
		/**
		 * Rechercher toutes les taches en fonction de l'id de l'étudiant
		 */
		$id = $this->request->getVar('id');
		$id_role = $this->request->getVar('id_role');
		if ($id_role == 2) {
		} else if ($id_role == 3) {
			$students = $this->frameModel->getAllFramedStudentsIndustrialFrame($id);
			$data['students']= $this->frameModel->getAllFramedStudentsIndustrialFrame($id);
			// $data['students'] = $this->taskModel->getAllTasks($id);
		}

		// $tasks = $this->taskModel->getAllFramedStudents($id);
		// $data['students'] = $this->taskModel->getAllTasks($id);

		/**
		 * La logique d'affichage du dropdown des action est telle que qu'on récupère
		 * d'abord toutes les tâches puis on vérifie une par une si le statur est différent de 0
		 * Or le statut= 0 signifie que le tâche est en attente, 1 pour 1 pour en cours et 2 pour terminer
		 * Ainsi on utilise un compteur count pour compter le nombre d'ocurrence possibles quand statut != 0
		 * 
		 * 
		 * 
		 */
		// foreach ($tasks as $task) {
		// 	if ($task['etat'] == 1)
		// 		$count += 1;
		// }

		// $data['visibility'] = $count;

		echo json_encode($data);
	}

	public function getTest()
	{
		$id = $this->request->getVar('id');


		$data['test'] = $this->frameModel->getTest($id);

		echo json_encode($data);
	}

	/**
	 * Récupère toutes les tâches 
	 *
	 * @return void
	 */
	public function internship_board($id_student)
	{
		$data['id_student']=$id_student;

        return view('internship_board_view', $data);
		
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
				session()->remove('currentTask');
				echo json_encode(['code' => 1, 'msg' => "Vous avez terminé la tâche avec succès "]);
			} else {
				session()->set('currentTask', $taskId);
				echo json_encode(['code' => 0, 'msg' => "Une erreur est survenue "]);
			}
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
				echo json_encode(['code' => 1, 'msg' => "Voulez avez déjà téléchargé un  fichier "]);
			}
		}
	}


	
	/**
	 * Permet l'ajout d'une tâche 
	 *
	 * @return void
	 */
	public function insertTask()
	{
		$this->validate([
			'tache' => [
				'rules' => 'required',
				'errors' => [
					'required' => "Veuillez remplir le champ",

				],
			],

			'dateLimite' => [
				'rules' => 'required',
				'errors' => [
					'required' => "Veuillez choisir une date ",

				],
			],

		]);

		if ($this->validation->run() == FALSE) {
			$errors = $this->validation->getErrors();
			$data = [
				'code' => 0,
				'error' => $errors,
			];
			echo json_encode($data);
		} else {
			$idUsers = session()->get('loggedUser');

			$dat = [
				'tache' => $this->request->getPost('tache'),
				'id_dossier_stage' => $this->request->getPost('etudiant'),
				'date_limite' => $this->request->getPost('dateLimite'),
				'priorite' => $this->request->getPost('priorite'),

				'id_enc' => $idUsers,
			];
			if ($this->frameModel->insertTask($dat)) {
				$data = ['code' => 1, 'msg' => 'Tâche ajoutée'];
				echo json_encode($data);
			} else {
				$data = ['code' => 0, 'msg' => 'Une erreur est survenue'];
				echo json_encode($data);
			}
		}
	}

}
