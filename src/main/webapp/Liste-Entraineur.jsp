<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SportConnect - Liste des Entraîneurs</title>
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

        .table-container {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border-radius: 15px;
            padding: 20px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3);
        }

        .table th,
        .table td {
            color: #fff;
        }
    </style>
</head>

<body>
<nav class="navbar navbar-expand-lg">
    <div class="container-fluid">
        <a class="navbar-brand animate__animated animate__pulse" href="#">SPORT FLOW</a>
        <div class="navbar-nav ms-auto">
            <a class="nav-link animate__animated animate__fadeIn" href="list_members.html">Membres</a>
            <a class="nav-link animate__animated animate__fadeIn" href="list_trainers.html">Entraîneurs</a>
            <a class="nav-link animate__animated animate__fadeIn" href="/SportConnect/pages/logout.html">Déconnexion</a>
        </div>
    </div>
</nav>

<div class="container">
    <div class="table-container">
        <h2 class="text-center text-light">Liste des Entraîneurs</h2>
        <table class="table table-dark table-hover">
            <thead>
            <tr>
                <th>ID</th>
                <th>Nom</th>
                <th>Email</th>
                <th>Mot de passe</th>
                <th>Spécialité</th>
                <th>Expérience (années)</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>1</td>
                <td>Paul Martin</td>
                <td>paul.martin@email.com</td>
                <td>********</td>
                <td>Football</td>
                <td>10</td>
                <td>
                    <button class="btn btn-sm btn-primary">Modifier</button>
                    <button class="btn btn-sm btn-danger">Supprimer</button>
                </td>
            </tr>
            <tr>
                <td>2</td>
                <td>Sophie Bernard</td>
                <td>sophie.bernard@email.com</td>
                <td>********</td>
                <td>Natation</td>
                <td>8</td>
                <td>
                    <button class="btn btn-sm btn-primary">Modifier</button>
                    <button class="btn btn-sm btn-danger">Supprimer</button>
                </td>
            </tr>
            </tbody>
        </table>
        <!-- Bouton Ajouter -->
        <div class="text-center mt-3">
            <a href="register_trainer.html" class="btn btn-success">Ajouter un entraîneur</a>
        </div>
    </div>
</div>
</body>

</html>