package co.kozao.bibliotheque.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import co.kozao.bibliotheque.model.Emprunt;
import co.kozao.bibliotheque.utils.DatabaseConnection;

public class EmpruntDAO {

    public EmpruntDAO() {
    }

    public void enregistrerEmprunt(Emprunt emprunt) {
        try {
            Connection conn = DatabaseConnection.getConnection();
            PreparedStatement stmt = conn.prepareStatement(
                "INSERT INTO Borrowing (bookid, title, loanDate, borrower, categorieId, id_2) VALUES (?, ?, NOW(), ?, ?, ?)"
            );
            stmt.setInt(1, emprunt.getLivreId());
            stmt.setString(2, emprunt.getTitle());
            stmt.setString(3, emprunt.getBorrower());
            stmt.setInt(4, emprunt.getCategorieId());
            stmt.setInt(5, 1);
            stmt.executeUpdate();
            stmt.close();

            PreparedStatement update = conn.prepareStatement(
                "UPDATE book SET available = 0 WHERE id = ?"
            );
            update.setInt(1, emprunt.getLivreId());
            update.executeUpdate();
            update.close();

        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("ERREUR EMPRUNT: " + e.getMessage());
        }
    }

    public void enregistrerRetour(int empruntId, int livreId, java.sql.Date dateRetour) {
        try {
            Connection conn = DatabaseConnection.getConnection();
            PreparedStatement stmt = conn.prepareStatement(
                "UPDATE Borrowing SET returnloanDate = NOW() WHERE id = ?"
            );
            stmt.setInt(1, empruntId);
            stmt.executeUpdate();
            stmt.close();

            PreparedStatement update = conn.prepareStatement(
                "UPDATE book SET available = 1 WHERE id = ?"
            );
            update.setInt(1, livreId);
            update.executeUpdate();
            update.close();

        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("ERREUR RETOUR: " + e.getMessage());
        }
    }

    public List<Emprunt> listerEmprunts() {
        List<Emprunt> emprunts = new ArrayList<>();
        try {
            Connection conn = DatabaseConnection.getConnection();
            PreparedStatement stmt = conn.prepareStatement(
                "SELECT * FROM Borrowing ORDER BY id DESC"
            );
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                Emprunt emprunt = new Emprunt();
                emprunt.setId(rs.getInt("id"));
                emprunt.setLivreId(rs.getInt("bookid"));
                emprunt.setBorrower(rs.getString("borrower"));
                emprunt.setLoanDate(rs.getDate("loanDate"));
                emprunt.setReturnloanDate(rs.getDate("returnloanDate"));
                emprunts.add(emprunt);
            }
            rs.close();
            stmt.close();

        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("ERREUR LISTER: " + e.getMessage());
        }
        return emprunts;
    }
}