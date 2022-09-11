<?php

namespace App\Controllers;

use App\Models\TaskModel;

class Task extends BaseController
{
    //On définie une variable qui va nous permettre d'acceder au model
    public $taskModel;


    public function __construct()
    {
        helper('form');
        helper('Form_helper');

        // On instancie en créant un objet de type taskModel
        $this->taskModel = new TaskModel();

    }

   /**
	 * Récupère toutes les tâches 
	 *
	 * @return void
	 */
	public function getAllTasks()
	{
        $count = 0;
		$tasks =$this->taskModel->getAllTasks();
		$data['tasks'] =$this->taskModel->getAllTasks();

        /**
         * La logique d'affichage du dropdown des action est telle que qu'on récupère
         * d'abord toutes les tâches puis on vérifie une par une si le statur est différent de 0
         * Or le statut= 0 signifie que le tâche est en attente, 1 pour 1 pour en cours et 2 pour terminer
         * Ainsi on utilise un compteur count pour compter le nombre d'ocurrence possibles quand statut != 0
         * 
         * 
         * 
         */
        foreach($tasks as $task){
            if($task['statut'] != 0)
                $count += 1;
            
        }

        $data['visibility']=$count;

		echo json_encode($data);
	}

    	/**
	 * Elle permet de modifier le statut de la tache de 0 qui signifie en attente
     * à 1 qui signifie en cours
     * 0 -> En Attente
     * 1 -> En Cours
	 *
	 * @return void
	 */
	public function updateStatutToInProgress()
	{
		$taskId = $this->request->getPost('taskId');

		$this->taskModel->updateStatutToInProgress($taskId);
	}


    	/**
	 * Elle permet de modifier le statut de la tache à 0
	 *
	 * @return void
	 */
	public function updateStatutToCancel()
	{
		$taskId = $this->request->getPost('taskId');

		$this->taskModel->updateStatutToCancel($taskId);
	}

    
}
