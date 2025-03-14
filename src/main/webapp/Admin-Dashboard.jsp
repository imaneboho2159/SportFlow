<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SportFlow - Inscription</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" rel="stylesheet">
    <link href="../css/styles.css" rel="stylesheet">
    <style>
        body {
            background: url('https://images.unsplash.com/photo-1517836357463-d25dfeac3438?ixlib=rb-4.0.3&auto=format&fit=crop&w=1350&q=80') no-repeat center center fixed;
            background-size: cover;
            font-family: 'Arial', sans-serif;
            color: #fff;
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            flex-direction: column;
        }

        .navbar {
            background: linear-gradient(90deg, #ff6f61, #de4d4d);
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
        }

        .container {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            background: rgba(0, 0, 0, 0.5);
            padding: 20px;
        }

        .form-container {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border-radius: 15px;
            padding: 30px;
            max-width: 500px;
            width: 100%;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3);
            animation: fadeIn 1s ease-in-out;
        }

        .form-container h2 {
            font-size: 2rem;
            color: #ffd700;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
            margin-bottom: 20px;
            text-align: center;
        }

        .form-label {
            color: #e0e0e0;
            font-weight: bold;
        }

        .form-control {
            background: rgba(255, 255, 255, 0.2);
            border: none;
            color: #fff;
        }

        .form-control:focus {
            background: rgba(255, 255, 255, 0.3);
            border-color: #00c4ff;
        }

        .btn-custom {
            font-size: 1.2rem;
            padding: 12px 30px;
            border-radius: 50px;
        }

        .btn-primary {
            background: linear-gradient(45deg, #00c4ff, #007bff);
            border: none;
            width: 100%;
        }

        .btn-primary:hover {
            background: linear-gradient(45deg, #007bff, #00c4ff);
            transform: scale(1.1);
        }

        .btn-secondary {
            background: linear-gradient(45deg, #ff6f61, #ff9a61);
            border: none;
        }

        .btn-secondary:hover {
            background: linear-gradient(45deg, #ff9a61, #ff6f61);
            transform: scale(1.1);
        }
    </style>
    <script>
        function toggleFields() {
            var role = document.getElementById("role").value;
            document.getElementById("memberFields").style.display = (role === "member") ? "block" : "none";
            document.getElementById("trainerFields").style.display = (role === "trainer") ? "block" : "none";
        }
    </script>
</head>

<body>
<nav class="navbar navbar-expand-lg">
    <div class="container-fluid">
        <a class="navbar-brand animate__animated animate__pulse" href="#">SPORT FLOW</a>
        <div class="navbar-nav ms-auto">
            <a class="nav-link animate__animated animate__fadeIn" href="Liste-Member.jsp">Membres</a>
            <a class="nav-link animate__animated animate__fadeIn" href="Liste-Entraineur.jsp">Entraîneurs</a>
            <a class="nav-link animate__animated animate__fadeIn" href="Logout">Déconnexion</a>
        </div>
    </div>
</nav>
<div class="container">
    <div class="form-container">
        <h2>Inscription d'un Nouvel Utilisateur</h2>
        <form action="RegisterServlet" method="POST">
            <div class="mb-3">
                <label for="role" class="form-label">Rôle</label>
                <select class="form-select" id="role" name="role" required onchange="toggleFields()">
                    <option value="member">Membre</option>
                    <option value="trainer">Entraîneur</option>
                </select>
            </div>
            <div class="mb-3">
                <label for="email" class="form-label">Email</label>
                <input type="email" class="form-control" id="email" name="email" required>
            </div>
            <div class="mb-3">
                <label for="password" class="form-label">Mot de passe</label>
                <input type="password" class="form-control" id="password" name="password" required>
            </div>

            <!-- Membre Fields -->
            <div id="memberFields">
                <div class="mb-3">
                    <label for="nom" class="form-label">Nom</label>
                    <input type="text" class="form-control" id="nom" name="nom">
                </div>
                <div class="mb-3">
                    <label for="dateNaissance" class="form-label">Date de Naissance</label>
                    <input type="date" class="form-control" id="dateNaissance" name="dateNaissance">
                </div>
                <div class="mb-3">
                    <label for="sport" class="form-label">Sport Pratiqué</label>
                    <input type="text" class="form-control" id="sport" name="sport">
                </div>
            </div>

            <!-- Entraîneur Fields -->
            <div id="trainerFields" style="display:none;">
                <div class="mb-3">
                    <label for="nom" class="form-label">Nom</label>
                    <input type="text" class="form-control" id="nome" name="nom">
                </div>
                <div class="mb-3">
                    <label for="specialite" class="form-label">Spécialité</label>
                    <input type="text" class="form-control" id="specialite" name="specialite">
                </div>
            </div>

            <button type="submit" class="btn btn-custom btn-primary">Ajouter</button>

        </form>
    </div>
</div>

<script>
    toggleFields();
</script>
</body>

</html>