 <!-- partial:partials/_navbar.html -->
 <nav class="navbar col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
   <div class="text-center navbar-brand-wrapper d-flex align-items-center justify-content-center">
     <a class="navbar-brand brand-logo mr-5" href="index.html"><img src="/assets/images/logo.svg" class="mr-2" alt="logo" /></a>
     <a class="navbar-brand brand-logo-mini" href="index.html"><img src="/assets/images/logo-mini.svg" alt="logo" /></a>
   </div>
   <div class="navbar-menu-wrapper d-flex align-items-center justify-content-end">
     <button class="navbar-toggler navbar-toggler align-self-center" type="button" data-toggle="minimize">
       <span class="icon-menu"></span>
     </button>
     <ul class="navbar-nav mr-lg-2">
       <li class="nav-item nav-search d-none d-lg-block">
         <div class="input-group">
           <div class="input-group-prepend hover-cursor" id="navbar-search-icon">
             <span class="input-group-text" id="search">
               <i class="icon-search"></i>
             </span>
           </div>
           <input type="text" class="form-control" id="navbar-search-input" placeholder="Search now" aria-label="search" aria-describedby="search">
         </div>
       </li>
     </ul>
     <ul class="navbar-nav navbar-nav-right">
       <li class="nav-item dropdown">
         <a class="nav-link count-indicator dropdown-toggle updateNotif" id="notificationDropdown" href="#" data-toggle="dropdown">
           <i class="icon-bell mx-0"></i>

           <div class="signe_notif"></div>
         </a>
         <div class="  dropdown-menu dropdown-menu-right navbar-dropdown preview-list " aria-labelledby="notificationDropdown">
           <p class="mb-0 font-weight-normal float-left dropdown-header">Notifications</p>
           <div class="notif"></div>

         </div>
       </li>
       <li class="nav-item nav-profile dropdown">
         <a class="nav-link dropdown-toggle" href="#" data-toggle="dropdown" id="profileDropdown">
           <img src="/assets/images/faces/face28.jpg" alt="profile" />
         </a>
         <div class="dropdown-menu dropdown-menu-right navbar-dropdown" aria-labelledby="profileDropdown">
           <a class="dropdown-item" href="/edit_profile">
             <i class="ti-settings text-primary"></i>
             Settings
           </a>
           <a class="dropdown-item" href="/logout">
             <i class="ti-power-off text-primary"></i>
             Se déconnecter
           </a>
         </div>
       </li>
       <li class="nav-item nav-settings d-none d-lg-flex">
         <a class="nav-link" href="#">
           <i class="icon-ellipsis"></i>
         </a>
       </li>
     </ul>
     <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
       <span class="icon-menu"></span>
     </button>
   </div>
 </nav>
 <!-- partial -->
 <script src="/assets/js/jquery-3.6.1.min.js"></script>


 <script>
   $(document).ready(function() {

     // setInterval(function() {
     //   getNotifSuivre();

     // }, 5000);
     // getNotifSuivre();


     getVerificationTasksNotification();

     $(document).on('click', '.notific', function() {
       // var id= $(this).find('id').text();
       var id = $(this).closest('a').find('.suivreId').text();
       $.ajax({
         method: "post",
         url: "/updateNotif",
         data: {
           "id": id
         },
         dataType: "json",
         success: function(response) {
          //  console.log(response.update)
           getVerificationTasksNotification();

           // $('notif').html('');
           // $('nombreNotif').html('');
           // getNotifSuivre();
         }
       });
     });


   });





   function getVerificationTasksNotification() {
     $.ajax({
       method: "GET",
       url: "/getVerificationTasksNotification",
       dataType: "json",
       success: function(response) {
         console.log(response.notif)

         var notif = ""
         $.each(response.notif, function(key, value) {
           notif +=
             '<a class="dropdown-item preview-item notific">\
             <p style="display:none" class="suivreId">' + value.id_tache + '</p>\
                      <div class="preview-thumbnail">\
                        <div class="preview-icon bg-success">\
                          <i class="ti-info-alt mx-0"></i>\
                        </div>\
                      </div>\
                      <div class="preview-item-content">\
                        <h6 class="preview-subject font-weight-normal">' + value['nom_prenom'] + ' a soumis une tâche</h6>\
                        <p class="font-weight-light small-text mb-0 text-muted">\
                          Just now\
                        </p>\
                      </div>\
                    </a>';

         })
         $('.notif').html(notif);

         if (response.notif.length > 0) {
           $('.signe_notif').append('<span class="count"></span>')
         } else {
           $('.signe_notif').append('')

         }

       }
     });
   }
 </script>