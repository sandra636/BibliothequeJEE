<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Page accueil</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>

	<!-- Header -->
	<nav id="main_nav" class="navbar navbar-expand-lg navbar-light bg-white shadow">
	    <div class="container d-flex justify-content-between align-items-center">
	        <a class="navbar-brand h1" href="index.jsp">
	            <span class="text-danger h4">Gestion de </span> <span class="text-primary h4">bibliotheque</span>
	        </a>
	        
	         <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
	        
	        <!--navbar-->
	        <div class="align-self-center collapse navbar-collapse flex-fill d-lg-flex justify-content-lg-between" id="navbar-toggler-success">
	            <div class="flex-fill mx-xl-5 mb-2">
	                <ul class="navbar-nav ms-auto">
	                    <li class="nav-item">
	                        <a class="nav-link btn-outline-primary rounded-pill px-3" href="index.jsp">Voir les livres</a>
	                    </li>
	                    <li class="nav-item">
	                        <a class="text-white nav-link btn-danger rounded-pill px-3" href="login.jsp">
	                            <i class="fas fa-sign-in-alt"></i> Connexion
	                         </a>
	                    </li>
	                </ul>
	            </div>
	        </div>
	    </div>
	</nav>
	
	<div class="hero-section bg-primary text-white py-5">
	    <div class="container text-center">
	        <h1 class="display-4 fw-bold">Votre Bibliothèque a votre portée</h1>
	        <p class="lead"> Des livres enrichissants pour mieux s'eduquer, et plein d'autres</p>
	        <div class="mt-4">
	            <a href="listeLivres.jsp" class="btn btn-light btn-lg me-2">
	                <i class="fas fa-graduation-cap"></i> Voir les livres
	            </a>
	        </div>
	    </div>
	</div>
	<div class="bg-white py-5">
    	<div class="container">
        	<div class="text-center mb-4">
	            <h2>Livres disponibles</h2>
				<div class="col-md-3 mb-4">
				    <div class="card h-100 shadow-sm">
				        <img src="images/biblio1.png" class="card-img-top" alt="livres" style="height: 150px; object-fit: cover;">
				            <div class="card-body">
				                <h6 class="card-title"></h6>
				                <h5 class="text-primary"></h5>
				                <a href="produits.php" class="btn btn-sm btn-outline-primary w-100">Voir</a>
				            </div>
				      </div>
				      
				       <div class="card h-100 shadow-sm">
				        <img src="images/biblio2.png" class="card-img-top" alt="livres" style="height: 150px; object-fit: cover;">
				            <div class="card-body">
				                <h6 class="card-title"></h6>
				                <h5 class="text-primary"></h5>
				                <a href="produits.php" class="btn btn-sm btn-outline-primary w-100">Voir</a>
				            </div>
				      </div>
				      
			    </div>
			</div>
		</div>
	</div>		
</body>

                   
    