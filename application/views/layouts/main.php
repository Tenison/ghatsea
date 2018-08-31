<!DOCTYPE html>
	<html lang="en">
		<?php $this->load->view('layouts/header') ?>

	<body data-spy="scroll" data-offset="50" data-target=".navbar-collapse">

		<?php $this->load->view('layouts/navbar') ?>

		<!-- =========================
		     PRE LOADER       
		============================== -->
		<div class="preloader">
			<div class="sk-rotating-plane"></div>
		</div>

		<?php $this->load->view($main_view); ?>

		<?php $this->load->view('layouts/footer') ?>
	</body>
</html>