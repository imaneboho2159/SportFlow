package Entraineur.DAO;

import Entraineur.Model.Entraineur;
import Utils.DBConnection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

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

}
