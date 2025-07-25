<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Recuperar Contrase�a - Cut Club Barber�a</title>
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
            background-image: url('images/imagen_contrase�a.jpg');
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
            display: none;
        }
        
        .success-message {
            color: #2ecc71;
            font-size: 14px;
            margin-top: 15px;
            text-align: center;
            display: none;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="logo-container">
            <img src="images/logo.png.png" alt="logo cut club" width="170" height="170"> 
            <p class="logo-subtext">Recuperar contrase�a</p>
        </div>
        
        <form id="recoveryForm" method="post" action="mensaje_recuperacion.jsp">
            <div class="form-group">
                <label for="email">Correo Electr�nico Registrado</label>
                <input type="email" id="email" name="email" placeholder="Ingresa tu correo electr�nico" required>
                <div class="error-message" id="email-error">Por favor ingresa un correo v�lido</div>
            </div>
            
            <div class="form-group">
                <label for="cedula">N�mero de C�dula</label>
                <input type="text" id="cedula" name="cedula" placeholder="Ingresa tu n�mero de c�dula" required>
                <div class="error-message" id="cedula-error">Por favor ingresa tu c�dula registrada</div>
            </div>
            
            <div style="text-align: center;">
                <button type="submit" class="btn">Recuperar Contrase�a</button>
            </div>
            
            <div class="success-message" id="success-message">
                �Hemos enviado un enlace de recuperaci�n a tu correo electr�nico!
            </div>
        </form>
        
        <div class="links-container">
            <a href="inicio_de_sesion.jsp">Volver al inicio de sesi�n</a>
        </div>
    </div>

    <script>
    // Validaci�n del formulario de recuperaci�n
    document.getElementById('recoveryForm').addEventListener('submit', function(e) {
        // Validar campos antes de permitir env�o
        const email = document.getElementById('email');
        const cedula = document.getElementById('cedula');
        let isValid = true;

        document.getElementById('email-error').style.display = 'none';
        document.getElementById('cedula-error').style.display = 'none';

        if (!email.value || !email.value.includes('@') || !email.value.includes('.')) {
            document.getElementById('email-error').style.display = 'block';
            isValid = false;
        }

        if (!cedula.value || cedula.value.length < 6) {
            document.getElementById('cedula-error').style.display = 'block';
            isValid = false;
        }

        if (!isValid) {
            e.preventDefault(); // Detiene el env�o solo si hay errores
        }
    });
    </script>
</body>
</html>
