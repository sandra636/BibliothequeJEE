<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="co.kozao.bibliotheque.model.Livre" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Liste des livres</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }
        body { font-family: Arial, sans-serif; background-color: #f4f6f9; color: #333; }
        .nav-bar { background-color: #5B5BD6; padding: 12px 20px; color: white; display: flex; justify-content: space-between; align-items: center; }
        .nav-bar a { color: white; text-decoration: none; margin-left: 16px; font-size: 14px; }
        .nav-bar a:hover { text-decoration: underline; }
        .container { max-width: 1100px; margin: 40px auto; padding: 0 20px; }
        h2 { font-size: 24px; color: #2c3e50; margin-bottom: 20px; border-left: 4px solid #5B5BD6; padding-left: 12px; }
        .btn-ajouter { display: inline-block; margin-bottom: 20px; padding: 9px 18px; background-color: #5B5BD6; color: white; text-decoration: none; border-radius: 6px; font-size: 14px; transition: background 0.2s; }
        .btn-ajouter:hover { background-color: #4747b8; }
        .btn-emprunt { display: inline-block; padding: 5px 12px; background-color: #2A7D4F; color: white; text-decoration: none; border-radius: 6px; font-size: 12px; }
        .btn-emprunt:hover { background-color: #1e5c39; }
        table { width: 100%; border-collapse: collapse; background-color: white; border-radius: 8px; overflow: hidden; box-shadow: 0 2px 8px rgba(0,0,0,0.08); }
        thead { background-color: #5B5BD6; color: white; }
        thead th { padding: 14px 16px; text-align: left; font-size: 13px; font-weight: 600; letter-spacing: 0.04em; text-transform: uppercase; }
        tbody tr { border-bottom: 1px solid #eee; transition: background 0.15s; }
        tbody tr:hover { background-color: #f0f0ff; }
        tbody tr:last-child { border-bottom: none; }
        tbody td { padding: 12px 16px; font-size: 14px; color: #444; }
        .badge-dispo { display: inline-block; padding: 3px 10px; border-radius: 20px; font-size: 12px; font-weight: 600; }
        .badge-oui { background-color: #e9f9ee; color: #2A7D4F; }
        .badge-non { background-color: #fde8e8; color: #c0392b; }
        .empty-msg { text-align: center; padding: 40px; color: #999; font-size: 15px; }
    </style>
</head>
<body>

<div class="nav-bar">
    <span>Gestion de Bibliothèque</span>
    <div>
        <a href="${pageContext.request.contextPath}/emprunt">Nouvel emprunt</a>
        <a href="${pageContext.request.contextPath}/retour">Retour de livre</a>
        <a href="${pageContext.request.contextPath}/logout">Déconnexion</a>
    </div>
</div>

<div class="container">

    <h2>Liste des livres</h2>

    <a href="${pageContext.request.contextPath}/ajouterLivre" class="btn-ajouter">+ Ajouter un livre</a>

    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Titre</th>
                <th>Auteur</th>
                <th>ISBN</th>
                <th>Catégorie</th>
                <th>Disponible</th>
                <th>Action</th>
            </tr>
        </thead>
        <tbody>
        <%
            List<Livre> livres = (List<Livre>) request.getAttribute("livres");
            if (livres != null && !livres.isEmpty()) {
                for (Livre livre : livres) {
                    boolean estDispo = livre.getAvailable();
                    String dispo = estDispo ? "Oui" : "Non";
                    String badgeClass = estDispo ? "badge-oui" : "badge-non";
        %>
        <tr>
            <td><%= livre.getId() %></td>
            <td><%= livre.getTitle() %></td>
            <td><%= livre.getAuthor() %></td>
            <td><%= livre.getIsbn() %></td>
            <td><%= livre.getCategorieId() %></td>
            <td><span class="badge-dispo <%= badgeClass %>"><%= dispo %></span></td>
            <td>
                <% if (estDispo) { %>
                    <a href="${pageContext.request.contextPath}/emprunt?livreId=<%= livre.getId() %>&categorieId=<%= livre.getCategorieId() %>" class="btn-emprunt">Emprunter</a>
                <% } else { %>
                    <span style="color:#c0392b;font-size:12px;">Indisponible</span>
                <% } %>
            </td>
        </tr>
        <%
                }
            } else {
        %>
        <tr>
            <td colspan="7" class="empty-msg">Aucun livre disponible.</td>
        </tr>
        <%
            }
        %>
        </tbody>
    </table>

</div>

</body>
</html>