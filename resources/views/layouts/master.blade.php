<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="keywords" content="">
    <meta name="description" content="Kastner &amp; Pallavicino is a Roman luxury label created by Helena Kastner and Virginia Cosentini Pallavicino, in 2015. The concept was to create a line of bodies specifically intended as an alternative to a blouse or top.">    
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Facebook -->
    <meta property="og:title" content="Kastner &amp; Pallavicino" /> 
    <meta property="og:description" content="Kastner &amp; Pallavicino is a Roman luxury label created by Helena Kastner and Virginia Cosentini Pallavicino, in 2015. The concept was to create a line of bodies specifically intended as an alternative to a blouse or top." />    
    <meta property="og:url" content="http://www.kastner-pallavicino.com/collection.html" />
    <meta property="og:image" content="img/cover_facebook.jpg" />


    <title>@yield('title')</title>

    <link rel="stylesheet" href="/styles/vendor.css">

    <link type="text/plain" rel="author" href="/humans.txt" />

    <!-- Icons -->
    <link rel="apple-touch-icon" sizes="57x57" href="favicons/apple-touch-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="favicons/apple-touch-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="favicons/apple-touch-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="favicons/apple-touch-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="favicons/apple-touch-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="favicons/apple-touch-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="favicons/apple-touch-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="favicons/apple-touch-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="favicons/apple-touch-icon-180x180.png">
    <link rel="icon" type="image/png" href="favicons/favicon-32x32.png" sizes="32x32">
    <link rel="icon" type="image/png" href="favicons/android-chrome-192x192.png" sizes="192x192">
    <link rel="icon" type="image/png" href="favicons/favicon-96x96.png" sizes="96x96">
    <link rel="icon" type="image/png" href="favicons/favicon-16x16.png" sizes="16x16">
    <link rel="manifest" href="favicons/manifest.json">
    <meta name="msapplication-TileColor" content="#da532c">
    <meta name="msapplication-TileImage" content="favicons/mstile-144x144.png">
    <meta name="theme-color" content="#ffffff">       
     

    <link href="/cfgen-form-4/css/form.css" rel="stylesheet" type="text/css">

    <!-- Google Fonts -->   
    <link href='https://fonts.googleapis.com/css?family=Muli' rel='stylesheet' type='text/css'>    

    <link rel="stylesheet" href="/styles/style.css">

    <script src="/scripts/modernizr.js"></script>


    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>


    <!-- Welcome -->
    <div class="main-container container">

        <header>
            <div class="top-header">
               <div class="row">
                   <div class="col-sm-6"></div>
                   <div class="col-sm-6">
                      <div class="social">
                       <a target="_blank" href="https://www.facebook.com/pages/Kastner-Pallavicino/1409165622728869?pnref=story"><img src="img/facebook.svg" alt=""></a>
                       <a target="_blank" href="https://instagram.com/kastner_pallavicino"><img src="img/instagram.svg" alt=""></a>
                      </div>
                   </div>
               </div> 
            </div>

            <!-- Logo -->
            <a href="index.html"><img class="logo img-responsive" src="img/logo.svg" alt="Kastner-Pallavicino"></a>
            
            <!-- Navigation -->
            <nav class="navbar navbar-default" role="navigation">
              <!-- Brand and toggle get grouped for better mobile display -->
              <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                  <span class="sr-only">Toggle navigation</span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                  <span class="icon-bar"></span>
                </button>                
              </div>
            
              <!-- Collect the nav links, forms, and other content for toggling -->
              <div class="collapse navbar-collapse navbar-ex1-collapse">                               
                <ul class="nav navbar-nav navbar-center">
                  <li><a {{ checkActivePath('our_philosophy')}} href="our_philosophy.html">Our Philosophy</a></li>
                  <li><a {{ checkActivePath('collection')}} href="collection.html">Collection</a></li>
                  <li><a {{ checkActivePath('gallery')}} href="gallery.html">Gallery</a></li>
                  <li><a {{ checkActivePath('press')}} href="press.html">Press</a></li>
                  <li><a class="last-nav {{ checkActivePath('contact', true)}}" href="contact.html">Contact</a></li>                  
                </ul>
              </div><!-- /.navbar-collapse -->
            </nav>

        </header>

        @yield('content')

        <footer>
          <div class="row row-footer">
            <div class="col-sm-6">
              <div class="row">
                <div class="col-sm-8">
                  <h3>Kastner &amp; Pallavicino S.r.l.<br> Italy</h3>
                    <p>
                       CONTACT<br><br>
                       Via Margutta, 33<br>
                       00187 Rome<br><br>
                       Italy
                       <br>
                       <br>
                       <a href="mailto:info@kastner-pallavicino.com">info@kastner-pallavicino.com</a>
                    </p>
                </div>
                <div class="col-sm-4">
                  <h3>Social</h3>
                  <a target="_blank" href="https://www.facebook.com/pages/Kastner-Pallavicino/1409165622728869?pnref=story"><img src="img/facebook.svg" alt=""></a>
                  <a target="_blank" href="https://instagram.com/kastner_pallavicino"><img src="img/instagram.svg" alt=""></a>
                </div>
              </div>
            </div>
            <div class="col-sm-6 instagram-widget"> 
                
                <a target="_blank" href="http://instagram.com/kastner_pallavicino"><span>@kastner_pallavicino</span></a>

                <!-- INSTANSIVE WIDGET --><iframe src="//instansive.com/widgets/681802883da50359637c0c0516299ae37204327a.html" id="instansive_681802883d" name="instansive_681802883d"  scrolling="no" allowtransparency="true" class="instansive-widget" style="width: 100%; border: 0; overflow: hidden;"></iframe>  

                <a target="_blank" href="http://instagram.com/kastner_pallavicino"><div class="btn btn-primary"> <img src="img/instagram.svg" alt="">Follow us on Instagram</div></a>
            
            </div>
          </div>

          <div class="bottom-footer">
            <div class="row">
              <div class="col-sm-6">
                <p>©2015 Kastner &amp; Pallavicino S.r.l. / P.Iva 13282511008 / All Rights Reserved / <a class="open-modal" href="#modal-popup">Terms &amp; Conditions</a> / <a href="policy.html">Privacy Policy</a></p>
              </div>
              <div class="col-sm-6">
                <p>Web Design by <a target="_blank" href="http://officine06.com">Officine06</a></p>
              </div>
            </div>
          </div>
        </footer>
        

    </div><!-- end of main container -->
    
    
    <div id="modal-popup" class="white-popup mfp-hide">
      <h3>Terms and conditions</h3>      
      <p>All the items are tailored made, and therefore non-refundable. </p>
    </div>  


  <!-- Begin MailChimp Signup Form --> 
  <div id="newsletter" class="white-popup">
    <img class="img-responsive" src="img/logo.svg" alt="">
    <div id="mc_embed_signup">
    <form action="//kastner-pallavicino.us11.list-manage.com/subscribe/post?u=840d46527af7ab87a2ee4b6de&amp;id=64de4d393a" method="post" id="mc-embedded-subscribe-form" name="mc-embedded-subscribe-form" class="validate" target="_blank" novalidate>
        <div id="mc_embed_signup_scroll">
      <label for="mce-EMAIL">Subscribe to our mailing list</label>
      <input type="email" value="" name="EMAIL" class="email" id="mce-EMAIL" placeholder="email address" required>
        <!-- real people should not fill this in and expect good things - do not remove this or risk form bot signups-->
        <div style="position: absolute; left: -5000px;"><input type="text" name="b_840d46527af7ab87a2ee4b6de_64de4d393a" tabindex="-1" value=""></div>
        <div class="clear"><input type="submit" value="Subscribe" name="subscribe" id="mc-embedded-subscribe" class="button"></div>
        </div>
    </form>
    </div>
  </div>
  <!--End mc_embed_signup-->
  
  
    <script src="/scripts/vendor.js"></script>
    <script src="//instansive.com/widget/js/instansive.js"></script>  
    <script src="/scripts/main.js"></script>
    <script src="/cfgen-form-4/js/form.js"></script>


    <!-- Analytics -->
    <script>
      (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

      ga('create', 'UA-62582321-1', 'auto');
      ga('send', 'pageview');

    </script>
    
  </body>
</html>