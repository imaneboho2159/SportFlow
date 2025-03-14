package Member.Servlet;

import Member.DAO.MemberDao;
import Member.Model.Member;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet("/members") // Added URL mapping
public class MemberServlet extends HttpServlet {
    private MemberDao memberDao;

    @Override
    public void init() {
        memberDao = new MemberDao();
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            List<Member> members = memberDao.getAllMember(); // Fixed method name to plural
            System.out.println("Nombre de membres récupérés : " + (members != null ? members.size() : 0));
            if (members != null && !members.isEmpty()) {
                System.out.println("Premier membre : " + members.get(0).getName());
            }
            request.setAttribute("members", members); // Fixed attribute name to "members"
            request.getRequestDispatcher("/Liste-Member.jsp").forward(request, response);
        } catch (SQLException e) {
            System.out.println("Erreur SQL dans MemberServlet : " + e.getMessage());
            request.setAttribute("errorMessage", "Erreur lors de la récupération des membres : " + e.getMessage());
            request.getRequestDispatcher("/Liste-Member.jsp").forward(request, response);
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
                String dateNaissance = request.getParameter("dateNaissance");
                String sport = request.getParameter("sport");

                Member member = new Member(id, nom, email, password, dateNaissance, sport);
                memberDao.updateMember(member);
                response.sendRedirect("members");
            } else {
                doGet(request, response);
            }
        } catch (SQLException e) {
            request.setAttribute("errorMessage", "Erreur lors de la mise à jour du membre : " + e.getMessage());
            request.getRequestDispatcher("/Edite-Member.jsp").forward(request, response);
        } catch (NumberFormatException e) {
            request.setAttribute("errorMessage", "ID invalide : " + request.getParameter("id"));
            request.getRequestDispatcher("/Edite-Member.jsp").forward(request, response);
        }
    }


    }
