<?= $this->extend('layouts/main') ?>

<?= $this->section('content') ?>
<!-- partial -->
<div class="main-panel">
    <!-- <div class="content-wrapper">
        <div class="row">
            <div class="col-md-12 grid-margin">
                <form action="/editTaskFile" method="post" id="importTaskFile">
                    <span class="text-danger file_error"></span>
                    <div class="path">

                    </div>


                    <input type="file" name="file">

                    <button class="btn btn-primary">Importer</button>
                </form>

            </div>
        </div>

    </div> -->
    <!-- content-wrapper ends -->
    <br><br>
    <div class="container">
        <div class="row">
            <div class="col-12 col-sm-12">
                <div class="card card-primary card-outline card-outline-tabs">
                    <div class="card-header p-0 border-bottom-0">
                        <ul class="nav nav-tabs" id="custom-tabs-four-tab" role="tablist">

                            <li class="nav-item">
                                <a class="nav-link active" id="custom-tabs-four-personnel-tab" data-toggle="pill" href="#custom-tabs-four-personnel" role="tab" aria-controls="custom-tabs-four-personnel" aria-selected="false">Personnel</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link " id="custom-tabs-four-password-tab" data-toggle="pill" href="#custom-tabs-four-password" role="tab" aria-controls="custom-tabs-four-password" aria-selected="true">Changer mot de passe</a>
                            </li>

                        </ul>
                    </div>
                    <div class="card-body">
                        <div class="tab-content" id="custom-tabs-four-tabContent">

                            <div class="tab-pane fade active show" id="custom-tabs-four-personnel" role="tabpanel" aria-labelledby="custom-tabs-four-personnel-tab">
                                <div class="container ">
                                    <div class="row  justify-content-center">
                                        <div class="col-md-8 ">
                                            <form action="/editPersonnel" method="post" id="editPersonnel">
                                                <div class="form-group photo">

                                                </div>
                                                <div class="form-group nom  bg-light">


                                                </div>

                                                <div class="form-group genre bg-light">



                                                </div>
                                                <div class="form-group dateNaiss bg-light">

                                                </div>


                                                <button class="btn btn-primary">Sauvegarder</button>
                                            </form>

                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade " id="custom-tabs-four-password" role="tabpanel" aria-labelledby="custom-tabs-four-password-tab">
                                <div class="container ">
                                    <div class="row  justify-content-center">
                                        <div class="col-md-8 ">
                                            <form action="/editPassword" method="post" id="editPassword">

                                                <div class="form-group oldpassword  bg-light">
                                                    <label>Actuel mot de passe</label>
                                                    <input type="text" name="oldpassword" class="form-control oldpassword" placeholder="Actuel mot de passe">
                                                    <span class="text-danger oldpassword_error"></span>
                                                </div>

                                                <div class="form-group newpassword bg-light">
                                                    <label>Nouveau mot de passe</label>
                                                    <input type="text" name="newpassword" class="form-control newpassword" placeholder="Nouveau mot de passe">
                                                    <span class="text-danger newpassword_error"></span>

                                                </div>

                                                <div class="form-group cnewpassword  bg-light">
                                                    <label>Confirmer mot de passe</label>
                                                    <input type="text" name="cnewpassword" class="form-control newpassword" placeholder="Confirmer mot de passe">
                                                    <span class="text-danger cnewpassword_error"></span>

                                                </div>

                                                <button class="btn btn-primary">Modifier</button>

                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="custom-tabs-four-etude" role="tabpanel" aria-labelledby="custom-tabs-four-etude-tab">
                                <div class="container ">
                                    <div class="row  justify-content-center">
                                        <div class="col-md-8 ">
                                            <form action="/editEtude" method="post" id="editEtude">

                                                <div class="form-group  promotionDUT bg-light">

                                                </div>


                                                <div class="form-group diplomeDUT bg-light">

                                                </div>


                                                <div class="form-group promotionLicence bg-light">


                                                </div>



                                                <div class="form-group diplomeLicence bg-light">

                                                </div>

                                                <br>

                                                <button class="btn btn-primary">Modifier</button>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="tab-pane fade" id="custom-tabs-four-professionnel" role="tabpanel" aria-labelledby="custom-tabs-four-professionnel-tab">
                                <div class="container ">
                                    <div class="row  justify-content-center">
                                        <div class="col-md-8 ">
                                            <form action="/addCV" method="post" id="addCV">
                                                <div class="form-group cv bg-light">
                                                    <label>Ajouter votre CV</label>
                                                    <div class="row">
                                                        <span class="text-danger cv_error"></span>
                                                    </div>
                                                    <div class="row">
                                                        <input type="file" name="cv"> <button class=" btn btn-primary"><span class="icon icon-save"></span></button>
                                                    </div>
                                                    <div class="pathCV">

                                                    </div>
                                                </div>

                                            </form>

                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.card -->
                </div>
            </div>
        </div>
    </div>

</div>
<!-- main-panel ends -->

<script src="/assets/js/jquery-3.6.1.min.js"></script>


<script>
    $(document).ready(function() {
        $('.photo').html("");
        $('.nom').html("");
        $('.genre').html("");
        $('.dateNaiss').html("");

        getLoggedInUserPhoto();
        getLoggedInUserData();
        getLoggedInUserCV();

        //lorsqu'on clique sur compte

        $(document).on('click', '#custom-tabs-four-compte-tab', function() {
            $('.adresse').html("");
            $('.telephone').html("");
            $('.facebook').html("");
            $('.twitter').html("");
            $('.linkedln').html("");
            $('.vuTel').html("");
            $('.vuDn').html("");

            getLoggedInUserDataCompte();

        });

        //lorsqu'on clique sur etude

        $(document).on('click', '#custom-tabs-four-etude-tab', function() {
            $('.promotionDUT').html("");
            $('.diplomeDUT').html("");
            $('.promotionLicence').html("");
            $('.diplomeLicence').html("");


            getLoggedInUserDataEtude();

        });
        //lorsqu'on clique sur professionnel

        $(document).on('click', '#custom-tabs-four-professionnel-tab', function() {
            $('.situation').html("");
            $('.entreprise').html("");
            $('.poste').html("");


            getLoggedInUserDataProfessionnel();

        });






        //Importer la photo de profile

        $('#importerPhoto').submit(function(e) {
            e.preventDefault();
            var form = this
            $.ajax({
                method: $(form).attr('method'),
                url: $(form).attr('action'),
                data: new FormData(form),
                dataType: "json",
                processData: false,
                contentType: false,
                success: function(response) {
                    if ($.isEmptyObject(response.error)) {
                        if (response.code == 1) {
                            $('#importerModal').modal('hide');
                            $('#importerModal').find('input').val('');

                            suc(response.msg);
                            $('.photo').html('');
                            $('.photo_error').html('');

                            getLoggedInUserPhoto();

                        } else {
                            err(response.msg);
                        }
                    } else {
                        $.each(response.error, function(prefix, val) {
                            $(form).find('span.' + prefix + '_error').text(val);
                        });
                    }
                }
            });

        });



        ;

        //Lorsqu'on sauvegarde la modification des informations du compte

        $('#editCompte').submit(function(e) {
            e.preventDefault();
            var form = this
            $.ajax({
                method: $(form).attr('method'),
                url: $(form).attr('action'),
                data: new FormData(form),
                dataType: "json",
                processData: false,
                contentType: false,
                success: function(response) {
                    console.log(response.error)
                    if ($.isEmptyObject(response.error)) {
                        if (response.code == 1) {
                            $('.nom').html("");
                            $('.genre').html("");
                            $('.dateNaiss').html("");
                            getLoggedInUserData()
                            suc(response.msg)
                        } else {
                            err(response.msg)
                        }

                    } else {
                        $.each(response.error, function(prefix, val) {
                            $(form).find('span.' + prefix + '_error').text(val);
                        });
                    }
                }
            });
        });


        //Lorsqu'on sauvegarde la modification des informations professionnelles

        $('#editProfessionnel').submit(function(e) {
            e.preventDefault();
            var form = this
            $.ajax({
                method: $(form).attr('method'),
                url: $(form).attr('action'),
                data: new FormData(form),
                dataType: "json",
                processData: false,
                contentType: false,
                success: function(response) {
                    console.log(response.error)
                    if ($.isEmptyObject(response.error)) {
                        if (response.code == 1) {
                            $('.situation').html("");
                            $('.entreprise').html("");
                            $('.poste').html("");


                            getLoggedInUserDataProfessionnel();
                            suc(response.msg)
                        } else {
                            err(response.msg)
                        }

                    } else {
                        $.each(response.error, function(prefix, val) {
                            $(form).find('span.' + prefix + '_error').text(val);
                        });
                    }
                }
            });
        });



        //Changer de mot de passe

        $('#editPassword').submit(function(e) {
            e.preventDefault();
            var form = this
            $.ajax({
                method: $(form).attr('method'),
                url: $(form).attr('action'),
                data: new FormData(form),
                dataType: "json",
                processData: false,
                contentType: false,
                success: function(response) {
                    console.log(response.error)
                    if ($.isEmptyObject(response.error)) {
                        if (response.code == 1) {
                            $('.oldpassword').val("");
                            $('.newpassword').val("");
                            $('.cnewpassword').val("");
                            // swal(""+response.msg+"", "Cliquer sur le boutton!", "success");
                            alert(response.msg)

                        } else {
                            alert(response.msg)

                            // swal(""+response.msg+"", "Cliquer sur le boutton!", "error");
                        }

                    } else {
                        $.each(response.error, function(prefix, val) {
                            $(form).find('span.' + prefix + '_error').text(val);
                        });
                    }
                }
            });
        });


        //Lorsqu'on coche pour masquer le numero de téléphone
        $(document).on('click', '.tel', function() {
            $.ajax({
                method: "POST",
                url: "/vuTelephone",
                dataType: "json",
                success: function(response) {

                }
            });
        });

        //Lorsqu'on coche pour masquer la date de naissance
        $(document).on('click', '.dn', function() {
            $.ajax({
                method: "POST",
                url: "/vuDateNaiss",
                dataType: "json",
                success: function(response) {

                }
            });
        });

        //Lorsqu'on clique sur ajouter un user

        $('#insertEntreprise').submit(function(e) {
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
                            $('#addEntreprise').modal('hide');
                            $('.situation').html("");
                            $('.entreprise').html("");
                            $('.poste').html("");


                            getLoggedInUserDataProfessionnel();
                            suc(response.msg)

                            suc(response.msg)


                        } else {
                            suc(response.msg)

                        }
                    } else {
                        $.each(response.error, function(prefix, val) {
                            $(form).find('span.' + prefix + '_error').text(val);
                        });
                    }
                }
            });

        });



    });

    function suc(msg) {
        var Toast = Swal.mixin({
            toast: true,
            position: 'top-end',
            showConfirmButton: false,
            timer: 3000
        });
        Toast.fire({
            icon: 'success',
            title: msg

        });

    }

    function err(msg) {
        var Toast = Swal.mixin({
            toast: true,
            position: 'top-end',
            showConfirmButton: false,
            timer: 3000
        });
        Toast.fire({
            icon: 'error',
            title: msg

        });

    }

    function getLoggedInUserPhoto() {
        $.ajax({
            method: "GET",
            url: "/getLoggedInUserPhoto",

            dataType: "json",
            success: function(response) {
                // console.log(response.userphoto)
                $('.photo').append('\
                <img width="80"  src="' + response.userphoto.photo + '" alt="photo de profile">\
                <!-- Button to Open the Modal -->\
                 <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#importerModal">\
                     Modifier\
                 </button>\
                ');
                $('.path').append('<input type="hidden" name="path" value="' + response.userphoto.photo + '">')

            }
        });
    }

    function getLoggedInUserCV() {
        $.ajax({
            method: "GET",
            url: "/getLoggedInUserCV",

            dataType: "json",
            success: function(response) {
                // console.log(response.userphoto)

                $('.pathCV').append('<input type="hidden" name="pathCV" value="' + response.userCV.cv + '">')

            }
        });
    }

    function getLoggedInUserData() {
        $.ajax({
            method: "GET",
            url: "/getLoggedInUserData",

            dataType: "json",
            success: function(response) {
                console.log(response.userdata)
                $('.nom').append('\
                    <label>Nom</label>\
                    <input type="text" name="nom" class="form-control " value="' + response.userdata.nom + '">\
                    <span class="text-danger nom_error"></span>\
                ')
                $('.genre').append('\
                    <label>Genre <strong>' + response.userdata.genre + '</strong></label>\
                        <select class="form-control" name="genre" id="">\
                            <option value="' + response.userdata.genre + '">------</option>\
                            <option value="Homme">Homme</option>\
                            <option value="Femme">Femme</option>\
                        </select>\
                        <span class="text-danger genre_error"></span>\
                ')

                $('.dateNaiss').append('\
                    <label>Date de naissance</label>\
                    <input type="date" name="dateNaiss" class="form-control " value="' + response.userdata.dateNaiss + '">\
                    <span class="text-danger dateNaiss_error"></span>\
                ')

            }
        });
    }

    function getLoggedInUserDataCompte() {
        $.ajax({
            method: "GET",
            url: "/getLoggedInUserData",

            dataType: "json",
            success: function(response) {
                console.log(response.userdata)

                $('.adresse').append('\
                    <label>Adresse </label>\
                    <input type="text" name="adresse" class="form-control " value="' + response.userdata.adresse + '">\
                    <span class="text-danger adresse_error"></span>\
                ')

                $('.telephone').append('\
                    <label>Téléphone </label>\
                    <input type="text" name="telephone" class="form-control " value="' + response.userdata.telephone + '">\
                    <span class="text-danger telephone_error"></span>\
                ')

                $('.facebook').append('\
                    <label>Facebook </label>\
                    <input type="text" name="facebook" class="form-control " value="' + response.userdata.facebook + '">\
                    <span class="text-danger facebook_error"></span>\
                ')

                $('.twitter').append('\
                    <label>Twitter </label>\
                    <input type="text" name="twitter" class="form-control " value="' + response.userdata.twitter + '">\
                    <span class="text-danger twitter_error"></span>\
                ')

                $('.linkedln').append('\
                    <label>LinkedLn </label>\
                    <input type="text" name="linkedln" class="form-control " value="' + response.userdata.linkedln + '">\
                    <span class="text-danger linkedln_error"></span>\
                ')
                if (response.userdata.vuTel == 0) {
                    $('.vuTel').append('\
                    <label class="form-check-label">\
                        <input type="checkbox" class="form-check-input tel" value="" >Masquer numero de téléphone\
                    </label>\
                ')

                } else if (response.userdata.vuTel == 1) {
                    $('.vuTel').append('\
                    <label class="form-check-label">\
                        <input type="checkbox" class="form-check-input tel" value="" checked>Masquer numero de téléphone\
                    </label>\
                ')

                }

                if (response.userdata.vuDn == 0) {
                    $('.vuDn').append('\
                        <label class="form-check-label">\
                            <input type="checkbox" class="form-check-input dn" value="">Masquer date de naissance\
                        </label>\
                    ')

                } else if (response.userdata.vuDn == 1) {
                    $('.vuDn').append('\
                        <label class="form-check-label">\
                            <input type="checkbox" class="form-check-input dn" value="" checked>Masquer date de naissance\
                        </label>\
                    ')

                }




            }
        });
    }

    function getLoggedInUserDataEtude() {
        $.ajax({
            method: "GET",
            url: "/getLoggedInUserData",

            dataType: "json",
            success: function(response) {
                console.log(response.userdata)
                console.log(response.userdata)

                $('.promotionDUT').append('\
                     <label>Promotion DUT <strong>' + response.userdata.annee + '</strong></label>\
                        <span class="text-danger promotionDUT_error"></span>\
                ')
                $.each(response.promo, function(key, value) {
                    $('.promotionDUTSel').append('\
                        <option value="' + value['idPDUT'] + '">' + value['annee'] + '</option>\
                    ')
                });


                $('.diplomeDUT').append('\
                    <label>Filiere DUT <strong>' + response.userdata.nomDUT + '</label>\
                        <span class="text-danger dut_error"></span>\
                ')
                $.each(response.dut, function(key, value) {
                    $('.diplomeDUTSel').append('\
                        <option value="' + value['idDUT'] + '">' + value['nomDUT'] + '</option>\
                    ')
                })


                $('.promotionLicence').append('\
                    <label>Promotion Licence <strong>' + response.userdata.anneePL + '</strong></label>\
                        <span class="text-danger promotionLicence_error"></span>\
                ')
                $.each(response.promoLI, function(key, value) {
                    $('.promotionLicenceSel').append('\
                        <option value="' + value['idPLI'] + '">' + value['anneePL'] + '</option>\
                    ')
                })


                $('.diplomeLicence').append('\
                    <label>Filiere Licence <strong>' + response.userdata.nomLI + '</strong></label>\
                        <span class="text-danger licence_error"></span>\
                ')
                $.each(response.licence, function(key, value) {
                    $('.diplomeLicenceSel').append('\
                        <option value="' + value['idLI'] + '">' + value['nomLI'] + '</option>\
                    ')
                })

            }
        });
    }

    function getLoggedInUserDataProfessionnel() {
        $.ajax({
            method: "GET",
            url: "/getLoggedInUserData",

            dataType: "json",
            success: function(response) {
                console.log(response.userdata)
                $('.situation').append('\
                    <label>Situation actuelle <strong>' + response.userdata.nomS + '</strong></label>\
                        <span class="text-danger situation_error"></span>\
                ')

                $('.entreprise').append('\
                    <label>Entreprise actuelle <strong>' + response.userdata.nomE + '</strong></label>\
                        <span class="text-danger entreprise_error"></span>\
                ')



            }
        });
    }
</script>

<?= $this->endSection() ?>