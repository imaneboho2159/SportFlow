<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="Member.Model.Member" %>
<%@ page import="Member.DAO.MemberDao" %>
<%@ page import="java.sql.SQLException" %>
<!DOCTYPE html>
<html lang="fr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>SportFlow - Modifier un Membre</title>
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
    .navbar-brand, .nav-link {
      color: #fff !important;
      font-weight: bold;
      transition: color 0.3s ease;
    }
    .nav-link:hover {
      color: #ffd700 !important;
    }
    .container {
      flex: 1;
      margin-top: 50px;
      background: rgba(255, 255, 255, 0.1);
      backdrop-filter: blur(10px);
      border-radius: 15px;
      padding: 20px;
      box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3);
    }
    .form-label {
      font-weight: bold;
    }
    .btn-primary {
      background: linear-gradient(45deg, #00c4ff, #007bff);
      border: none;
    }
    .btn-primary:hover {
      background: linear-gradient(45deg, #007bff, #00c4ff);
    }
    .btn-secondary {
      background: linear-gradient(45deg, #6c757d, #adb5bd);
      border: none;
    }
    .btn-secondary:hover {
      background: linear-gradient(45deg, #adb5bd, #6c757d);
    }
    .error-message {
      color: #ff6f61;
      text-align: center;
      margin-bottom: 20px;
    }
  </style>
</head>
<body>
<nav class="navbar navbar-expand-lg">
  <div class="container-fluid">
    <a class="navbar-brand animate__animated animate__pulse" href="#">SPORT FLOW</a>
    <div class="navbar-nav ms-auto">
      <a class="nav-link animate__animated animate__fadeIn active" href="Liste-Member.jsp">Membres</a>
      <a class="nav-link animate__animated animate__fadeIn" href="entraineurs">Entraîneurs</a>
      <a class="nav-link animate__animated animate__fadeIn" href="Logout">Déconnexion</a>
    </div>
  </div>
</nav>

<div class="container">
  <h2 class="text-center text-light mb-4 animate__animated animate__fadeIn">Modifier un Membre</h2>
  <%
    String errorMessage = (String) request.getAttribute("errorMessage");
    if (errorMessage != null) {
  %>
  <div class="error-message"><%= errorMessage %></div>
  <% } %>

  <%
    String idParam = request.getParameter("id");
    Member member = null;
    if (idParam != null && !idParam.isEmpty()) {
      try {
        int id = Integer.parseInt(idParam);
        MemberDao memberDao = new MemberDao();
        member = memberDao.getMemberById(id); // Use getMemberById instead of getMemberByEmail
        if (member == null) {
          request.setAttribute("errorMessage", "Membre non trouvé pour l'ID : " + id);
        }
      } catch (NumberFormatException e) {
        request.setAttribute("errorMessage", "ID invalide : " + idParam);
      } catch (SQLException e) {
        request.setAttribute("errorMessage", "Erreur lors de la récupération du membre : " + e.getMessage());
      }
    } else {
      request.setAttribute("errorMessage", "Aucun ID spécifié.");
    }
  %>

  <% if (member != null) { %>
  <form action="members" method="POST">
    <input type="hidden" name="action" value="update">
    <input type="hidden" name="id" value="<%= member.getId() %>">

    <div class="mb-3">
      <label for="nom" class="form-label text-light">Nom</label>
      <input type="text" class="form-control" id="nom" name="nom" value="<%= member.getName() %>" required>
    </div>

    <div class="mb-3">
      <label for="email" class="form-label text-light">Email</label>
      <input type="email" class="form-control" id="email" name="email" value="<%= member.getEmail() %>" required>
    </div>

    <div class="mb-3">
      <label for="password" class="form-label text-light">Mot de passe</label>
      <input type="password" class="form-control" id="password" name="password" value="<%= member.getPassword() %>" required>
    </div>

    <div class="mb-3">
      <label for="dateNaissance" class="form-label text-light">Date de Naissance</label>
      <input type="date" class="form-control" id="dateNaissance" name="dateNaissance" value="<%= member.getDateNaissance() %>" required>
    </div>

    <div class="mb-3">
      <label for="sport" class="form-label text-light">Sport Pratiqué</label>
      <select class="form-control" id="sport" name="sport" required>
        <option value="Football" <%= "Football".equals(member.getSport_prateque()) ? "selected" : "" %>>Football</option>
        <option value="Natation" <%= "Natation".equals(member.getSport_prateque()) ? "selected" : "" %>>Natation</option>
        <option value="Basketball" <%= "Basketball".equals(member.getSport_prateque()) ? "selected" : "" %>>Basketball</option>
        <option value="Tennis" <%= "Tennis".equals(member.getSport_prateque()) ? "selected" : "" %>>Tennis</option>
      </select>
    </div>

    <div class="text-center">
      <button type="submit" class="btn btn-primary">Enregistrer</button>
      <a href="members" class="btn btn-secondary">Annuler</a>
    </div>
  </form>
  <% } else { %>
  <div class="text-center text-light">Impossible de charger les données du membre.</div>
  <% } %>
</div>
</body>
</html>