<!DOCTYPE html>
<html lang="fr">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Modifier un Membre - SportConnect</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" rel="stylesheet">
  <link href="../css/styles.css" rel="stylesheet">
  <style>
    body {
      background: url('https://images.unsplash.com/photo-1517836357463-d25dfeac3438?ixlib=rb-4.0.3&auto=format&fit=crop&w=1350&q=80') no-repeat center center fixed;
      background-size: cover;
      font-family: 'Arial', sans-serif;
      color: #fff;
    }

    .container {
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
  </style>
</head>

<body>
<nav class="navbar navbar-expand-lg" style="background: linear-gradient(90deg, #ff6f61, #de4d4d);">
  <div class="container-fluid">
    <a class="navbar-brand text-white" href="#">SportConnect</a>
    <div class="navbar-nav ms-auto">
      <a class="nav-link text-white" href="list_members.html">Membres</a>
      <a class="nav-link text-white" href="list_trainers.html">Entraîneurs</a>
      <a class="nav-link text-white" href="/SportConnect/pages/logout.html">Déconnexion</a>
    </div>
  </div>
</nav>

<div class="container">
  <h2 class="text-center text-light">Modifier un Membre</h2>
  <form action="update_member.php" method="POST">
    <!-- ID caché -->
    <input type="hidden" name="id" value="1">

    <div class="mb-3">
      <label for="name" class="form-label text-light">Nom</label>
      <input type="text" class="form-control" id="name" name="name" value="Jean Dupont" required>
    </div>

    <div class="mb-3">
      <label for="email" class="form-label text-light">Email</label>
      <input type="email" class="form-control" id="email" name="email" value="jean.dupont@email.com" required>
    </div>

    <div class="mb-3">
      <label for="password" class="form-label text-light">Mot de passe</label>
      <input type="password" class="form-control" id="password" name="password" value="********" required>
    </div>

    <div class="mb-3">
      <label for="dob" class="form-label text-light">Date de Naissance</label>
      <input type="date" class="form-control" id="dob" name="dob" value="1990-05-12" required>
    </div>

    <div class="mb-3">
      <label for="sport" class="form-label text-light">Sport Pratiqué</label>
      <select class="form-control" id="sport" name="sport" required>
        <option value="Football" selected>Football</option>
        <option value="Natation">Natation</option>
        <option value="Basketball">Basketball</option>
        <option value="Tennis">Tennis</option>
      </select>
    </div>

    <div class="text-center">
      <button type="submit" class="btn btn-primary">Enregistrer</button>
      <a href="list_members.html" class="btn btn-secondary">Annuler</a>
    </div>
  </form>
</div>
</body>

</html>