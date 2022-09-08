<?php
namespace App\Models;
use CodeIgniter\Model;

class LoginModel extends Model{
  
   public function verifyEmail($email)
   {
       $this->db=\Config\Database::connect();
       $builder=$this->db->table('enc_industriel');
       $builder->select('*');
       $builder->where('email', $email);
       $result= $builder->get();
      if(count($result->getResultArray())==1)
      {
          return $result->getRowArray();
      }
      else{
          return false;
      }
   }

   public function verifyEmailSchoolFramer($pseudo)
   {
       $this->db=\Config\Database::connect();
       $builder=$this->db->table('comptes');
       $builder->select('*');
       $builder->where('speudo', $pseudo);
       $result= $builder->get();
      if(count($result->getResultArray())==1)
      {
          return $result->getRowArray();
      }
      else{
          return false;
      }
   }


   

   public function verifyMatricule($matricule)
   {
       $this->db=\Config\Database::connect();
       $builder=$this->db->table('etudiants');
       $builder->select('*');
       $builder->where('matricule', $matricule);
       $result= $builder->get();
      if(count($result->getResultArray())==1)
      {
          return $result->getRowArray();
      }
      else{
          return false;
      }
   }


}
?>