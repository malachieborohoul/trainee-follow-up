<?php /*
var_dump($students);
die;*/
?>
<!-- List students -->

<div class="row">

    <div class="col-md-12 grid-margin stretch-card">
        <div class="card">
            <!-- /.card-header -->
            <div class="card-header">
                <button class="btn btn-success float-right" data-toggle="modal" data-target="#addTaskModal"><i class="fa fa-plus"></i>Ajouter une tache</button>

                <!-- The Modal -->
                <div class="modal" id="addTaskModal">
                    <div class="modal-dialog modal-lg">
                        <div class="modal-content">

                            <!-- Modal Header -->
                            <div class="modal-header">
                                <h4 class="modal-title justify-content">Ajouter une tache</h4>
                                <button type="button" class="close" data-dismiss="modal">&times;</button>
                            </div>

                            <!-- Modal body -->
                            <div class="modal-body">
                                <div class="container">
                                    <div class="row ">
                                        <div class="col-md-12">



                                            <form action="/insertTask" method="post" id="insertTask">
                                                <div class="form-group ">
                                                    <label>Nom de la tâche<span class="text-danger">*</span></label>
                                                    <input type="text" name="tache" class="form-control tache">
                                                    <span id='error_tache' class="text text-danger"></span>

                                                </div>
                                                <div class="form-group">
                                                    <label>Nom de l'étudiant<span class="text-danger">*</span></label>

                                                    <select class="form-control " name="etudiant" id="">

                                                        <!-- <option value="<?php // $students->idE 
                                                                            ?>">-------||--------</option> -->
                                                        <?php foreach ($students as $stu) : ?>
                                                            <option value="<?= $stu['id_dossier_stage'] ?>"><?= strtoupper($stu['nom_prenom']) ?></option>
                                                        <?php endforeach; ?>
                                                    </select>

                                                </div>

                                                <div class="form-group">
                                                    <label>Priorité<span class="text-danger">*</span></label>


                                                    <select class="form-control " name="priorite" id="">
                                                        <!-- <option value="<?php // $students->idE 
                                                                            ?>">-------||--------</option> -->
                                                        <option value="1">Haute</option>
                                                        <option value="2">Moyenne</option>
                                                        <option value="3">Basse</option>
                                                    </select>
                                                </div>



                                                <div class="form-group ">

                                                    <label>Date limite<span class="text-danger">*</span></label>
                                                    <input type="date" name="dateLimite" class="form-control ">
                                                    <span id='error_dateLimite' class="text text-danger"></span>

                                                </div>


                                                <button class="btn btn-primary float-right">Ajouter</button>



                                            </form>

                                        </div>

                                    </div>
                                </div>
                            </div>



                        </div>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <p class="fs-30 mb-2 current_id " style="display:none ;"><?= $this->renderSection('id_framer') ?></p>
                <p class="fs-30 mb-2 current_id_role " style="display:none ;"><?= $this->renderSection('id_role') ?></p>


                <p class="card-title mb-0">Etudiants à encadrer</p>
                <div class="table-responsive">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Matricule</th>
                                <th>Nom et Prenom</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody class="studentsdata">

                            <!-- <tr>
                            <td>Search Engine Marketing</td>
                            <td class="font-weight-bold">$362</td>
                            <td>21 Sep 2018</td>
                            <td class="font-weight-medium">
                                <div class="badge badge-success">Completed</div>
                            </td>
                            <td>
                                <div class="dropdown">
                                    <button  type="button" id="dropdownMenuIconButton1" class="btn btn-light" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        <i class="icon-ellipsis"></i>
                                    </button>
                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuIconButton1">
                                        <h6 class="dropdown-header">Actions</h6>
                                        <a class="dropdown-item" >Commencer</a>
                                        <a class="dropdown-item" >Terminer</a>
                                        <a class="dropdown-item" >Annuler</a>
                                        
                                    </div>
                                </div>
                            </td>
                        </tr> -->





                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>


<script src="/assets/js/jquery-3.6.1.min.js"></script>

<script>
    $(document).ready(function() {
        getAllFramedStudents()
        // fetchInProgressTask()
        // Lancement du compte à rebours au chargement de la page
        // countdownManager.init();

    })

    /** 
    La définition de la fonction qui récupère toues les tâches de la base de données
     */
    function getAllFramedStudents() {
        var id = $('.current_id').text();
        var id_role = $('.current_id_role').text();

        $.ajax({
            method: "POST",
            url: "getAllFramedStudents",
            data: {
                'id': id,
                'id_role': id_role
            },
            dataType: "json",

            success: function(response) {
                // console.log(response.students);
                var html = "";

                $.each(response.students, function(key, value) {



                    html +=
                        '<tr class="">\
                        <td class="studentId" style="display:none">' + value['id_etudiant'] + '</td>\
                        <td>' + value['matricule'] + '</td>\
                        <td>' + value['nom_prenom'] + '</td>\
                        <td><a href="/internship_board/' + value['id_etudiant'] + '" class="btn btn-primary">Espace stage</a></td>\
                </tr>'


                });
                $('.studentsdata').html(html);








            }
        });
    }

    //Lorsqu'on clique sur Commencer

    $(document).on('click', '.start_btn', function() {

        var taskId = $(this).closest('tr').find('.taskId').text();
        // alert(taskId);
        $.ajax({
            method: "POST",
            url: "/updateEtatToInProgress",
            data: {
                'taskId': taskId
            },
            beforeSend: function() {
                $(".spinner").append(
                    '<div class="spinner-border text-primary"  role="status">\
                <span class="sr-only">Loading...</span>\
            </div>'
                );

            },

            success: function(response) {
                $('.spinner').html("");
                $('.studentsdata').html("");


                getAllFramedStudents();
                fetchInProgressTask()

            }
        });
    });

    //Lorsqu'on clique sur ajouter pour ajouter une tache
    $('#insertTask').submit(function(e) {
        e.preventDefault();
        var form = this
        $.ajax({
            method: $(form).attr('method'),
            url: $(form).attr("action"),
            data: new FormData(form),
            dataType: "json",
            processData: false,
            contentType: false,
            success: function(response) {
                console.log(response.error)

                if ($.isEmptyObject(response.error)) {
                    if (response.code == 1) {
                        $('.tache').html("");
                        $('.dateLimite').html("");
                        $('#addTaskModal').modal('hide');
                        // alert(response.msg)
                    swal("" + response.msg + "", "Cliquer sur le boutton!", "success");

                        //   suc(response.msg)
                        //   getAllOffre();
                        //   $('.pagination').html('');
                        //   $('.total_data').html('');

                    } else {
                    swal("" + response.msg + "", "Cliquer sur le boutton!", "success");

                        // alert(response.msg)
                        //   suc(response.msg)

                    }
                } else {
                    $.each(response.error, function(prefix, val) {
                        $(form).find('span#error_' + prefix + '').text(val);
                    });
                }
            }
        });

    });

    //Lorsqu'on clique sur Annuler


    $(document).on('click', '.cancel_btn', function() {
        var taskId = $(this).closest('tr').find('.taskId').text();
        // alert(taskId);
        $.ajax({
            method: "POST",
            url: "/updateEtatToCancel",
            data: {
                'taskId': taskId
            },
            beforeSend: function() {
                $(".spinner").append(
                    '<div class="spinner-border text-primary"  role="status">\
                <span class="sr-only">Loading...</span>\
            </div>'
                );

            },

            success: function(response) {
                $('.spinner').html("");
                $('.studentsdata').html("");
                getAllFramedStudents();
                fetchInProgressTask()

            }
        });
    });

    //Lorsqu'on clique sur Terminer

    $(document).on('click', '.completed_btn', function() {

        var taskId = $(this).closest('tr').find('.taskId').text();
        // alert(taskId);
        $.ajax({
            method: "POST",
            url: "/updateEtatToCompleted",
            data: {
                'taskId': taskId
            },
            dataType: "json",

            beforeSend: function() {
                $(".spinner").append(
                    '<div class="spinner-border text-primary"  role="status">\
        <span class="sr-only">Loading...</span>\
    </div>'
                );

            },

            success: function(response) {

                if (response.code == 0) {
                    swal("" + response.msg + "", "Cliquer sur le boutton!", "error");


                } else {
                    swal("" + response.msg + "", "Cliquer sur le boutton!", "success");

                }
                $('.spinner').html("");
                $('.studentsdata').html("");


                getAllFramedStudents();
                fetchInProgressTask()

            }
        });
    });



    /** 
    La définition de la fonction qui récupère toues les tâches de la base de données
     */
    function fetchInProgressTask() {
        $('.current_task').html("")
        $('.task_state').html("")
        $('.deadline').html("")
        $('.progression').html("")
        var id = $('.current_id').text();


        $.ajax({
            method: "POST",
            url: "/fetchInProgressTask",
            data: {
                'id': id
            },
            dataType: "json",

            success: function(response) {
                // console.log(response.task);

                if (response.task == false) {
                    $('.current_task').append("En attente")
                    $('.task_state').append("En attente")
                    $('.deadline').append("En attente")
                    $('.progression').append("En attente")
                    countdownManager.targetTime = new Date()
                    countdownManager.init()
                } else {
                    // diffDate(new Date(response.task.date_limite), new Date(response.task.date_soumission))

                    $('.current_task').append("" + response.task.tache + "")
                    $('.task_state').append("En cours")
                    $('.progression').append("En attente")

                    countdownManager.targetTime = new Date(response.task.date_limite)
                    countdownManager.init()

                }

            }
        });
    }





    countdownManager = {
        // Configuration
        targetTime: null, // Date cible du compte à rebours (00:00:00)
        displayElement: { // Elements HTML où sont affichés les informations
            day: null,
            hour: null,
            min: null,
            sec: null
        },

        // Initialisation du compte à rebours (à appeler 1 fois au chargement de la page)
        init: function() {
            // Récupération des références vers les éléments pour l'affichage
            // La référence n'est récupérée qu'une seule fois à l'initialisation pour optimiser les performances
            this.displayElement.day = jQuery('#countdown_day');
            this.displayElement.hour = jQuery('#countdown_hour');
            this.displayElement.min = jQuery('#countdown_min');
            this.displayElement.sec = jQuery('#countdown_sec');

            // Lancement du compte à rebours
            this.tick(); // Premier tick tout de suite
            window.setInterval("countdownManager.tick();", 1000); // Ticks suivant, répété toutes les secondes (1000 ms)
        },

        // Met à jour le compte à rebours (tic d'horloge)
        tick: function() {
            // Instant présent
            var timeNow = new Date();

            // On s'assure que le temps restant ne soit jamais négatif (ce qui est le cas dans le futur de targetTime)
            if (timeNow > this.targetTime) {
                timeNow = this.targetTime;
            }

            // Calcul du temps restant
            var diff = this.dateDiff(timeNow, this.targetTime);

            this.displayElement.day.text(diff.day);
            this.displayElement.hour.text(diff.hour);
            this.displayElement.min.text(diff.min);
            this.displayElement.sec.text(diff.sec);
        },

        // Calcul la différence entre 2 dates, en jour/heure/minute/seconde
        dateDiff: function(date1, date2) {
            var diff = {} // Initialisation du retour
            var tmp = date2 - date1;

            tmp = Math.floor(tmp / 1000); // Nombre de secondes entre les 2 dates
            diff.sec = tmp % 60; // Extraction du nombre de secondes
            tmp = Math.floor((tmp - diff.sec) / 60); // Nombre de minutes (partie entière)
            diff.min = tmp % 60; // Extraction du nombre de minutes
            tmp = Math.floor((tmp - diff.min) / 60); // Nombre d'heures (entières)
            diff.hour = tmp % 24; // Extraction du nombre d'heures
            tmp = Math.floor((tmp - diff.hour) / 24); // Nombre de jours restants
            diff.day = tmp;

            return diff;
        }
    };
</script>