<?= $this->extend('layouts/main') ?>

<?= $this->section('content') ?>
<!-- partial -->
<div class="main-panel">
    <div class="content-wrapper">
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

    </div>
    <!-- content-wrapper ends -->

</div>
<!-- main-panel ends -->

<script src="/assets/js/jquery-3.6.1.min.js"></script>



<script>
    $(document).ready(function() {
        checkTaskFileSubmitted()



    })

     /** 
    La définition de la fonction qui récupère toues les tâches de la base de données
     */
    function checkTaskFileSubmitted() {
    


        $.ajax({
            method: "GET",
            url: "/checkTaskFileSubmitted",
            
            dataType: "json",

            success: function(response) {
                // console.log(response.task);

                if (response.code == 0) {
                    swal(""+response.msg+"", "Cliquer sur le boutton!", "error");
                    setInterval(function(){
                        window.location.href = "/"
                    }, 2000)
                    
                } else if (response.code == 1) {
                    swal(""+response.msg+"", "Cliquer sur le boutton!", "success");

                }else if (response.code == 2){
                    swal(""+response.msg+"", "Cliquer sur le boutton!", "success");

                }else{
                    
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
                        swal(""+response.msg+"", "Cliquer sur le boutton!", "success");


                        // alert(response.msg);
                        $('.photo').html('');
                        $('.path').html('');
                        $('.file_error').html('');


                    } else {
                        swal(""+response.msg+"", "Cliquer sur le boutton!", "error");

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