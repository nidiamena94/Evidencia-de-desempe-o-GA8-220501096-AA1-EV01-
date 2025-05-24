<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mis Citas - Cut Club 83</title>
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
            padding: 5px 5px;
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

        .section-title {
            color: #3b2a56;
            margin: 30px 0 15px;
            padding-bottom: 10px;
            border-bottom: 2px solid #ffcc5c;
        }

        .appointments-list {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 20px;
        }

        .appointment-card {
            background-color: white;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 3px 10px rgba(0, 0, 0, 0.1);
            padding: 15px;
            display: flex;
            flex-direction: column;
            gap: 10px;
        }

        .appointment-card h3 {
            color: #3b2a56;
            font-size: 18px;
        }

        .appointment-card p {
            color: #666;
            font-size: 14px;
        }

        .btn-cancel {
            padding: 8px 15px;
            background-color: #ff4d4d;
            color: white;
            border: none;
            border-radius: 5px;
            font-weight: 500;
            transition: all 0.3s ease;
            cursor: pointer;
        }

        .btn-cancel:hover {
            background-color: #cc0000;
        }

        footer {
            background-color: #3b2a56;
            color: white;
            text-align: center;
            padding: 20px;
            margin-top: 520px;
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

    <nav>
        <ul>
            <li><a href="menu_principal.jsp">Menú principal</a></li>
            <li><a href="servicios.jsp">Servicios</a></li>
            <li><a href="#">Mis Citas</a></li>
        </ul>
    </nav>

    <div class="container">
        <h2 class="section-title">Mis Citas Agendadas</h2>
        <div class="appointments-list">
            <div class="appointment-card">
                <h3>Corte de Cabello</h3>
                <p>Fecha: 05/04/2025</p>
                <p>Hora: 10:00 AM</p>
               <button class="btn-cancel" onclick="window.location.href='cancelacion.jsp'">Cancelar Cita</button>
            </div>

            <div class="appointment-card">
                <h3>Limpieza Facial</h3>
                <p>Fecha: 07/04/2025</p>
                <p>Hora: 3:00 PM</p>
                <button class="btn-cancel" onclick="window.location.href='cancelacion.jsp'">Cancelar Cita</button>
            </div>

            <div class="appointment-card">
                <h3>Corte de Barba</h3>
                <p>Fecha: 10/04/2025</p>
                <p>Hora: 5:30 PM</p>
                <button class="btn-cancel" onclick="window.location.href='cancelacion.jsp'">Cancelar Cita</button>
            </div>
        </div>
    </div>

    <footer>
        <p>Cut Club 83 -</p>
        <p>Contacto: info@cutclub.com | Tel: 300-1234567</p>
    </footer>

</body>
</html>
