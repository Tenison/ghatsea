<!-- =========================
    MEMBERS SECTION   
============================== -->
<section id="speakers" class="parallax-section">
	<div class="container" >
		<div class="row">

			<div class="col-md-12 col-sm-12 wow bounceIn">
				<div class="section-title">
					<h2>GhATSEA</h2>
					<p>Current Exective Members of GhATSEA</p>
				</div>
			</div>

			<!-- Testimonial Owl Carousel section
			================================================== -->
			<div id="owl-speakers" class="owl-carousel">

				<div class="item wow fadeInUp col-md-3 col-sm-3" data-wow-delay="0.6s">
					<div class="speakers-wrapper">
						<img src="<?php echo base_url('assets/modern/images/1.jpg')?>" class="img-responsive" alt="speakers">
							<div class="speakers-thumb">
								<h3>Jenny Green</h3>
								<h6>Exective Member</h6>
							</div>
					</div>
				</div>

				<div class="item wow fadeInUp col-md-3 col-sm-3" data-wow-delay="0.4s">
					<div class="speakers-wrapper">
						<img src="<?php echo base_url('assets/modern/images/2.jpg')?>" class="img-responsive" alt="speakers">
							<div class="speakers-thumb">
								<h3>David Yoon</h3>
								<h6>Creative Director</h6>
							</div>
					</div>
				</div>

				<div class="item wow fadeInUp col-md-3 col-sm-3" data-wow-delay="0.6s">
					<div class="speakers-wrapper">
						<img src="<?php echo base_url('assets/modern/images/3.jpg')?>" class="img-responsive" alt="speakers">
							<div class="speakers-thumb">
								<h3>Je Mary Lee</h3>
								<h6>President</h6>
							</div>
					</div>
				</div>

				<div class="item wow fadeInUp col-md-3 col-sm-3" data-wow-delay="0.4s">
					<div class="speakers-wrapper">
						<img src="<?php echo base_url('assets/modern/images/4.jpg')?>" class="img-responsive" alt="speakers">
							<div class="speakers-thumb">
								<h3>Johnathan Doe</h3>
								<h6>Financial Secretary</h6>
							</div>
					</div>
				</div>

				<div class="item wow fadeInUp col-md-3 col-sm-3" data-wow-delay="0.6s">
					<div class="speakers-wrapper">
						<img src="<?php echo base_url('assets/modern/images/5.jpg')?>" class="img-responsive" alt="speakers">
							<div class="speakers-thumb">
								<h3>Elite Hamilton</h3>
								<h6>Treasurer</h6>
							</div>
					</div>
				</div>
				
			</div>

		</div>
	</div>
</section>

<!-- =========================
    OVERVIEW SECTION   
============================== -->
<section id="overview" class="section">
	<div class="container">
		<div class="row">

			<div class="wow fadeInUp col-md-4 col-sm-4" >
				<h3>News Update</h3>
                          <div class="mt-3 p-3 bg-white rounded box-shadow">
                          	<?php foreach($latestnews as $key): ?>
                            <div class="media text-muted pt-3">
                              <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
                                <div class="d-flex justify-content-between align-items-center w-100">
                                  <strong class="text-gray-dark"><?php echo $key->title;?></strong>
                                  <p style="max-width: 320px; overflow: hidden;text-overflow: ellipsis;white-space: nowrap;"><?php echo $key->dateposted;?></p>
                                  <a href="#">View More</a>
                                </div>
                              </div>
                            </div>
        				<?php endforeach;?> 
                            <div class="float-right">
                            	<p></p>
								<small class="d-block text-right mt-3 float-right">
                              		<a href="#">View All News</a>
                            	</small>
                            </div>
                          </div>
			</div>
			<div class="wow fadeInUp col-md-4 col-sm-4 sect-4" >
					<h3>Up Coming Events</h3>

                          <div class="my-3 p-3 bg-white rounded box-shadow">
                            <div class="media text-muted pt-3">
                              <p class="media-body pb-3 mb-0 lh-125 border-bottom border-gray">
                                <strong class="d-block text-gray-dark">@username</strong>
                                Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.
                              </p>
                            </div>
                            <div class="media text-muted pt-3">
                              <p class="media-body pb-3 mb-0  lh-125 border-bottom border-gray">
                                <strong class="d-block text-gray-dark">@username</strong>
                                Donec id elit non mi porta gravida at eget metus. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.
                              </p>
                            </div>
                          </div>
			</div>		
			<div class="wow fadeInUp col-md-4 col-sm-4 sect-2" >
				<img style="width: 250px" src="<?php echo base_url('assets/modern/images/overview-img.png')?>" class="img-responsive" alt="Overview">
				<a href="https://www.flickr.com/photos/ghatsea/" class="btn btn-primary" >GhATSEA on Flickr</a>
				<h4 class="lead">GhATSEA Motto</h4>
			</div>

		</div>
	</div>
</section>

<!-- =========================
    INTRO SECTION   
============================== -->
<section id="intro" class="parallax-section container">
	<div class="container">
		<div class="row">

			<div class="col-md-12 col-sm-12">
				<h3 class="wow bounceIn" data-wow-delay="0.9s"></h3>
				<h1 class="wow fadeInUp" data-wow-delay="1.6s"></h1>
				<a href="<?php echo base_url('login') ?>" class="btn btn-lg btn-danger smoothScroll wow fadeInUp" data-wow-delay="0.4s" style="size: 120px">LOGIN</a>
				<a href="<?php echo base_url('about') ?>" class="btn btn-lg btn-default smoothScroll wow fadeInUp hidden-xs" data-wow-delay="0.5s">LEARN MORE</a>	
				<h3 class="wow fadeInUp" data-wow-delay="1.6s">GhATSEA Motto</h3>
			</div>


		</div>
	</div>
</section>
