package Entraineur.DAO;

import Entraineur.Model.Entraineur;
import Utils.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EntraineurDao {

    public void createEntraineur(Entraineur entraineur) throws SQLException {
        String query = "INSERT INTO entraineur (nom, email, password, specialite) VALUES (?, ?, ?, ?)";
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, entraineur.getNom());
            preparedStatement.setString(2, entraineur.getEmail());
            preparedStatement.setString(3, entraineur.getPassword());
            preparedStatement.setString(4, entraineur.getSpecialite());
            preparedStatement.executeUpdate();
        }
    }

    public Entraineur getEntraineurById(int id) throws SQLException {
        Entraineur entraineur = null;
        String query = "SELECT * FROM entraineur WHERE id_Entraineur = ?";
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                entraineur = new Entraineur(
                        resultSet.getInt("id_Entraineur"),
                        resultSet.getString("nom"),
                        resultSet.getString("email"),
                        resultSet.getString("password"),
                        resultSet.getString("specialite")
                );
            }
        }
        return entraineur;
    }

    public List<Entraineur> getAllEntraineur() throws SQLException {
        List<Entraineur> entraineurs = new ArrayList<>();
        String query = "SELECT * FROM entraineur";
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query);
             ResultSet resultSet = preparedStatement.executeQuery()) {
            while (resultSet.next()) {
                Entraineur entraineur = new Entraineur(
                        resultSet.getInt("id_Entraineur"),
                        resultSet.getString("nom"),
                        resultSet.getString("email"),
                        resultSet.getString("password"),
                        resultSet.getString("specialite")
                );
                entraineurs.add(entraineur);
            }
        }
        return entraineurs;
    }

    public void updateEntraineur(Entraineur entraineur) throws SQLException {
        String query = "UPDATE entraineur SET nom = ?, email = ?, password = ?, specialite = ? WHERE id_Entraineur = ?";
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setString(1, entraineur.getNom());
            preparedStatement.setString(2, entraineur.getEmail());
            preparedStatement.setString(3, entraineur.getPassword());
            preparedStatement.setString(4, entraineur.getSpecialite());
            preparedStatement.setInt(5, entraineur.getId());
            int rowsAffected = preparedStatement.executeUpdate();
            System.out.println("Update rows affected: " + rowsAffected); // Debug
            if (rowsAffected == 0) {
                throw new SQLException("Aucune mise à jour effectuée pour l'ID : " + entraineur.getId());
            }
        }
    }

    public void deleteEntraineur(int id) throws SQLException {
        String query = "DELETE FROM entraineur WHERE id_Entraineur = ?";
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setInt(1, id);
            preparedStatement.executeUpdate();
        }
    }
}