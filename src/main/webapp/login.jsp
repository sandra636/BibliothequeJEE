<!Doctype HTML>
<html>
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Gestion bibliotheque</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-5">
            <div class="card shadow">
            
                <div class="card-header bg-primary text-white text-center">
                    <h4 class="mb-0">Connexion</h4>
                </div>
                <div class="card-body">

                    <form method="POST" action="${pageContext.request.contextPath}/login">
                    
                        <div class="mb-3">
                            <label class="form-label">Login</label>
                            <div class="input-group">
                                <span class="input-group-text"><i class="fas fa-envelope"></i></span>
                                <input type="text" name="login" class="form-control" required>
                            </div>
                        </div>
                        
                        <div class="mb-3">
                            <label class="form-label">Mot de passe</label>
                            <div class="input-group">
                                <span class="input-group-text"><i class="fas fa-lock"></i></span>
                                <input type="password" name="password" class="form-control" required>
                            </div>
                        </div>
                        
                        <button type="submit" class="btn btn-danger text-white w-100">
                            <i class="fas fa-sign-in-alt"></i> Se connecter
                        </button>
                        
                        <div class="text-center mt-3">
                            <a href="" class="text-muted">
                                <i class="fas fa-key"></i> Mot de passe oublié ?
                            </a>
                        </div>
                        
                        <div class="text-center mt-3">
                            <a href="">Pas encore de compte ? Inscrivez-vous</a>
                        </div>
                        
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>