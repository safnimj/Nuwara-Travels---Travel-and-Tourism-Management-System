<?php
session_start();
error_reporting(0);
include('includes/config.php');
?>
<!doctype html>
<html lang="en-gb" class="no-js">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

  <title>Nuwara Travels</title>
  <meta name="description" content="Traveller">
  <meta name="author" content="WebThemez">

  <link rel="stylesheet" href="css/bootstrap.min.css" />
  <!--  <link href="assets/css/bootstrap.css" rel='stylesheet' type='text/css' /> -->
  <link rel="stylesheet" type="text/css" href="css/isotope.css" media="screen" />
  <link rel="stylesheet" href="js/fancybox/jquery.fancybox.css" type="text/css" media="screen" />
  <link rel="stylesheet" type="text/css" href="css/da-slider.css" />
  <!-- Owl Carousel Assets -->
  <link href="js/owl-carousel/owl.carousel.css" rel="stylesheet">
  <link rel="stylesheet" href="css/styles.css" />
  <!-- Font Awesome -->
  <!--animate-->
  <link href="assets/css/animate.css" rel="stylesheet" type="text/css" media="all">
  <link href="font/css/font-awesome.min.css" rel="stylesheet">
</head>

<body>
 <?php include('includes/header.php'); ?>
 <!--/.header-->
 <div id="#top"></div>
 <section id="home">
  <div class="banner-container">
  <video autoplay muted loop>
            <source src="images/travel.mp4" type="video/mp4">
            Your browser does not support the video tag.
        </video>
        
  </div>

</section>
<section id="introText">
  <div class="container">
    <div class="text-center adeInDown animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInDown;">
      <h1>Nuwara Travels Gives You a Great Holiday Package</h1>
      <p>Find Your Perfect Escape: Tailored Packages for Every Adventurer! Explore, Discover, and Create Unforgettable Memories with Our Exclusive Travel Experiences. Your Ideal Journey Awaits – Choose Your Package Today!</p>
    </div>
  </div>
</section>
<!--About-->
<section id="aboutUs" class="secPad">
  <div class="container">

    <div class="heading text-center adeInDown animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInDown;">
      <!-- Heading -->
      <h2>🌿About Us</h2>
      <p>Discover Nuwara Eliya's allure with Nuwara Travels, a premier agency offering cab rentals, logistics, guides, and hotel reservations. While our commitment to personalized service is unwavering, we're transitioning to a tech-driven system to enhance efficiency and ensure a seamless travel experience. Join us on a journey where technology meets tranquility. 🚗🌐 #NuwaraTravels #EffortlessExploration</p>
    </div>
    <div class="row adeInDown animated animated" data-wow-delay=".5s" style="visibility: visible; animation-delay: 0.5s; animation-name: fadeInDown;">
      <div class="col-md-4">
        <img src="images/Designer (5).jpeg" alt="" class="img-responsive img-thumbnail">
      </div>
      <div class="col-md-8">
        <p>🚗 Our Services:
At Nuwara Travels, we specialize in providing a seamless travel experience. From cab rentals to transportation logistics, tour guiding, and hotel reservations, our range of services is designed to make your journey through Nuwara Eliya and beyond truly unforgettable.
</p><p>
🌐 Comprehensive Travel Packages:
Dive into the beauty of the island with our carefully curated travel packages. We ensure not only your exploration of Sri Lanka's wonders but also guarantee comfortable accommodations and expert guidance throughout your journey.
</p><p>
📜 The Challenge:
Presently, Nuwara Travels relies on manual record-keeping for their bookings. While our commitment to personalized service remains unwavering, the manual system has proven to be inefficient. Managing information about travelers, bookings, hotels, vehicles, and tourist attractions through handwritten registers is time-consuming and often prone to errors.
</p><p>
🔍 The Nuwara Travels Difference:
We understand the need for a streamlined approach. Our dedicated team is committed to enhancing your experience by transitioning to a more efficient and technologically advanced booking system. This shift aims to eliminate inefficiencies, reduce manual errors, and provide you with an even more seamless and enjoyable travel experience.
</p><p>
At Nuwara Travels, we believe in not just offering a service but creating an immersive and hassle-free journey for every traveler. Join us as we embark on this technological transformation, ensuring that your exploration of Nuwara Eliya and beyond is as smooth as the gentle breeze that graces our picturesque landscapes. 🌺🌍 #NuwaraTravels #ExploreWithEase</p> 
        
      </div>
    </div>
  </div>   
</section>


<!--Package-->
<section id="packages" class="secPad">
  <div class="container">
    <div class="heading text-center">
      <!-- Heading -->
      <h2>Most Popular Packages</h2>
      <p>Explore a wide Range of Travel Packs</p>
    </div>
    <div class="">
      <h3>Package List</h3>
      <?php $sql = "SELECT * from tbltourpackages order by rand() ";
      $query = $dbh->prepare($sql);
      $query->execute();
      $results=$query->fetchAll(PDO::FETCH_OBJ);
      $cnt=1;
      if($query->rowCount() > 0)
      {
        foreach($results as $result)
        { 
          ?>
          <div class="rom-btm">
            <div class="col-md-3 room-left wow fadeInLeft animated" data-wow-delay=".5s">
              <img src="admin/pacakgeimages/<?php echo htmlentities($result->PackageImage);?>" class="img-responsive" alt="">
            </div>
            <div class="col-md-6 room-midle wow fadeInUp animated" data-wow-delay=".5s">
              <h4>Package Name: <?php echo htmlentities($result->PackageName);?></h4>
              <h6>Package Type : <?php echo htmlentities($result->PackageType);?></h6>
              <p><b>-Location :</b> <?php echo htmlentities($result->PackageLocation);?></p>
              <p><b>Features</b> <?php echo htmlentities($result->PackageFetures);?></p>
            </div>
            <div class="col-md-3 room-right wow fadeInRight animated" data-wow-delay=".5s">
              <h5>LKR <?php echo htmlentities($result->PackagePrice);?></h5>
              <a href="package_details.php?pkgid=<?php echo htmlentities($result->PackageId);?>" class="view">Details</a>
            </div>
            <div class="clearfix"></div>
          </div>
          <?php 
        }
      } ?>
    </div>
    <div class="clearfix"></div>   
  </div>
</section>
<!--Quote-->
<section id="quote" class="bg-parlex">
  <div class="parlex-back">
    <div class="container secPad text-center">
      <h2>"The World is a book, and those who do not travel read only a page."
      </h2><h3>-Saint Augustine</h3>
    </div>
    <!--/.container-->
  </div>
</section>
<!--Portfolio-->
<section id="portfolio" class="page-section section appear clearfix secPad">
  <div class="container">
    <div class="heading text-center">
      <!-- Heading -->
      <h2>Gallery</h2>
      <p>🌴 Behold the stunning snapshots of our Sri Lankan travel gems! Explore the beauty through these captivating images. 🌅</p>
    </div>
    <div class="row">            
      <div class="col-md-12">
        <div class="row">
          <div class="portfolio-items clearfix papper " id="3" >
            <article class="col-sm-4  isotopeItem webdesign">
              <div class="portfolio-item">
                <img src="images/portfolio/img (1).jpeg" alt="" />
                <div class="portfolio-desc align-center">
                  <div class="folio-Get It!">
                    <a href="images/portfolio/img (1).jpeg" class="fancybox">                                                
                      <i class="fa fa-arrows-alt fa-2x"></i>
                    </a>
                  </div>
                </div>
              </div>
            </article>

            <article class="col-sm-4 isotopeItem photography">
              <div class="portfolio-item">
                <img src="images/portfolio/img (1).png" alt="" />
                <div class="portfolio-desc align-center">
                  <div class="folio-Get It!">
                    <a href="images/portfolio/img (1).png" class="fancybox">
                      <i class="fa fa-arrows-alt fa-2x"></i>
                    </a>
                  </div>
                </div>
              </div>
            </article>


            <article class="col-sm-4 isotopeItem photography">
              <div class="portfolio-item">
                <img src="images/portfolio/img (3).jpg" alt="" />
                <div class="portfolio-desc align-center">
                  <div class="folio-Get It!">
                    <a href="images/portfolio/img (3).jpg" class="fancybox">
                      <i class="fa fa-arrows-alt fa-2x"></i>
                    </a>
                  </div>
                </div>
              </div>
            </article>

            <article class="col-sm-4 isotopeItem print">
              <div class="portfolio-item">
                <img src="images/portfolio/img (4).jpg" alt="" />
                <div class="portfolio-desc align-center">
                  <div class="folio-Get It!">
                    <a href="images/portfolio/img (4).jpg" class="fancybox">
                      <i class="fa fa-arrows-alt fa-2x"></i>
                    </a>
                  </div>
                </div>
              </div>
            </article>

            <article class="col-sm-4 isotopeItem photography">
              <div class="portfolio-item">
                <img src="images/portfolio/img (5).jpg" alt="" />
                <div class="portfolio-desc align-center">
                  <div class="folio-Get It!">
                    <a href="images/portfolio/img (5).jpg" class="fancybox">
                      <i class="fa fa-arrows-alt fa-2x"></i>
                    </a>
                  </div>
                </div>
              </div>
            </article>

            <article class="col-sm-4 isotopeItem webdesign">
              <div class="portfolio-item">
                <img src="images/portfolio/img (6).jpg" alt="" />
                <div class="portfolio-desc align-center">
                  <div class="folio-Get It!">
                    <a href="images/portfolio/img (6).jpg" class="fancybox">
                      <i class="fa fa-arrows-alt fa-2x"></i>
                    </a>
                  </div>
                </div>
              </div>
            </article>

            <article class="col-sm-4 isotopeItem print">
              <div class="portfolio-item">
                <img src="images/portfolio/img (11).jpg" alt="" />
                <div class="portfolio-desc align-center">
                  <div class="folio-Get It!">
                    <a href="images/portfolio/img (11).jpg" class="fancybox">
                      <i class="fa fa-arrows-alt fa-2x"></i>
                    </a>
                  </div>
                </div>
              </div>
            </article>

            <article class="col-sm-4 isotopeItem photography">
              <div class="portfolio-item">
                <img src="images/portfolio/img (8).jpg" alt="" />
                <div class="portfolio-desc align-center">
                  <div class="folio-Get It!">
                    <a href="images/portfolio/img (8).jpg" class="fancybox">
                      <i class="fa fa-arrows-alt fa-2x"></i>
                    </a>
                  </div>
                </div>
              </div>
            </article>

            <article class="col-sm-4 isotopeItem print">
              <div class="portfolio-item">
                <img src="images/portfolio/img (9).jpg" alt="" />
                <div class="portfolio-desc align-center">
                  <div class="folio-Get It!">
                    <a href="images/portfolio/img (9).jpg" class="fancybox">
                      <i class="fa fa-arrows-alt fa-2x"></i>
                    </a>
                  </div>
                </div>
              </div>
            </article>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

<!--Contact -->
<section id="contactUs" class="page-section secPad">
  <div class="container">
    <div class="row">
      <div class="heading text-center">
        <!-- Heading -->
        <h2>Let's Keep In Touch!</h2>
        <p>Thank you for visiting out my profile. If you would like to get into contact with me, please fill out the form below.</p>
      </div>
    </div>
    <div class="row mrgn30">
      <div class="col-sm-12 col-md-8">
        <!--NOTE: Update your email Id in "contact_me.php" file in order to receive emails from your contact form-->
        <form name="sentMessage" id="contactForm"  validate>
          <h3>Contact Form</h3>
          <div class="control-group">
            <div class="controls">
              <input type="text" class="form-control" 
              placeholder="Full Name" id="name" required
              data-validation-required-message="Please enter your name" />
              <p class="help-block"></p>
            </div>
          </div> 	
          <div class="control-group" style="margin-bottom: 8px;">
            <div class="controls">
              <input type="email" class="form-control" placeholder="Email" 
              id="email" required
              data-validation-required-message="Please enter your email" />
            </div>
          </div> 	

          <div class="control-group" style="margin-bottom: 8px;">
            <div class="controls">
              <textarea rows="10" cols="100" class="form-control" 
              placeholder="Message" id="message" required
              data-validation-required-message="Please enter your message" minlength="5" 
              data-validation-minlength-message="Min 5 characters" 
              maxlength="999" style="resize:none"></textarea>
            </div>
          </div> 		 
          <div id="success"> </div> <!-- For success/fail messages -->
          <button type="submit" class="btn btn-primary pull-right">Send</button><br />
        </form>
      </div> 

      <!-- signup -->
      <?php include('includes/signup.php');?>     
      <!-- //signu -->
      <!-- signin -->
      <?php include('includes/signin.php');?>     
      <!-- //signin -->
      <div class="col-sm-12 col-md-4">
        <h4>Address:</h4>
        <address>
          Nuwara Travels<br>
          12th, Main street<br>
          Nuwara Eliya, Sri Lanka.
          <br>
        </address>
        <h4>Phone:</h4>
        <address>
          070-0118453<br>
        </address>
      </div>
    </div>
  </div>
  <!--/.container-->
</section>
<?php include('includes/footer.php'); ?>

<a href="#top" class="topHome"><i class="fa fa-chevron-up fa-2x"></i></a>
<script src="js/modernizr-latest.js"></script>
<script src="js/jquery-1.8.2.min.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js" type="text/javascript"></script>
<script src="js/jquery.isotope.min.js" type="text/javascript"></script>
<script src="js/fancybox/jquery.fancybox.pack.js" type="text/javascript"></script>
<script src="js/jquery.nav.js" type="text/javascript"></script>
<script src="js/jquery.cslider.js" type="text/javascript"></script>
<script src="contact/contact_me.js"></script>
<script src="js/custom.js" type="text/javascript"></script>
<script src="js/owl-carousel/owl.carousel.js"></script>
</body>
</html>
