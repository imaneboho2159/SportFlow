package Authentification;

import Entraineur.DAO.EntraineurDao;
import Entraineur.Model.Entraineur;
import Member.DAO.MemberDao;
import Member.Model.Member;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.SQLException;


@WebServlet("/LoginServlet")

public class LoginServlet extends HttpServlet {




    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String role = req.getParameter("role");
        String email = req.getParameter("email");
     String password = req.getParameter("password");

     HttpSession session =req.getSession();

     if (role.equals("member")) {
         MemberDao memberDao = new MemberDao();
         Member member = new Member();
         try {
             member = memberDao.getMemberByEmail(email);
         } catch (SQLException e) {
             throw new RuntimeException(e);
         }
         if(member !=null && member.getPassword().equals(password)){
             session.setAttribute("user", member);
             session.setAttribute("role", role);
             resp.sendRedirect("Member-Dashboard.jsp");
             return;
         }}
     else if (role.equals("Entraineur")) {
             Entraineur entraineur = new Entraineur();
         if(entraineur !=null &&entraineur.getEmail().equals(email)){
                session.setAttribute("user", entraineur);
                session.setAttribute("role", role);
                resp.sendRedirect("Entraineur-Dashboard.jsp");
                return;
            }


     }
     else if (role.equals("Admin")) {
         if("imane@gmail.com".equals(email) && "1234".equals(password)){
             session.setAttribute("user","admin");
             session.setAttribute("role","admin");
             resp.sendRedirect("Admin-Dashboard.jsp");
             return;
         }
     }

    }
}
