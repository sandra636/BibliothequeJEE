<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Retour de livre</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; }
        body { font-family: Arial, sans-serif; background-color: #f4f6f9; color: #333; }
        .nav-bar { background-color: #5B5BD6; padding: 12px 20px; color: white; display: flex; justify-content: space-between; align-items: center; }
        .nav-bar a { color: white; text-decoration: none; font-size: 14px; }
        .container { max-width: 600px; margin: 40px auto; padding: 0 20px; }
        h2 { font-size: 24px; color: #2c3e50; margin-bottom: 24px; border-left: 4px solid #5B5BD6; padding-left: 12px; }
        .form-group { margin-bottom: 16px; }
        label { display: block; font-size: 14px; font-weight: 600; margin-bottom: 6px; color: #555; }
        input[type="number"], input[type="date"] {
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
        .card { background: white; padding: 30px; border-radius: 8px; box-shadow: 0 2px 8px rgba(0,0,0,0.08); }
    </style>
</head>
<body>

<div class="nav-bar">
    <span>Gestion de Bibliothèque</span>
    <a href="${pageContext.request.contextPath}/livres">← Retour à la liste</a>
</div>

<div class="container">
    <h2>Enregistrer un retour</h2>

    <div class="card">
        <form action="${pageContext.request.contextPath}/retour" method="post">

            <div class="form-group">
                <label>ID de l'emprunt :</label>
                <input type="number" name="empruntId" required />
            </div>

            <div class="form-group">
                <label>ID du livre :</label>
                <input type="number" name="livreId" required />
            </div>

            <div class="form-group">
                <label>Date de retour :</label>
                <input type="date" name="dateRetour" required />
            </div>

            <div style="margin-top: 24px;">
                <button type="submit" class="btn-submit">Enregistrer le retour</button>
                <a href="${pageContext.request.contextPath}/livres" class="btn-cancel">Annuler</a>
            </div>

        </form>
    </div>
</div>

</body>
</html>