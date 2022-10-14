<?php

namespace App\Controllers;

use App\Models\FrameModel;
use App\Models\HomeModel;
use App\Models\TaskModel;

class Home extends BaseController
{
    //On définie une variable qui va nous permettre d'acceder au model
    public $homeModel;
    public $email;


    public function __construct()
    {
        helper('form');
        helper('Form_helper');

        // On instancie en créant un objet de type HomeModel
        $this->homeModel = new HomeModel();
        $this->frameModel = new FrameModel();
        $this->taskModel = new TaskModel();
        $this->validation = \Config\Services::validation();


        $this->email = \Config\Services::email();
    }

    public function index()
    {

		// $task=$this->taskModel->checkTaskFileSubmitted(session()->get('loggedUser'),session()->get('currentTask'));
        // var_dump($task['doc']);
    //    var_dump(session()->get('currentTask')) ;
        // $stu = $this->homeModel->getAllStudents();
        // foreach($stu as $s){
        //     $this->homeModel->updatePasswordStudent($s['matricule'],password_hash($s['matricule'], PASSWORD_BCRYPT));
        // }
        //Récupérer l'id stocké lors de la définition de la session
        $idUser = session()->get('loggedUser');
        $data['student_data']=[];
        $data['school_framer_data']=[];
        $data['industrial_framer_data']=[];

        /**
         * Vérifie si une session a été créée
         */
        if (!session()->has('loggedUser')) {
            return redirect()->to('/login');
        }
        else{
            if(session()->get('loggedUserRole') == 1){
                $data['student_data'] = $this->homeModel->getLoggedInStudentData($idUser); //Récupère toutes les infos du user
            }elseif(session()->get('loggedUserRole') == 2){
                $data['school_framer_data'] = $this->homeModel->getLoggedInSchoolFramerData($idUser); //Récupère toutes les infos du user


            }elseif(session()->get('loggedUserRole') == 3){
                $data['industrial_framer_data'] = $this->homeModel->getLoggedInIndustrialFramerData($idUser); //Récupère toutes les infos du user
                
                // $students= $this->frameModel->getAllFramedStudentsIndustrialFrame($idUser);
                // var_dump($students);
                // die();
                $data['students']= $this->frameModel->getAllFramedStudentsIndustrialFrame($idUser);

            }else{
                return redirect()->to('/login');
            }
        }

        return view('home_view', $data);
    }

    /**
     * Récuperer tous les dossiers qui été acceptés avec un statut_demande =1
     * et aussi statut_email = 0 pour spécifier que l'encadreur n'a pas encore reçu le mail
     */
    public function getAllAcceptedFolders()
    {
        $data['acceptedFolders'] = $this->homeModel->getAllAcceptedFolders();
        echo json_encode($data);
    }

    /**
     * Envoyer un mail à l'encadreur industriel
     */
    public function sendMailIndustrialFramer()
    {
        $email = $this->request->getPost("email");
        $nom = $this->request->getPost("nom");
        $prenom = $this->request->getPost("prenom");
        $id_dossier_stage = $this->request->getPost("id_dossier_stage");
        $id_encadreur = $this->request->getPost("id_encadreur");

        $password = substr(str_shuffle('"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789!@#$%^&*()_-=+;:,.?"'), 0, 16);

        $emailExist = $this->homeModel->verifyEmailExist($email);
        /**
         * Sachant qu'un encadreur pourrait encadrer plus d'une personne,
         * on fait la vérification dans un premier temps des dossiers 
         * qui ont un statut_demande=1 spécifiant qu'ils ont été acceptés 
         * et statut_email=1 spécifiant que le mail a été envoyé déjà une fois
         * et ne nécessite pas d'être envoyé encore.
         */
        if (!$emailExist) {


            $to = $email;
            $subject = "Accès au compte";
            $message =
                "<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd'>
                <html xmlns:v='urn:schemas-microsoft-com:vml'>

                <head>
                    <meta http-equiv='Content-Type' content='text/html; charset=UTF-8' />
                    <meta name='viewport' content='width=device-width; initial-scale=1.0; maximum-scale=1.0;' />
                    <!--[if !mso]--><!-- -->
                    <link href='https://fonts.googleapis.com/css?family=Work+Sans:300,400,500,600,700' rel='stylesheet'>
                    <link href='https://fonts.googleapis.com/css?family=Quicksand:300,400,700' rel='stylesheet'>
                    <!-- <![endif]-->

                    <title>Material Design for Bootstrap</title>

                    <style type='text/css'>
                        body {
                            width: 100%;
                            background-color: #ffffff;
                            margin: 0;
                            padding: 0;
                            -webkit-font-smoothing: antialiased;
                            mso-margin-top-alt: 0px;
                            mso-margin-bottom-alt: 0px;
                            mso-padding-alt: 0px 0px 0px 0px;
                        }

                        p,
                        h1,
                        h2,
                        h3,
                        h4 {
                            margin-top: 0;
                            margin-bottom: 0;
                            padding-top: 0;
                            padding-bottom: 0;
                        }

                        span.preheader {
                            display: none;
                            font-size: 1px;
                        }

                        html {
                            width: 100%;
                        }

                        table {
                            font-size: 14px;
                            border: 0;
                        }
                        /* ----------- responsivity ----------- */

                        @media only screen and (max-width: 640px) {
                            /*------ top header ------ */
                            .main-header {
                                font-size: 20px !important;
                            }
                            .main-section-header {
                                font-size: 28px !important;
                            }
                            .show {
                                display: block !important;
                            }
                            .hide {
                                display: none !important;
                            }
                            .align-center {
                                text-align: center !important;
                            }
                            .no-bg {
                                background: none !important;
                            }
                            /*----- main image -------*/
                            .main-image img {
                                width: 440px !important;
                                height: auto !important;
                            }
                            /* ====== divider ====== */
                            .divider img {
                                width: 440px !important;
                            }
                            /*-------- container --------*/
                            .container590 {
                                width: 440px !important;
                            }
                            .container580 {
                                width: 400px !important;
                            }
                            .main-button {
                                width: 220px !important;
                            }
                            /*-------- secions ----------*/
                            .section-img img {
                                width: 320px !important;
                                height: auto !important;
                            }
                            .team-img img {
                                width: 100% !important;
                                height: auto !important;
                            }
                        }

                        @media only screen and (max-width: 479px) {
                            /*------ top header ------ */
                            .main-header {
                                font-size: 18px !important;
                            }
                            .main-section-header {
                                font-size: 26px !important;
                            }
                            /* ====== divider ====== */
                            .divider img {
                                width: 280px !important;
                            }
                            /*-------- container --------*/
                            .container590 {
                                width: 280px !important;
                            }
                            .container590 {
                                width: 280px !important;
                            }
                            .container580 {
                                width: 260px !important;
                            }
                            /*-------- secions ----------*/
                            .section-img img {
                                width: 280px !important;
                                height: auto !important;
                            }
                        }
                    </style>
                    <!-- [if gte mso 9]><style type=”text/css”>
                        body {
                        font-family: arial, sans-serif!important;
                        }
                        </style>
                    <![endif]-->
                </head>


                <body class='respond' leftmargin='0' topmargin='0' marginwidth='0' marginheight='0'>
                    <!-- pre-header -->
                    <table style='display:none!important;'>
                        <tr>
                            <td>
                                <div style='overflow:hidden;display:none;font-size:1px;color:#ffffff;line-height:1px;font-family:Arial;maxheight:0px;max-width:0px;opacity:0;'>
                                    Pre-header for the newsletter template
                                </div>
                            </td>
                        </tr>
                    </table>
                    <!-- pre-header end -->
                    <!-- header -->
                    <table border='0' width='100%' cellpadding='0' cellspacing='0' bgcolor='ffffff'>

                        <tr>
                            <td align='center'>
                                <table border='0' align='center' width='590' cellpadding='0' cellspacing='0' class='container590'>

                                    <tr>
                                        <td height='25' style='font-size: 25px; line-height: 25px;'>&nbsp;</td>
                                    </tr>

                                    <tr>
                                        <td align='center'>

                                            <table border='0' align='center' width='590' cellpadding='0' cellspacing='0' class='container590'>

                                                <tr>
                                                    <td align='center' height='70' style='height:70px;'>
                                                        <a href='' style='display: block; border-style: none !important; border: 0 !important;'><img width='100' border='0' style='display: block; width: 100px;' src='" . base_url() . "/assets/images/iut.jpeg' alt='' /></a>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td align='center'>
                                                        <table width='360 ' border='0' cellpadding='0' cellspacing='0' style='border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt;'
                                                            class='container590 hide'>
                                                        
                                                            <h2>Bienvenue M/Mme <span style='color: #5caad2;'>$nom $prenom</span></h2>
                                                        <div style='line-height: 35px'>

                                                        

                                                    </div>
                                                        </table>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td height='25' style='font-size: 25px; line-height: 25px;'>&nbsp;</td>
                                    </tr>

                                </table>
                            </td>
                        </tr>
                    </table>
                    <!-- end header -->

                    <!-- big image section -->
                    <table border='0' width='100%' cellpadding='0' cellspacing='0' bgcolor='ffffff' class='bg_color'>

                        <tr>
                            <td align='center'>
                                <table border='0' align='center' width='590' cellpadding='0' cellspacing='0' class='container590'>
                                    <tr>

                                        <td align='center' class='section-img'>
                                            <a href='' style=' border-style: none !important; display: block; border: 0 !important;'><img src='https://raw.githubusercontent.com/ColorlibHQ/email-templates/master/10/images/email.png' style='display: block; width: 150px;' width='150' border='0' alt='' /></a>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td height='20' style='font-size: 20px; line-height: 20px;'>&nbsp;</td>
                                    </tr>
                                    <tr>
                                        <td align='center' style='color: #343434; font-size: 24px; font-family: Quicksand, Calibri, sans-serif; font-weight:700;letter-spacing: 3px; line-height: 35px;'
                                            class='main-header'>
                                                        <h5>Voici vos identifiants de connexion à la plateforme :</h5>
                                                            <h3>Login :  $email  </h3>
                                                            <h3>Mot de passe :  $password </h3>
                                                            

                                            
                                        </td>
                                    </tr>

                                    <tr>
                                        <td height='10' style='font-size: 10px; line-height: 10px;'>&nbsp;</td>
                                    </tr>

                                    <tr>
                                        <td align='center'>
                                            <table border='0' width='40' align='center' cellpadding='0' cellspacing='0' bgcolor='eeeeee'>
                                                <tr>
                                                    <td height='2' style='font-size: 2px; line-height: 2px;'>&nbsp;</td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td height='20' style='font-size: 20px; line-height: 20px;'>&nbsp;</td>
                                    </tr>

                                    <tr>
                                        <td align='center'>
                                            <table border='0' width='400' align='center' cellpadding='0' cellspacing='0' class='container590'>
                                                <tr>
                                                    <td align='center' style='color: #888888; font-size: 16px; font-family: 'Work Sans', Calibri, sans-serif; line-height: 24px;'>


                                                        <div style='line-height: 24px'>

                                                        </div>
                                                    </td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>

                                    <tr>
                                        <td height='25' style='font-size: 25px; line-height: 25px;'>&nbsp;</td>
                                    </tr>

                                    <tr>
                                        <td align='center'>
                                            <table border='0' align='center' width='160' cellpadding='0' cellspacing='0' bgcolor='5caad2' style=''>

                                                <tr>
                                                    <td height='10' style='font-size: 10px; line-height: 10px;'>&nbsp;</td>
                                                </tr>

                                                <tr>
                                                    <td align='center' style='color: #ffffff; font-size: 14px; font-family: 'Work Sans', Calibri, sans-serif; line-height: 26px;'>


                                                        <div style='line-height: 26px;'>
                                                            <a href='" . base_url() . "/' target='_blank' style='color: #ffffff; text-decoration: none;'>Accéder maintenant!</a>
                                                        </div>
                                                    </td>
                                                </tr>

                                                <tr>
                                                    <td height='10' style='font-size: 10px; line-height: 10px;'>&nbsp;</td>
                                                </tr>

                                            </table>
                                        </td>
                                    </tr>


                                </table>

                            </td>
                        </tr>

                        <tr class='hide'>
                            <td height='25' style='font-size: 25px; line-height: 25px;'>&nbsp;</td>
                        </tr>
                        <tr>
                            <td height='40' style='font-size: 40px; line-height: 40px;'>&nbsp;</td>
                        </tr>

                    </table>
                    <!-- end section -->

                


                    <!-- footer ====== -->
                    <table border='0' width='100%' cellpadding='0' cellspacing='0' bgcolor='f4f4f4'>

                        <tr>
                            <td height='25' style='font-size: 25px; line-height: 25px;'>&nbsp;</td>
                        </tr>

                        <tr>
                            <td align='center'>

                                <table border='0' align='center' width='590' cellpadding='0' cellspacing='0' class='container590'>

                                    <tr>
                                        <td>
                                            <table border='0' align='left' cellpadding='0' cellspacing='0' style='border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt;'
                                                class='container590'>
                                                <tr>
                                                    <td align='left' style='color: #aaaaaa; font-size: 14px; font-family: 'Work Sans', Calibri, sans-serif; line-height: 24px;'>
                                                        <div style='line-height: 24px;'>

                                                            <span style='color: #333333;'>DIVISION DE STAGE IUT de NGAOUNDERE</span>

                                                        </div>
                                                    </td>
                                                </tr>
                                            </table>

                                            <table border='0' align='left' width='5' cellpadding='0' cellspacing='0' style='border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt;'
                                                class='container590'>
                                                <tr>
                                                    <td height='20' width='5' style='font-size: 20px; line-height: 20px;'>&nbsp;</td>
                                                </tr>
                                            </table>

                                            <table border='0' align='right' cellpadding='0' cellspacing='0' style='border-collapse:collapse; mso-table-lspace:0pt; mso-table-rspace:0pt;'
                                                class='container590'>

                                                <tr>
                                                    <td align='center'>
                                                        <table align='center' border='0' cellpadding='0' cellspacing='0'>
                                                            <tr>
                                                                <td align='center'>
                                                                    <a style='font-size: 14px; font-family: 'Work Sans', Calibri, sans-serif; line-height: 24px;color: #5caad2; text-decoration: none;font-weight:bold;'
                                                                        href='{{UnsubscribeURL}}'>IUT</a>
                                                                </td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                </tr>

                                            </table>
                                        </td>
                                    </tr>

                                </table>
                            </td>
                        </tr>

                        <tr>
                            <td height='25' style='font-size: 25px; line-height: 25px;'>&nbsp;</td>
                        </tr>

                    </table>
                    <!-- end footer ====== -->

                </body>

                </html>";

            $this->email->setTo($to);
            $this->email->setFrom('bsmlancer@gmail.com', 'IUT de Ngaoundéré');
            $this->email->setSubject($subject);
            $this->email->setMessage($message);

            if ($this->email->send()) {
                $status = $this->homeModel->updateStatutEmail($id_dossier_stage);
                if ($status) {
                    $statusPass = $this->homeModel->updatePasswordEncadreur($id_encadreur, password_hash($password, PASSWORD_BCRYPT));
                    if ($statusPass) {
                        echo json_encode(['code' => 1, 'msg' => "Un mail vous été envoyé "]);
                    }
                } else {
                    echo json_encode(['code' => 0, 'msg' => "Une Erreur est survenue"]);
                }
            } else {
                echo json_encode(['code' => 0, 'msg' => "OUPS!"]);
            }
            $data['acceptedFolders'] = $this->homeModel->getAllAcceptedFolders();
            echo json_encode($data);
        }
    }

    /**
     * Se déconnecter
     */
    public function logout()
    {
        session()->remove('loggedUser');
        session()->destroy();
        return redirect()->to('/');
    }


    public function editProfile()
    {

		

        return view('edit_profile_view');
    }

    public function editPassword()
    {
        // $data['userdata'] = $this->userModel->getLoggedInUserData(session()->get('loggedUser'));
        $idUser = session()->get('loggedUser');
        $data['student_data']=[];
        $data['school_framer_data']=[];
        $data['industrial_framer_data']=[];

        /**
         * Vérifie si une session a été créée
         */
       
            if(session()->get('loggedUserRole') == 1){
                $data['student_data'] = $this->homeModel->getLoggedInStudentData($idUser); //Récupère toutes les infos du user
                $this->validate([
                    'oldpassword' => [
                        'rules' => 'required|is_unique[etudiants.password]',
                        'errors' => [
                            'required' => 'Veuillez remplir le champs',
                            'matches[etudiants.password]' => 'Ancien mot de passe incorrect',
                        ],
                    ],
                    'newpassword' => [
                        'rules' => 'required|min_length[6]|max_length[10]',
                        'errors' => [
                            'required' => 'Veuillez remplir le champs',
                            'min_length' => 'Minimum 6 caractères',
                            'max_length' => 'Pas au déla de 10 caractères'
                        ],
                    ],
                    'cnewpassword' => [
                        'rules' => 'required|matches[newpassword]',
                        'errors' => [
                            'required' => 'Veuillez remplir le champs',
                            'matches' => "Mot de passe incompatible",
                        ],
                    ],
                ]);
        
                if ($this->validation->run() == FALSE) {
                    $errors = $this->validation->getErrors();
                    echo json_encode(['error' => $errors]);
                } else {
                    $oldpassword = $this->request->getVar('oldpassword');

                    $newpassword = password_hash($this->request->getVar('newpassword'), PASSWORD_DEFAULT);
        
                    if (password_verify($oldpassword, $data['student_data']->password)) {
                        if ($this->homeModel->editPasswordStudent(session()->get('loggedUser'), $newpassword)) {
                            echo json_encode(['code' => 1, 'msg' => 'Votre mot de passe a été modifié avec succès']);
                        } else {
                            echo json_encode(['code' => 0, 'msg' => 'Une erreur est survenue...']);
                        }
                    } else {
                        echo json_encode(['code' => 0, 'msg' => 'Ancien mot de passe incorrect...']);
                    }
                 
                }
            }elseif(session()->get('loggedUserRole') == 2){
                $data['school_framer_data'] = $this->homeModel->getLoggedInSchoolFramerData($idUser); //Récupère toutes les infos du user

                $this->validate([
                    'oldpassword' => [
                        'rules' => 'required|is_unique[comptes.pass]',
                        'errors' => [
                            'required' => 'Veuillez remplir le champs',
                            'matches[comptes.pass]' => 'Ancien mot de passe incorrect',
                        ],
                    ],
                    'newpassword' => [
                        'rules' => 'required|min_length[6]|max_length[10]',
                        'errors' => [
                            'required' => 'Veuillez remplir le champs',
                            'min_length' => 'Minimum 6 caractères',
                            'max_length' => 'Pas au déla de 10 caractères'
                        ],
                    ],
                    'cnewpassword' => [
                        'rules' => 'required|matches[newpassword]',
                        'errors' => [
                            'required' => 'Veuillez remplir le champs',
                            'matches' => "Mot de passe incompatible",
                        ],
                    ],
                ]);
        
                if ($this->validation->run() == FALSE) {
                    $errors = $this->validation->getErrors();
                    echo json_encode(['error' => $errors]);
                } else {
                    $oldpassword = $this->request->getVar('oldpassword');

                    $newpassword = password_hash($this->request->getVar('newpassword'), PASSWORD_DEFAULT);
        
                    if (password_verify($oldpassword, $data['school_framer_data']->pass)) {
                        if ($this->homeModel->editPasswordSchoolFramer(session()->get('loggedUser'), $newpassword)) {
                            echo json_encode(['code' => 1, 'msg' => 'Votre mot de passe a été modifié avec succès']);
                        } else {
                            echo json_encode(['code' => 0, 'msg' => 'Une erreur est survenue...']);
                        }
                    } else {
                        echo json_encode(['code' => 0, 'msg' => 'Ancien mot de passe incorrect...']);
                    }
                 
                }

            }elseif(session()->get('loggedUserRole') == 3){
                $data['industrial_framer_data'] = $this->homeModel->getLoggedInIndustrialFramerData($idUser); //Récupère toutes les infos du user

                $this->validate([
                    'oldpassword' => [
                        'rules' => 'required|is_unique[enc_industriel.password]',
                        'errors' => [
                            'required' => 'Veuillez remplir le champs',
                            'matches[enc_industriel.password]' => 'Ancien mot de passe incorrect',
                        ],
                    ],
                    'newpassword' => [
                        'rules' => 'required|min_length[6]|max_length[10]',
                        'errors' => [
                            'required' => 'Veuillez remplir le champs',
                            'min_length' => 'Minimum 6 caractères',
                            'max_length' => 'Pas au déla de 10 caractères'
                        ],
                    ],
                    'cnewpassword' => [
                        'rules' => 'required|matches[newpassword]',
                        'errors' => [
                            'required' => 'Veuillez remplir le champs',
                            'matches' => "Mot de passe incompatible",
                        ],
                    ],
                ]);
        
                if ($this->validation->run() == FALSE) {
                    $errors = $this->validation->getErrors();
                    echo json_encode(['error' => $errors]);
                } else {
                    $oldpassword = $this->request->getVar('oldpassword');

                    $newpassword = password_hash($this->request->getVar('newpassword'), PASSWORD_DEFAULT);
        
                    if (password_verify($oldpassword, $data['industrial_framer_data']->password)) {
                        if ($this->homeModel->editPasswordIndustrialFramer(session()->get('loggedUser'), $newpassword)) {
                            echo json_encode(['code' => 1, 'msg' => 'Votre mot de passe a été modifié avec succès']);
                        } else {
                            echo json_encode(['code' => 0, 'msg' => 'Une erreur est survenue...']);
                        }
                    } else {
                        echo json_encode(['code' => 0, 'msg' => 'Ancien mot de passe incorrect...']);
                    }
                 
                }
            }else{
                
            }
        
     
    }


    public function getVerificationTasksNotification()
    {

	
        $idUser = session()->get('loggedUser');
        $data['student_data']=[];
        $data['school_framer_data']=[];
        $data['industrial_framer_data']=[];

       
            if(session()->get('loggedUserRole') == 1){
                $data['student_data'] = $this->homeModel->getLoggedInStudentData($idUser); //Récupère toutes les infos du user
            }elseif(session()->get('loggedUserRole') == 2){
                $data['school_framer_data'] = $this->homeModel->getLoggedInSchoolFramerData($idUser); //Récupère toutes les infos du user


            }elseif(session()->get('loggedUserRole') == 3){
                $ind_framer= $this->homeModel->getLoggedInIndustrialFramerData($idUser); //Récupère toutes les infos du user
               $data['notif']= $this->homeModel->getVerificationTasksNotificationIndustrialFramer($ind_framer->id_enc);
            }else{
            }

            echo json_encode($data);

    }

    public function updateNotif()
    {

	
        $idUser = session()->get('loggedUser');
        $data['student_data']=[];
        $data['school_framer_data']=[];
        $data['industrial_framer_data']=[];
        $id = $this->request->getVar('id');


       
            if(session()->get('loggedUserRole') == 1){
                $data['student_data'] = $this->homeModel->getLoggedInStudentData($idUser); //Récupère toutes les infos du user
            }elseif(session()->get('loggedUserRole') == 2){
                $data['school_framer_data'] = $this->homeModel->getLoggedInSchoolFramerData($idUser); //Récupère toutes les infos du user


            }elseif(session()->get('loggedUserRole') == 3){
                $ind_framer= $this->homeModel->getLoggedInIndustrialFramerData($idUser); //Récupère toutes les infos du user
               $data['update']= $this->homeModel->updateNotif($id);
            }else{
            }

            echo json_encode($data);

    }

}
