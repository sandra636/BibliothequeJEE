<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Ajouter un livre</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }
        body { font-family: Arial, sans-serif; background-color: #f4f6f9; color: #333; }
        .nav-bar { background-color: #5B5BD6; padding: 12px 20px; color: white; display: flex; justify-content: space-between; align-items: center; }
        .nav-bar a { color: white; text-decoration: none; font-size: 14px; }
        .container { max-width: 600px; margin: 40px auto; padding: 0 20px; }
        h2 { font-size: 24px; color: #2c3e50; margin-bottom: 24px; border-left: 4px solid #5B5BD6; padding-left: 12px; }
        .form-group { margin-bottom: 16px; }
        label { display: block; font-size: 14px; font-weight: 600; margin-bottom: 6px; color: #555; }
        input[type="text"], input[type="number"] {
            width: 100%; padding: 10px 14px; border: 1px solid #ddd;
            border-radius: 6px; font-size: 14px; background: white;
        }
        input:focus { outline: none; border-color: #5B5BD6; }
        .btn-submit {
            padding: 10px 24px; background-color: #5B5BD6; color: white;
            border: none; border-radius: 6px; font-size: 14px; cursor: pointer;
        }
        .btn-submit:hover { background-color: #4747b8; }
        .btn-cancel {
            padding: 10px 24px; background-color: #eee; color: #555;
            text-decoration: none; border-radius: 6px; font-size: 14px; margin-left: 10px;
        }
        .erreur { color: #c0392b; background: #fde8e8; padding: 10px; border-radius: 6px; margin-bottom: 16px; font-size: 14px; }
        .card { background: white; padding: 30px; border-radius: 8px; box-shadow: 0 2px 8px rgba(0,0,0,0.08); }
    </style>
</head>
<body>

<div class="nav-bar">
    <span>Gestion de Bibliothèque</span>
    <a href="${pageContext.request.contextPath}/livres">← Retour à la liste</a>
</div>

<div class="container">
    <h2>Ajouter un livre</h2>

    <div class="card">
        <% String erreur = (String) request.getAttribute("erreur"); %>
        <% if (erreur != null) { %>
            <p class="erreur"><%= erreur %></p>
        <% } %>

        <form action="${pageContext.request.contextPath}/ajouterLivre" method="post">

            <div class="form-group">
                <label>Titre :</label>
                <input type="text" name="title" required />
            </div>

            <div class="form-group">
                <label>Auteur :</label>
                <input type="text" name="author" required />
            </div>

            <div class="form-group">
                <label>ISBN :</label>
                <input type="text" name="isbn" required />
            </div>

            <div class="form-group">
                <label>Catégorie ID :</label>
                <input type="number" name="categorieId" required />
            </div>

            <div style="margin-top: 24px;">
                <button type="submit" class="btn-submit">Ajouter</button>
                <a href="${pageContext.request.contextPath}/livres" class="btn-cancel">Annuler</a>
            </div>

        </form>
    </div>
</div>

</body>
</html>