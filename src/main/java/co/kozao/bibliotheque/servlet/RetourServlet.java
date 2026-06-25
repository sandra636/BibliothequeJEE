package co.kozao.bibliotheque.servlet;

import co.kozao.bibliotheque.dao.EmpruntDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Date;

@WebServlet("/retour")
public class RetourServlet extends HttpServlet {

    private EmpruntDAO empruntDAO = new EmpruntDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("bibliothecaire") == null) {
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }
        request.getRequestDispatcher("/retour.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("bibliothecaire") == null) {
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }

        int empruntId = Integer.parseInt(request.getParameter("empruntId"));
        int livreId = Integer.parseInt(request.getParameter("livreId"));
        Date dateRetour = Date.valueOf(request.getParameter("dateRetour"));

        empruntDAO.enregistrerRetour(empruntId, livreId, dateRetour);

        response.sendRedirect(request.getContextPath() + "/livres");
    }
}