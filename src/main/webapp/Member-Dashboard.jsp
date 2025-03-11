<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SportConnect - Tableau de Bord Membre</title>
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

        .container {
            margin-top: 50px;
        }

        .trainer-card {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border-radius: 15px;
            padding: 20px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3);
            margin-bottom: 20px;
            text-align: center;
        }

        .trainer-card h4 {
            color: #ffd700;
        }

        .btn-add-session {
            background-color: #28a745;
            border: none;
            transition: 0.3s;
        }

        .btn-add-session:hover {
            background-color: #218838;
        }
    </style>
</head>

<body>
<nav class="navbar navbar-expand-lg">
    <div class="container-fluid">
        <a class="navbar-brand animate__animated animate__pulse" href="#">SportConnect</a>
        <div class="navbar-nav ms-auto">
            <a class="nav-link animate__animated animate__fadeIn" href="index.html">Accueil</a>
            <a class="nav-link animate__animated animate__fadeIn" href="mes_seances.html">Mes Séances</a>
            <a class="nav-link animate__animated animate__fadeIn" href="/SportConnect/pages/logout.html">Déconnexion</a>
        </div>
    </div>
</nav>

<div class="container">
    <h2 class="text-center text-light">Liste des Entraîneurs</h2>

    <div class="row">
        <!-- Exemple de carte entraîneur -->
        <div class="col-md-4">
            <div class="trainer-card">
                <h4>Jean Dupont</h4>
                <p>Spécialité: Musculation</p>
                <button class="btn btn-add-session btn-sm text-white">Ajouter une séance</button>
            </div>
        </div>

        <div class="col-md-4">
            <div class="trainer-card">
                <h4>Marie Curie</h4>
                <p>Spécialité: Yoga</p>
                <button class="btn btn-add-session btn-sm text-white">Ajouter une séance</button>
            </div>
        </div>

        <div class="col-md-4">
            <div class="trainer-card">
                <h4>Lucas Bernard</h4>
                <p>Spécialité: Boxe</p>
                <button class="btn btn-add-session btn-sm text-white">Ajouter une séance</button>
            </div>
        </div>
    </div>
</div>
</body>

</html>