<?= $this->extend('layouts/main') ?>

<?= $this->section('id_student') ?>
<?php if (isset($id_student)) : ?>
    <?= $id_student ?>
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
                           
                            <!-- Encadreur école -->
                            <?php if (isset($school_framer_data)) : ?>
                                <?= $school_framer_data->speudo ?>
                                <?= $this->section('role') ?>

                                <?= $this->endSection() ?>

                                <?= $this->section('id_framer') ?>
                                <?php if (isset($school_framer_data->id_compte)) : ?>
                                    <?= $school_framer_data->id_compte ?>
                                <?php endif ?>
                                <?= $this->endSection() ?>

                                <?= $this->section('id_role') ?>
                                <?= 2 ?>
                                <?= $this->endSection() ?>

                            <?php else : ?>

                            <?php endif; ?>

                            <!-- Encadreur industriel -->
                            <?php if (isset($industrial_framer_data)) : ?>
                                <?= $industrial_framer_data->nom ?> <?= $industrial_framer_data->prenom ?>
                                <?= $this->section('role') ?>
                                <?= $this->endSection() ?>


                                <?= $this->section('id_framer') ?>
                                <?php if (isset($industrial_framer_data->id_enc)) : ?>
                                    <?= $industrial_framer_data->id_enc ?>
                                <?php endif ?>
                                <?= $this->endSection() ?>

                                <?= $this->section('id_role') ?>
                                <?= 3 ?>
                                <?= $this->endSection() ?>

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
        <?= $this->include("/partials/student_tasks") ?>

        <?php if ($id_student) : ?>

        <?php elseif ($school_framer_data) : ?>
            <?= $this->include("/partials/students") ?>
        <?php elseif ($industrial_framer_data) : ?>
            <?= $this->include("/partials/students") ?>


        <?php endif; ?>



        <?= $this->include("/partials/slider") ?>


    </div>
    <!-- content-wrapper ends -->

</div>
<!-- main-panel ends -->
<?= $this->endSection() ?>