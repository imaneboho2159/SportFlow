<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="java.util.List" %>
<%@ page import="Entraineur.Model.Entraineur" %>
<%@ page import="Entraineur.DAO.EntraineurDao" %>
<%@ page import="java.sql.SQLException" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SportFlow - Liste des Entraîneurs</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" rel="stylesheet">
    <style>
        body {
            background: url('https://images.unsplash.com/photo-1517836357463-d25dfeac3438?ixlib=rb-4.0.3&auto=format&fit=crop&w=1350&q=80') no-repeat center center fixed;
            background-size: cover;
            font-family: 'Arial', sans-serif;
            color: #fff;
            margin: 0;
            padding: 0;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
        }
        .navbar {
            background: linear-gradient(90deg, #ff6f61, #de4d4d);
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
        }
        .container {
            flex: 1;
            padding: 40px 20px;
            background: rgba(0, 0, 0, 0.5);
        }
        .table-container {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border-radius: 15px;
            padding: 20px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3);
            animation: fadeIn 1s ease-in-out;
        }
        .table {
            color: #e0e0e0;
        }
        .table th {
            background: rgba(255, 255, 255, 0.2);
        }
        .btn-primary {
            background: linear-gradient(45deg, #00c4ff, #007bff);
            border: none;
        }
        .btn-danger {
            background: linear-gradient(45deg, #ff6f61, #ff9a61);
            border: none;
        }
        .error-message {
            color: #ff6f61;
            text-align: center;
            margin-top: 20px;
        }
        @keyframes fadeIn {
            from { opacity: 0; }
            to { opacity: 1; }
        }
    </style>
</head>
<body>
<nav class="navbar navbar-expand-lg">
    <div class="container-fluid">
        <a class="navbar-brand animate__animated animate__pulse" href="#">SPORT FLOW</a>
        <div class="navbar-nav ms-auto">
            <a class="nav-link animate__animated animate__fadeIn" href="Liste-Member.jsp">Membres</a>
            <a class="nav-link animate__animated animate__fadeIn active" href="entraineurs">Entraîneurs</a>
            <a class="nav-link animate__animated animate__fadeIn" href="Logout">Déconnexion</a>
        </div>
    </div>
</nav>

<div class="container">
    <div class="table-container">
        <h2 class="text-center text-light mb-4 animate__animated animate__fadeIn">Liste des Entraîneurs</h2>
        <%
            String errorMessage = (String) request.getAttribute("errorMessage");
            if (errorMessage != null) {
        %>
        <div class="error-message"><%= errorMessage %></div>
        <% } %>

        <%
            List<Entraineur> entraineurs = (List<Entraineur>) request.getAttribute("entraineurs");
            if (entraineurs != null && !entraineurs.isEmpty()) {
        %>
        <table class="table table-hover">
            <thead>
            <tr>
                <th>ID</th>
                <th>Nom</th>
                <th>Email</th>
                <th>Spécialité</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <% for (Entraineur entraineur : entraineurs) { %>
            <tr>
                <td><%= entraineur.getId() %></td>
                <td><%= entraineur.getNom() %></td>
                <td><%= entraineur.getEmail() %></td>
                <td><%= entraineur.getSpecialite() %></td>
                <td>
                    <a href="Edite-Entraineur.jsp?id=<%= entraineur.getId() %>" class="btn btn-sm btn-primary">Modifier</a>
                    <form action="entraineurs" method="POST" style="display:inline;">
                        <input type="hidden" name="action" value="delete">
                        <input type="hidden" name="id" value="<%= entraineur.getId() %>">
                        <button type="submit" class="btn btn-sm btn-danger" onclick="return confirm('Voulez-vous supprimer cet entraîneur ?');">Supprimer</button>
                    </form>
                </td>
            </tr>
            <% } %>
            </tbody>
        </table>
        <% } else { %>
        <div class="text-center text-light">Aucun entraîneur trouvé.</div>
        <% } %>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>