<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bibliothèque - Accueil</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <style>
        .hero-section {
            background: linear-gradient(135deg, #1a237e, #4a148c);
            min-height: 400px;
            display: flex;
            align-items: center;
        }
        .stat-card {
            border-left: 4px solid #1a237e;
            transition: transform 0.2s;
        }
        .stat-card:hover {
            transform: translateY(-5px);
        }
        .navbar-brand span:first-child {
            color: #c62828;
        }
        .navbar-brand span:last-child {
            color: #1a237e;
        }
        footer {
            background-color: #1a237e;
            color: white;
        }
    </style>
</head>
<body>

    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light bg-white shadow-sm">
        <div class="container">
            <a class="navbar-brand fw-bold h1" href="${pageContext.request.contextPath}/index.jsp">
                <span>Gestion de </span><span>Bibliothèque</span>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto align-items-center">
                    <li class="nav-item">
                        <a class="nav-link px-3" href="${pageContext.request.contextPath}/livres">
                            📚 Voir les livres
                        </a>
                    </li>
                    <li class="nav-item ms-2">
                        <a class="btn btn-primary rounded-pill px-4" href="${pageContext.request.contextPath}/login">
                            🔐 Connexion
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Hero -->
    <div class="hero-section text-white">
        <div class="container text-center">
            <h1 class="display-4 fw-bold mb-3">Votre Bibliothèque à portée de main</h1>
            <p class="lead mb-4">Gérez vos livres, emprunts et retours facilement</p>
            <a href="${pageContext.request.contextPath}/login" class="btn btn-light btn-lg rounded-pill px-5">
                🚀 Commencer
            </a>
        </div>
    </div>

    <!-- Stats -->
    <div class="bg-light py-5">
        <div class="container">
            <div class="row g-4 justify-content-center">
                <div class="col-md-4">
                    <div class="card stat-card shadow-sm p-4 text-center">
                        <div class="display-5 mb-2">📖</div>
                        <h5 class="fw-bold">Catalogue de livres</h5>
                        <p class="text-muted">Consultez tous les livres disponibles</p>
                        <a href="${pageContext.request.contextPath}/livres" class="btn btn-outline-primary mt-2">Voir le catalogue</a>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card stat-card shadow-sm p-4 text-center">
                        <div class="display-5 mb-2">📋</div>
                        <h5 class="fw-bold">Gestion des emprunts</h5>
                        <p class="text-muted">Enregistrez et suivez les emprunts</p>
                        <a href="${pageContext.request.contextPath}/login" class="btn btn-outline-primary mt-2">Se connecter</a>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card stat-card shadow-sm p-4 text-center">
                        <div class="display-5 mb-2">🔄</div>
                        <h5 class="fw-bold">Retours de livres</h5>
                        <p class="text-muted">Gérez les retours facilement</p>
                        <a href="${pageContext.request.contextPath}/login" class="btn btn-outline-primary mt-2">Se connecter</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Footer -->
    <footer class="py-4 mt-5">
        <div class="container text-center">
            <p class="mb-0">© 2026 Gestion de Bibliothèque — Kozao</p>
        </div>
    </footer>

</body>
</html>