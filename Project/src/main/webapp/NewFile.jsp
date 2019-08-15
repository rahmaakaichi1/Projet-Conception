<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<style>p.indent{ padding-left: 1.8em }</style>
    <!-- Title -->
    <title>ENSI Scheduler </title>

    <!-- Favicon -->
    <link rel="icon" href="/img/logo.ico">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="/style.css">

	
<style type="text/css">
	.image1
{
    display: flex;
    flex-direction: row;
    align-items: top;
	
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
			<div class="image1">
			<IMG src="/pic.png" width="100%" height="100"  >
		
			</div>
                <!-- Menu -->
                <nav class="classy-navbar justify-content-between" id="magNav">

                    <!-- Nav brand -->
                    <a href="index.html" class="nav-brand"><img src="/img/ensiLogo1.png" alt=""></a>

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
                            <div class="classynav">
                                <ul>
                                    <li><a href="#">Espace Admin</a>
                                        <ul class="dropdown">
                                            <li><a href="acceuilEnseignant.html">Gerer Etudiants</a></li>
                                            <li><a href="rattrapage.html">Gerer Enseignants</a></li>
                                            
                                        </ul>
                                    </li>
                                    <li><a href="#">Espace Enseignant</a>
                                        <ul class="dropdown">
                                            <li><a href="/enseignant/espace_enseignant.jsp">Acceuil</a></li>
                                            <li><a href="/enseignant/rattrapage.jsp">Rattrapage</a></li>
                                            <li><a href="/enseignant/devoirsurveille.jsp">Devoir Surveillé</a></li>
                                           
                                            <li><a href="/enseignant/absence.jsp">Absence</a></li>
                                            <li><a href="/enseignant/emploiEnseignant">Emploi</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="#">Espace Etudiant</a>
                                        <div class="dropdown">
                                            <ul class="single-mega cn-col-4">
                                                <li><a href="acceuilEtudiant.html">Acceuil</a></li>
                                                <li><a href="emploiEtudiant.html">Emploi</a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li><a href="apropos.html">About</a></li>
                                    <li><a href="contact.html">Contact</a></li>
                                </ul>
                            </div>
                            <!-- Nav End -->
                        </div>
<p class="indent"></p> <p class="indent"></p>
                        <div class="classynav">
                            <!-- Top Search Area -->
                            <div class="top-search-area">
                                <form action="index.html" method="post">
                                    <input type="search" name="top-search" id="topSearch" placeholder="Rechercher...">
                                    <button type="submit" class="btn"><i class="fa fa-search" aria-hidden="true"></i></button>
                                </form>
                            </div>
                            <ul>
                            <li><a href="#" ><i class="fa fa-user" aria-hidden="true"></i>PROFIL</a>
                           <div class="dropdown">
                                            <ul class="single-mega cn-col-4">
                                                <li><a href="profilEnseignant.html">profilEnseignant</a></li>
                                                <li><a href="profilEtudiant.html">profilEtudiant</a></li>
                                            </ul>
                                        </div>
                                    </li>
									</ul><p class="indent"></p>
                            <a href="connection.jsp" class="submit-video"><span><i class="fa fa-cloud-upload"></i></span> <span class="video-text">Déconnexion</span></a>
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
                            
                            <a  class="post-title" data-animation="fadeInUp" data-delay="300ms">ENSI:Ecole Nationale Des Sciences De L'Informatique</a>
                            
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
                            
                            <a  class="post-title" data-animation="fadeInUp" data-delay="300ms">ENSI :Excellence , Networking , Sustainability , Innovation </a>
                            
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
                            
                            <a class="post-title" data-animation="fadeInUp" data-delay="300ms"> ENSI Scheduler Is Here To Schedule Everything For You</a>
                            
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
                            
                            <a  class="post-title" data-animation="fadeInUp" data-delay="300ms">ENSI :Excellence , Networking , Sustainability , Innovation</a>
                            
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
                            
                            <a  class="post-title" data-animation="fadeInUp" data-delay="300ms">ENSI : The heart Of Computer Science </a>
                            
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
                                
                            <a  class="post-title" data-animation="fadeInUp" data-delay="300ms">ENSI :Excellence , Networking , Sustainability , Innovation</a>
                             
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
                    <h5>PRÉSENTATION DE l'ENSI</h5>
                </div>
	
                <div class="featured-video-posts">
                    <div class="row">
                        
                            
								<p>Établie en 1984, l’ENSI (l’École Nationale des Sciences de l’Informatique) est l’une des plus préstigieuse école d’ingénieur 
								spécialisée en informatique en Tunisie. L’ENSI est un collège d’ingénierie de classe régionale où l’enseignement et la recherche – avec 
								pertinence pour le monde pratique en tant que principe
								directeur – continuent d’être son objectif principal. La mission de l’ENSI est de faire progresser la connaissance et d’éduquer
								les étudiants en sciences, en technologie et dans d’autres domaines d’études qui serviront le mieux la Tunisie au 21ème siècle.
  								Les diplômes obtenus chez l’ENSI comprennent Diplôme d’Ingénieur en Informatique, Diplôme de Master of Science, et Diplôme de Doctorat
								en Informatique. À la fin de l’année 2016, il y avait plus de 4300 anciens élèves, 1000 étudiants de premier cycle et 200 étudiants diplômés. Dates importantes :
<br/>
– 1984: Première génération d’ingénieurs en informatique à l’échelle nationale
<br/>
– 1994: Première doctorat à l’échelle nationale
<br/>
– 1999: Premiers laboratoires informatique à l’échelle nationale: RIADI lab & CRISTAL lab
<br/>
– 2014: Laboratoire HANA
<br/>
– 2016: Laboratoire COSMOS
<br/>
– 2017: Inauguration du centre de recherche de l’ENSI : ENSI Research Center
</p>
                                
                        
                        
                    </div>
                </div>
            </div>

			 <!-- Feature Video Posts Area -->
            <div class="feature-video-posts mb-30">
                <!-- Section Title -->
                <div class="section-heading">
                    <h5>CURSUS DES ÉTUDES</h5>
                </div>
	
                <div class="featured-video-posts">
                    <div class="row">
                        
                            
								<p>
                                	
La formation est subdivisée en six semestres : <br/>

-trois semestres de tronc commun : ( II1 + premier semestre de II2 ),<br/>
-deux semestres de spécialisation. <br/>
-un semestre pour le Projet de Fin d'Etudes. <br/>
Elle comprend des enseignements  théoriques et pratiques, des projets réalisés en groupe et des stages obligatoires.
<br/> 
<br/>
Outre le stage de PFE effectué en Tunisie ou à l'étranger, le cursus comporte un stage de programmation d'une durée de six semaines en fin de la première année et un stage d'immersion en entreprise d'une durée de six semaines en fin de la deuxième année. 
<br/> <br/>
Par ailleurs certains étudiants de la troisième année sont autorisés à suivre en parallèle le master de recherche en informatique de l'ENSI, des équivalences sont accordées par la commission de master. 


                       
                    </div>
                </div>
            </div>

			
			
            <!-- Most Viewed Videos -->
            <div class="most-viewed-videos mb-30">
                <!-- Section Title -->
                <div class="section-heading">
                    <h5>Filières</h5>
                </div>

                <div class="most-viewed-videos-slide owl-carousel">

				
				<!-- Single Blog Post -->
                    <div class="single-blog-post style-4">
                       
                        <div class="post-content">
                            <a href="single-post.html" class="post-title">Ingénierie du Logiciel et Systèmes d’Information ILSI</a>
                            
                        </div>
                    </div>
                    <!-- Single Blog Post -->
                    <div class="single-blog-post style-4">
                        
                        <div class="post-content">
                            <a class="post-title">Ingénierie des Systèmes Intelligents et Décision ISID</a>
                            
                        </div>
                    </div>

                    <!-- Single Blog Post -->
                    <div class="single-blog-post style-4">
                        <div class="post-content">
                            <a  class="post-title">Ingénierie pour la Finance IF</a>

                        </div>
                    </div>

                    <!-- Single Blog Post -->
                    <div class="single-blog-post style-4">
                        
                        <div class="post-content">
                            <a  class="post-title"> Réseaux et Systèmes Répartis RSR</a>
                            
                        </div>
                    </div>

                    <!-- Single Blog Post -->
                    <div class="single-blog-post style-4">
                        <div class="post-content">
                            <a  class="post-title">Systèmes et Logiciels Embarqués SLE</a>
                            
                        </div>
                    </div>

                    <!-- Single Blog Post -->
                    <div class="single-blog-post style-4">
                        <div class="post-content">
                            <a  class="post-title">Ingénierie pour l’Image II</a>
                            
                        </div>
                    </div>

                    

                </div>
            </div>

           
            <div class="sports-videos-area">
                <!-- Section Title -->
                <div class="section-heading">
                    <h5>Programmes d’enseignement</h5>
                </div>

                <div class="sports-videos-slides owl-carousel mb-30">
                    <!-- Single Featured Post -->
                    <div class="single-featured-post">
                       
                        <!-- Post Contetnt -->
                        <div class="post-content">
                            
                            <a  class="post-title" href="Premièreannée.html">II1 - Première année</a>
                            <p>La première année est divisée en deux semestres</p>
                        </div>
                        
                    </div>

                    <!-- Single Featured Post -->
                    <div class="single-featured-post">
                       
                        <!-- Post Contetnt -->
                        <div class="post-content">
                            
                            <a  class="post-title" href="Deuxièmeannée.html">II2 - Deuxième année</a>
                            <p>La  deuxième année est  subdivisée en deux semestres
							</br>
							Premier Semestre commun à tous les étudiants.
							</br>
							Deuxième Semestre:Tronc Commun+Des matières spécifiques à chaque filière.
							</p>
                        </div>
                        
                    </div>

                    <!-- Single Featured Post -->
                    <div class="single-featured-post">
                       
                        <!-- Post Contetnt -->
                        <div class="post-content">
                            
                            <a  class="post-title"href=" Troixièmeannée.html" >II3 - Troixième année</a>
                            <p> Premier Semestre  de spécialisation.
							</br>
							Deuxième Semestre:pour le Projet de Fin d'Etudes. </p>
                        </div>
                        
                    </div>
                </div>
	
                <!-- Section Title -->
                <div class="section-heading">
                    <h5>Localisation DE l'ENSI avec Google Map</h5>
                </div>
	
                <div class="featured-video-posts">
                    <div class="row">
                        
                            
					<p> <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3194.1990613173025!2d10.061577214683611!3d36.813749579945714!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x12fd2d96d4a9d6c9%3A0xbbe38a2694938acf!2s%C3%89cole+Nationale+des+Sciences+de+l&#39;Informatique!5e0!3m2!1sfr!2stn!4v1554414088299!5m2!1sfr!2stn " width="1000" heigh="700" frameborder="0" style"border:0" allowfullscreen>
					</iframe>
					</p>
                                
                        
                        
                    </div>
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
                                <a class="post-title">Une Vue plus proche de l'ENSI</a>
                                <!--<p>Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium</p>-->
                            </div>
                        
                           </div>

                    <!-- Single Featured Post -->
                        <div class="single-featured-post">
                        <!-- Thumbnail -->
                          <div class="post-thumbnail mb-50">
                            <img src="/img/img/ensi1.jpg" alt="">
                            <!--<a href="video-post.html" c  lass="video-play"><i class="fa fa-play"></i></a>-->
                            <h6> ENSI :Excellence, Networking, Sustainability, Innovation</h6>
                          </div>
                        <!-- Post Contetnt -->
                           <div class="post-content">
                            <div class="post-meta">
                                <a href="#">Année Universitaire : 2018/2019</a>
                                
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
                            <h6> ENSI :Excellence, Networking, Sustainability, Innovation</h6+>
                          </div>
                        <!-- Post Contetnt -->
                           <div class="post-content">
                            <div class="post-meta">
                                <a href="#">Année Universitaire : 2018/2019</a>
                               
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
                            <h6> ENSI :Excellence, Networking, Sustainability, Innovation</h6>
                          </div>
                        <!-- Post Contetnt -->
                           <div class="post-content">
                            <div class="post-meta">
                                <a href="#">Année Universitaire : 2018/2019</a>
                                
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
                            <h6> ENSI :Excellence, Networking, Sustainability, Innovation</h6>
                          </div>
                        <!-- Post Contetnt -->
                           <div class="post-content">
                            <div class="post-meta">
                                <a href="#">Année Universitaire : 2018/2019</a>
                             
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
                            <h6> ENSI :Excellence, Networking, Sustainability, Innovation</h6>
                          </div>
                        <!-- Post Contetnt -->
                           <div class="post-content">
                            <div class="post-meta">
                                <a href="#">Année Universitaire : 2018/2019</a>
                               
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
                            <h6> ENSI :Excellence, Networking, Sustainability, Innovation</h6>
                          </div>
                        <!-- Post Contetnt -->
                           <div class="post-content">
                            <div class="post-meta">
                                <a href="#">Année Universitaire : 2018/2019</a>
                               
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
                            <p>ENSI Scheduler est une application web dédiée spécialement aux enseignants afin de leur faciliter l'affectation d'environnement en tout ce qui concerne le signalement, par des notifications aux etudiants concernés ,  de rattrapages , de devoirs surveillés , et d'absences .
</p>
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
                            <li><a href="emploiEtudiant.html">Emploi Etudiant</a></li>
                            <li><a href="emploiEnseignant.html">Emploi Enseignant</a></li>
                            <li><a href="connection.html">Se Connecter</a></li>
                            <li><a href="#">Rechercher</a></li>
                            <li><a href="acceuil.html">Acceuil</a></li>
                            <li><a href="Inscription.html">Inscription</a></li>
                            <li><a href="contact.html">Contacter nous</a></li>
                            <li><a href="apropos.html">A propos de nous </a></li>
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
Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">ENSI Students</a></p>
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
</body>

</html>