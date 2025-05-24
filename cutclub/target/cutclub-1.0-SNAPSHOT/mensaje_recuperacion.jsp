<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <title> Recuperacion de Contraseña Exitosa</title>
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    body {
      background-color: #f6f7f8;
      color: #3b2a56;
    }

    header {
      background-color: #3b2a56;
      padding: 29px 29px;
      display: flex;
      justify-content: space-between;
      align-items: center;
      box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
    }

    .logo-header {
      display: flex;
      align-items: center;
    }

    .logo-header img {
      height: 48px;
      margin-right: 50px;
    }

    .logo-header h1 {
      color: #ffcc5c;
      font-size: 20px;
    }

    .user-info {
      display: flex;
      align-items: center;
      color: white;
    }

    .user-info img {
      width: 35px;
      height: 35px;
      border-radius: 50%;
      margin-right: 10px;
      border: 2px solid #ffcc5c;
    }

    nav {
      background-color: #3b2a56;
      padding: 10px 0;
    }

    nav ul {
      display: flex;
      justify-content: center;
      list-style: none;
    }

    nav ul li {
      margin: 0 15px;
    }

    nav ul li a {
      color: white;
      text-decoration: none;
      font-weight: 500;
      padding: 5px 10px;
      border-radius: 5px;
      transition: all 0.3s ease;
    }

    nav ul li a:hover {
      background-color: #ffcc5c;
      color: #3b2a56;
    }

    .container {
      max-width: 1200px;
      margin: 20px auto;
      padding: 0 20px;
    }

    .container-cancelacion {
      display: flex;
      justify-content: center;
      align-items: center;
      min-height: 60vh;
    }

    .card {
      background-color: white;
      padding: 40px;
      border-radius: 12px;
      box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
      text-align: center;
    }

    .card h2 {
      color: #ffcc5c;
      margin-bottom: 10px;
    }

    .card p {
      margin-bottom: 20px;
    }

    .btn-back {
      padding: 10px 20px;
      background-color: #3b2a56;
      color: white;
      text-decoration: none;
      border-radius: 8px;
    }

    .btn-back:hover {
      background-color: #ffcc5c;
      color: #3b2a56;
    }

    footer {
      background-color: #3b2a56;
      color: white;
      text-align: center;
      padding: 20px;
      margin-top:188px;
    }

    .appointment-btn {
      position: fixed;
      bottom: 30px;
      right: 30px;
      background-color: #ffcc5c;
      color: #3b2a56;
      width: 60px;
      height: 60px;
      border-radius: 50%;
      display: flex;
      align-items: center;
      justify-content: center;
      font-size: 24px;
      box-shadow: 0 4px 15px rgba(0, 0, 0, 0.2);
      text-decoration: none;
      transition: all 0.3s ease;
    }

    .appointment-btn:hover {
      transform: scale(1.1);
    }
  </style>
</head>
<body>
  <header>
    <div class="logo-header">
      <img src="images/logo.png.png" alt="logo cut club" width="95" height="95">
      <h1>Cut Club 83</h1>
    </div>
    <div class="user-info">
      <img src="https://ui-avatars.com/api/?name=J+D&background=ffcc5c&color=3b2a56" alt="Usuario">
      <span>Juan Díaz</span>
    </div>
  </header>

  <div class="container-cancelacion">
    <div class="card">
      <h2>¡Recuperacion de Contraseña Exitosa!</h2>
      <p>¡Hemos enviado un enlace de recuperación a tu correo electrónico!</p>
      <form action="menu_principal.jsp" method="get">
        <button type="submit" class="btn-back">Volver al menu principal</button>
      </form>
    </div>
  </div>

  <footer>
    <p>Cut Club 83 -</p>
    <p>Contacto: info@cutclub.com | Tel: 300-1234567</p>
  </footer>
</body>
</html>
