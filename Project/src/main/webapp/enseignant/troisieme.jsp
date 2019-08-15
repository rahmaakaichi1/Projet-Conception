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
li.indent{ padding-left: 3em }
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
                                <a class="nav-item nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">MODULES DU TRONC COMMUN ENSI</a>
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
										<td>Choix de 2 modules parmi les suivants </td></tr>
                                        <tr>
                                            <td><a href="#">Intelligence Artificielle</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                            
                                        </tr>
                                        <tr>
                                            <td><a href="#"> Sécurité Informatique</a></td>
											<td>3 </td>
                                            <td>30H </td>
                                           
                                        </tr>
                                        <tr>
										<td>Choix de 3 modules parmi les suivants </td>
										<td></td>
                                            <td> </td></tr>
										<tr>
                                            <td><a href="#">Gestion de projets</a></td>
											<td></td>
                                            <td> 30H</td>
                                          
                                        </tr>
										<tr>
                                            <td><a href="#"> Module Complémentaire</a></td>
											<td> </td>
                                            <td>  30h </td>
                                          
                                        </tr>
										<tr>
                                            <td><a href="#">Anglais ciblé</a></td>
											<td></td>
                                            <td>  30H </td>
                                          
                                        </tr>
										
                                    </tbody>
                                </table>
                            </div>
                            
                            
                        </div>
                    </div>
                </div>
            </div>
			<br>
			<h1>MODULES SPECIFIQUES AUX FILIERES</h1>
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
                                            <td><h5 >Modules de 30 Heures </h5></br> Choix de 6 modules parmi les suivants </td>
											<td> </td>
                                            <td> </td>
                                           
                                        </tr>
										
                                        <tr>
                                            <td><a href="#">Méthodes de Monte-Carlo et simulation de modèles financiers</a></td>
											<td>2</td>
                                            <td>30H </td>
                                            
                                        </tr>
                                        <tr>
                                            <td><a href="#"> EDP intégro-différentielle pour les modèles financiers</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                           
                                        </tr>
										<tr>
                                            <td><a href="#">Marchés financiers </a></td>
											<td>2 </td>
                                            <td>30H </td>
                                           
                                        </tr>
										<tr>
                                            <td><a href="#"> Gestion Bancaire</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                           
                                        </tr>
										<tr>
                                            <td><a href="#"> Systèmes et applications réparties</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                           
                                        </tr>
										<tr>
                                            <td><a href="#">Systèmes intelligents d’aide à la décision </a></td>
											<td>2 </td>
                                            <td>30H </td>
                                           
                                        </tr>
										<tr>
                                            <td><a href="#"> Module Complémentaire Mathématiques pour la finance</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                           
                                        </tr>
										<tr>
                                            <td><a href="#"> Module Complémentaire Finance</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                           
                                        </tr>
										<tr>
                                            <td><a href="#"> Module Complémentaire Informatique</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                           
                                        </tr>
										<tr>
                                            <td>Choix de 2 modules parmi les suivants </td>
											<td> </td>
                                            <td> </td>
                                           
                                        </tr>
										</tr>
										<tr>
                                            <td><a href="#"> Modélisation du risque et gestion dynamique des risques financiers</a></td>
											<td>2 </td>
                                            <td>30H </td> 
										 </tr>
											<tr>
                                            <td><a href="#"> Module complémentaire mathématiques pour la Finance</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                            </tr>
											
											<tr>
                                            <td><a href="#"> Finance internationale et gestion de portefeuille internationale</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                            </tr>
											<tr>
                                            <td><a href="#">Module complémentaire finance </a></td>
											<td>2 </td>
                                            <td>30H </td>
                                            </tr>
											<tr>
                                            <td><a href="#">Calcul parallèle en finance </a></td>
											<td>2 </td>
                                            <td>30H </td>
                                            </tr>
											<tr>
                                            <td><a href="#"> Module Complémentaire Informatique</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                            </tr>
											<tr>
                                            <td><h5 >Modules de 15 Heures </h5></br> Modules obligatoires </td>
											<td> </td>
                                            <td> </td>
                                           
                                            </tr>
											
											<tr>
                                            <td><a href="#">Méthodes numériques d'optimisation en finance </a></td>
											<td>2 </td>
                                            <td>30H </td>
                                            </tr>
											<tr>
											<tr>
                                            <td><a href="#">Projet simulation de marchés financier</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                            </tr>
											<tr>
											<tr>
                                            <td><a href="#">Projet Développement d'Applications communicantes </a></td>
											<td>2 </td>
                                            <td>30H </td>
                                            </tr>
											<tr>
											
											<tr>
                                            <td>Choix de 4 modules parmi les suivants </td>
											<td> </td>
                                            <td> </td>
                                           </tr>
										   <tr>
                                            <td>Statistique inférentielle avancée </td>
											<td> 1</td>
                                            <td> 15H</td>
                                           </tr>
										   <tr>
                                            <td>Séries temporelles </td>
											<td>1 </td>
                                            <td> 15H</td>
                                           </tr>
										   <tr>
                                            <td>Modèles stochastiques avancés et applications financières</td>
											<td>1 </td>
                                            <td> 15H</td>
                                           </tr>
										   <tr>
                                            <td>Méthodes avancées des statistiques multi-variées</td>
											<td>1 </td>
                                            <td>15H </td>
                                           </tr>
										   <tr>
                                            <td>Risque de crédit </td>
											<td>1 </td>
                                            <td>15H </td>
                                           </tr>
										   <tr>
                                            <td>Comptabilité des instruments financiers</td>
											<td>1 </td>
                                            <td> 15H</td>
                                           </tr>
										   <tr>
                                            <td>Etude de cas (Salle de marché, assurance,banque) </td>
											<td> 1</td>
                                            <td> 15H</td>
                                           </tr>
										   <tr>
                                            <td>Finance quantitative </td>
											<td> 1</td>
                                            <td> 15H</td>
                                           </tr>
										   <tr>
                                            <td>Architectures orientées Services SOA </td>
											<td>1 </td>
                                            <td>15H </td>
                                           </tr>
										   <tr>
                                            <td>Applications d’intégration technologiques (.Net,j2E, ...)</td>
											<td> 1</td>
                                            <td> 15H</td>
                                           </tr>
										   <tr>
                                            <td>Ingénierie des systèmes de fiance </td>
											<td> 1</td>
                                            <td> 15H</td>
                                           </tr>
										   <tr>
                                            <td>Module Complémentaire Mathématiques pour la finance </td>
											<td>1 </td>
                                            <td> 15H</td>
                                           </tr>
										   <tr>
                                            <td>Sécurité des systèmes Financiers </td>
											<td> 1</td>
                                            <td> 15H</td>
                                           </tr>
										   <tr>
                                            <td>CModule complémentaire Finance </td>
											<td> 1</td>
                                            <td> 15H</td>
                                           </tr>
										   <tr>
                                            <td>Module complémentaire Informatique </td>
											<td> 1</td>
                                            <td> 15H</td>
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
                                            <td><h5 >Modules de 30 Heures </h5></br> Choix de 6 modules parmi les suivants </td>
											<td> </td>
                                            <td> </td>
                                           
                                        </tr>
										
                                        <tr>
                                            <td><a href="#">Ingénierie Orientée Services</a></td>
											<td>2</td>
                                            <td>30H </td>
                                            
                                        </tr>
                                        <tr>
                                            <td><a href="#"> Réutilisation Logicielle</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                           
                                        </tr>
										<tr>
                                            <td><a href="#">Re-Ingénierie Logicielle </a></td>
											<td>2 </td>
                                            <td>30H </td>
                                           
                                        </tr>
										<tr>
                                            <td><a href="#"> Urbanisation des SI</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                           
                                        </tr>
										<tr>
                                            <td><a href="#"> Ingénierie Dirigée par les Modèles (MDA-MDE)</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                           
                                        </tr>
										<tr>
                                            <td><a href="#">Vérification des Systèmes Complexes </a></td>
											<td>2 </td>
                                            <td>30H </td>
                                           
                                        </tr>
										<tr>
                                            <td><a href="#"> Module Complémentaire 1</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                           
                                        </tr>
										<tr>
                                            <td><a href="#"> Module Complémentaire 2</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                           
                                        </tr>
										
										<tr>
                                            <td>Choix de 2 modules parmi les suivants </td>
											<td> </td>
                                            <td> </td>
                                           
                                        </tr>
										</tr>
										<tr>
                                            <td><a href="#"> Interaction Homme Machine</a></td>
											<td>2 </td>
                                            <td>30H </td> 
										 </tr>
											<tr>
                                            <td><a href="#"> Management de la Qualité et Métriques du Logiciel</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                            </tr>
											
											<tr>
                                            <td><a href="#"> Ingénierie des Composants</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                            </tr>
											<tr>
                                            <td><a href="#">Ingénierie Orientée Services </a></td>
											<td>2 </td>
                                            <td>30H </td>
                                            </tr>
											<tr>
                                            <td><a href="#">Systèmes Interactifs d’Aide à la Décision </a></td>
											<td>2 </td>
                                            <td>30H </td>
                                            </tr>
											<tr>
                                            <td><a href="#"> Datawarehouse</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                            </tr>
											<tr>
                                            <td><a href="#"> Module Complémentaire 3</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                            </tr>
											<tr>
                                            <td><a href="#"> Module Complémentaire 4</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                            </tr>
											<tr>
                                            <td><h5 >Modules de 15 Heures </h5></br> Modules obligatoires </td>
											<td> </td>
                                            <td> </td>
                                           
                                            </tr>
											
											<tr>
                                            <td><a href="#">Projet Complémentaire Architecture Logicielle </a></td>
											<td>1 </td>
                                            <td>15H </td>
                                            </tr>
											<tr>
											<tr>
                                            <td><a href="#">Bases de Données Réparties</a></td>
											<td>1 </td>
                                            <td>15H </td>
                                            </tr>
											<tr>
											<tr>
                                            <td><a href="#">Sécurité des Systèmes d'Information </a></td>
											<td>1 </td>
                                            <td>15H </td>
                                            </tr>
											<tr>
											
											<tr>
                                            <td>Choix de 4 modules parmi les suivants </td>
											<td> </td>
                                            <td> </td>
                                           </tr>
										   <tr>
                                            <td>Informatique Ubiquitaire </td>
											<td> 1</td>
                                            <td> 15H</td>
                                           </tr>
										   <tr>
                                            <td>Conception de Jeux </td>
											<td>1 </td>
                                            <td> 15H</td>
                                           </tr>
										   <tr>
                                            <td>Urbanisation des Systèmes d’Information</td>
											<td>1 </td>
                                            <td> 15H</td>
                                           </tr>
										   <tr>
                                            <td>Interopérabilité Logicielle</td>
											<td>1 </td>
                                            <td>15H </td>
                                           </tr>
										   <tr>
                                            <td>Sûreté de Fonctionnement et Tolérance aux Fautes </td>
											<td>1 </td>
                                            <td>15H </td>
                                           </tr>
										   <tr>
                                            <td>Modélisation de Processus Logiciels (Workflow)</td>
											<td>1 </td>
                                            <td> 15H</td>
                                           </tr>
										   <tr>
                                            <td>Informatique émotionnelle </td>
											<td> 1</td>
                                            <td> 15H</td>
                                           </tr>
										   <tr>
                                            <td>Module complémentaire 1 </td>
											<td> 1</td>
                                            <td> 15H</td>
                                           </tr>
										   <tr>
                                            <td>Module complémentaire 2 </td>
											<td>1 </td>
                                            <td>15H </td>
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
                                            <td><h5 >Modules de 30 Heures </h5></br> Choix de 6 modules parmi les suivants </td>
											<td> </td>
                                            <td> </td>
                                           
                                        </tr>
										
                                        <tr>
                                            <td><a href="#">Protocoles et architectures des réseaux multiservices</a></td>
											<td>2</td>
                                            <td>30H </td>
                                            
                                        </tr>
                                        <tr>
                                            <td><a href="#"> Réutilisation Logicielle</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                           
                                        </tr>
										<tr>
                                            <td><a href="#">Réseaux sans Fil et cellulaires </a></td>
											<td>2 </td>
                                            <td>30H </td>
                                           
                                        </tr>
										<tr>
                                            <td><a href="#"> Simulations à évènements discrets</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                           
                                        </tr>
										<tr>
                                            <td><a href="#"> Algorithmique répartie</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                           
                                        </tr>
										<tr>
                                            <td><a href="#">Bases de données réparties</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                           
                                        </tr>
										<tr>
                                            <td><a href="#"> Middleware et construction d'applications réparties</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                           
                                        </tr>
										<tr>
                                            <td><a href="#"> Module Complémentaire 1</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                           
                                        </tr>
										<tr>
                                            <td><a href="#"> Module Complémentaire 2</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                           
                                        </tr>
										
										<tr>
                                            <td>Choix de 2 modules parmi les suivants </td>
											<td> </td>
                                            <td> </td>
                                           
                                        </tr>
										</tr>
										<tr>
                                            <td><a href="#"> Sûreté de fonctionnement des systèmes et tolérance aux fautes</a></td>
											<td>2 </td>
                                            <td>30H </td> 
										 </tr>
											<tr>
                                            <td><a href="#"> Modélisation et évaluation de performance</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                            </tr>
											
											<tr>
                                            <td><a href="#">Réseaux de données avancés</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                            </tr>
											<tr>
                                            <td><a href="#">Sécurité des réseaux </a></td>
											<td>2 </td>
                                            <td>30H </td>
                                            </tr>
											<tr>
                                            <td><a href="#">Architectures avancées et programmations parallèles </a></td>
											<td>2 </td>
                                            <td>30H </td>
                                            </tr>
											>
											<tr>
                                            <td><a href="#"> Module Complémentaire 3</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                            </tr>
											<tr>
                                            <td><a href="#"> Module Complémentaire 4</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                            </tr>
											<tr>
                                            <td><h5 >Modules de 15 Heures </h5></br> Modules obligatoires </td>
											<td> </td>
                                            <td> </td>
                                           
                                            </tr>
											
											<tr>
                                            <td><a href="#">Projet de simulation </a></td>
											<td>1 </td>
                                            <td>15H </td>
                                            </tr>
											<tr>
											<tr>
                                            <td><a href="#">Projet développement d'applications réparties</a></td>
											<td>1 </td>
                                            <td>15H </td>
                                            </tr>
											<tr>
											<tr>
                                            <td><a href="#">Métaheuristiques et applications réseaux </a></td>
											<td>1 </td>
                                            <td>15H </td>
                                            </tr>
											<tr>
											
											<tr>
                                            <td>Choix de 4 modules parmi les suivants </td>
											<td> </td>
                                            <td> </td>
                                           </tr>
										   <tr>
                                            <td>Projet administration des réseaux</td>
											<td> 1</td>
                                            <td> 15H</td>
                                           </tr>
										   <tr>
                                            <td>Ingénierie des protocoles </td>
											<td>1 </td>
                                            <td> 15H</td>
                                           </tr>
										   <tr>
                                            <td>Mobilité des réseaux</td>
											<td>1 </td>
                                            <td> 15H</td>
                                           </tr>
										   <tr>
                                            <td>Administrations des réseaux</td>
											<td>1 </td>
                                            <td>15H </td>
                                           </tr>
										   <tr>
                                            <td>Modèles formels du temps et du parallélisme </td>
											<td>1 </td>
                                            <td>15H </td>
                                           </tr>
										   <tr>
                                            <td>Modélisation de Processus Logiciels (Workflow)</td>
											<td>1 </td>
                                            <td> 15H</td>
                                           </tr>
										   <tr>
                                            <td>Systèmes domotiques et immotiques</td>
											<td> 1</td>
                                            <td> 15H</td>
                                           </tr>
										   <tr>
                                            <td>Interface homme-machine1 </td>
											<td> 1</td>
                                            <td> 15H</td>
                                           </tr>
										   <tr>
                                            <td>Cryptographie </td>
											<td>1 </td>
                                            <td>15H </td>
                                           </tr>
										   <tr>
                                            <td>Réseaux de capteurs </td>
											<td>1 </td>
                                            <td>15H </td>
                                           </tr>
										   <tr>
                                            <td>Sécurité des systèmes embarqués </td>
											<td>1 </td>
                                            <td>15H </td>
                                           </tr>
										   <tr>
                                            <td>Métrologie et caractérisation des trafics réseaux </td>
											<td>1 </td>
                                            <td>15H </td>
                                           </tr>
										   <tr>
                                            <td>Architectures et applications P2P </td>
											<td>1 </td>
                                            <td>15H </td>
                                           </tr>
										   <tr>
                                            <td>Grid computing</td>
											<td>1 </td>
                                            <td>15H </td>
                                           </tr>
										   <tr>
                                            <td>Vanets </td>
											<td>1 </td>
                                            <td>15H </td>
                                           </tr>
										   <tr>
                                            <td>Ordonnancement </td>
											<td>1 </td>
                                            <td>15H </td>
                                           </tr>
										   <tr>
                                            <td>Projets réseaux avancés et RF </td>
											<td>1 </td>
                                            <td>15H </td>
                                           </tr>
										   <tr>
                                            <td>Module complémentaire 1 </td>
											<td>1 </td>
                                            <td>15H </td>
                                           </tr>
										   <tr>
                                            <td>Module complémentaire 2</td>
											<td>1 </td>
                                            <td>15H </td>
                                           </tr>
										   
                                    </tbody>
                                </table>
                            </div>
                         
						  </div>
						  <br>
						<h5>Ingénierie des Systèmes Intelligents et Décision ISID</h5>
						   
							
                            <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
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
                                            <td><h5 >Modules de 30 Heures </h5></br> Choix de 6 modules parmi les suivants </td>
											<td> </td>
                                            <td> </td>
                                           
                                        </tr>
										
                                        <tr>
                                            <td><a href="#">Systèmes Multi-agents</a></td>
											<td>2</td>
                                            <td>30H </td>
                                            
                                        </tr>
                                        <tr>
                                            <td><a href="#"> Raisonnement</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                           
                                        </tr>
										<tr>
                                            <td><a href="#">Optimisation Combinatoire : Méthodes Approchées </a></td>
											<td>2 </td>
                                            <td>30H </td>
                                           
                                        </tr>
										<tr>
                                            <td><a href="#"> Logique Non Classique</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                           
                                        </tr>
										<tr>
                                            <td><a href="#"> Systèmes Interactifs d'Aide à la Décision</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                           
                                        </tr>
										<tr>
                                            <td><a href="#">Apprentissage </a></td>
											<td>2 </td>
                                            <td>30H </td>
                                           
                                        </tr>
										<tr>
                                            <td><a href="#"> Module Complémentaire 1</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                           
                                        </tr>
										<tr>
                                            <td><a href="#"> Module Complémentaire 2</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                           
                                        </tr>
										
										<tr>
                                            <td>Choix de 2 modules parmi les suivants </td>
											<td> </td>
                                            <td> </td>
                                           
                                        </tr>
										</tr>
										<tr>
                                            <td><a href="#"> Vérification de Systèmes Complexes</a></td>
											<td>2 </td>
                                            <td>30H </td> 
										 </tr>
											<tr>
                                            <td><a href="#"> Informatique Répartie</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                            </tr>
											
											<tr>
                                            <td><a href="#"> Reconnaissance des Formes</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                            </tr>
											<tr>
                                            <td><a href="#">Robotique et Soft Computing</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                            </tr>
											<tr>
                                            <td><a href="#">Systèmes d’Aide au Diagnostic </a></td>
											<td></td>
                                            <td> </td>
                                            </tr>
											<tr>
                                            <td><a href="#"> Data Mining</a></td>
											<td> </td>
                                            <td> </td>
                                            </tr>
											<tr>
                                            <td><a href="#"> Systèmes d’Aide au Diagnostic</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                            </tr>
											<tr>
                                            <td><a href="#"> Module Complémentaire 3</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                            </tr>
											<tr>
                                            <td><a href="#"> Module Complémentaire 4</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                            </tr>
											<tr>
                                            <td><h5 >Modules de 15 Heures </h5></br> Modules obligatoires </td>
											<td> </td>
                                            <td> </td>
                                           
                                            </tr>
											
											<tr>
                                            <td><a href="#">Planification </a></td>
											<td>1 </td>
                                            <td>15H </td>
                                            </tr>
											<tr>
											<tr>
                                            <td><a href="#">Knowledge Management</a></td>
											<td>1 </td>
                                            <td>15H </td>
                                            </tr>
											<tr>
											<tr>
                                            <td><a href="#">Projet ISID</a></td>
											<td>1 </td>
                                            <td>15H </td>
                                            </tr>
											<tr>
											
											<tr>
                                            <td>Choix de 4 modules parmi les suivants </td>
											<td> </td>
                                            <td> </td>
                                           </tr>
										   <tr>
                                            <td>IAcquisition des connaissances </td>
											<td> 1</td>
                                            <td> 15H</td>
                                           </tr>
										   <tr>
                                            <td>Systèmes de Recherche d’Information</td>
											<td>1 </td>
                                            <td> 15H</td>
                                           </tr>
										   <tr>
                                            <td>Traitement Automatique du Langage Naturel</td>
											<td>1 </td>
                                            <td> 15H</td>
                                           </tr>
										   <tr>
                                            <td>Web Sémantique</td>
											<td>1 </td>
                                            <td>15H </td>
                                           </tr>
										   <tr>
                                            <td>Développement Orienté Services & Web </td>
											<td>1 </td>
                                            <td>15H </td>
                                           </tr>
										   <tr>
                                            <td>Data/Knowledge Grids</td>
											<td>1 </td>
                                            <td> 15H</td>
                                           </tr>
										   <tr>
                                            <td>Datawarehouse </td>
											<td> 1</td>
                                            <td> 15H</td>
                                           </tr>
										   <tr>
                                            <td>DAcquisition des connaissances </td>
											<td> 1</td>
                                            <td> 15H</td>
                                           </tr>
										   <tr>
                                            <td>La Reconnaissance Automatique de la Parole</td>
											<td> 1</td>
                                            <td> 15H</td>
                                           </tr>
										   <tr>
                                            <td>Ordonnancement </td>
											<td> 1</td>
                                            <td> 15H</td>
                                           </tr>
										   <tr>
                                            <td>Informatique émotionnelle </td>
											<td> 1</td>
                                            <td> 15H</td>
                                           </tr>
										   <tr>
                                            <td>Interface homme machine </td>
											<td> 1</td>
                                            <td> 15H</td>
                                           </tr>
										   <tr>
                                            <td>Cryptographie </td>
											<td> 1</td>
                                            <td> 15H</td>
                                           </tr>
										   <tr>
                                            <td>Module complémentaire 1 </td>
											<td> 1</td>
                                            <td> 15H</td>
                                           </tr>
										   <tr>
                                            <td>Module complémentaire 2 </td>
											<td>1 </td>
                                            <td>15H </td>
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
                                            <td><h5 >Modules de 30 Heures </h5></br> Choix de 6 modules parmi les suivants </td>
											<td> </td>
                                            <td> </td>
                                           
                                        </tr>
										
                                        <tr>
                                            <td><a href="#">Conception et validation des systèmes temps réel</a></td>
											<td>2</td>
                                            <td>30H </td>
                                            
                                        </tr>
                                        <tr>
                                            <td><a href="#"> Electronique pour l'embarqué</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                           
                                        </tr>
										<tr>
                                            <td><a href="#">Intégration des systèmes </a></td>
											<td>2 </td>
                                            <td>30H </td>
                                           
                                        </tr>
										<tr>
                                            <td><a href="#"> Systèmes à base de microcontrôleurs</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                           
                                        </tr>
										<tr>
                                            <td><a href="#"> Technologies de traitement du signal et image</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                           
                                        </tr>
										<tr>
                                            <td><a href="#">Apprentissage </a></td>
											<td>2 </td>
                                            <td>30H </td>
                                           
                                        </tr>
										<tr>
                                            <td><a href="#"> Robotique et soft computing</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                           
                                        </tr>
										<tr>
                                            <td><a href="#"> Module Complémentaire 1</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                           
                                        </tr>
										<tr>
                                            <td><a href="#"> Module Complémentaire 2</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                           
                                        </tr>
										
										<tr>
                                            <td>Choix de 2 modules parmi les suivants </td>
											<td> </td>
                                            <td> </td>
                                           
                                        </tr>
										</tr>
										<tr>
                                            <td><a href="#"> Codesign</a></td>
											<td>2 </td>
                                            <td>30H </td> 
										 </tr>
											<tr>
                                            <td><a href="#">Réseaux san fil</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                            </tr>
											
											<tr>
                                            <td><a href="#">Simulation à évènements discrets</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                            </tr>
											<tr>
                                            <td><a href="#">Architectures avancées et programmation parallèle</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                            </tr>
											
											<tr>
                                            <td><a href="#"> Module Complémentaire 3</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                            </tr>
											<tr>
                                            <td><a href="#"> Module Complémentaire 4</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                            </tr>
											<tr>
                                            <td><h5 >Modules de 15 Heures </h5></br> Modules obligatoires </td>
											<td> </td>
                                            <td> </td>
                                           
                                            </tr>
											
											<tr>
                                            <td><a href="#"> Projet pratique du système</a></td>
											<td>1 </td>
                                            <td>15H </td>
                                            </tr>
											<tr>
											<tr>
                                            <td><a href="#">Projet d'intégration</a></td>
											<td>1 </td>
                                            <td>15H </td>
                                            </tr>
											<tr>
											<tr>
                                            <td><a href="#">Projet microcontrôleurs</a></td>
											<td>1 </td>
                                            <td>15H </td>
                                            </tr>
											
											
											<tr>
                                            <td>Choix de 4 modules parmi les suivants </td>
											<td> </td>
                                            <td> </td>
                                           </tr>
										   <tr>
                                            <td>Modèles formels du temps et du parallélisme </td>
											<td> 1</td>
                                            <td> 15H</td>
                                           </tr>
										   <tr>
                                            <td>Modélisation des systèmes temps réel</td>
											<td>1 </td>
                                            <td> 15H</td>
                                           </tr>
										   <tr>
                                            <td>Programmation parallèle</td>
											<td>1 </td>
                                            <td> 15H</td>
                                           </tr>
										   <tr>
                                            <td>Optimisation des programmes</td>
											<td>1 </td>
                                            <td>15H </td>
                                           </tr>
										   <tr>
                                            <td>soc</td>
											<td>1 </td>
                                            <td>15H </td>
                                           </tr>
										   <tr>
                                            <td>Commande numérique de processus</td>
											<td>1 </td>
                                            <td> 15H</td>
                                           </tr>
										   <tr>
                                            <td>Projet asservissement </td>
											<td> 1</td>
                                            <td> 15H</td>
                                           </tr>
										   <tr>
                                            <td>Informatique émotionnelle </td>
											<td> 1</td>
                                            <td> 15H</td>
                                           </tr>
										   <tr>
                                            <td>Réseaux de capteurs</td>
											<td> 1</td>
                                            <td> 15H</td>
                                           </tr>
										   <tr>
                                            <td>Sécurité des systèmes embarqués  </td>
											<td> 1</td>
                                            <td> 15H</td>
                                           </tr>
										   <tr>
                                            <td>Tolérance aux fautes </td>
											<td> 1</td>
                                            <td> 15H</td>
                                           </tr>
										   <tr>
                                            <td>Interface homme machine </td>
											<td> 1</td>
                                            <td> 15H</td>
                                           </tr>
										   <tr>
                                            <td>Cryptographie </td>
											<td> 1</td>
                                            <td> 15H</td>
                                           </tr>
										   <td>Expertise industrielle  </td>
											<td> 1</td>
                                            <td> 15H</td>
                                           </tr>
										   <td>Bus de communications </td>
											<td> 1</td>
                                            <td> 15H</td>
                                           </tr>
										   <td>CAO </td>
											<td> 1</td>
                                            <td> 15H</td>
                                           </tr>
										   <td>Vanets </td>
											<td> 1</td>
                                            <td> 15H</td>
                                           </tr>
										   <td>Instruments et mesure </td>
											<td> 1</td>
                                            <td> 15H</td>
                                           </tr>
										   <tr>
                                            <td>Module complémentaire 1 </td>
											<td> 1</td>
                                            <td> 15H</td>
                                           </tr>
										   <tr>
                                            <td>Module complémentaire 2 </td>
											<td>1 </td>
                                            <td>15H </td>
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
                                            <td><h5 >Modules de 30 Heures </h5></br> Choix de 6 modules parmi les suivants </td>
											<td> </td>
                                            <td> </td>
                                           
                                        </tr>
										
                                        <tr>
                                            <td><a href="#">Traitement et Analyse d’Images</a></td>
											<td>2</td>
                                            <td>30H </td>
                                            
                                        </tr>
                                        <tr>
                                            <td><a href="#"> L’imagerie du 1D au 4D</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                           
                                        </tr>
										<tr>
                                            <td><a href="#">Reconstruction d’Images </a></td>
											<td>2 </td>
                                            <td>30H </td>
                                           
                                        </tr>
										<tr>
                                            <td><a href="#"> Introduction à la reconnaissance de formes</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                           
                                        </tr>
										<tr>
                                            <td><a href="#"> Analyse géométrique des Formes</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                           
                                        </tr>
										<tr>
                                            <td><a href="#">Reconnaissance de Formes Statistiques </a></td>
											<td>2 </td>
                                            <td>30H </td>
                                           
                                        </tr>
										<tr>
                                            <td><a href="#"> Module Complémentaire 1</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                           
                                        </tr>
										<tr>
                                            <td><a href="#"> Module Complémentaire 2</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                           
                                        </tr>
										<tr>
                                            <td><a href="#"> Module Complémentaire 3</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                           
                                        </tr>
										<tr>
                                            <td><a href="#"> Module Complémentaire 4</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                           
                                        </tr>
										<tr>
                                            <td>Choix de 2 modules parmi les suivants </td>
											<td> </td>
                                            <td> </td>
                                           
                                        </tr>
										</tr>
										<tr>
                                            <td><a href="#">Indexation par le contenue</a></td>
											<td>2 </td>
                                            <td>30H </td> 
										 </tr>
											<tr>
                                            <td><a href="#">Contours Actifs et Courbes de niveaux</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                            </tr>
											
											<tr>
                                            <td><a href="#">Module complémentaire 5</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                            </tr>
											<tr>
                                            <td><a href="#">Module complémentaire 6</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                            </tr>
											
											<tr>
                                            <td><a href="#"> Module Complémentaire 7</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                            </tr>
											<tr>
                                            <td><a href="#"> Module Complémentaire 8</a></td>
											<td>2 </td>
                                            <td>30H </td>
                                            </tr>
											<tr>
                                            <td><h5 >Modules de 15 Heures </h5></br> Modules obligatoires </td>
											<td> </td>
                                            <td> </td>
                                           
                                            </tr>
											
											<tr>
                                            <td><a href="#"> Atelier R. F.</a></td>
											<td>1 </td>
                                            <td>15H </td>
                                            </tr>
											<tr>
											<tr>
                                            <td><a href="#">Projet d'intégration</a></td>
											<td>1 </td>
                                            <td>15H </td>
                                            </tr>
											<tr>
											<tr>
                                            <td><a href="#">Atelier 3D-4D</a></td>
											<td>1 </td>
                                            <td>15H </td>
                                            </tr>
											<tr>
											<td><a href="#">Vision 3D</a></td>
											<td>1 </td>
                                            <td>15H </td>
                                            </tr>
											<tr>
                                            <td>Choix de 4 modules parmi les suivants </td>
											<td> </td>
                                            <td> </td>
                                           </tr>
										   <tr>
                                            <td>Calcul Invariant </td>
											<td> 1</td>
                                            <td> 15H</td>
                                           </tr>
										   <tr>
                                            <td>Codage et Compression</td>
											<td>1 </td>
                                            <td> 15H</td>
                                           </tr>
										   <tr>
                                            <td>Classification</td>
											<td>1 </td>
                                            <td> 15H</td>
                                           </tr>
										   <tr>
                                            <td>Optimisation des programmes</td>
											<td>1 </td>
                                            <td>15H </td>
                                           </tr>
										   <tr>
                                            <td>Représentation et modélisation des images 3D</td>
											<td>1 </td>
                                            <td>15H </td>
                                           </tr>
										   <tr>
                                            <td>Module complémentaire 1</td>
											<td>1 </td>
                                            <td> 15H</td>
                                           </tr>
										   <tr>
                                            <td>Module complémentaire 2</td>
											<td> 1</td>
                                            <td> 15H</td>
                                           </tr>
										   <tr>
                                            <td>Module complémentaire 3</td>
											<td> 1</td>
                                            <td> 15H</td>
                                           </tr>
										   <tr>
                                            <td>Module complémentaire 4</td>
											<td> 1</td>
                                            <td> 15H</td>
                                           </tr>
										   										   
                                    </tbody>
                                </table>
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