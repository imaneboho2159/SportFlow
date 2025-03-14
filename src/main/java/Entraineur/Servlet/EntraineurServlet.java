package Entraineur.Servlet;

import Entraineur.DAO.EntraineurDao;
import Entraineur.Model.Entraineur;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/entraineurs")
public class EntraineurServlet extends HttpServlet {
    private EntraineurDao entraineurDao;

    @Override
    public void init() {
        entraineurDao = new EntraineurDao();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            List<Entraineur> entraineurs = entraineurDao.getAllEntraineur();
            request.setAttribute("entraineurs", entraineurs);
            request.getRequestDispatcher("/Liste-Entraineur.jsp").forward(request, response);
        } catch (SQLException e) {
            request.setAttribute("errorMessage", "Erreur lors de la récupération des entraîneurs : " + e.getMessage());
            request.getRequestDispatcher("/Liste-Entraineur.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");

        try {
            if ("update".equals(action)) {
                int id = Integer.parseInt(request.getParameter("id"));
                String nom = request.getParameter("nom");
                String email = request.getParameter("email");
                String password = request.getParameter("password");
                String specialite = request.getParameter("specialite");

                Entraineur entraineur = new Entraineur(id, nom, email, password, specialite);
                entraineurDao.updateEntraineur(entraineur);
            } else if ("delete".equals(action)) {
                int id = Integer.parseInt(request.getParameter("id"));
                entraineurDao.deleteEntraineur(id);
            }
        } catch (SQLException e) {
            request.setAttribute("errorMessage", "Erreur lors de l'action : " + e.getMessage());
            request.getRequestDispatcher("/Liste-Entraineur.jsp").forward(request, response);
            return;
        } catch (NumberFormatException e) {
            request.setAttribute("errorMessage", "ID invalide : " + request.getParameter("id"));
            request.getRequestDispatcher("/Liste-Entraineur.jsp").forward(request, response);
            return; //
        }

        response.sendRedirect("entraineurs");
    }
}