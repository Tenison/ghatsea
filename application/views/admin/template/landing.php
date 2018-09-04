<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Ghatsea Admin</title>

    <!-- Bootstrap core CSS -->
    <link rel="stylesheet" href="<?php echo base_url('assets/modern/css/bootstrap.min.css')?>">


    <!-- Custom styles for this template -->
    <link rel="stylesheet" href="<?php echo base_url('assets/modern/css/round-about.css')?>">

  </head>

  <body>


    <!-- Page Content -->
    <div class="container">

      <!-- Introduction Row -->
      <h2 class="my-4">
      	Welcome <small><?php echo $this->session->userdata('username'); ?></small>
        <div class="pull-right lead"><a href="<?php echo base_url(); ?>admin/logout" title="Sign Out">Sign Out</a></div>
      </h2>
      

      <!-- Team Members Row -->
      <div class="row">
        <div class="col-lg-12">
          <h2 class="my-4"> </h2>
        </div>
        <div class="col-lg-4 col-sm-6 text-center mb-4 pb-15">
          <h3>
            <small>Admin Controls</small>
          </h3>
          <a href="<?php echo base_url('admin/home'); ?>"><img class="rounded-circle img-fluid d-block mx-auto" src="<?php echo base_url('assets/modern/images/setting.png')?>" width="200" height="200" alt="">
          </a>
          <p></p>
        </div>
        <div class="col-lg-4 col-sm-6 text-center mb-4 pb-15">
          <h3>
            <small>Gallery</small>
          </h3>
          <a href="<?php echo base_url('albums'); ?>">
          	<img class="rounded-circle img-fluid d-block mx-auto" src="<?php echo base_url('assets/modern/images/gallery.png')?>" width="200" height="200" alt="">
          </a>
          <p></p>
        </div>
        <div class="col-lg-4 col-sm-6 text-center mb-4 pb-15">
          <h3>
            <small>Manage Members</small>
          </h3>
          <a href="<?php echo base_url('assets/modern/images/1.jpg')?>">
          	<img class="rounded-circle img-fluid d-block mx-auto" src="<?php echo base_url('assets/modern/images/users.png')?>" width="200" height="200" alt="">
          </a>
          
          <p></p>
        </div>
        <div class="col-lg-4 col-sm-6 text-center mb-4">
          <p></p>
          <h3>
            <small>News and Events</small>
          </h3>
          <a href="<?php echo base_url('assets/modern/images/1.jpg')?>">
          	<img class="rounded-circle img-fluid d-block mx-auto" src="<?php echo base_url('assets/modern/images/news.png')?>" width="200" height="200" alt="">
          </a>
          <p></p>
        </div>
        <div class="col-lg-4 col-sm-6 text-center mb-4">
          <p></p>
          <h3>
            <small>Add More</small>
          </h3>
          <a href="<?php echo base_url('assets/modern/images/1.jpg')?>">
          	<img class="rounded-circle img-fluid d-block mx-auto" src="http://placehold.it/200x200" width="200" height="200" alt="">
          </a>
          <p></p>
        </div>
        <div class="col-lg-4 col-sm-6 text-center mb-4">
          <p></p>
          <h3>
            <small>Add More</small>
          </h3>
          <a href="<?php echo base_url('assets/modern/images/1.jpg')?>">
          <img class="rounded-circle img-fluid d-block mx-auto" src="http://placehold.it/200x200" width="200" height="200" alt="">	
          </a>
          <p></p>
        </div>
      </div>

    </div>
    <!-- /.container -->



    <!-- Bootstrap core JavaScript -->
	<script src="<?php echo base_url('assets/modern/js/jquery.js')?>"></script>
	<script src="<?php echo base_url('assets/modern/js/bootstrap.min.js')?>"></script>

  </body>

</html>
