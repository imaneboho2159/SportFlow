<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="fr">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SportConnect - Accueil</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" rel="stylesheet">
    <link href="css/styles.css" rel="stylesheet">
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

        .hero-section {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            background: rgba(0, 0, 0, 0.5);
        }

        .hero-content {
            max-width: 600px;
            padding: 20px;
        }

        .hero-content h1 {
            font-size: 3rem;
            font-weight: bold;
            color: #ffd700;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
            animation: fadeInDown 1s ease-in-out;
        }

        .hero-content p {
            font-size: 1.2rem;
            margin: 20px 0;
            color: #e0e0e0;
            animation: fadeIn 1.5s ease-in-out;
        }

        .btn-custom {
            font-size: 1.2rem;
            padding: 12px 30px;
            border-radius: 50px;
            margin: 10px;
            transition: transform 0.3s ease, background 0.3s ease;
            animation: bounceIn 2s ease-in-out;
        }

        .btn-login {
            background: linear-gradient(45deg, #00c4ff, #007bff);
            border: none;
            color: #fff;
        }

        .btn-login:hover {
            background: linear-gradient(45deg, #007bff, #00c4ff);
            transform: scale(1.1);
        }

        .btn-register {
            background: linear-gradient(45deg, #ff6f61, #ff9a61);
            border: none;
            color: #fff;
        }

        .btn-register:hover {
            background: linear-gradient(45deg, #ff9a61, #ff6f61);
            transform: scale(1.1);
        }

        @keyframes fadeIn {
            0% {
                opacity: 0;
            }
            100% {
                opacity: 1;
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
        <a class="navbar-brand animate__animated animate__pulse" href="#">SPORT FLOW</a>
        <div class="navbar-nav">
            <a class="nav-link animate__animated animate__fadeIn" href="login.jsp">Se connecter</a>
            <a class="nav-link animate__animated animate__fadeIn" href="register.jsp">Créer un compte</a>
        </div>
    </div>
</nav>

<div class="hero-section">
    <div class="hero-content">
        <h1 class="animate__animated animate__fadeInDown">Bienvenue sur SPORT FLOW</h1>
        <p class="animate__animated animate__fadeIn">Rejoignez une communauté sportive dynamique ! Connectez-vous ou créez un compte pour gérer vos séances et profils.</p>
        <div>
            <a href="login.jsp" class="btn btn-custom btn-login animate__animated animate__bounceIn">Se connecter</a>
            <a href="register.jsp" class="btn btn-custom btn-register animate__animated animate__bounceIn">Creer un compte</a>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
