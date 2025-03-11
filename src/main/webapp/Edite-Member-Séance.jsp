<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modifier une Séance - SportConnect</title>
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

        .form-container {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border-radius: 15px;
            padding: 20px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.3);
        }

        label {
            color: #fff;
        }
    </style>
</head>

<body>
<nav class="navbar navbar-expand-lg">
    <div class="container-fluid">
        <a class="navbar-brand animate__animated animate__pulse" href="#">SportConnect</a>
        <div class="navbar-nav ms-auto">
            <a class="nav-link animate__animated animate__fadeIn" href="member_dashboard.html">Retour</a>
            <a class="nav-link animate__animated animate__fadeIn" href="index.html">Accueil</a>
            <a class="nav-link animate__animated animate__fadeIn" href="/SportConnect/pages/logout.html">Déconnexion</a>
        </div>
    </div>
</nav>

<div class="container">
    <div class="form-container">
        <h2 class="text-center text-light">Modifier ma Séance</h2>
        <form id="editSeanceForm">
            <div class="mb-3">
                <label for="trainer" class="form-label">Entraîneur</label>
                <input type="text" class="form-control" id="trainer" value="Coach Pierre (Fitness)" readonly>
            </div>

            <div class="mb-3">
                <label for="date" class="form-label">Date</label>
                <input type="date" class="form-control" id="date" required>
            </div>

            <div class="mb-3">
                <label for="heure" class="form-label">Heure</label>
                <input type="time" class="form-control" id="heure" required>
            </div>

            <div class="text-center">
                <button type="submit" class="btn btn-success">Enregistrer</button>
                <a href="member_dashboard.html" class="btn btn-danger">Annuler</a>
            </div>
        </form>
    </div>
</div>

<script>
    document.getElementById("editSeanceForm").addEventListener("submit", function(event) {
        event.preventDefault();
        alert("Votre séance a été modifiée avec succès !");
        window.location.href = "member_dashboard.html";
    });

    // Préremplir les champs avec des données fictives
    document.getElementById("date").value = "2025-03-20";
    document.getElementById("heure").value = "15:00";
</script>
</body>

</html>