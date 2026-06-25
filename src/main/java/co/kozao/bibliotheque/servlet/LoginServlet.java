package co.kozao.bibliotheque.servlet;

import co.kozao.bibliotheque.dao.BibliothecaireDAO;
import co.kozao.bibliotheque.model.Bibliothecaire;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    private BibliothecaireDAO bibliothecaireDAO = new BibliothecaireDAO();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.getRequestDispatcher("/login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String login = request.getParameter("login");
        String password = request.getParameter("password");

        Bibliothecaire bibliothecaire = bibliothecaireDAO.findByLogin(login, password);

        if (bibliothecaire != null) {
            HttpSession session = request.getSession();
            session.setAttribute("bibliothecaire", bibliothecaire);
            response.sendRedirect(request.getContextPath() + "/livres");
        } else {
            request.setAttribute("erreur", "Login ou mot de passe incorrect");
            request.getRequestDispatcher("/login.jsp").forward(request, response);
        }
    }
}