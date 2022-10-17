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
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="/assets/css/vertical-layout-light/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="/assets/images/favicon.png" />
</head>

<body>
  <div class="container-scroller">
    <div class="container-fluid page-body-wrapper full-page-wrapper">
      <div class="content-wrapper d-flex align-items-center auth px-0">
        <div class="row w-100 mx-0">
          <div class="col-lg-4 mx-auto">
            <div class="auth-form-light text-left py-5 px-4 px-sm-5 login">
              <div class="brand-logo">
                <img src="/assets/images/logo.svg" alt="logo">
              </div>
              <h4>Soyez la bienvenue</h4>
              <h6 class="font-weight-light">Connectez vous en tant qu'étudiant</h6>
              <form action="/logStudent" method="post" id="login" class="pt-3">
                <div class="form-group">
                  <input type="text" class="form-control form-control-lg matricule" name="matricule" id="matricule" placeholder="Matricule">
                  <span class="text-danger error-text matricule_error"></span>

                </div>
                <div class="form-group">
                  <input type="password" class="form-control form-control-lg password " name="password" id="password" placeholder="Mot de passe">
                  <span class="text-danger error-text password_error"></span>

                </div>

                <div class="form-group">
                  <input type="hidden" class="form-control form-control-lg  " value="1" name="role" id="role" placeholder="Mot de passe">
                </div>
                <div class="mt-3">
                  <button class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn">SE CONNECTER</button>
                </div>
                <div class="my-2 d-flex justify-content-between align-items-center">
                  <div class="form-check">
                    <label class="form-check-label text-muted">
                      <input type="checkbox" class="form-check-input">
                      Gardez-moi connecté
                    </label>
                  </div>
                  <a href="/login" class="auth-link text-black ">Je suis un encadreur industriel?</a>
                  <a href="/loginSchoolFramer" class="auth-link text-black ">Je suis un encadreur école?</a>
                  
                  <a href="#" class="auth-link text-black">Mot de passe oublié?</a>
                </div>

                <!-- <div class="text-center mt-4 font-weight-light">
                  Don't have an account? <a href="register.html" class="text-primary">Create</a>
                </div> -->
              </form>


            </div>
          </div>
        </div>
      </div>
      <!-- content-wrapper ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->

  <script src="/assets/js/jquery-3.6.1.min.js"></script>


  <script>
    $(document).ready(function() {

      // setInterval(function() {
      //   getNotifSuivre();

      // }, 5000);
      // getNotifSuivre();




    });

    $('#login').submit(function(e) {
      e.preventDefault();
      var form = this
      $.ajax({
        method: $(form).attr('method'),
        url: $(form).attr('action'),
        data: new FormData(form),
        dataType: "json",
        processData: false,
        contentType: false,
        beforeSend: function() {
          $(form).find('span.error-text').text('');

        },
        success: function(response) {
          if ($.isEmptyObject(response.error)) {
            if (response.code == 1) {
              $('.email').html('');
              $('.password').html('');
              window.location = '/';
            } else {
              // alert(response.msg)
              swal("" + response.msg + "", "Cliquer sur le boutton!", "success");

            }
          } else {
            $.each(response.error, function(prefix, val) {
              $(form).find('span.' + prefix + '_error').text(val)
            });
          }
        }
      });
    });

    
   
 
  

   
  </script>

  <!-- plugins:js -->
  <script src="/assets/vendors/js/vendor.bundle.base.js"></script>
  <!-- endinject -->
  <!-- Plugin js for this page -->
  <!-- End plugin js for this page -->
  <!-- inject:js -->
  <script src="/assets/js/off-canvas.js"></script>
  <script src="/assets/js/hoverable-collapse.js"></script>
  <script src="/assets/js/template.js"></script>
  <script src="/assets/js/settings.js"></script>
  <script src="/assets/js/todolist.js"></script>
  <!-- endinject -->
</body>

</html>