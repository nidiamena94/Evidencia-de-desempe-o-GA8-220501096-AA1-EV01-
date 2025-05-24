<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Reserva Confirmada</title>
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
            display: flex;
            flex-direction: column;
            min-height: 100vh;
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
            max-width: 600px;
            margin: 30px auto;
            padding: 0 20px;
            flex: 1;
        }

        .confirmation-card {
            background-color: white;
            border-radius: 10px;
            padding: 30px;
            box-shadow: 0 5px 15px rgba(59, 42, 86, 0.1);
            text-align: center;
            border-top: 5px solid #ffcc5c;
        }

        .confirmation-icon {
            font-size: 60px;
            color: #4CAF50;
            margin-bottom: 20px;
        }

        .confirmation-details {
            margin: 25px 0;
            text-align: left;
            padding: 0 20px;
        }

        .detail-row {
            display: flex;
            margin-bottom: 15px;
            align-items: center;
        }

        .detail-icon {
            width: 40px;
            height: 40px;
            background-color: #f6f7f8;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin-right: 15px;
            color: #3b2a56;
            font-size: 18px;
        }

        .reservation-info {
            margin-top: 20px;
            padding: 20px;
            background-color: #f9f9f9;
            border-radius: 8px;
            border-left: 4px solid #ffcc5c;
        }

        .reservation-info p {
            margin-bottom: 10px;
            font-size: 16px;
        }

        .reservation-info strong {
            color: #3b2a56;
            margin-right: 5px;
        }

        .actions {
            margin-top: 30px;
            display: flex;
            justify-content: center;
            gap: 15px;
        }

        .btn {
            padding: 12px 25px;
            border-radius: 6px;
            text-decoration: none;
            font-weight: 500;
            transition: all 0.3s;
        }

        .btn-primary {
            background-color: #3b2a56;
            color: #ffcc5c;
        }

        .btn-secondary {
            background-color: #f6f7f8;
            color: #3b2a56;
            border: 1px solid #3b2a56;
        }

        footer {
            background-color: #3b2a56;
            color: white;
            text-align: center;
            padding: 20px;
            margin-top: 40px;
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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
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
            <li><a href="citas_agendadas.jsp">Mis Citas</a></li>
        </ul>
    </nav>
    
    <div class="container">
        <div class="confirmation-card">
            <div class="confirmation-icon">
                <i class="fas fa-check-circle"></i>
            </div>
            <h2>¡Reserva Confirmada!</h2>
            <p>Tu cita en Cut Club ha sido agendada exitosamente</p>

            <div class="reservation-info">
                <p><strong>Servicio:</strong> <%= request.getParameter("servicio") %></p>
                <p><strong>Precio:</strong> $<%= String.format("%,d", Integer.parseInt(request.getParameter("precioServicio"))) %></p>
                <p><strong>Estilista:</strong> <%= request.getParameter("estilista") %></p>
                <p><strong>Fecha:</strong> <%= request.getParameter("fecha") %></p>
                <p><strong>Hora:</strong> <%= request.getParameter("hora") %></p>
            </div>

            <div class="actions">
                <a href="reservar.jsp" class="btn btn-primary">Volver al formulario</a>
                <a href="menu_principal.jsp" class="btn btn-secondary">Ir al menú principal</a>
            </div>
        </div>
    </div>
    
    <footer>
        <p>Cut Club 83 - Reserva de citas</p>
        <p>Contacto: info@cutclub.com | Tel: 300-1234567</p>
    </footer>
    
</body>
</html>