package co.kozao.bibliotheque.dao;

import co.kozao.bibliotheque.model.Bibliothecaire;
import co.kozao.bibliotheque.utils.DatabaseConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class BibliothecaireDAO {

    public Bibliothecaire findByLogin(String login, String password) {
        Bibliothecaire bibliothecaire = null;
        String sql = "SELECT * FROM Librarian WHERE login = ? AND password = ?";

        try {
            Connection conn = DatabaseConnection.getconnection();
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, login);
            ps.setString(2, password);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                bibliothecaire = new Bibliothecaire();
                bibliothecaire.setId(rs.getInt("id"));
                bibliothecaire.setLogin(rs.getString("login"));
                bibliothecaire.setMotDePasse(rs.getString("password"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return bibliothecaire;
    }
}