<?= $this->extend('layouts/main') ?>
<!-- En fonction du rôle on affiche le boutton Soumettre document -->
<?= $this->section('role') ?>
<li class="nav-item">
    <a class="nav-link" href="/uploadFile">
        <i class="icon-paper menu-icon"></i>
        <span class="menu-title">Soumettre document</span>
    </a>
</li>
<?= $this->endSection() ?>

<?= $this->section('content') ?>
<!-- partial -->
<div class="main-panel">
    <div class="content-wrapper">
        <div class="notification"></div>
        <h3 class="fichier"></h3>
        <!-- <div class="row">
            <div class="col-md-12 grid-margin">
                <form action="/editTaskFile" method="post" id="importTaskFile">
                    <span class="text-danger file_error"></span>
                    <div class="path">

                    </div>


                    <input type="file" name="file">

                    <button class="btn btn-primary">Importer</button>
                </form>

            </div>
        </div> -->
        <div class="role" style="display: none;"><?=session()->get('loggedUserRole')?></div>
        <div class="container">
            <form action="/commenter" method="post" id="commenter">
                <div class="row">
                    <div class="form-group col-md-6">
                        <textarea name="message" id="message" cols="30" rows="2" placeholder="Laisser un commentaire" class="form-control message"></textarea>
                        <span class="text-danger error_message"></span>
                    </div>
                    <input type="hidden" name="idBlog" class="idBlog">
                    <div class="form-group float-right">
                        <input type="submit" value="Commenter" class="btn btn-primary">
                    </div>
                </div>

            </form>
        </div>

        <div id="comment"></div>

    

        

    </div>
    <!-- content-wrapper ends -->

</div>
<!-- main-panel ends -->

<script src="/assets/js/jquery-3.6.1.min.js"></script>



<script>
    $(document).ready(function() {
        // checkTaskFileSubmittedFramer()
        getAllComments();
        setInterval(function() {
            $('.notification').html('')
            getAllComments();

        }, 1000)





    })


    /**
     * Lorsqu'on clique sur le boutton commenter
     */
    $('#commenter').submit(function(e) {
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
                        $('.message').val("");
                        $('#comment').html('');
                        getAllComments();
                        //   getArticlePopulaire();
                        $('.notification').append('<div class="alert alert-success">' + response.msg + '</div>')



                    } else {
                        $('.notification').append('<div class="alert alert-danger">' + response.msg + '</div>')
                    }
                } else {
                    $.each(response.error, function(prefix, val) {
                        $(form).find('span.error_' + prefix + '').text(val);
                    });
                }
            }
        });
    });

    $(document).on('click', '.supprimer', function() {
        // var id= $(this).find('id').text();
        var id = $(this).closest('div').find('.commentaireId').text();
        //    alert(id)
        $.ajax({
            method: "post",
            url: "/deleteComment",
            data: {
                "id": id
            },
            dataType: "json",
            success: function(response) {
                //  console.log(response.update)
                $('#comment').html('');
                getAllComments();

                // $('notif').html('');
                // $('nombreNotif').html('');
                // getNotifSuivre();
            }
        });
    });

    /**
     * Récuperer tous les commentaires par rapport à cet articles
     *
     * @return void
     */
    function getAllComments(commentId) {


        $.ajax({
            method: "GET",
            url: "/getAllComments",
            dataType: "json",
            success: function(response) {
                console.log(response.comment);
                //    console.log(response.reponse);
                var html = '';
                var nom = ""
                var style=""
                var role=$('.role').text()
                // alert(role)

                $.each(response.comment, function(index, value) {
                    if (value['id_enc'] == 0 && role==1) {
                        nom = "Moi"
                        style=""

                    } if(value['id_enc'] != 0 && role==1){
                        nom = "Encadreur"
                        style="display:none"

                    }
                    else if (value['id_enc'] == 0 && role==2) {
                        nom = "Etudiant"
                        style="display:none"

                    }else if(value['id_enc'] != 0 && role==2){
                        nom = "Moi"
                        style=""

                    }
                    else if (value['id_enc'] == 0 && role==3) {
                        nom = "Etudiant"
                        style="display:none"

                    }else if(value['id_enc'] != 0 && role==3){
                        nom = "Moi"
                        style=""

                    }
                    // else if (value['id_etudiant'] == 0){
                    //     nom = "Encadreur"
                    //     style="display:none"

                    // }




                    html +=
                     

                        '<div class="card col-6 comment" >\
                            <div class="card-body">\
                            <p style="display:none" class="commentaireId">' + value['id_commentaire'] + '</p>\
                                <h5 class="card-title">' + nom + '</h5>\
                                <p class="card-text">' + value['commentaire'] + '</p>\
                                <button style="'+style+'" class="btn btn-danger supprimer">Supprimer</button >\
                            </div>\
                        </div>\
                        <br>'
                });
                //    $(".nombreComment").html(nbrComment+' commentaires');
                $('#comment').html(html)



            }
        });


    }


    /** 
    La définition de la fonction qui récupère toues les tâches de la base de données
     */
    function checkTaskFileSubmittedFramer() {



        $.ajax({
            method: "GET",
            url: "/checkTaskFileSubmittedFramer",

            dataType: "json",

            success: function(response) {
                // console.log(response.file);

                if (response.code == 0) {
                    // swal("" + response.msg + "", "Cliquer sur le boutton!", "error");
                    // setInterval(function() {
                    //     window.location.href = "/"
                    // }, 2000)


                } else if (response.code == 1) {
                    $('.fichier').append("<a  href="+response.file.doc+"  class='btn btn-primary' download>Télécharger le document</a>")

                } else if (response.code == 2) {
                    $('.fichier').append(response.msg)


                } else {

                }

            }
        });
    }




    //Importer fichier de tâche

    $('#importTaskFile').submit(function(e) {
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
                        // $('#importerModal').modal('hide');
                        // $('#importerModal').find('input').val('');
                        swal("" + response.msg + "", "Cliquer sur le boutton!", "success");


                        // alert(response.msg);
                        $('.photo').html('');
                        $('.path').html('');
                        $('.file_error').html('');


                    } else {
                        swal("" + response.msg + "", "Cliquer sur le boutton!", "error");

                        // alert(response.msg);
                    }
                } else {
                    $.each(response.error, function(prefix, val) {
                        $(form).find('span.' + prefix + '_error').text(val);
                    });
                }
            }
        });

    });
</script>

<?= $this->endSection() ?>