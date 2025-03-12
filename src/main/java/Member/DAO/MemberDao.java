package Member.DAO;

import Utils.DBConnection;
import Member.Model.Member;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class MemberDao {





        public  void createMember(Member member)  {

            try(Connection connection  = DBConnection.getConnection()){
            String query = "insert into MEMBER (nom,email,password,date_De_naissance,sport_prateque) values(?,?,?,?,?)";


            PreparedStatement preparedStatement = connection.prepareStatement(query) ;
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
        }




