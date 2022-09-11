<div class="col-md-12 grid-margin stretch-card">
    <div class="card">
        <div class="card-body">
            <p class="card-title mb-0">Tâches à effectuer</p>
            <div class="table-responsive">
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Tâche</th>
                            <th>Price</th>
                            <th>Date limite</th>
                            <th>Statut</th>
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

<script src="/assets/js/jquery-3.6.1.min.js"></script>

<script>
    $(document).ready(function() {
        getAllTasks()

    })

    /** 
    La définition de la fonction qui récupère toues les tâches de la base de données
     */
    function getAllTasks() {

        $.ajax({
            method: "GET",
            url: "getAllTasks",

            dataType: "json",

            success: function(response) {
                console.log(response.visibility);
                var html="";

                $.each(response.tasks, function(key, value) {

                    // console.log(value['email']) ;
                    /**
                     * Si le statut est égale à 0 on envoie le code couleur rouge et le message
                     * EN ATTENTE
                     *  */
                    if (value['statut'] == 0) {
                        var str = 'badge badge-danger statut_btn';
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
                         * Si statut aucune n'a démarré alors les visibilités des bouttons TERMINER et ANNULER seront
                         * désactivées et celle des texts seront activé
                         */
                        var visibilityItemLink =  "display:none" 
                        var visibilityItemText =  "" 
                        /**
                         * Si statut aucune n'a démarré alors la visibilité du boutton COMMENCER sera
                         * activée et celle du text sera désactivé donnat l'occasion de le cliquer
                         */
                        var visibilityItemLinkStart =  ""
                        var visibilityItemTextStart =  "display:none" 


                    } else if (value['statut'] == 1) {
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
                        var visibilityItemLink =  ""
                        var visibilityItemText =  "display:none"
                        /** 
                         * Le boutton de COMMENCER sera désactivé
                        */
                        var visibilityItemLinkStart =  "display:none"
                        var visibilityItemTextStart =  "" 






                    }

                    if (value['idRole'] == 1) {
                        var st = 'USER';
                    } else {
                        var st = 'ADMIN';

                    }


                    html +=
                    '<tr class="' + colorTable + '">\
                        <td class="taskId" style="display:none">' + value['id_tache'] + '</td>\
                        <td>' + value['tache'] + '</td>\
                        <td class="font-weight-bold">$362</td>\
                        <td>' + value['date_limite'] + '</td>\
                        <td class="font-weight-medium">\
                            <div class="' + str + '">' + msg + '</div>\
                        </td>\
                        <td>\
                            <div class="dropdown" style="' + visibilityDropdown + '">\
                                <button  type="button" id="dropdownMenuIconButton1" class="btn btn-light" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">\
                                    <i class="icon-ellipsis"></i>\
                                </button>\
                                <div class="dropdown-menu" aria-labelledby="dropdownMenuIconButton1">\
                                    <h6 class="dropdown-header text-primary ">Actions</h6>\
                                    <a class="dropdown-item start_btn"  style="' + visibilityItemLinkStart + '">Commencer</a>\
                                    <h6 class="dropdown-header text-secondary" style="' + visibilityItemTextStart + '">Commencer</h6>\
                                    <a class="dropdown-item" style="' + visibilityItemLink + '" >Terminer</a>\
                                    <h6 class="dropdown-header text-secondary" style="' + visibilityItemText + '">Terminer</h6>\
                                    <a class="dropdown-item cancel_btn" style="' + visibilityItemLink + '" >Annuler</a>\
                                    <h6 class="dropdown-header text-secondary" style="' + visibilityItemText + '">Annuler</h6>\
                                </div>\
                            </div>\
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
            url: "/updateStatutToInProgress",
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

            }
        });
    });

    $(document).on('click', '.cancel_btn', function() {
        var taskId = $(this).closest('tr').find('.taskId').text();
        // alert(taskId);
        $.ajax({
            method: "POST",
            url: "/updateStatutToCancel",
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

            }
        });
    });
</script>