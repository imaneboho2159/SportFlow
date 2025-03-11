<!DOCTYPE html>
<html lang="fr">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>SportConnect - Inscription</title>
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

    .navbar-brand,
    .nav-link {
      color: #fff !important;
      font-weight: bold;
      transition: color 0.3s ease;
    }

    .nav-link:hover {
      color: #ffd700 !important;
    }

    .register-section {
      flex: 1;
      display: flex;
      justify-content: center;
      align-items: center;
      background: rgba(0, 0, 0, 0.5);
      padding: 20px;
    }

    .register-card {
      background: rgba(255, 255, 255, 0.1);
      backdrop-filter: blur(10px);
      border-radius: 15px;
      padding: 30px;
      max-width: 500px;
      width: 100%;
      box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3);
      animation: fadeIn 1s ease-in-out;
    }

    .register-card h1 {
      font-size: 2.5rem;
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
      border-radius: 8px;
      padding: 10px;
      transition: border-color 0.3s ease;
    }

    .form-control:focus {
      background: rgba(255, 255, 255, 0.3);
      border-color: #00c4ff;
      box-shadow: 0 0 10px rgba(0, 196, 255, 0.5);
      color: #fff;
    }

    .form-select {
      background: rgba(255, 255, 255, 0.2);
      border: none;
      color: #fff;
      border-radius: 8px;
      padding: 10px;
      transition: border-color 0.3s ease;
    }

    .form-select:focus {
      background: rgba(255, 255, 255, 0.3);
      border-color: #00c4ff;
      box-shadow: 0 0 10px rgba(0, 196, 255, 0.5);
      color: #fff;
    }

    .btn-custom {
      font-size: 1.2rem;
      padding: 12px 30px;
      border-radius: 50px;
      margin: 10px 0;
      transition: transform 0.3s ease, background 0.3s ease;
      animation: bounceIn 1.5s ease-in-out;
    }

    .btn-register {
      background: linear-gradient(45deg, #ff6f61, #ff9a61);
      border: none;
      color: #fff;
      width: 100%;
    }

    .btn-register:hover {
      background: linear-gradient(45deg, #ff9a61, #ff6f61);
      transform: scale(1.1);
    }

    .btn-cancel {
      background: linear-gradient(45deg, #00c4ff, #007bff);
      border: none;
      color: #fff;
      width: 100%;
    }

    .btn-cancel:hover {
      background: linear-gradient(45deg, #007bff, #00c4ff);
      transform: scale(1.1);
    }

    @keyframes fadeIn {
      0% {
        opacity: 0;
        transform: translateY(-20px);
      }
      100% {
        opacity: 1;
        transform: translateY(0);
      }
    }

    @keyframes bounceIn {
      0% {
        transform: scale(0);
        opacity: 0;
      }
      50% {
        transform: scale(1.2);
        opacity: 1;
      }
      100% {
        transform: scale(1);
      }
    }
  </style>
</head>

<body>
<nav class="navbar navbar-expand-lg">
  <div class="container-fluid">
    <a class="navbar-brand animate__animated animate__pulse" href="index.html">SPORT FLOW</a>
    <div class="navbar-nav">
      <a class="nav-link animate__animated animate__fadeIn" href="index.html">Accueil</a>
      <a class="nav-link animate__animated animate__fadeIn" href="pages/login.html">Se connecter</a>
    </div>
  </div>
</nav>

<div class="register-section">
  <div class="register-card">
    <h1 class="animate__animated animate__fadeInDown">SSPORT FLOW - Inscription</h1>
    <form action="/SportConnect/RegisterServlet" method="POST">
      <div class="mb-3">
        <label for="role" class="form-label">Rôle</label>
        <select class="form-select" id="role" name="role" required onchange="toggleFields()">
          <option value="member">Admin</option>

        </select>
      </div>
      <div class="mb-3">
        <label for="username" class="form-label">Nom d'utilisateur</label>
        <input type="text" class="form-control" id="username" name="username" required>
      </div>
      <div class="mb-3">
        <label for="password" class="form-label">Mot de passe</label>
        <input type="password" class="form-control" id="password" name="password" required>
      </div>
      <div id="memberFields" class="mb-3">
        <label for="nom" class="form-label">Nom</label>
        <input type="text" class="form-control" id="nom" name="nom" required>
        <label for="dateNaissance" class="form-label">Date de Naissance</label>
        <input type="date" class="form-control" id="dateNaissance" name="dateNaissance" required>
        <label for="sport" class="form-label">Sport Pratiqué</label>
        <input type="text" class="form-control" id="sport" name="sport" required>
      </div>
      <div id="trainerFields" class="mb-3" style="display: none;">
        <label for="nom" class="form-label">Nom</label>
        <input type="text" class="form-control" id="nom" name="nom" required>
        <label for="specialite" class="form-label">Spécialité</label>
        <input type="text" class="form-control" id="specialite" name="specialite" required>
      </div>
      <button type="submit" class="btn btn-custom btn-register">Inscrire</button>
      <a href="index.html" class="btn btn-custom btn-cancel">Annuler</a>
    </form>
  </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.js"></script>
<script>
  function toggleFields() {
    const role = document.getElementById('role').value;
    const memberFields = document.getElementById('memberFields');
    const trainerFields = document.getElementById('trainerFields');

    if (role === 'member') {
      memberFields.style.display = 'block';
      trainerFields.style.display = 'none';
    } else if (role === 'trainer') {
      memberFields.style.display = 'none';
      trainerFields.style.display = 'block';
    }
  }

  window.onload = function() {
    toggleFields();
  };
</script>
</body>

</html>