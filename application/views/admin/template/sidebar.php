		<div id="sidebar"><div id="sidebar-wrapper"> <!-- Sidebar with logo and menu -->
			<script type="text/javascript"> 
			$(document).ready(function (){
				$('main-nav li a').click(function (){
					$('main-nav a').removeClass('current');
					$(this).addClass('current');
				});
			});
			</script>
			<h1 id="sidebar-title">Admin Page</h1>
		  
			<P></P>
		  
			<!-- Sidebar Profile links -->
			<div id="profile-links" >
				<div style="font-size: 15px">
					Hello, <a href="#" title="Edit your profile"><?php echo $this->session->userdata('username'); ?></a><br />	
				</div>
				<br />
				<a target="_blank" href="<?php echo base_url('home'); ?>" title="View the Site">View the Site</a> | <a href="<?php echo base_url(); ?>admin/logout" title="Sign Out">Sign Out</a>
			</div>        
			
			<ul id="main-nav">  <!-- Accordion Menu -->
				
				<li>
					<a href="<?php echo base_url('admin'); ?>" class="nav-top-item no-submenu"> <!-- Add the class "no-submenu" to menu items with no sub menu -->
						Dashboard
					</a>       
				</li>
				<li>
					<a href="#" class="nav-top-item">
						Gallery
					</a>
					<ul>
						<li><a href="<?php echo base_url('admin/album_form'); ?>">New Album</a></li>
						<li><a href="<?php //echo base_url('admin/details'); ?>">View Album</a></li>
					</ul>
				</li>  
				
				<li> 
					<a href="#" class="nav-top-item"> <!-- Add the class "current" to current menu item -->
					News
					</a>
					<ul>
						<li><a href="<?php echo base_url('admin/addnews'); ?>">Add News</a></li>
						<li><a href="<?php echo base_url('admin/managenews'); ?>">Manage</a></li> <!-- Add class "current" to sub menu items also -->
						<li><a href="<?php echo base_url('admin/addcat'); ?>">Create Categories</a></li>
						<li><a href="<?php echo base_url('admin/managecats'); ?>">Manage Categories</a></li>
					</ul>
				</li>
				
				<li>
					<a href="#" class="nav-top-item">
						Events
					</a>
					<ul>
						<li><a href="<?php echo base_url('admin/addpage'); ?>">Create Event</a></li>
						<li><a href="<?php echo base_url('admin/managepages'); ?>">Manage Event</a></li>
					</ul>
				</li>
				
				<li>
					<a href="#" class="nav-top-item">
						Members
					</a>
					<ul>
						<!--<li><a href="<?php //echo base_url('admin/addcat'); ?>">.....</a></li>-->
						
					</ul>
				</li>
				
				<li>
					<a href="#" class="nav-top-item">
						Users
					</a>
					<ul>
						<li><a href="<?php echo base_url('admin/adduser'); ?>">Add New</a></li>
						<li><a href="<?php echo base_url('admin/manageusers'); ?>">Manage Users</a></li>
					</ul>
				</li>
				
				<li>
					<a href="#" class="nav-top-item">
						Settings
					</a>
					<ul>
						<li><a href="<?php echo base_url('admin/settings'); ?>">Settings</a></li>
						<li><a href="<?php echo base_url('admin/details'); ?>">Details</a></li>
					</ul>
				</li> 

				 
				
			</ul> <!-- End #main-nav -->
			
			
		</div></div> <!-- End #sidebar -->