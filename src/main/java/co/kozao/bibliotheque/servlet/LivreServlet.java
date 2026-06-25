package co.kozao.bibliotheque.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.kozao.bibliotheque.dao.LivreDAO;
import co.kozao.bibliotheque.model.Livre;

@WebServlet("/livres")
public class LivreServlet extends HttpServlet {

    private LivreDAO livreDAO = new LivreDAO();

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // Vérification session
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("bibliothecaire") == null) {
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }

        try {
            List<Livre> livres = livreDAO.listerLivres();
            request.setAttribute("livres", livres);
            request.getRequestDispatcher("/listeLivres.jsp").forward(request, response);

        } catch (Exception e) {
            e.printStackTrace();
            response.sendError(500, "Erreur base de données : " + e.getMessage());
        }
    }
}