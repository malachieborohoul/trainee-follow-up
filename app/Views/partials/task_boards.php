<div class="row">

    <div class="col-md-6 grid-margin transparent">
        <div class="row">
            <div class="col-md-6 mb-4 stretch-card transparent">
                <div class="card card-tale">
                    <div class="card-body">
                        <p class="mb-4">Tâche courant</p>
                        <p class="fs-30 mb-2 current_task"></p>
                        <p>10.00% (30 days)</p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 mb-4 stretch-card transparent">
                <div class="card card-dark-blue">
                    <div class="card-body">
                        <p class="mb-4">Etat de la tâche</p>
                        <p class="fs-30 mb-2 task_state"></p>
                        <p>22.00% (30 days)</p>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-6 mb-4 mb-lg-0 stretch-card transparent">
                <div class="card card-light-blue">
                    <div class="card-body">
                        <p class="mb-4">Date limite</p>
                        <p class="fs-30 mb-2 deadline"></p>
                        <p>2.00% (30 days)</p>
                    </div>
                </div>
            </div>
            <div class="col-md-6 stretch-card transparent">
                <div class="card card-light-danger">
                    <div class="card-body">
                        <p class="mb-4">Progression</p>
                        <p class="fs-30 mb-2 progression"></p>
                        <p>0.22% (30 days)</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="/assets/js/jquery-3.6.1.min.js"></script>

<script>
    $(document).ready(function() {
        fetchInProgressTask()
        setInterval(function() {
            fetchInProgressTask();

        }, 5000);

    })

    /** 
    La définition de la fonction qui récupère toues les tâches de la base de données
     */
    function fetchInProgressTask() {
        $('.current_task').html("")
        $('.task_state').html("")
        $('.deadline').html("")
        $('.progression').html("")

        $.ajax({
            method: "GET",
            url: "/fetchInProgressTask",

            dataType: "json",

            success: function(response) {
                console.log(response.task);

                if (response.task == false) {
                    $('.current_task').append("En attente")
                    $('.task_state').append("En attente")
                    $('.deadline').append("En attente")
                    $('.progression').append("En attente")
                } else {

                    $('.current_task').append("" + response.task.tache + "")
                    $('.task_state').append("" + response.task.statut + "")
                    $('.deadline').append("" + response.task.date_limite + "")
                    $('.progression').append("En attente")

                }

            }
        });
    }
</script>