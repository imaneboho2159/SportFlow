package Member.DAO;

import Utils.DBConnection;
import Member.Model.Member;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MemberDao {


    public void createMember(Member member) {

        try (Connection connection = DBConnection.getConnection()) {
            String query = "insert into MEMBER (nom,email,password,date_De_naissance,sport_prateque) values(?,?,?,?,?)";


            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, member.getName());
            preparedStatement.setString(2, member.getEmail());
            preparedStatement.setString(3, member.getPassword());
            preparedStatement.setString(4, member.getDate_De_naissance());
            preparedStatement.setString(5, member.getSport_prateque());
            preparedStatement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }


    public Member getMemberByEmail(String email) throws SQLException {
        Member member = null;
        try (Connection connection = DBConnection.getConnection()) {
            String query = "select * from MEMBER where email = ?";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, email);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                member = new Member(
                        resultSet.getString("nom"),
                        resultSet.getString("email"),
                        resultSet.getString("password"),
                        resultSet.getString("date_De_naissance"),
                        resultSet.getString("sport_prateque"));
            }
        }
        return member;
    }



    public static List<Member> getAllMember() throws SQLException {

        List<Member> members = new ArrayList<Member>();
        try (Connection connection = DBConnection.getConnection()) {
            String query = "select * from MEMBER";
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            ResultSet resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {

                String nom = resultSet.getString("nom");
                String email = resultSet.getString("email");
                String password = resultSet.getString("password");
                String date_De_naissance = resultSet.getString("date_De_naissance");
                String sport_prateque = resultSet.getString("sport_prateque");
                Member member = new Member(nom,email,password,date_De_naissance,sport_prateque);
                members.add(member);


            }

        }return members;
    }

    public void updateMember(Member member) throws SQLException {

        String query ="UPDATE MEMBER nom=?, email=?, password=?,date_De_naissance=?,sport_prateque= ? WHERE =id?";
        try (Connection connection = DBConnection.getConnection()) {
            PreparedStatement preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, member.getName());
            preparedStatement.setString(2, member.getEmail());
            preparedStatement.setString(3, member.getPassword());

            preparedStatement.setInt(5, member.getId());
            preparedStatement.executeUpdate();


        }
    }
    public void deleteMember(int id) throws SQLException {
        String query = "DELETE FROM MEMBER WHERE id = ?";
       try(Connection connection = DBConnection.getConnection()){
        PreparedStatement preparedStatement = connection.prepareStatement(query) ;
            preparedStatement.setInt(1, id);
            preparedStatement.executeUpdate();
        }
    }
    public Member getMemberById(int id) throws SQLException {
        Member member = null;
        String query = "SELECT * FROM member WHERE id = ?";
        try (Connection connection = DBConnection.getConnection();
             PreparedStatement preparedStatement = connection.prepareStatement(query)) {
            preparedStatement.setInt(1, id);
            ResultSet resultSet = preparedStatement.executeQuery();
            if (resultSet.next()) {
                member = new Member(
                        resultSet.getInt("id"),
                        resultSet.getString("nom"),
                        resultSet.getString("email"),
                        resultSet.getString("password"),
                        resultSet.getString("date_De_naissance"),
                        resultSet.getString("sport_prateque")
                );
            }
        }
        return member;
    }
}



