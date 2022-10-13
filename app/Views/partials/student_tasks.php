<!-- Task board -->
<div class="row">

    <div class="col-md-12 grid-margin transparent">
        <div class="row">
            <div class="col-md-6 mb-4 stretch-card transparent">
                <div class="card card-tale">
                    <div class="card-body">
                        <p class="mb-4">Tâche courante</p>
                        <p class="fs-30 mb-2 current_task"></p>
                        <p class="fs-30 mb-2 current_id " style="display: none;"><?= $this->renderSection('id_student') ?></p>

                    </div>
                </div>
            </div>
            <div class="col-md-6 mb-4 stretch-card transparent">
                <div class="card card-dark-blue">
                    <div class="card-body">
                        <p class="mb-4">Etat de la tâche</p>
                        <p class="fs-30 mb-2 task_state"></p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 mb-4 mb-lg-0 stretch-card transparent">
                <div class="card card-light-blue">
                    <div class="card-body">
                        <p class="mb-4">Date limite</p>
                        <div id="countdown">
                            <span class="fs-30 mb-2" id="countdown_day">--</span> jours
                            <span class="fs-30 mb-2" id="countdown_hour">--</span> heures
                            <span class="fs-30 mb-2" id="countdown_min">--</span> minutes
                            <span class="fs-30 mb-2" id="countdown_sec">--</span> secondes
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-6 stretch-card transparent">
                <div class="card card-light-danger">
                    <div class="card-body">
                        <p class="mb-4">Progression</p>
                        <p class="fs-30 mb-2 progression"></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<!-- List tasks -->

<div class="row">

    <div class="col-md-12 grid-margin stretch-card">
        <div class="card">
            <div class="card-body">
                <p class="card-title mb-0">Tâches à effectuer</p>
                <br><br>
                <a class="btn btn-primary " href="/discussion">Espace de discussion</a>
                <div class="table-responsive">
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Tâche</th>
                                <th>Date limite</th>
                                <th>Etat</th>
                            </tr>
                        </thead>
                        <tbody class="tasksdata">

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
        getAllTasks()
        fetchInProgressTask()
        // Lancement du compte à rebours au chargement de la page
        // countdownManager.init();

    })

    /** 
    La définition de la fonction qui récupère toues les tâches de la base de données
     */
    function getAllTasks() {
        var id = $('.current_id').text();
        
        $.ajax({
            method: "POST",
            url: "/getAllTasks",
            data: {
                'id': id
            },
            dataType: "json",

            success: function(response) {
                // console.log(response.tasks);
                var html = "";

                $.each(response.tasks, function(key, value) {
                    // console.log(response.tasks)
                    // console.log(value['email']) ;
                    /**
                     * Si le etat est égale à 0 on envoie le code couleur rouge et le message
                     * EN ATTENTE
                     *  */
                    if (value['etat'] == 0) {
                        var str = 'badge badge-danger etat_btn';
                        var msg = 'En attente';
                        var colorTable = ""

                        /**
                         * Si aucune l'utilisateur n'a pas démarrer avec aucune tâche response.visibility qui 
                         * est la valeur de count dans le contrôleur  sera égale à 0 ainsi on pourra afficher 
                         * tous les bouttons déroulants des actions sinon aucun boutton déroulant ne s'affichera
                         * spécifiant qu'il y a déja soit une tâche en cours soit terminée puisque response.visibility
                         * qui est un compteur sera supérieur à 0
                         * 
                         *  */
                        var visibilityDropdown = response.visibility != 0 ? "display:none" : ""
                        /**
                         * Si etat aucune n'a démarré alors les visibilités des bouttons TERMINER et ANNULER seront
                         * désactivées et celle des texts seront activé
                         */
                        var visibilityItemLinkCancel = "display:none"
                        var visibilityItemTextCancel = ""

                        var visibilityItemLinkCompleted = "display:none"
                        var visibilityItemTextCompleted = ""
                        /**
                         * Si etat aucune n'a démarré alors la visibilité du boutton COMMENCER sera
                         * activée et celle du text sera désactivé donnat l'occasion de le cliquer
                         */
                        var visibilityItemLinkStart = ""
                        var visibilityItemTextStart = "display:none"



                    } else if (value['etat'] == 1) {
                        var str = 'badge badge-warning ';
                        var msg = 'En cours';
                        var colorTable = "table-secondary"
                        /**
                         * Si une tâche est en cours le dropdown est activé
                         */
                        var visibilityDropdown = ""
                        /**
                         * Les bouttons TERMINER et ANNULER seront activés i.e cliquables
                         */
                        var visibilityItemLinkCancel = ""
                        var visibilityItemTextCancel = "display:none"

                        var visibilityItemLinkCompleted = ""
                        var visibilityItemTextCompleted = "display:none"
                        /** 
                         * Le boutton de COMMENCER sera désactivé
                         */
                        var visibilityItemLinkStart = "display:none"
                        var visibilityItemTextStart = ""

                    }else  if (value['etat'] == 2){
                        var str = 'badge badge-primary ';
                        var msg = 'Vérification';
                        var colorTable = "table-secondary"
                        /**
                         * Si une tâche est en cours le dropdown est activé
                         */
                        var visibilityDropdown = ""
                        /**
                         * Les bouttons TERMINER et ANNULER seront activés i.e cliquables
                         */
                        var visibilityItemLinkCancel = ""
                        var visibilityItemTextCancel = "display:none"

                        var visibilityItemLinkCompleted = "display:none"
                        var visibilityItemTextCompleted = ""
                        /** 
                         * Le boutton de COMMENCER sera désactivé
                         */
                        var visibilityItemLinkStart = "display:none"
                        var visibilityItemTextStart = ""

                    }else{

                    }



                    html +=
                        '<tr class="' + colorTable + '">\
                        <td class="taskId" style="display:none">' + value['id_tache'] + '</td>\
                        <td>' + value['tache'] + '</td>\
                        <td>' + value['date_limite'] + '</td>\
                        <td class="font-weight-medium">\
                            <div class="' + str + '">' + msg + '</div>\
                        </td>\
                        <td class="font-weight-medium">\
                        </td>\
                        <td class="spinner">\
                        </td>\
                </tr>'


                });
                $('.tasksdata').html(html);








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
                $('.tasksdata').html("");


                getAllTasks();
                fetchInProgressTask()

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
                $('.tasksdata').html("");
                getAllTasks();
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
                $('.tasksdata').html("");


                getAllTasks();
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