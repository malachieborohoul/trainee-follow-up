<?= $this->extend('layouts/main') ?>

<?= $this->section('id_student') ?>
<?php if (isset($student_data->id_etudiant)) : ?>
    <?= $student_data->id_etudiant ?>
    <?php endif ?>
<?= $this->endSection() ?>

<?= $this->section('content') ?>
<!-- partial -->
<div class="main-panel">
    <div class="content-wrapper">
        <div class="row">
            <div class="col-md-12 grid-margin">
                <div class="row">
                    <div class="col-12 col-xl-8 mb-4 mb-xl-0">
                        <h3 class="font-weight-bold">Bienvenue
                            <!-- Etudiant -->
                            <?php if ($student_data) : ?>
                                <?= $student_data->nom_prenom ?>

                            <?php else : ?>

                            <?php endif; ?>
                            <!-- Encadreur école -->
                            <?php if ($school_framer_data) : ?>
                                <?= $school_framer_data->speudo ?>

                            <?php else : ?>

                            <?php endif; ?>

                            <!-- Encadreur industriel -->
                            <?php if ($industrial_framer_data) : ?>
                                <?= $industrial_framer_data->nom ?> <?= $industrial_framer_data->prenom ?>

                            <?php else : ?>

                            <?php endif; ?>
                        </h3>
                        <h6 class="font-weight-normal mb-0">Vous avez <span class="text-primary">3 notifications non lues!</span></h6>
                    </div>
                    <div class="col-12 col-xl-4">
                        <div class="justify-content-end d-flex">
                            <div class="dropdown flex-md-grow-1 flex-xl-grow-0">
                                <button class="btn btn-sm btn-light bg-white dropdown-toggle" type="button" id="dropdownMenuDate2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="true">
                                    <i class="mdi mdi-calendar"></i> Today (10 Jan 2021)
                                </button>
                                <div class="dropdown-menu dropdown-menu-right" aria-labelledby="dropdownMenuDate2">
                                    <a class="dropdown-item" href="#">January - March</a>
                                    <a class="dropdown-item" href="#">March - June</a>
                                    <a class="dropdown-item" href="#">June - August</a>
                                    <a class="dropdown-item" href="#">August - November</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <!-- Etudiant -->
        <?php if ($student_data) : ?>
            <?= $this->include("/partials/tasks") ?>

        <?php else : ?>

        <?php endif; ?>
        


        <?= $this->include("/partials/slider") ?>


    </div>
    <!-- content-wrapper ends -->

</div>
<!-- main-panel ends -->
<?= $this->endSection() ?>