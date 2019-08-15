<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="fr">

<head>
<meta charset="UTF-8">
<meta name="description" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

<!-- Title -->
<title>ENSI Scheduler</title>

<!-- Favicon -->
<link rel="icon" href="img/logo.ico">

<!-- Stylesheet -->
<link rel="stylesheet" href="style.css">

<style type="text/css">
#buttons { 
    margin-top: 10px;
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
	
	<!-- ##### Header Area End ##### -->

	<!-- ##### Breadcrumb Area Start ##### -->
	<section class="breadcrumb-area bg-img bg-overlay"
		style="background-image: url(img/ensi.jpg);">
		<div class="container h-100">
			<div class="row h-100 align-items-center">
				<div class="col-12">
					<div class="breadcrumb-content">
						<h2>Inscription</h2>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- ##### Breadcrumb Area End ##### -->

	<!-- ##### sign in Area Start ##### -->
	<div class="mag-login-area py-5">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-12 col-lg-6">
					<div class="login-content bg-white p-30 box-shadow">
						<!-- Section Title -->
						<div class="section-heading">
							<h5>Heureux de vous voir rejoindre!</h5>
						</div>

						<form:form modelAttribute="EnseignantForm" method="post">
							<div class="form-group">
								<form:input type="text" class="form-control" path="prenom"
									placeholder="Prenom"></form:input>
							</div>
							<div class="form-group">
								<form:input type="text" class="form-control" path="nom"
									placeholder="Nom"></form:input>
								<form:errors path="nom"></form:errors>
							</div>


							<div class="form-group">
								<form:input type="email" class="form-control" path="email"
									placeholder="Email"></form:input>
								<form:errors path="email"></form:errors>
							</div>
							<div class="form-group">
								<form:input type="password" class="form-control" path="password"
									placeholder="Mot De Passe"></form:input>
								<form:errors path="password"></form:errors>
							</div>

                        <div class="form-group" id="buttons">
                        <p> Choisir Groupe : </p>
						<form:checkbox  path="groupes" value="II-1-A" label="II-1-A"
								id="groupes" />
							<form:checkbox  path="groupes" value="II-1-B" label="II-1-B"
								id="groupes" />
							<form:checkbox  path="groupes" value="II-1-C" label="II-1-C"
								id="groupes" />
								<form:checkbox  path="groupes" value="II-1-D" label="II-1-D"
								id="groupes" />
								
								<form:checkbox  path="groupes" value="II-1-E" label="II-1-E"
								id="groupes" />
								
								<form:checkbox  path="groupes" value="II-1-F" label="II-1-F"
								id="groupes" />
								</div>

                            <div class="form-group"  id="buttons">
						<form:checkbox  path="groupes" value="II-2-A" label="II-2-A"
								id="groupes" />
							<form:checkbox  path="groupes" value="II-2-B" label="II-2-B"
								id="groupes" />
							<form:checkbox  path="groupes" value="II-2-C" label="II-2-C"
								id="groupes" />
								<form:checkbox  path="groupes" value="II-2-D" label="II-2-D"
								id="groupes" />
								
								<form:checkbox  path="groupes" value="II-2-E" label="II-2-E"
								id="groupes" />
								
								<form:checkbox  path="groupes" value="II-2-F" label="II-2-F"
								id="groupes" />
								</div>
                            <div class="form-group" id="buttons">
						<form:checkbox  path="groupes" value="II-3-ILSI" label="II-3-ILSI"
								id="groupes" />
							<form:checkbox  path="groupes" value="II-3-ISID" label="II-3-ISID"
								id="groupes" />
							<form:checkbox  path="groupes" value="II-3-IF" label="II-3-IF"
								id="groupes" />
								<form:checkbox  path="groupes" value="II-3-RSR" label="II-3-RSR"
								id="groupes" />
								
								<form:checkbox  path="groupes" value="II-3-SLE" label="II-3-SLE"
								id="groupes" />
								
								<form:checkbox  path="groupes" value="II-3-II" label="II-3-II"
								id="groupes" />
								</div>
                           






							<div class="form-group">

								<p style="text-align: right;style="color:blue;">
							<a href="connection"> <u>Déja un membre? </u></a><b style="word-space:5em">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b><a href="inscription"> <u>Vous  êtes Etudiant? </u></a>
								</p>
							</div>
							<button type="submit" class="btn mag-btn mt-30">S'inscrire</button>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- ##### sign up Area End ##### -->

	<!-- ##### Footer Area Start ##### -->
	<footer class="footer-area">
        <div class="container">
            <div class="row">
                <!-- Footer Widget Area -->
                <div class="col-12 col-sm-6 col-lg-3">
                    <div class="footer-widget">
                        <!-- Logo -->
                        <a href="index.html" class="foo-logo"><img src="img/logo.png" alt=""></a>
                        
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
	<script src="js/jquery/jquery-2.2.4.min.js"></script>
	<!-- Popper js -->
	<script src="js/bootstrap/popper.min.js"></script>
	<!-- Bootstrap js -->
	<script src="js/bootstrap/bootstrap.min.js"></script>
	<!-- All Plugins js -->
	<script src="js/plugins/plugins.js"></script>
	<!-- Active js -->
	<script src="js/active.js"></script>
</body>