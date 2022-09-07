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
		$this->validation=\Config\Services::validation();
		$this->loginModel=new LoginModel();
	}

    public function index()
    {
        return view('login_view');
    }

	public function login()
	{
		$data=[];
		$data['validation']=null;
		$this->validate([
			'email'=>[
				'rules'=> 'required',
				'errors'=>[
					'required'=>"Adresse email est requise",
				
				],
			],
			'password'=>[
				'rules'=> 'required',
				'errors'=>[
					'required'=>"Mot de passe est requis",
				],
			],
		]);

		if($this->validation->run() == FALSE)
		{
			$errors=$this->validation->getErrors();
			return json_encode(['code'=>0,'error'=>$errors]);
		}else
		{
		
				$email=$this->request->getVar('email', FILTER_SANITIZE_EMAIL);
				$password=$this->request->getVar('password');

				
				
				$status=$this->loginModel->verifyEmail($email);
				if($status)
				{
					if(password_verify($password, $status['password']))
					{
                                /**
                                 * Définie une session loggedUser avec l'id de l'encadreur
                                 * Cette session va nous permettre de savoir qui est connecté
                                 * et de rédiriger ceux qui voudraient accéder à l'accueil
                                 * sans s'être connectés
                                 */
								session()->set('loggedUser', $status['id_enc']);
								return json_encode(['code'=>1, 'msg'=>'Bienvenue ']);
								// return redirect()->to(base_url().'/public/accueil');
						
						
					}
					else
					{
						return json_encode(['code'=>0, 'msg'=>'Mot de passe incorrect']);

						// session()->setTempdata('error', 'Mot de passe incorrect', 3);
					}
				}else
				{
					// session()->setTempdata('error', 'Email inconnu', 3);
					return json_encode(['code'=>0, 'msg'=>'Adresse email incorrecte']);


				}
		
		}

		
		
	}		
}
