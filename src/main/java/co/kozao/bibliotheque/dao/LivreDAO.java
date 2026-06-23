package co.kozao.bibliotheque.dao;

import co.kozao.bibliotheque.model.Livre;
import co.kozao.bibliotheque.utils.DatabaseConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class LivreDAO {

    public List<Livre> listerLivres() {
        List<Livre> livres = new ArrayList<>();
        String sql = "SELECT * FROM book";

        try {
            Connection conn = DatabaseConnection.getconnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Livre livre = new Livre();
                livre.setId(rs.getInt("id"));
                livre.setTitle(rs.getString("title"));
                livre.setAuthor(rs.getString("author"));
                livre.setIsbn(rs.getString("isbn"));
                livre.setAvailable(rs.getBoolean("available"));
                livres.add(livre);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return livres;
    }

    public void changerDisponibilite(int livreId, boolean disponible) {
        String sql = "UPDATE book SET available = ? WHERE id = ?";

        try {
            Connection conn = DatabaseConnection.getConnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setBoolean(1, disponible);
            ps.setInt(2, livreId);
            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}