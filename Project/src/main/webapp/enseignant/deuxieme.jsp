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
    <title>ENSI Scheduler </title>

    <!-- Favicon -->
    <link rel="icon" href="/img/logo.ico">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="/style.css">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	
<style type="text/css">
	.image1
{
    display: flex;
    flex-direction: row;
    align-items: top;
	
}
.project-tab {
    padding: 10%;
    margin-top: -8%;
}
.project-tab #tabs{
    background: #007b5e;
    color: #eee;
}
.project-tab #tabs h6.section-title{
    color: #eee;
}
.project-tab #tabs .nav-tabs .nav-item.show .nav-link, .nav-tabs .nav-link.active {
    color: #0062cc;
    background-color: transparent;
    border-color: transparent transparent #f3f3f3;
    border-bottom: 3px solid !important;
    font-size: 16px;
    font-weight: bold;
}
li.indent{ padding-left: 3em }
.project-tab .nav-link {
    border: 1px solid transparent;
    border-top-left-radius: .25rem;
    border-top-right-radius: .25rem;
    color: #0062cc;
    font-size: 16px;
    font-weight: 600;
}
.project-tab .nav-link:hover {
    border: none;
}
.project-tab thead{
    background: #f3f3f3;
    color: #333;
}
.project-tab a{
    text-decoration: none;
    color: #333;
    font-weight: 600;
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

    <!-- ##### Hero Area Start ##### -->
    <div class="hero-area owl-carousel">
        <!-- Single Blog Post -->
        <div class="hero-blog-post bg-img bg-overlay" style="background-image: url(/img/ensi.jpg);">
            <div class="container h-100">
                <div class="row h-100 align-items-center">
                    <div class="col-12">
                        <!-- Post Contetnt -->
                        <div class="post-content text-center">
                            <div class="post-meta" data-animation="fadeInUp" data-delay="100ms">
                                <a href="#"></a>
                                <a href="archive.html"></a>
                            </div>
                            <a href="video-post.html" class="post-title" data-animation="fadeInUp" data-delay="300ms">ENSI:Ecole Nationale Des Sciences De L'Informatique</a>
                            <a href="video-post.html" class="" data-animation="bounceIn" data-delay="500ms"><i class=""></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Single Blog Post -->
        <div class="hero-blog-post bg-img bg-overlay" style="background-image: url(/img/ensi1.jpg);">
            <div class="container h-100">
                <div class="row h-100 align-items-center">
                    <div class="col-12">
                        <!-- Post Contetnt -->
                        <div class="post-content text-center">
                            <div class="post-meta" data-animation="fadeInUp" data-delay="100ms">
                                <a href="#"></a>
                                <a href="archive.html"></a>
                            </div>
                            <a href="video-post.html" class="post-title" data-animation="fadeInUp" data-delay="300ms">ENSI :Excellence , Networking , Sustainability , Innovation </a>
                            <a href="video-post.html" class="" data-animation="bounceIn" data-delay="500ms"><i class=""></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Single Blog Post -->
        <div class="hero-blog-post bg-img bg-overlay" style="background-image: url(/img/ensi2.jpg);">
            <div class="container h-100">
                <div class="row h-100 align-items-center">
                    <div class="col-12">
                        <!-- Post Contetnt -->
                        <div class="post-content text-center">
                            <div class="post-meta" data-animation="fadeInUp" data-delay="100ms">
                                <a href="#"></a>
                                <a href="archive.html"></a>
                            </div>
                            <a href="video-post.html" class="post-title" data-animation="fadeInUp" data-delay="300ms"> ENSI Scheduler Is Here To Schedule Everything For You</a>
                            <a href="video-post.html" class="" data-animation="bounceIn" data-delay="500ms"><i class=""></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="hero-blog-post bg-img bg-overlay" style="background-image: url(/img/ensi3.jpg);">
            <div class="container h-100">
                <div class="row h-100 align-items-center">
                    <div class="col-12">
                        <!-- Post Contetnt -->
                        <div class="post-content text-center">
                            <div class="post-meta" data-animation="fadeInUp" data-delay="100ms">
                                <a href="#"></a>
                                <a href="archive.html"></a>
                            </div>
                            <a href="video-post.html" class="post-title" data-animation="fadeInUp" data-delay="300ms">ENSI :Excellence , Networking , Sustainability , Innovation</a>
                            <a href="video-post.html" class="" data-animation="bounceIn" data-delay="500ms"><i class=""></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="hero-blog-post bg-img bg-overlay" style="background-image: url(/img/ensi4.jpg);">
            <div class="container h-100">
                <div class="row h-100 align-items-center">
                    <div class="col-12">
                        <!-- Post Contetnt -->
                        <div class="post-content text-center">
                            <div class="post-meta" data-animation="fadeInUp" data-delay="100ms">
                                <a href="#"></a>
                                <a href="archive.html"></a>
                            </div>
                            <a href="video-post.html" class="post-title" data-animation="fadeInUp" data-delay="300ms">ENSI : The heart Of Computer Science </a>
                            <a href="video-post.html" class="" data-animation="bounceIn" data-delay="500ms"><i class=""></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="hero-blog-post bg-img bg-overlay" style="background-image: url(/img/ensi5.jpg);">
            <div class="container h-100">
                <div class="row h-100 align-items-center">
                    <div class="col-12">
                        <!-- Post Contetnt -->
                        <div class="post-content text-center">
                            <div class="post-meta" data-animation="fadeInUp" data-delay="100ms">
                                <a href="#"></a>
                                <a href="archive.html"></a>
                            </div>
                            <a href="video-post.html" class="post-title" data-animation="fadeInUp" data-delay="300ms">ENSI :Excellence , Networking , Sustainability , Innovation</a>
                            <a href="video-post.html" class="" data-animation="bounceIn" data-delay="500ms"><i class=""></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Hero Area End ##### -->
     <!-- ##### Breadcrumb Area Start ##### -->
    <div class="mag-breadcrumb py-5">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#"> Espace Enseignant</a></li>
                            <li class="breadcrumb-item active" aria-current="page"><a href="/enseignant/espace_enseignant.jsp"><i class="fa fa-home" aria-hidden="true"></i>Acceuil</a></li>
                             <li class="breadcrumb-item active" aria-current="page">Cursus Deuxieme Annee</li>
                        </ol>
                    </nav>
                </div>
            </div>
        </div>
    </div>
    <!-- ##### Breadcrumb Area End ##### -->

    <!-- ##### Mag Posts Area Start ##### -->
    <section class="mag-posts-area d-flex flex-wrap">

        <!-- >>>>>>>>>>>>>>>>>>>>
         Post Left Sidebar Area
        <<<<<<<<<<<<<<<<<<<<< -->
        <div class="post-sidebar-area left-sidebar mt-30 mb-30 bg-white box-shadow">
            <!-- Sidebar Widget -->
            <div class="single-sidebar-widget p-30">
                <!-- Section Title -->
                <div class="section-heading">
                    <h5>Directrice</h5>
                </div>

                <!-- Single Blog Post -->
                <div class="single-blog-post d-flex">
                   
                    <div class="post-content">
                        <a href="single-post.html" class="post-title">Narjes Bellamine Ben Saoud</a>
                       
                    </div>
                </div>

              
            </div>

            <!-- Sidebar Widget -->
            <div class="single-sidebar-widget">
                <a href="#" class="add-img"><img src="/img/bg-img/add.png" alt=""></a>
            </div>

            <!-- Sidebar Widget -->
            <div class="single-sidebar-widget p-30">
                <!-- Section Title -->
                <div class="section-heading">
                    <h5>Chefs Departements</h5>
                </div>

                <!-- Single Blog Post -->
                <div class="single-blog-post d-flex">
                    
                    <div class="post-content">
                        <a href="single-post.html" class="post-title">Nesrine Ben Yahia </a>
                        <p>Département  SID </p>
						<h>ILSI-Ingénierie du Logiciel et Systèmes d'Information </h>
						<br>
						<h>ISID-Ingénierie des Systèmes Intelligents et Décision </h>
                    </div>
                </div>

                <!-- Single Blog Post -->
                <div class="single-blog-post d-flex">
                   
                    <div class="post-content">
                        <a href="single-post.html" class="post-title">Chadlia Jerad  </a>
                         <p> Département SER </p>
						 <h>RSR-Réseaux et Systèmes Répartis </h>
						 <br>
						 <h> SLE-Systèmes et Logiciels Embarqués</h>
                    </div>
                </div>

                <!-- Single Blog Post -->
                <div class="single-blog-post d-flex">
                    
                    <div class="post-content">
                        <a href="single-post.html" class="post-title">Fethi Kadhi </a>
                        <p> Département IFI </p>
						<h>IF-Ingénierie pour la finance   </h>
						<br>
						<h>II-Ingénierie pour l'Image </h>
                    </div>
                </div>

                
                

            </div>
        </div>

        <!-- >>>>>>>>>>>>>>>>>>>>
             Main Posts Area
        <<<<<<<<<<<<<<<<<<<<< -->
        <div class="mag-posts-content mt-30 mb-30 p-30 box-shadow">
            

            <!-- Feature Video Posts Area -->
            <div class="feature-video-posts mb-30">
                <!-- Section Title -->
                <div class="section-heading">
                    <h5>Deuxième année-II2  </h5>
                </div>
	
                <div class="featured-video-posts">
                    <div class="row">
                        
                            
								
<section id="tabs" class="project-tab">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <nav>
                            <div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
                                <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Semestre1</a>
                                <a class="nav-item nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">Semestre2 TRONC COMMUN</a>
                                  </div>
                        </nav>
                        <div class="tab-content" id="nav-tabContent">
                            <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                                <table class="table" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>Matière</th>
											<th>Crédits</th>
                                            <th>Volume Horaire (CI)</th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td><a href="#">Méthodologie de conception de processeurs</a></td>
											<td>3 </td>
                                            <td>45H </td>
                                            
                                        </tr>
                                        <tr>
                                            <td><a href="#"> Réseaux locaux</a></td>
											<td>4.5 </td>
                                            <td>67.5H </td>
                                           
                                        </tr>
                                        <tr>
                                            <td><a href="#">Systèmes d’exploitation et programmation concurrente </a></td>
											<td>4.5</td>
                                            <td> 67.5H</td>
                                          
                                        </tr>
										<tr>
                                            <td><a href="#"> Génie logiciel 1</a></td>
											<td>3 </td>
                                            <td>  45h </td>
                                          
                                        </tr>
										<tr>
                                            <td><a href="#">Conception et analyse d’algorithmes</a></td>
											<td>3</td>
                                            <td>  45H </td>
                                          
                                        </tr>
										<tr>
                                            <td><a href="#"> Principes et Méthodes statistiques</a></td>
											<td>3 </td>
                                            <td> 45H </td>
                                          
                                        </tr><tr>
                                            <td><a href="#"> Conception de bases de données</a></td>
											<td>3 </td>
                                            <td> 45H</td>
                                          
                                        </tr><tr>
                                            <td><a href="#">Analyse et conception orientées objets</a></td>
											<td>3</td>
                                            <td> 45H</td>
                                          
                                        </tr><tr>
                                            <td><a href="#">Anglais III</a></td>
											<td>1.5</td>
                                            <td> 22.5 H</td>
                                          
                                        </tr>
										<tr>
                                            <td><a href="#">Communication</a></td>
											<td>1.5</td>
                                            <td> 22.5 H</td>
                                          
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                                <table class="table" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>Matière</th>
											<th>Crédits</th>
                                            <th>Volume Horaire (CI)</th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td><a href="#">Réseaux informatiques</a></td>
											<td>3 </td>
                                            <td>45H </td>
                                            
                                        </tr>
                                        <tr>
                                            <td><a href="#"> Systèmes de gestion de bases de données</a></td>
											<td>3 </td>
                                            <td>45H </td>
                                           
                                        </tr>
                                        <tr>
                                            <td><a href="#">Recherche opérationnelle</a></td>
											<td>3</td>
                                            <td> 45H</td>
                                          
                                        </tr>
										<tr>
                                            <td><a href="#"> Génie logiciel 2 (spécification, validation,vérification et qualité)</a></td>
											<td>3</td>
                                            <td> 45h </td>
                                          
                                        </tr>
										<tr>
                                            <td><a href="#">Projets de conception et de développement</a></td>
											<td>3</td>
                                            <td>  45H </td>
                                          
                                        </tr>
										<tr>
                                            <td><a href="#">Création d’entreprises et Management des organisations</a></td>
											<td>3 </td>
                                            <td> 45H </td>
                                          
                                        </tr><tr>
                                            <td><a href="#"> Introduction aux systèmes embarqués</a></td>
											<td>3 </td>
                                            <td> 45H</td>
                                          
                                        </tr><tr>
                                            <td><a href="#">Anglais IV</a></td>
											<td>1.5</td>
                                            <td> 22.5</td>
                                          
                                        </tr><tr>
                                            <td><a href="#">Communication</a></td>
											<td>1.5</td>
                                            <td> 22.5 H</td>
                                          
                                        </tr>
										
                                    </tbody>
                                </table>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
			<br>
			<h1>MODULES SPECIFIQUES AUX NOUVELLES FILIERES EN S4</h1>
			<br> <br>
			<div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h5>Ingénierie pour la Finance IF</h5>
                        <div class="tab-content" id="nav-tabContent">
                            <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                                <table class="table" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>Matière</th>
											<th>Crédits</th>
                                            <th>Volume Horaire (CI)</th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td><a href="#">Evaluation d'entreprise et gestion de portefeuille</a></td>
											<td>3 </td>
                                            <td>45H </td>
                                            
                                        </tr>
                                        <tr>
                                            <td><a href="#"> Processus stochastiques et applications financières</a></td>
											<td>3 </td>
                                            <td>45H </td>
                                           
                                        </tr>
                                    
                                    </tbody>
                                </table>
                            </div>
                            
                            
                        </div>
						<br>
						<h5>Ingénierie du Logiciel et Systèmes d’Information ILSI</h5>
                        <div class="tab-content" id="nav-tabContent">
                            <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                                <table class="table" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>Matière</th>
											<th>Crédits</th>
                                            <th>Volume Horaire (CI)</th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td><a href="#">Programmation Fonctionnelle</a></td>
											<td>3 </td>
                                            <td>45H </td>
                                            
                                        </tr>
                                        <tr>
                                            <td><a href="#"> Architecture Logicielle</a></td>
											<td>3 </td>
                                            <td>45H </td>
                                           
                                        </tr>
                                    
                                    </tbody>
                                </table>
                            </div>
                            
                            
                        </div>
						<br>
						<h5>Réseaux et Systèmes Répartis RSR</h5>
						<div class="tab-content" id="nav-tabContent">
                            <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                                <table class="table" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>Matière</th>
											<th>Crédits</th>
                                            <th>Volume Horaire (CI)</th>
                                            
                                        </tr>
                                    </thead>	
                                    <tbody>
                                        <tr>
                                            <td><a href="#">Systèmes d'exploitation temps réel</a></td>
											<td>3 </td>
                                            <td>45H </td>
                                            
                                        </tr>
                                        <tr>
                                            <td><a href="#"> Systèmes et applications répartis</a></td>
											<td>3 </td>
                                            <td>45H </td>
                                           
                                        </tr>
                                    
                                    </tbody>
                                </table>
                            </div>
                         <br>
						<h5>Ingénierie des Systèmes Intelligents et Décision ISID</h5>
						   
							
                            <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                                <table class="table" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>Matière</th>
											<th>Crédits</th>
                                            <th>Volume Horaire (CI)</th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td><a href="#">Programmation Fonctionnelle</a></td>
											<td>3 </td>
                                            <td>45H </td>
                                            
                                        </tr>
                                        <tr>
                                            <td><a href="#"> Systèmes de Résolution de Problèmes</a></td>
											<td>3 </td>
                                            <td>45H </td>
                                           
                                        </tr>
                                    
                                    </tbody>
                                </table>
                            </div>
							<br>
						<h5>Systèmes et Logiciels Embarqués SLE</h5>
						 
							<div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                                <table class="table" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>Matière</th>
											<th>Crédits</th>
                                            <th>Volume Horaire (CI)</th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td><a href="#">Systèmes d'exploitation temps réel</a></td>
											<td>3 </td>
                                            <td>45H </td>
                                            
                                        </tr>
                                        <tr>
                                            <td><a href="#"> Systèmes et applications répartis</a></td>
											<td>3 </td>
                                            <td>45H </td>
                                           
                                        </tr>
                                    
                                    </tbody>
                                </table>
                            </div>
							<br>
						<h5>Ingénierie pour l’Image II</h5>
						 
							
							<div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                                <table class="table" cellspacing="0">
                                    <thead>
                                        <tr>
                                            <th>Matière</th>
											<th>Crédits</th>
                                            <th>Volume Horaire (CI)</th>
                                            
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td><a href="#">Introduction à l’Image</a></td>
											<td>3 </td>
                                            <td>45H </td>
                                            
                                        </tr>
                                        <tr>
                                            <td><a href="#"> Modélisation stochastique des images</a></td>
											<td>3 </td>
                                            <td>45H </td>
                                           
                                        </tr>
                                    
                                    </tbody>
                                </table>
                            </div>
							
                    </div>
                </div>
            </div>
        </section>
								
								
								
								
								
								
								
								
								
								
								
								
                        
                    </div>
                </div>
            </div>


            </div>
        

        <!-- >>>>>>>>>>>>>>>>>>>>
         Post Right Sidebar Area
        <<<<<<<<<<<<<<<<<<<<< -->
        <div class="post-sidebar-area right-sidebar mt-30 mb-30 box-shadow">
            <!-- Sidebar Widget -->
            <div class="single-sidebar-widget p-30">
                            <!-- Social Followers Info -->
                        

                    <div class="sports-videos-area">
                <!-- Section Title -->
                        <div class="section-heading">
                            <h5>Actualités</h5>
                        </div>

                    <div class="sports-videos-slides owl-carousel mb-30">
                    <!-- Single Featured Post -->
                        <div class="single-featured-post">
                        <!-- Thumbnail -->
                            <div class="post-thumbnail mb-50">
                            <img src="/img/bg-img/22.jpg" alt="">
                            <!--<a href="video-post.html" class="video-play"><i class="fa fa-play"></i></a>-->
                            </div>
                        <!-- Post Contetnt -->
                            <div class="post-content">
                                <div class="post-meta">
                                <a href="#">MAY 8, 2018</a>
                                <a href="archive.html">lifestyle</a>
                               </div>
                                <a href="video-post.html" class="post-title">A Closer Look At Our Front Porch Items From Lowe’s</a>
                                <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium</p>
                            </div>
                       
                           </div>

                    <!-- Single Featured Post -->
                        <div class="single-featured-post">
                        <!-- Thumbnail -->
                          <div class="post-thumbnail mb-50">
                            <img src="/img/bg-img/22.jpg" alt="">
                            <a href="video-post.html" class="video-play"><i class="fa fa-play"></i></a>
                          </div>
                        <!-- Post Contetnt -->
                           <div class="post-content">
                            <div class="post-meta">
                                <a href="#">MAY 8, 2018</a>
                                <a href="archive.html">lifestyle</a>
                            </div>
                            <a href="video-post.html" class="post-title">A Closer Look At Our Front Porch Items From Lowe’s</a>
                            <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium</p>
                            </div>
                        
                        </div>

                    <!-- Single Featured Post -->
                            <div class="single-featured-post">
                            <!-- Thumbnail -->
                            <div class="post-thumbnail mb-50">
                            <img src="/img/bg-img/22.jpg" alt="">
                            <a href="video-post.html" class="video-play"><i class="fa fa-play"></i></a>
                            </div>
                        <!-- Post Contetnt -->
                            <div class="post-content">
                            <div class="post-meta">
                                <a href="#">MAY 8, 2018</a>
                                <a href="archive.html">lifestyle</a>
                            </div>
                            <a href="video-post.html" class="post-title">A Closer Look At Our Front Porch Items From Lowe’s</a>
                            <p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium</p>
                             </div>
                        <!-- Post Share Area -->
                          
                            </div>
                        </div>

                        <div class="row">
                    
                    
                        </div>

                    </div>
                    </div>
                   <!-- </div>-->



                        <!-- Sidebar Widget -->
                        <div class="single-sidebar-widget p-30">
                            <!-- Section Title -->
                            <div class="section-heading">
                                <h5>Vie à l'ENSI</h5>
                            </div>

                            <!-- Catagory Widget -->
                            <div class="sports-videos-slides owl-carousel mb-30">
                    <!-- Single Featured Post -->
                        <div class="single-featured-post">
                        <!-- Thumbnail -->
                            <div class="post-thumbnail mb-50">
                            <img src="/img/img/ensi.jpg" alt="">
                            <!--<a href="video-post.html" class="video-play"><i class="fa fa-play"></i></a>-->
                            </div>
                        <!-- Post Contetnt -->
                            <div class="post-content">
                                <div class="post-meta">
                                <a href="#">Année Universitaire : 2018/2019</a>
                                <a href="archive.html">ENSI</a>
                               </div>
                                <a href="video-post.html" class="post-title">Une Vue plus proche de l'ENSI</a>
                                <!--<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium</p>-->
                            </div>
                        
                           </div>

                    <!-- Single Featured Post -->
                        <div class="single-featured-post">
                        <!-- Thumbnail -->
                          <div class="post-thumbnail mb-50">
                            <img src="/img/img/ensi1.jpg" alt="">
                            <!--<a href="video-post.html" class="video-play"><i class="fa fa-play"></i></a>-->
                            <h5> ENSI :Excellence, Networking, Sustainability, Innovation</h5>
                          </div>
                        <!-- Post Contetnt -->
                           <div class="post-content">
                            <div class="post-meta">
                                <a href="#">Année Universitaire : 2018/2019</a>
                                <a href="archive.html">lifestyle</a>
                            </div>
                            <!--<a href="video-post.html" class="post-title">A Closer Look At Our Front Porch Items From Lowe’s</a>-->
                            <!--<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium</p>-->
                            </div>
                       
                        </div>

                    <!-- Single Featured Post -->
                    <div class="single-featured-post">
                        <!-- Thumbnail -->
                          <div class="post-thumbnail mb-50">
                            <img src="/img/img/ensi2.jpg" alt="">
                            <!--<a href="video-post.html" class="video-play"><i class="fa fa-play"></i></a>-->
                            <h5> ENSI :Excellence, Networking, Sustainability, Innovation</h5>
                          </div>
                        <!-- Post Contetnt -->
                           <div class="post-content">
                            <div class="post-meta">
                                <a href="#">Année Universitaire : 2018/2019</a>
                                <a href="archive.html">lifestyle</a>
                            </div>
                            <!--<a href="video-post.html" class="post-title">A Closer Look At Our Front Porch Items From Lowe’s</a>-->
                            <!--<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium</p>-->
                            </div>
                       
                        </div>
                    <!--end single featured post -->
                    <!--single post -->
                    <div class="single-featured-post">
                        <!-- Thumbnail -->
                          <div class="post-thumbnail mb-50">
                            <img src="/img/img/ensi3.jpg" alt="">
                            <!--<a href="video-post.html" class="video-play"><i class="fa fa-play"></i></a>-->
                            <h5> ENSI :Excellence, Networking, Sustainability, Innovation</h5>
                          </div>
                        <!-- Post Contetnt -->
                           <div class="post-content">
                            <div class="post-meta">
                                <a href="#">Année Universitaire : 2018/2019</a>
                                <a href="archive.html">lifestyle</a>
                            </div>
                            <!--<a href="video-post.html" class="post-title">A Closer Look At Our Front Porch Items From Lowe’s</a>-->
                            <!--<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium</p>-->
                            </div>
                       
                        </div>
                    <!-- end single post -->
                    <!-- start single post -->
                    <div class="single-featured-post">
                        <!-- Thumbnail -->
                          <div class="post-thumbnail mb-50">
                            <img src="/img/img/ensi4.jpg" alt="">
                            <!--<a href="video-post.html" class="video-play"><i class="fa fa-play"></i></a>-->
                            <h5> ENSI :Excellence, Networking, Sustainability, Innovation</h5>
                          </div>
                        <!-- Post Contetnt -->
                           <div class="post-content">
                            <div class="post-meta">
                                <a href="#">Année Universitaire : 2018/2019</a>
                                <a href="archive.html">lifestyle</a>
                            </div>
                            <!--<a href="video-post.html" class="post-title">A Closer Look At Our Front Porch Items From Lowe’s</a>-->
                            <!--<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium</p>-->
                            </div>
                      
                        </div>
                        <!-- end single post -->
                        <!-- start single post -->
                        <div class="single-featured-post">
                        <!-- Thumbnail -->
                          <div class="post-thumbnail mb-50">
                            <img src="/img/img/ensi6.jpg" alt="">
                            <!--<a href="video-post.html" class="video-play"><i class="fa fa-play"></i></a>-->
                            <h5> ENSI :Excellence, Networking, Sustainability, Innovation</h5>
                          </div>
                        <!-- Post Contetnt -->
                           <div class="post-content">
                            <div class="post-meta">
                                <a href="#">Année Universitaire : 2018/2019</a>
                                <a href="archive.html">lifestyle</a>
                            </div>
                            <!--<a href="video-post.html" class="post-title">A Closer Look At Our Front Porch Items From Lowe’s</a>-->
                            <!--<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium</p>-->
                            </div>
                        
                        </div>
                        <!-- end single post -->
                        <!-- start singlr post -->
                          <div class="single-featured-post">
                        <!-- Thumbnail -->
                          <div class="post-thumbnail mb-50">
                            <img src="/img/img/ensi5.jpg" alt="">
                            <!--<a href="video-post.html" class="video-play"><i class="fa fa-play"></i></a>-->
                            <h5> ENSI :Excellence, Networking, Sustainability, Innovation</h5>
                          </div>
                        <!-- Post Contetnt -->
                           <div class="post-content">
                            <div class="post-meta">
                                <a href="#">Année Universitaire : 2018/2019</a>
                                <a href="archive.html">lifestyle</a>
                            </div>
                            <!--<a href="video-post.html" class="post-title">A Closer Look At Our Front Porch Items From Lowe’s</a>-->
                            <!--<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium</p>-->
                            </div>
                        
                             </div>
                            
                        <!--end single post -->
                            
                        </div>
                        </div>


                        <!-- Sidebar Widget -->
                        <div class="single-sidebar-widget">
                            <a href="#" class="add-img"><img src="/img/bg-img/add2.png" alt=""></a>
                        </div>

                        <!-- Sidebar Widget -->
                        <div class="single-sidebar-widget p-30">
                            <!-- Section Title -->
                            <div class="section-heading">
                                <h5>Coordonnées</h5>
                            </div>

                            <div class="newsletter-form">
                                
                                <li><u>Télephone: </u>  71 600 444 </li>
                                <li><u> Fax	</u>: ( +216 ) 71.600.449 </li>
								<li><u>E-mail</u>: webmaster@ensi.rnu.tn </li>
                                <li><u> Fondateur: </u>  Mohamed Ben Ahmed </li>
                                <li><ADDRESS>Campus Universitaire de la Manouba، Manouba 2010</ADDRESS></li>
                            
                            </div>

                        </div>
           

            
        </div>
    </section>
    <!-- ##### Mag Posts Area End ##### -->

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
</body>

</html>