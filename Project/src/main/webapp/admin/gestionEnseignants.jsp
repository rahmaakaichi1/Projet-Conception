<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
    
    <!DOCTYPE html>
<html lang="fr">

<head>
      <!-- <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/>-->
      <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <!--  <meta charset="UTF-8">-->
   
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>ENSI Sheduler</title>

    <!-- Favicon -->
    <link rel="icon" href="img/logo.ico">

    <!-- Stylesheet -->
    <link rel="stylesheet" href="/style.css">
    <style type="text/css">
    li.indent{ padding-left: 3em }
    </style>
    <link rel="stylesheet" style="css/notif.css">
    <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap Table with Add and Delete Row Feature</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round|Open+Sans">
<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style type="text/css">
    body {
        color: #404E67;
        background: #F5F7FA;
		font-family: 'Open Sans', sans-serif;
	}
	.table-wrapper {
		width: 100%;
		margin: 30px auto;
        background: #fff;
        padding: 20px;	
        box-shadow: 0 1px 1px rgba(0,0,0,.05);
    }
    .table-title {
        padding-bottom: 10px;
        margin: 0 0 10px;
    }
    .table-title h2 {
        margin: 6px 0 0;
        font-size: 22px;
    }
    .table-title .add-new {
        float: right;
		height: 30px;
		font-weight: bold;
		font-size: 12px;
		text-shadow: none;
		min-width: 100px;
		border-radius: 50px;
		line-height: 13px;
    }
	.table-title .add-new i {
		margin-right: 4px;
	}
    table.table {
        table-layout: auto;
    }
    table.table tr th, table.table tr td {
        border-color: #e9e9e9;
    }
    table.table th i {
        font-size: 13px;
        margin: 0 5px;
        cursor: pointer;
    }
    table.table th:last-child {
        width: 120px;
    }
    table.table td a {
		cursor: pointer;
        display: inline-block;
        margin: 0 5px;
		min-width: 40px;
    }    
	table.table td a.add {
        color: #27C46B;
    }
    table.table td a.edit {
        color: #FFC107;
    }
    table.table td a.delete {
        color: #E34724;
    }
    table.table td i {
        font-size: 19px;
    }
	table.table td a.add i {
        font-size: 24px;
    	margin-right: -1px;
        position: relative;
        top: 3px;
    }    
    table.table .form-control {
        height: 32px;
        line-height: 32px;
        box-shadow: none;
        border-radius: 2px;
    }
	table.table .form-control.error {
		border-color: #f50000;
	}
	table.table td .add {
		display: none;
	}
 label.radio{
    float:left;
    margin-top: 20px;
    margin-left: 15px;
    padding:0px 0px 5px 0px;
    border:1px solid black;
    white-space: nowrap;        
}   
</style>
<script type="text/javascript">
$(document).ready(function(){
	$('[data-toggle="tooltip"]').tooltip();
	var actions = $("table td:last-child").html();
	// Append table with add row form on add new button click
    $(".add-new").click(function(){
		$(this).attr("disabled", "disabled");
		var index = $("table tbody tr:last-child").index();
        var row = '<tr>' +
            '<td><input type="text" class="form-control" name="id" id="id"></td>' +
            '<td><input type="text" class="form-control" name="email" id="email"></td>' +
            '<td><input type="text" class="form-control" name="Nom" id="Nom"></td>' +'<td><input type="text" class="form-control" name="prenom" id="prenom"></td>'+'<td><input type="text" class="form-control" name="password" id="password"></td>'+
			'<td>' + actions + '</td>' +
        '</tr>';
    	$("table").append(row);		
		$("table tbody tr").eq(index + 1).find(".add, .edit").toggle();
        $('[data-toggle="tooltip"]').tooltip();
    });
	// Add row on add button click
	$(document).on("click", ".add", function(){
		var empty = false;
		var input = $(this).parents("tr").find('input[type="text"]');
        input.each(function(){
			if(!$(this).val()){
				$(this).addClass("error");
				empty = true;
			} else{
                $(this).removeClass("error");
            }
		});
		$(this).parents("tr").find(".error").first().focus();
		if(!empty){
			input.each(function(){
				$(this).parent("td").html($(this).val());
			});			
			$(this).parents("tr").find(".add, .edit").toggle();
			$(".add-new").removeAttr("disabled");
		}		
    });
	// Edit row on edit button click
	$(document).on("click", ".edit", function(){		
        $(this).parents("tr").find("td:not(:last-child)").each(function(){
			$(this).html('<input type="text" class="form-control" value="' + $(this).text() + '">');
		});		
		$(this).parents("tr").find(".add, .edit").toggle();
		$(".add-new").attr("disabled", "disabled");
    });
	// Delete row on delete button click
	$(document).on("click", ".delete", function(){
        $(this).parents("tr").remove();
		$(".add-new").removeAttr("disabled");
    });
});
</script>
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
                                            <li><a href="/admin/gestionEnseignants">Gérer Enseignants</a></li>
                                            <li><a href="/admin/gestionEtudiants">Gérer Etudiants</a></li>
                                            
                                        </ul>
                                    </li>
                                    <li class="indent"><a href="#">Espace Enseignant</a>
                                        <ul class="dropdown">
                                            <li><a href="#">Acceuil</a></li>
                                            <li><a href="#">Rattrapage</a></li>
                                            <li><a href="#">Devoir Surveillé</a></li>
                                           
                                            <li><a href="#">Absence</a></li>
                                            <li><a href="#">Emploi</a></li>
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
                                    <li class="indent"><a href="/admin/apropos">A propos</a></li>
                                    <li class ="indent"><a href="/admin/contact">Contact</a></li>
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
    <section class="breadcrumb-area bg-img bg-overlay" style="background-image: url(/img/ensi4.jpg);">
        <div class="container h-100">
            <div class="row h-100 align-items-center">
                <div class="col-12">
                    <div class="breadcrumb-content">
                        <h2>Gestion</h2>
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
                            <li class="breadcrumb-item"><a href="#"><i class="fa fa-home" aria-hidden="true"></i> Espace Admin</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Gestion Enseignants</li>
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
            <div class="row justify-content-left">
                
                    <!-- About Us Content -->
                    <div class="about-us-content bg-white mb-30 p-30 box-shadow">
                        <!-- Section Title -->
                        <div class="section-heading">
                            <h5>Gestion Enseignants</h5>
                        </div>
						<!-- hne ----------------------------------------------------------------->
                        <div class="table-wrapper">
						<div class="table-title">
					<div class="row">
                    <div class="col-sm-8"><h2>Gérer<b> Enseignants</b></h2></div>
					 	<div class="col-sm-4">
							<button type="button"   class="btn btn-info add-new"><i class="fa fa-plus"></i> Ajouter</button>
						</div>
					</div>
            </div>
            <form:form method="POST" modelAttribute="GestionEnseignant" action="${contextPath}/admin/gestionEnseignants" class="form-signin">
            <table class="table table-bordered">
                <thead>
                    <tr>
                        <th>id</th>
                        <th>email</th>
                        <th>Nom</th>
                        <th>prenom</th>
                        
                        <th>password</th>
                    </tr>
                </thead>
                <c:forEach var="enseignant" items="${enseignants }">
                <tbody>
                    <tr>
                        <td> <form:input path="id" class="form-control" type="text" value = "${enseignant.id }"></form:input></td>
                        <td> <form:input path="nom" type="text" class = "form-control" value ="${enseignant.nom }"></form:input></td>
                        <td> <form:input path= "prenom" type="text" class ="form-control" value= "${enseignant.prenom}"></form:input></td>
                        <td> <form:input path="email" type="email" class="form-control" value ="${enseignant.email }"></form:input></td>
                        <td> <form:input path="password" type="password" value="${enseignant.password }"></form:input></td>
                        
                        <td>
							<input type="hidden" class="button" name="ajouter" ><a class="add" title="Add" data-toggle="tooltip"><i class="material-icons">&#xE03B;</i></a>
                            <input type="hidden" class="button" name="editer" ><a class="edit" title="Editer" data-toggle="tooltip"><i class="material-icons">&#xE254;</i></a>
                            <input type="hidden" class="button" name="supprimer" ><a class="delete" title="Supprimer" data-toggle="tooltip"><i class="material-icons">&#xE872;</i></a>
                        </td>
                    </tr>
                     
                </tbody>
                </c:forEach>
            </table>
                </form:form>
                         </div>
        <!-------------------------------------- -->
                   
                       
                        
                        <!-- Single Team Member -->
                        
                        
                        <!-- Single Team Member -->
                        
                    </div>
                
				</div>
				</div>
 <!---------------------------------------------------------------------------------------------------->
             

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