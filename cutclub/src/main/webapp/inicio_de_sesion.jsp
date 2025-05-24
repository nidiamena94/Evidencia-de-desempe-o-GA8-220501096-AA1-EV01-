<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicio de Sesión - Cut Club Barbería</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        body {
            background-color: #f6f7f8;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background-image: url('images/fondo_inicio.avif');
            background-size: cover;
            background-position: center;
        }
        .container {
            width: 100%;
            max-width: 450px;
            background-color: rgba(246, 247, 248, 0.95);
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(59, 42, 86, 0.2);
            padding: 30px;
            border: 1px solid #3b2a56;
        }
        .logo-container {
            text-align: center;
            margin-bottom: 25px;
            padding: 10px 0;
        }
        .logo-img {
            max-width: 220px;
            height: auto;
            margin: 0 auto 10px;
            display: block;
        }
        .logo-subtext {
            color: #3b2a56;
            font-size: 16px;
            letter-spacing: 1px;
            font-weight: 500;
            margin-top: 10px;
        }
        .form-group {
            margin-bottom: 20px;
        }
        .form-group label {
            display: block;
            margin-bottom: 8px;
            color: #3b2a56;
            font-weight: 500;
            font-size: 14px;
        }
        .form-group input {
            width: 100%;
            padding: 12px 15px;
            border: 1px solid #3b2a56;
            border-radius: 5px;
            font-size: 14px;
            transition: all 0.3s ease;
            background-color: #f6f7f8;
        }
        .form-group input:focus {
            border-color: #ffcc5c;
            outline: none;
            box-shadow: 0 0 0 3px rgba(255, 204, 92, 0.3);
        }
        .btn {
            width: 100%;
            padding: 12px;
            background-color: #3b2a56;
            color: #ffcc5c;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            font-weight: 600;
            cursor: pointer;
            transition: all 0.3s ease;
            letter-spacing: 1px;
        }
        .btn:hover {
            background-color: #ffcc5c;
            color: #3b2a56;
        }
        .links-container {
            text-align: center;
            margin-top: 20px;
            font-size: 14px;
            color: #3b2a56;
        }
        .links-container a {
            color: #ffcc5c;
            text-decoration: none;
            font-weight: 500;
            display: block;
            margin: 8px 0;
        }
        .links-container a:hover {
            text-decoration: underline;
        }
        .error-message {
            color: #e74c3c;
            font-size: 13px;
            margin-top: 5px;
        }
        .remember-me {
            display: flex;
            align-items: center;
            margin-bottom: 20px;
        }
        .remember-me input {
            margin-right: 8px;
        }
        .remember-me label {
            color: #3b2a56;
            font-size: 14px;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="logo-container">
        <img src="images/logo.png" alt="logo cut club" width="170" height="170">
        <p class="logo-subtext">Inicia sesión en tu cuenta</p>
    </div>

    <form action="LoginServlet" method="post">
        <div class="form-group">
            <label for="email">Correo Electrónico</label>
            <input type="email" id="email" name="email" placeholder="Ingresa tu correo registrado" required>
        </div>

        <div class="form-group">
            <label for="password">Contraseña</label>
            <input type="password" id="password" name="password" placeholder="Ingresa tu contraseña" required>
        </div>

        <div class="remember-me">
            <input type="checkbox" id="remember" name="remember">
            <label for="remember">Recordar mi sesión</label>
        </div>

        <button type="submit" class="btn">
            <a href="menu_principal.jsp" style="color: inherit; text-decoration: none;">Iniciar Sesión</a>
        </button>

        <%
            String error = (String) request.getAttribute("error");
            if (error != null) {
        %>
            <p class="error-message"><%= error %></p>
        <%
            }
        %>
    </form>
    <div class="links-container">
      
        <a href="olvido_la_contrasena.jsp">¿Olvidaste tu contraseña?</a>
        <a href="registrarse.jsp">Regístrate aquí</a>
    </div>
</div>
</body>
</html>
