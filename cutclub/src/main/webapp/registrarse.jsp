<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registro - Cut Club Barbería</title>
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
            background-image:  url('images/imagen_registrarse.avif');
            background-size: cover;
            background-position: center;
        }
        
        .container {
            width: 100%;
            max-width: 500px;
            background-color: rgba(246, 247, 248, 0.95);
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(59, 42, 86, 0.2);
            padding: 25px;
            border: 1px solid #3b2a56;
        }
        
        .logo-container {
            text-align: center;
            margin-bottom: 15px;
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
            font-size: 14px;
            letter-spacing: 1.5px;
            text-transform: uppercase;
            font-weight: 500;
            margin-top: 5px;
        }
        
        .form-group {
            margin-bottom: 18px;
        }
        
        .form-group label {
            display: block;
            margin-bottom: 6px;
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
            text-transform: none;
            margin-top: 5px;
        }
        
        .btn:hover {
            background-color: #ffcc5c;
            color: #3b2a56;
        }
        
        .login-link {
            text-align: center;
            margin-top: 18px;
            font-size: 14px;
            color: #3b2a56;
        }
        
        .login-link a {
            color: #ffcc5c;
            text-decoration: none;
            font-weight: 500;
        }
        
        .login-link a:hover {
            text-decoration: underline;
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
            display: none;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="logo-container">
            <img src="images/logo.png" alt="logo cut club" width="155" height="155">
            <p class="logo-subtext">Crea tu cuenta</p>
        </div>
        
        <form action="register" method="POST" id="registerForm">
            <div class="form-group">
                <label for="cedula">Cédula</label>
                <input type="text" id="cedula" name="cedula" placeholder="Ingresa tu número de cédula" required>
                <div class="error-message" id="cedula-error">Por favor ingresa una cédula válida</div>
            </div>
            <div class="form-group">
                <label for="nombre">Nombre</label>
                <input type="text" id="nombre" name="nombre" placeholder="Ingresa tu nombre" required>
                <div class="error-message" id="nombre-error">Por favor ingresa tu nombre</div>
            </div>
            <div class="form-group">
                <label for="apellido">Apellido</label>
                <input type="text" id="apellido" name="apellido" placeholder="Ingresa tu apellido" required>
                <div class="error-message" id="apellido-error">Por favor ingresa tu apellido</div>
            </div>
            <div class="form-group">
                <label for="celular">Celular</label>
                <input type="tel" id="celular" name="celular" placeholder="Ingresa tu número de celular" required>
                <div class="error-message" id="celular-error">Por favor ingresa un número de celular válido</div>
            </div>
            <div class="form-group">
                <label for="email">Correo Electrónico</label>
                <input type="email" id="email" name="email" placeholder="Ingresa tu correo electrónico" required>
                <div class="error-message" id="email-error">Por favor ingresa un correo electrónico válido</div>
            </div>
            <div class="form-group">
                <label for="password">Contraseña</label>
                <input type="password" id="password" name="password" placeholder="Crea una contraseña segura" required>
                <div class="error-message" id="password-error">La contraseña debe tener al menos 6 caracteres</div>
            </div>
            <div class="form-group">
                <label for="confirm-password">Confirmar Contraseña</label>
                <input type="password" id="confirm-password" name="confirm-password" placeholder="Confirma tu contraseña" required>
                <div class="error-message" id="confirm-error">Las contraseñas no coinciden</div>
            </div>
            
            <button type="submit" class="btn">Registrarse</button>
        </form>
        <div class="login-link">
            <a href="inicio_de_sesion.jsp">Volver al inicio de sesión</a>
        </div>
    </div>
</body>
</html>