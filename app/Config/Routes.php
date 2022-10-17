<?php

namespace Config;

// Create a new instance of our RouteCollection class.
$routes = Services::routes();

// Load the system's routing file first, so that the app and ENVIRONMENT
// can override as needed.
if (is_file(SYSTEMPATH . 'Config/Routes.php')) {
    require SYSTEMPATH . 'Config/Routes.php';
}

/*
 * --------------------------------------------------------------------
 * Router Setup
 * --------------------------------------------------------------------
 */
$routes->setDefaultNamespace('App\Controllers');
$routes->setDefaultController('Home');
$routes->setDefaultMethod('index');
$routes->setTranslateURIDashes(false);
$routes->set404Override();
// The Auto Routing (Legacy) is very dangerous. It is easy to create vulnerable apps
// where controller filters or CSRF protection are bypassed.
// If you don't want to define all routes, please use the Auto Routing (Improved).
// Set `$autoRoutesImproved` to true in `app/Config/Feature.php` and set the following to true.
//$routes->setAutoRoute(false);

/*
 * --------------------------------------------------------------------
 * Route Definitions
 * --------------------------------------------------------------------
 */

// We get a performance increase by specifying the default
// route since we don't have to scan directories.
$routes->get('/', 'Home::index');
$routes->get('/logout', 'Home::logout');
$routes->get('/edit_profile', 'Home::editProfile');
$routes->get('/getLoggedInUserPhoto', 'Home::getLoggedInUserPhoto');
$routes->post('/editPassword', 'Home::editPassword');
$routes->get('/getVerificationTasksNotification', 'Home::getVerificationTasksNotification');
$routes->post('/updateNotif', 'Home::updateNotif');


$routes->post('/getAllFramedStudents', 'Frame::getAllFramedStudents');
$routes->post('/getTest', 'Frame::getTest');
$routes->add('/internship_board/(:any)', 'Frame::internship_board/$1');
$routes->post('/insertTask', 'Frame::insertTask');




$routes->get('/login', 'Login::index');
$routes->get('/loginSchoolFramer', 'Login::loginSchoolFramer');
$routes->get('/loginStudent', 'Login::loginStudent');
$routes->get('/getAllAcceptedFolders', 'Home::getAllAcceptedFolders');
$routes->get('/fetchInProgressTask', 'Task::fetchInProgressTask');
$routes->get('/uploadFile', 'Task::uploadFile');
$routes->get('/checkTaskFileSubmitted', 'Task::checkTaskFileSubmitted');
$routes->get('/checkTaskFileSubmittedFramer', 'Task::checkTaskFileSubmittedFramer');
$routes->get('/getAllComments', 'Task::getAllComments');
$routes->get('/discussion', 'Task::discussion');


$routes->post('/sendMailIndustrialFramer', 'Home::sendMailIndustrialFramer');
$routes->post('/logIndustrialFramer', 'Login::logIndustrialFramer');
$routes->post('/logSchoolFramer', 'Login::logSchoolFramer');
$routes->post('/logStudent', 'Login::logStudent');
$routes->post('/updateEtatToInProgress', 'Task::updateEtatToInProgress');
$routes->post('/updateEtatToCancel', 'Task::updateEtatToCancel');
$routes->post('/updateEtatToCompleted', 'Task::updateEtatToCompleted');
$routes->post('/updateEtatTaskValidated', 'Task::updateEtatTaskValidated');
$routes->post('/getAllTasks', 'Task::getAllTasks');
$routes->post('/fetchInProgressTask', 'Task::fetchInProgressTask');
$routes->post('/editTaskFile', 'Task::editTaskFile');
$routes->post('/commenter', 'Task::commenter');
$routes->post('/deleteComment', 'Task::deleteComment');



/*
 * --------------------------------------------------------------------
 * Additional Routing
 * --------------------------------------------------------------------
 *
 * There will often be times that you need additional routing and you
 * need it to be able to override any defaults in this file. Environment
 * based routes is one such time. require() additional route files here
 * to make that happen.
 *
 * You will have access to the $routes object within that file without
 * needing to reload it.
 */
if (is_file(APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php')) {
    require APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php';
}
