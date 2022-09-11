<?php
namespace App\Models;
use CodeIgniter\Model;

class TaskModel extends Model{
  
    public function getAllTasks()
    {
      $builder=$this->db->table('taches');
      $builder->orderBy('id_tache', 'DESC');
      $result=$builder->get();
      return $result->getResultArray();
    }

   

    public function updateStatutToInProgress($id)
    {
      $builder=$this->db->table('taches');
      $builder->where('id_tache', $id);
      $builder->update(['statut'=>1]);
      if($this->db->affectedRows()==1)
      {
        return true;
      }
      else
      {
        return false;
      }
    }

    public function updateStatutToCancel($id)
    {
      $builder=$this->db->table('taches');
      $builder->where('id_tache', $id);
      $builder->update(['statut'=>0]);
      if($this->db->affectedRows()==1)
      {
        return true;
      }
      else
      {
        return false;
      }
    }


  


}
?>