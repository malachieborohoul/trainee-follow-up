<?php
namespace App\Models;
use CodeIgniter\Model;

class FrameModel extends Model{

  public function getTest($id)
  {
    $builder=$this->db->table('etudiants');
    $builder->select('*');

    $builder->where('id_etudiant', $id);

    $result=$builder->get();
    return $result->getResultArray();
  }

  public function getAllFramedStudentsIndustrialFrame($id)
  {
    $builder=$this->db->table('dossier_stage');
    $builder->select('*');
    // $builder->orderBy('id_tache', 'DESC');
    $builder->join('dossiers', 'dossiers.id_dossier=dossier_stage.dossier_id');
    $builder->join('etudiants', 'dossiers.etudiant_id=etudiants.id_etudiant');
    $builder->where('dossier_stage.encadreur_industriel', $id);

    $result=$builder->get();
    return $result->getResultArray();
  }

  
    public function getAllTasks($id)
    {
      $builder=$this->db->table('taches');
      $builder->select('*');
      $builder->orderBy('id_tache', 'DESC');
      $builder->join('dossiers', 'dossiers.id_dossier=taches.id_dossier_stage');
      $builder->where('dossiers.etudiant_id', $id);

      $result=$builder->get();
      return $result->getResultArray();
    }

   

    public function updateEtatToInProgress($id)
    {
      $builder=$this->db->table('taches');
      $builder->where('id_tache', $id);
      $builder->update(['etat'=>1]);
      if($this->db->affectedRows()==1)
      {
        return true;
      }
      else
      {
        return false;
      }
    }

    public function updateEtatToCancel($id)
    {
      $builder=$this->db->table('taches');
      $builder->where('id_tache', $id);
      $builder->update(['etat'=>0]);
      if($this->db->affectedRows()==1)
      {
        return true;
      }
      else
      {
        return false;
      }
    }

    public function fetchInProgressTask($id)
   {
       $this->db=\Config\Database::connect();
       $builder=$this->db->table('taches');
       $builder->select('*');
       $builder->join('dossiers', 'dossiers.id_dossier=taches.id_dossier_stage');
       $builder->where('etat', 1);
       $builder->where('dossiers.etudiant_id', $id);
       $result= $builder->get();
      if(count($result->getResultArray())==1)
      {
          return $result->getRowArray();
      }
      else{
          return false;
      }
   }
   public function updatePhotoProfile($id, $path, $idTask)
   {

     $builder=$this->db->table('taches');
     $builder->select('*');
     $builder->join('dossiers', 'dossiers.id_dossier=taches.id_dossier_stage');
     $builder->where('id_tache', $idTask);
     $builder->where('id_dossier_stage', $id);
    
     $builder->update(['doc'=>$path]);
     if($this->db->affectedRows()==1)
     {
       return true;
     }
     else{
       return false;
     }
     
   }


   public function checkTaskFileSubmitted($id, $idTask)
   {

     $builder=$this->db->table('taches');
     $builder->select('*');
    //  $builder->join('dossiers', 'dossiers.id_dossier=taches.id_dossier_stage');
     $builder->where('id_tache', $idTask);
     $builder->where('id_dossier_stage', $id);
    
     $result= $builder->get();
     if(count($result->getResultArray())==1)
     {
         return $result->getRowArray();
     }
     else{
         return false;
     }
     
   }


   public function updateEtatToCompleted($id)
   {
     $builder=$this->db->table('taches');
     $builder->where('id_tache', $id);
     $builder->update(['etat'=>2]);
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