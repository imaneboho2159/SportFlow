package Entraineur.DAO;

import Entraineur.Model.Entraineur;
import Member.Model.Member;
import Utils.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EntraineurDao {

    public  void createEntraineur(Entraineur  entraineur)  {

        try(Connection connection  = DBConnection.getConnection()){
            String query = "insert into entraineur (nom,email,password,specialite) values(?,?,?,?)";


            PreparedStatement preparedStatement = connection.prepareStatement(query) ;
            preparedStatement.setString(1, entraineur.getNom());
            preparedStatement.setString(2,  entraineur.getEmail());
            preparedStatement.setString(3,  entraineur.getPassword());
            preparedStatement.setString(4,  entraineur.getSpecialite());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public Entraineur getEntraineurByEmail(String email) throws SQLException {
        Entraineur entraineur = null;
        try (Connection connection = DBConnection.getConnection()) {
            String query = "select * from ENTRAINEUR where email = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, email);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                entraineur = new Entraineur(
                        resultSet.getString("nom"),
                        resultSet.getString("email"),
                        resultSet.getString("password"),
                        resultSet.getString("specialite"));

            }
        }
        return entraineur;
    }

    public static List<Entraineur> getAllEntraineur() throws SQLException {
        List<Entraineur> entraineurs = new ArrayList<>();
        String query = "SELECT * FROM entraineur";
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query);
             ResultSet resultSet = preparedStatement.executeQuery()) {
            while (resultSet.next()) {
                Entraineur entraineur = new Entraineur(

                        resultSet.getString("nom"),
                        resultSet.getString("email"),
                        resultSet.getString("password"),
                        resultSet.getString("specialite"));
                entraineurs.add(entraineur);
            }
        } catch (SQLException e) {
            throw new SQLException("Erreur lors de la récupération des entraîneurs : " + e.getMessage(), e);
        }
        return entraineurs;
    }

public void updateEntraineur(Entraineur entraineur) throws SQLException {

        String query ="UPDATE Entraineur nom=?, email=?, password=?, specialite=? WHERE =id?";
        try (Connection connection = DBConnection.getConnection()) {
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, entraineur.getNom());
            preparedStatement.setString(2, entraineur.getEmail());
            preparedStatement.setString(3, entraineur.getPassword());
            preparedStatement.setString(4, entraineur.getSpecialite());
            preparedStatement.setInt(5, entraineur.getId());
            preparedStatement.executeUpdate();


        }
}
    public void deleteEntraineur(int id) throws SQLException {
        String query = "DELETE FROM ENTRAINEUR WHERE id_Entraineur = ?";
        Connection connection = DBConnection.getConnection();

        try (PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setInt(1, id);
            preparedStatement.executeUpdate();
        }
    }


}
