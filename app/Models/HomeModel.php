<?php
namespace App\Models;
use CodeIgniter\Model;

class HomeModel extends Model{

    public function getLoggedInIndustrialFramerData($idUser)
   {
       $this->db=\Config\Database::connect();
       $builder=$this->db->table('enc_industriel');
       $builder->where('id_enc', $idUser);
       $result= $builder->get();
      if(count($result->getResultArray())==1)
      {
          return $result->getRowObject();
      }
      else{
          return false;
      }
   }

   public function getLoggedInSchoolFramerData($idUser)
   {
       $this->db=\Config\Database::connect();
       $builder=$this->db->table('comptes');
       $builder->where('id_compte', $idUser);
       $builder->join('personnels', 'personnels.id_personnel=comptes.personnel_id');
       $result= $builder->get();
      if(count($result->getResultArray())==1)
      {
          return $result->getRowObject();
      }
      else{
          return false;
      }
   }
   
   public function getLoggedInStudentData($idUser)
   {
       $this->db=\Config\Database::connect();
       $builder=$this->db->table('etudiants');
       $builder->where('id_etudiant', $idUser);
       $result= $builder->get();
      if(count($result->getResultArray())==1)
      {
          return $result->getRowObject();
      }
      else{
          return false;
      }
   }
  
   
    public function getAllAcceptedFolders()
    {
        $this->db=\Config\Database::connect();
        $builder=$this->db->table('dossier_stage');
        $builder->select('*');
        $builder->join('enc_industriel', 'enc_industriel.id_enc=dossier_stage.encadreur_industriel');
        $builder->where('statut_demande', 1);
        $builder->where('statut_email', 0);
        $result= $builder->get();
       if(count($result->getResultArray())>=1)
       {
           return $result->getResultArray();
       }
       else{
           return false;
       }
    }

    public function updateStatutEmail($id)
    {
        $this->db=\Config\Database::connect();
        $builder=$this->db->table('dossier_stage');
        $builder->where('id_dossier_stage',$id);
        $builder->update(['statut_email'=>1] );

        if($this->db->affectedRows()==1)
        {
            return true;
        }
        else
        {
            return false;
        }
    }


    public function getAllStudents()
    {
        $this->db=\Config\Database::connect();
        $builder=$this->db->table('etudiants');
        $builder->select('*');
        $result= $builder->get();
       if(count($result->getResultArray())>=1)
       {
           return $result->getResultArray();
       }
       else{
           return false;
       }
    }

    public function updatePasswordStudent($matricule, $password)
    {
        $this->db=\Config\Database::connect();
        $builder=$this->db->table('etudiants');
        $builder->where('matricule',$matricule);
        $builder->update(['password'=>$password] );

        if($this->db->affectedRows()==1)
        {
            return true;
        }
        else
        {
            return false;
        }
    }

    public function verifyEmailExist($email)
   {
       $this->db=\Config\Database::connect();
       $builder=$this->db->table('dossier_stage');
       $builder->select('*');
       $builder->join('enc_industriel', 'enc_industriel.id_enc=dossier_stage.encadreur_industriel');
       $builder->where('enc_industriel.email', $email);
       $builder->where('statut_demande', 1);
        $builder->where('statut_email', 1);
       $result= $builder->get();
      if(count($result->getResultArray())==1)
      {
          return $result->getRowArray();
      }
      else{
          return false;
      }
   }

   public function updatePasswordEncadreur($id, $password)
   {
       $this->db=\Config\Database::connect();
       $builder=$this->db->table('enc_industriel');
       $builder->where('id_enc',$id);
       $builder->update(['password'=>$password] );

       if($this->db->affectedRows()==1)
       {
           return true;
       }
       else
       {
           return false;
       }
   }

   public function editPasswordIndustrialFramer($idUsers, $pass)
   {
       $this->db=\Config\Database::connect();
       $builder=$this->db->table('enc_industriel');
       $builder->where('id_enc', $idUsers);
       $builder->update(['password'=>$pass]);
       if($this->db->affectedRows()==1)
       {
         return true;
       }
       else{
         return false;
       }
   }
   public function editPasswordSchoolFramer($idUsers, $pass)
   {
       $this->db=\Config\Database::connect();
       $builder=$this->db->table('comptes');
       $builder->where('id_compte', $idUsers);
       $builder->update(['pass'=>$pass]);
       if($this->db->affectedRows()==1)
       {
         return true;
       }
       else{
         return false;
       }
   }

   public function editPasswordStudent($idUsers, $pass)
   {
       $this->db=\Config\Database::connect();
       $builder=$this->db->table('etudiants');
       $builder->where('id_etudiant', $idUsers);
       $builder->update(['password'=>$pass]);
       if($this->db->affectedRows()==1)
       {
         return true;
       }
       else{
         return false;
       }
   }


   public function getVerificationTasksNotificationIndustrialFramer($id)
    {
        $this->db=\Config\Database::connect();
        $builder=$this->db->table('taches');
        $builder->select('*');
        $builder->join('dossiers', 'dossiers.id_dossier=taches.id_dossier_stage');
        $builder->join('etudiants', 'dossiers.etudiant_id=etudiants.id_etudiant');


        $builder->where('etat', 2);
        $builder->where('id_enc', $id);
        $builder->where('notification', 0);
        $result= $builder->get();
       if(count($result->getResultArray())>=1)
       {
           return $result->getResultArray();
       }
       else{
           return false;
       }
    }

    public function updateNotif($id)
    {
        $this->db=\Config\Database::connect();
        $builder=$this->db->table('taches');
        $builder->where('id_tache', $id);
        $builder->update(['notification'=>1]);
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