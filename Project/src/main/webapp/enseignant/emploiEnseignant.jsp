<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>ENSI Scheduler</title>

    <!-- Favicon -->
    <link rel="icon" href="/img/logo.ico">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="/style.css">
    <link rel="stylesheet" href="template.css">
    <style>
    
    #tabletotal td:first-child {
    padding-right: 20px; /*Or how much space you need*/
}
    </style>

</head>

<body>
    <!-- Preloader -->
    <div class="preloader d-flex align-items-center justify-content-center">
        <div class="spinner">
            <div class="double-bounce1"></div>
            <div class="double-bounce2"></div>
        </div>
    </div>

    <!-- ##### Header Area Start ##### -->
    <header class="header-area">

        <!-- Navbar Area -->
        <div class="mag-main-menu" id="sticker">
            <div class="classy-nav-container breakpoint-off">
			
                <!-- Menu -->
                <nav class="classy-navbar justify-content-between" id="magNav">

                    <!-- Nav brand -->
                    <a href="" class="nav-brand"><img src="/img/ensiLogo1.png" alt=""></a>

                    <!-- Navbar Toggler -->
                    <div class="classy-navbar-toggler">
                        <span class="navbarToggler"><span></span><span></span><span></span></span>
                    </div>

                    <!-- Nav Content -->
                    <div class="nav-content d-flex align-items-center">
                        <div class="classy-menu">

                            <!-- Close Button -->
                            <div class="classycloseIcon">
                                <div class="cross-wrap"><span class="top"></span><span class="bottom"></span></div>
                            </div>

                            <!-- Nav Start -->
                            <!-- Nav Start -->
                            <div class="classynav">
                                <ul>
                                    <li class="indent"><a href="#">Espace Admin</a>
                                        <ul class="dropdown">
                                            <li><a href="#">Gerer Etudiants</a></li>
                                            <li><a href="#">Gerer Enseignants</a></li>
                                            
                                        </ul>
                                    </li>
                                    <li class="indent"><a href="#">Espace Enseignant</a>
                                        <ul class="dropdown">
                                            <li><a href="/enseignant/espace_enseignant">Acceuil</a></li>
                                            <li><a href="/enseignant/rattrapage">Rattrapage</a></li>
                                            <li><a href="/enseignant/devoirsurveille">Devoir Surveillé</a></li>
                                           
                                            <li><a href="/enseignant/absence">Absence</a></li>
                                            <li><a href="/enseignant/emploiEnseignant">Emploi</a></li>
                                        </ul>
                                    </li>
                                    <li class="indent"><a href="#">Espace Etudiant</a>
                                        <div class="dropdown">
                                            <ul class="single-mega cn-col-4">
                                                <li><a href="#">Acceuil</a></li>
                                                <li><a href="#">Emploi</a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="indent"><a href="/enseignant/apropos">A propos</a></li>
                                    <li class ="indent"><a href="/enseignant/contact">Contact</a></li>
                                </ul>
                            </div>
                            <!-- Nav End -->
                        </div>

                        <div class="classynav">
                            
                            <ul>
                            <li class ="indent"><a href="#" ><i class="fa fa-user" aria-hidden="true"></i>PROFIL</a>
                           <div class="dropdown">
                                            <ul class="single-mega cn-col-4">
                                                <li><a href="/enseignant/profilEnseignant">Enseignant</a></li>
                                                 <li><a href="#">Etudiant</a></li>
                                            </ul>
                                        </div>
                                    </li>
									</ul>
                          <a href="<c:url value="/logout" />" class="submit-video"><span><i class="fa fa-cloud-upload"></i></span> <span class="video-text">Déconnexion</span></a>
                        </div>
                    </div>
                </nav>
            </div>
        </div>
    </header>
    <!-- ##### Header Area End ##### -->

    <!-- ##### Breadcrumb Area Start ##### -->
    <section class="breadcrumb-area bg-img bg-overlay" style="background-image: url(/img/ensi2.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="breadcrumb-content">
                        <h2>Emploi </h2>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ##### Breadcrumb Area End ##### -->

    <!-- ##### Breadcrumb Area Start ##### -->
    <div class="mag-breadcrumb py-5">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#"><i class="fa fa-home" aria-hidden="true"></i> Espace Enseignant</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Emploi  </li> 
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Breadcrumb Area End ##### -->

    <!-- ##### About Us Area Start ##### -->
    <section class="about-us-area">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-55 col-xl-12">
                    <!-- About Us Content -->
                    <div class="about-us-content bg-white mb-30 p-30 box-shadow">
                        <!-- Section Title -->
                        <div class="section-heading">
                            <h5>Emploi </h5>
                        </div>
                        <br />

<table class="table table-bordered" id ="tabletotal"  cellpadding="25">
  <thead>
    <tr>
      <th scope="col"></th>
      <th class="bg-primary" scope="col">Lundi</th>
      <th class="bg-success" scope="col">Mardi</th>
      <th class="bg-warning"scope="col">Mercredi</th>
      <th class="bg-danger" scope="col">Jeudi</th>
      <th class="bg-info" scope="col">Vendredi</th>
	 
    </tr>
  </thead>
  <tbody>
    <tr class="table-info"  >
      <th  class="bg-primary"  scope="row"><center>8:30 - 10:00</center></th>
      <td id="seance1Lundi"> <center><b>Probabilité Appliquées </br> Bellalouna Monia </br> Salle 1 </b></center></td>
      <td id="seance1Mardi"><center><b>Programmation C </br> Faten Ben Hmida </br> Salle 1</b></center></td>
      <td id="seance1Mercredi"><center><b>Math de l'ingénieur </br> Inès Sakli </br> Salle 1 </b></center></td>
      <td id="seance1Jeudi"><center><b>Logique Formelle </br> Sonia Ben Ticha </br> Salle </b></center></td>
      <td id="seance1Vendredi"><center><b>Circuits Numérique </br> Montassar Ezzine </br> Salle 1</b></center></td>
    </tr>
    <tr class="table-success">
      <th class="bg-success" scope="row"><center>10:00 - 11:45</center></th>
      <td id="seance2Lundi"><center><b>Probabilité Appliquées </br> Monia Bellalouna </br> Salle 1 </b></center></td>
      <td id="seance2Mardi"><center><b>Programmation C </br> Faten Ben Hmida </br> Salle 1</b></center></td>
      <td id="seance2Mercredi"><center><b>Math de l'ingénieur </br> Faouzi Ghorbel </br> Salle 1</b></center> </td>
      <td id="seance2Jeudi"><center><b>Logique Formelle </br> Sonia Ben Ticha </br> Salle 1</b></center></td>
      <td id="seance2Vendredi"><center><b>Circuits Numériques </br> Montassar Ezzine </br> Salle 1</b></center></td>
    </tr>
    <tr  class="table-warning">
      <th class="bg-warning" scope="row"><center>13:00 - 14:30</center></th>
      <td id="seance3Lundi" scope="row"><center><b>Economie et Gestion </br> Wissem Ben Said </br> Salle 1</b></center></td>
      <td id="seance3Mardi"><center><b>Français </br> Imededdine Boulaaba </br> Salle 1</b></center></td>
      <td id="seance3Mercredi"></td>
      <td id="seance3Jeudi"><center><b>Programmation C </br> Faten Ben Hmida </br> Salle 1</b></center></td>
      <td id="seance3Vendredi"><center><b>Algo De l'analyse Numérique </br> Sarra Smaali </br> Salle 1</b></center></td>
    </tr>
    <tr  class="table-danger">
      <th class="bg-danger" scope="row"><center>14:30 - 16:15</center></th>
      <td id="seance4Lundi" scope="row"><center><b>Economie et Gestion </br> Wissem Ben Said </br> Salle 1</b></center></td>
      <td id="seance4Mardi"><center><b>Anglais </br> Hanen Jayari </br> Salle 1</b></center></td>
      <td id="seance4Mercredi"></td>
      <td id="seance4Jeudi"><center><b>Programmation C </br> Faten Ben Hmida </br> Salle 1</b></center></td>
      <td id="seance4Vendredi"><center><b>Algo De l'analyse Numérique </br> Sarra Smaali </br> Salle 1</b></center></td>
    </tr>
    <tr class="table-info">
      <th class="bg-info" scope="row"><center>16:15 - 18:00</center></th>
      <td id="seance5Lundi" scope="row"><center><b>Electronique Analogique </br> Hamed Gharssalah </br> Salle 1 </b></center> </td>
      <td id="seance5Mardi"></td>
      <td id="seance5Mercredi"></td>
      <td id="seance5Jeudi"></td>
      <td id="seance5Vendredi"></td>
    </tr>
  </tbody>
</table>
                        <img class="mt-15" src="/img/bg-img/35.jpg" alt="">

                        <!-- Team Member Area -->
                        
                        
                        
                        <!-- Single Team Member -->
                        
                        
                        <!-- Single Team Member -->
                        
                    </div>
                </div>

                

   
   
    </section>
    <!-- ##### About Us Area End ##### -->

    <!-- ##### Footer Area Start ##### -->
    <footer class="footer-area">
        <div class="container">
            <div class="row">
                <!-- Footer Widget Area -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="footer-widget">
                        <!-- Logo -->
                        <a href="index.html" class="foo-logo"><img src="/img/logo.png" alt=""></a>
                        
                    </div>
                </div>
                
                <!-- Footer Widget Area -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="footer-widget">
                        <h6 class="widget-title">Concept</h6>
                        <nav class="footer-widget-nav">
                            <p>ENSI Scheduler est une application web dédiée spécialement aux enseignants afin de leur faciliter l'affectation d'environnement en tout ce qui concerne le signalement, par des notifications aux etudiants concernés ,  de rattrapages , de devoirs surveillés , et d'absences ..</p>
                        <div class="footer-social-info">
                            <a href="#" class="facebook"><i class="fa fa-facebook"></i></a>
                            <a href="#" class="google-plus"><i class="fa fa-google-plus"></i></a>
                            <a href="#" class="instagram"><i class="fa fa-instagram"></i></a>
                            <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
                            <a href="#" class="linkedin"><i class="fa fa-linkedin"></i></a>
                        </div>
                        </nav>
                    </div>
                </div>
                
                <!-- Footer Widget Area -->
                
               <div class="col-12 col-sm-6 col-lg-3">
                    <div class="footer-widget">
                        <h6 class="widget-title">A propos de l'ENSI</h6>
                        <nav class="footer-widget-nav">
                            <p>L'École nationale des sciences de l'informatique ou ENSI est une école tunisienne formant des ingénieurs dans les technologies de l'information et de la communication</p>
                       
                        </nav>
                    </div>
                </div>
                
                <!-- Footer Widget Area -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="footer-widget">
                        <h6 class="widget-title">Mots Clés</h6>
                        <ul class="footer-tags">
                            <li><a href="#">Emploi Etudiant</a></li>
                            <li><a href="#">Emploi Enseignant</a></li>
                            <li><a href="#">Se Connecter</a></li>
                            <li><a href="#">Rechercher</a></li>
                            <li><a href="#">Acceuil</a></li>
                            <li><a href="#">Inscription</a></li>
                            <li><a href="#">Contacter nous</a></li>
                            <li><a href="#">A propos de nous </a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>

        <!-- Copywrite Area -->
        <div class="copywrite-area">
            <div class="container">
                <div class="row">
                    <!-- Copywrite Text -->
                    <div class="col-12 col-sm-6">
                        <p class="copywrite-text"><!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">ENSI Students</a>
<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
                    </div>
                    <div class="col-12 col-sm-6">
                        <nav class="footer-nav">
                            <ul>
                                <li><a href="#">Acceuil</a></li>
                                <li><a href="#">Privacy</a></li>
                                <li><a href="#">Advertisement</a></li>
                                <li><a href="#">Contacter nous</a></li>
                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- ##### Footer Area End ##### -->

    <!-- ##### All Javascript Script ##### -->
    <!-- jQuery-2.2.4 js -->
    <script src="/js/jquery/jquery-2.2.4.min.js"></script>
    <!-- Popper js -->
    <script src="/js/bootstrap/popper.min.js"></script>
    <!-- Bootstrap js -->
    <script src="/js/bootstrap/bootstrap.min.js"></script>
    <!-- All Plugins js -->
    <script src="/js/plugins/plugins.js"></script>
    <!-- Active js -->
    <script src="/js/active.js"></script>
    <script src="/template.js"></script>
</body>

</html>