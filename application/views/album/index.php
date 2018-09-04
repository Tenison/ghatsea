<?php defined('BASEPATH') OR exit('No direct script access allowed'); ?>
<!DOCTYPE html>
<html lang="en">
<?php $this->load->view('album/templates/header.php'); ?>
<?php $this->load->view('album/templates/navbar.php'); ?>


<body>
	<?php 
		if($title == 'Albums') $this->load->view('album/album.php');
		elseif($title == 'Add/Edit Album') $this->load->view('album/album_form.php'); 
		elseif($title == 'View Album') $this->load->view('album/view_album.php');
	?>
</body>
<?php $this->load->view('album/templates/footer.php'); ?>
</html>

