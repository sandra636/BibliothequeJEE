package co.kozao.bibliotheque.servlet;

import co.kozao.bibliotheque.dao.EmpruntDAO;
import co.kozao.bibliotheque.model.Emprunt;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Date;

@WebServlet("/emprunt")
public class EmpruntServlet extends HttpServlet {

    private EmpruntDAO empruntDAO = new EmpruntDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("bibliothecaire") == null) {
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }
        request.getRequestDispatcher("/emprunt.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("bibliothecaire") == null) {
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }

        int livreId = Integer.parseInt(request.getParameter("livreId"));
        int categorieId = Integer.parseInt(request.getParameter("categorieId"));
        String emprunteur = request.getParameter("emprunteur");
        Date dateEmprunt = Date.valueOf(request.getParameter("dateEmprunt"));

        Emprunt emprunt = new Emprunt();
        emprunt.setLivreId(livreId);
        emprunt.setCategorieId(categorieId);
        emprunt.setBorrower(emprunteur);
        emprunt.setLoanDate(dateEmprunt);
        emprunt.setTitle("");

        empruntDAO.enregistrerEmprunt(emprunt);
        response.sendRedirect(request.getContextPath() + "/livres");
    }
}