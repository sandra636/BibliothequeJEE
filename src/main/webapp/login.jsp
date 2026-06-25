<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Connexion - Bibliothèque</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #5B5BD6 0%, #3a3a9e 100%);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .login-card {
            background: white;
            padding: 40px;
            border-radius: 12px;
            box-shadow: 0 8px 32px rgba(0,0,0,0.15);
            width: 100%;
            max-width: 420px;
        }
        .login-header {
            text-align: center;
            margin-bottom: 32px;
        }
        .login-header h1 {
            font-size: 22px;
            color: #2c3e50;
            margin-bottom: 6px;
        }
        .login-header p {
            font-size: 14px;
            color: #888;
        }
        .logo {
            width: 60px;
            height: 60px;
            background-color: #5B5BD6;
            border-radius: 12px;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 16px;
            font-size: 28px;
        }
        .form-group { margin-bottom: 20px; }
        label { display: block; font-size: 13px; font-weight: 600; margin-bottom: 6px; color: #555; }
        input[type="text"], input[type="password"] {
            width: 100%; padding: 12px 14px; border: 1px solid #ddd;
            border-radius: 8px; font-size: 14px; background: #fafafa;
            transition: border-color 0.2s;
        }
        input:focus { outline: none; border-color: #5B5BD6; background: white; }
        .btn-login {
            width: 100%; padding: 12px; background-color: #5B5BD6; color: white;
            border: none; border-radius: 8px; font-size: 15px; font-weight: 600;
            cursor: pointer; transition: background 0.2s;
        }
        .btn-login:hover { background-color: #4747b8; }
        .erreur {
            background: #fde8e8; color: #c0392b; padding: 10px 14px;
            border-radius: 8px; font-size: 13px; margin-bottom: 20px;
            border-left: 3px solid #c0392b;
        }
    </style>
</head>
<body>

<div class="login-card">
    <div class="login-header">
        <div class="logo">📚</div>
        <h1>Gestion de Bibliothèque</h1>
        <p>Connectez-vous pour accéder à votre espace</p>
    </div>

    <% if (request.getAttribute("erreur") != null) { %>
        <div class="erreur">${erreur}</div>
    <% } %>

    <form action="${pageContext.request.contextPath}/login" method="post">

        <div class="form-group">
            <label>Login</label>
            <input type="text" name="login" placeholder="Entrez votre login" required />
        </div>

        <div class="form-group">
            <label>Mot de passe</label>
            <input type="password" name="password" placeholder="Entrez votre mot de passe" required />
        </div>

        <button type="submit" class="btn-login">Se connecter</button>

    </form>
</div>

</body>
</html>