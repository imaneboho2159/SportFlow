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
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/RegisterServlet")
public class registerServlet extends HttpServlet {


        @Override
        public void init() throws ServletException {
            super.init();

            MemberDao memberDao = new MemberDao();

        }

        @Override
        protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

            String role = req.getParameter("role");
            if(role.equals("member")){

                String nom = req.getParameter("nom");
                String email = req.getParameter("email");
                String password = req.getParameter("password");
                String date_De_naissance = req.getParameter("dateNaissance");
                String sport_prateque = req.getParameter("sport");

                Member member = new Member(nom, email, password, date_De_naissance, sport_prateque);

                MemberDao memberDao = new MemberDao();
                memberDao.createMember(member);
            }
            else {
                String nom = req.getParameter("nom");
                String email = req.getParameter("email");
                String password = req.getParameter("password");
                String specialite = req.getParameter("specialite");
                Entraineur entaraineur = new Entraineur( nom, email, password, specialite);

                EntraineurDao entraineurDao = new EntraineurDao();
                try {
                    entraineurDao.createEntraineur(entaraineur);
                } catch (SQLException e) {
                    throw new RuntimeException(e);
                }
            }
        }




        @Override
        protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        }
    }

