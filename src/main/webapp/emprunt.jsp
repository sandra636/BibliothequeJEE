<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Enregistrer un emprunt</title>
</head>
<body>

    <h2>Enregistrer un emprunt</h2>

    <form action="${pageContext.request.contextPath}/emprunt" method="post">

        <label>ID du livre :</label>
        <input type="number" name="livreId" required /><br/><br/>

        <label>ID de la catégorie :</label>
        <input type="number" name="categorieId" required /><br/><br/>

        <label>Emprunteur :</label>
        <input type="text" name="emprunteur" required /><br/><br/>

        <label>Date d'emprunt :</label>
        <input type="date" name="dateEmprunt" required /><br/><br/>

        <button type="submit">Enregistrer</button>

    </form>

    <br/>
    <a href="${pageContext.request.contextPath}/livres">Retour à la liste</a>

</body>
</html>