package co.kozao.bibliotheque.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.kozao.bibliotheque.utils.DatabaseConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;

@WebServlet("/ajouterLivre")
public class AjouterLivreServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("bibliothecaire") == null) {
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }
        request.getRequestDispatcher("/ajouterLivre.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        HttpSession session = request.getSession(false);
        if (session == null || session.getAttribute("bibliothecaire") == null) {
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }

        String title = request.getParameter("title");
        String author = request.getParameter("author");
        String isbn = request.getParameter("isbn");
        int categorieId = Integer.parseInt(request.getParameter("categorieId"));

        try {
            Connection conn = DatabaseConnection.getConnection();
            PreparedStatement ps = conn.prepareStatement(
                "INSERT INTO book (title, author, isbn, categorieId, available) VALUES (?, ?, ?, ?, 'true')"
            );
            ps.setString(1, title);
            ps.setString(2, author);
            ps.setString(3, isbn);
            ps.setInt(4, categorieId);
            ps.executeUpdate();
            ps.close();

            response.sendRedirect(request.getContextPath() + "/livres");

        } catch (Exception e) {
            e.printStackTrace();
            request.setAttribute("erreur", "Erreur lors de l'ajout : " + e.getMessage());
            request.getRequestDispatcher("/ajouterLivre.jsp").forward(request, response);
        }
    }
}