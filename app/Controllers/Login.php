<?php

namespace App\Controllers;

use App\Models\LoginModel;

class Login extends BaseController
{
    public $loginModel;
    public $session;
    public $adminModel;
    public $validation;
    public function __construct()
    {
        helper('form');
        helper('Form_helper');
        $this->validation = \Config\Services::validation();
        $this->loginModel = new LoginModel();
    }

    public function index()
    {
        return view('login_view');
    }
    public function loginSchoolFramer()
    {
        return view('login_framer_school_view');
    }

    public function loginStudent()
    {
        return view('login_student_view');
    }

    /** 
     * Connecter un encadreur industriel 
     */
    public function logIndustrialFramer()
    {
        $data = [];
        $data['validation'] = null;
        $this->validate([
            'email' => [
                'rules' => 'required',
                'errors' => [
                    'required' => "Adresse email est requise",

                ],
            ],
     
            'password' => [
                'rules' => 'required',
                'errors' => [
                    'required' => "Mot de passe est requis",
                ],
            ],
        ]);
        $email = $this->request->getVar('email', FILTER_SANITIZE_EMAIL);
        $password = $this->request->getVar('password');
        $pseudo = $this->request->getVar('pseudo');
        /**
         * Etudiant = 1
         * Encadreur école = 2
         * Encadreur industriel = 3
         */
        $role = $this->request->getVar('role');

        if ($this->validation->run() == FALSE) {
            $errors = $this->validation->getErrors();
            return json_encode(['code' => 0, 'error' => $errors]);
        } else {






            $status = $this->loginModel->verifyEmail($email);
            if ($status) {
                if (password_verify($password, $status['password'])) {
                    /**
                     * Définie une session loggedUser avec l'id de l'encadreur
                     * Cette session va nous permettre de savoir qui est connecté
                     * et de rédiriger ceux qui voudraient accéder à l'accueil
                     * sans s'être connectés
                     */
                    session()->set('loggedUser', $status['id_enc']);
                    return json_encode(['code' => 1, 'msg' => 'Bienvenue ']);
                    // return redirect()->to(base_url().'/public/accueil');


                } else {
                    return json_encode(['code' => 0, 'msg' => 'Mot de passe incorrect']);

                    // session()->setTempdata('error', 'Mot de passe incorrect', 3);
                }
            } else {
                // session()->setTempdata('error', 'Email inconnu', 3);
                return json_encode(['code' => 0, 'msg' => 'Adresse email incorrecte']);
            }
        }
    }

    /** 
     * Connecter un encadreur école 
     */
    public function logSchoolFramer()
    {
        $data = [];
        $data['validation'] = null;
        $this->validate([
            
            'pseudo' => [
                'rules' => 'required',
                'errors' => [
                    'required' => "Pseudo est requis",

                ],
            ],
            'password' => [
                'rules' => 'required',
                'errors' => [
                    'required' => "Mot de passe est requis",
                ],
            ],
        ]);
        $password = $this->request->getVar('password');
        $pseudo = $this->request->getVar('pseudo');
        /**
         * Etudiant = 1
         * Encadreur école = 2
         * Encadreur industriel = 3
         */
        $role = $this->request->getVar('role');

        if ($this->validation->run() == FALSE) {
            $errors = $this->validation->getErrors();
            return json_encode(['code' => 0, 'error' => $errors]);
        } else {






            $status = $this->loginModel->verifyEmailSchoolFramer($pseudo);
            if ($status) {
                if (password_verify($password, $status['pass'])) {
                    /**
                     * Définie une session loggedUser avec l'id de l'encadreur
                     * Cette session va nous permettre de savoir qui est connecté
                     * et de rédiriger ceux qui voudraient accéder à l'accueil
                     * sans s'être connectés
                     */
                    session()->set('loggedUser', $status['id_compte']);
                    return json_encode(['code' => 1, 'msg' => 'Bienvenue ']);
                    // return redirect()->to(base_url().'/public/accueil');


                } else {
                    return json_encode(['code' => 0, 'msg' => 'Mot de passe incorrect']);

                    // session()->setTempdata('error', 'Mot de passe incorrect', 3);
                }
            } else {
                // session()->setTempdata('error', 'Email inconnu', 3);
                return json_encode(['code' => 0, 'msg' => 'Pseudo incorrect']);
            }
        }
    }
}
