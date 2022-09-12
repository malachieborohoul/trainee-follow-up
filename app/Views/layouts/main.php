<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Suivi des stagiaires</title>
    <!-- plugins:css -->
    <link rel="stylesheet" href="/assets/vendors/feather/feather.css">
    <link rel="stylesheet" href="/assets/vendors/ti-icons/css/themify-icons.css">
    <link rel="stylesheet" href="/assets/vendors/css/vendor.bundle.base.css">
    <!-- endinject -->
    <!-- Plugin css for this page -->
    <link rel="stylesheet" href="/assets/vendors/datatables.net-bs4/dataTables.bootstrap4.css">
    <link rel="stylesheet" href="/assets/vendors/ti-icons/css/themify-icons.css">
    <link rel="stylesheet" type="text/css" href="/assets/js/select.dataTables.min.css">
    <!-- End plugin css for this page -->
    <!-- inject:css -->
    <link rel="stylesheet" href="/assets/css/vertical-layout-light/style.css">
    <!-- endinject -->
    <link rel="shortcut icon" href="/assets/images/favicon.png" />
</head>

<body>
    <div class="container-scroller">
        <?= $this->include('partials/navbar') ?>

        <div class="container-fluid page-body-wrapper">
            <?= $this->include('partials/settings-panel') ?>
            <?= $this->include('partials/sidebar') ?>

            <?= $this->renderSection('content') ?>
            <?= $this->section('scripts') ?>

            <script>
                // $(document).ready(function() {

                //     //   setInterval(function() {
                //     //     getNotifSuivre();

                //     //   }, 5000);
                //     //   getNotifSuivre();





                // });




                /**
                 * Récevoir des notifications lorsqu'un membre a commencé à  suivre un autre
                 *
                 * @return void
                 */
                // function getNotifSuivre() {
                //   $.ajax({
                //     method: "GET",
                //     url: "/getNotifSuivre",
                //     data: "data",
                //     dataType: "json",
                //     success: function(response) {
                //       console.log(response.notifEvents);
                //       // console.log(response.notif);
                //       // console.log(response.nombreNotif);
                //       var nombreNotif = response.nombreNotif; //Nombre de notifications recu
                //       var nombreNotifications = response.nombreNotif; //Nombre de notifications recu
                //       $('.nombreNotif').html(nombreNotif);
                //       $('.nombreNotifications').html(nombreNotifications + ' Notification(s)');
                //       var notif = "";
                //       $.each(response.notif, function(index, value) {
                //         notif +=
                //           '<a  href="/voirProfileMembre/' + value.idAbon + '" class="dropdown-item notific">\
                //               <p style="display:none" class="suivreId">' + value.idSuivre + '</p>\
                //               <i class="icon icon-users mr-2"></i>' + value.nom + ' a commencé à vous suivre\
                //               <div class="dropdown-divider"></div>\
                //             </a>';
                //       });
                //       $('.notif').html(notif);

                //     }
                //   });
                // }
            </script>
            <?= $this->endSection() ?>




        </div>
        <!-- page-body-wrapper ends -->
        <!-- partial:partials/_footer.html -->
        <footer class="footer">
            <div class="d-sm-flex justify-content-center justify-content-sm-between">
                <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Copyright © 2021. Premium <a href="https://www.bootstrapdash.com/" target="_blank">Bootstrap admin template</a> from BootstrapDash. All rights reserved.</span>
                <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">Hand-crafted & made with <i class="ti-heart text-danger ml-1"></i></span>
            </div>
            <div class="d-sm-flex justify-content-center justify-content-sm-between">
                <span class="text-muted text-center text-sm-left d-block d-sm-inline-block">Distributed by <a href="https://www.themewagon.com/" target="_blank">Themewagon</a></span>
            </div>
        </footer>
        <!-- partial -->



    </div>
    <!-- container-scroller -->

    <script src="/assets/js/jquery-3.6.1.min.js"></script>


    <script>
        $(document).ready(function() {

            // setInterval(function() {
            //   getNotifSuivre();

            // }, 5000);
            // getNotifSuivre();


            getAllAcceptedFolders();


        });


        /**
         * Vérifier dans la table dossier_stage les dossiers qui ont été acceptés
         * et envoyer un mail
         *
         * @return void
         */

        function getAllAcceptedFolders() {
            $.ajax({
                method: "GET",
                url: "/getAllAcceptedFolders",
                data: "data",
                dataType: "json",
                success: function(response) {
                    //   console.log(response.acceptedFolders[0].email);

                    $.each(response.acceptedFolders, function(index, value) {
                        // console.log(value.email,value.nom, value.prenom, value.id_dossier_stage,value.id_enc)
                        sendMailIndustrialFramer(value.email, value.nom, value.prenom, value.id_dossier_stage, value.id_enc);
                    });

                }
            });
        }

        function sendMailIndustrialFramer(email, nom, prenom, id_dossier_stage, id_encadreur) {
            $.ajax({
                method: "POST",
                url: "/sendMailIndustrialFramer",
                data: {
                    'nom': nom,
                    'prenom': prenom,
                    'email': email,
                    'id_dossier_stage': id_dossier_stage,
                    'id_encadreur': id_encadreur,
                },
                dataType: "json",
                success: function(response) {
                    if (response.code == 1) {

                        console.log(response.msg)
                    } else {
                        console.log(response.msg)

                    }
                }
            });
        }
    </script>



    <!-- plugins:js -->
    <script src="/assets/vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- Plugin js for this page -->
    <script src="/assets/vendors/chart.js/Chart.min.js"></script>
    <script src="/assets/vendors/datatables.net/jquery.dataTables.js"></script>
    <script src="/assets/vendors/datatables.net-bs4/dataTables.bootstrap4.js"></script>
    <script src="/assets/js/dataTables.select.min.js"></script>

    <!-- End plugin js for this page -->
    <!-- inject:js -->
    <script src="/assets/js/off-canvas.js"></script>
    <script src="/assets/js/hoverable-collapse.js"></script>
    <script src="/assets/js/template.js"></script>
    <script src="/assets/js/settings.js"></script>
    <script src="/assets/js/todolist.js"></script>
    <!-- endinject -->
    <!-- Custom js for this page-->
    <script src="/assets/js/dashboard.js"></script>
    <script src="/assets/js/Chart.roundedBarCharts.js"></script>
    <!-- End custom js for this page-->
    <!-- Sweet Alert -->
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

</body>


</html>