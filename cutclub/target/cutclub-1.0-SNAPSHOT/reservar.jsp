<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Reserva de Servicios - Cut Club 83</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; font-family: 'Segoe UI', sans-serif; }
        body { background-color: #f6f7f8; color: #3b2a56; }
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
            margin: 40px auto;
            padding: 20px;
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 3px 15px rgba(0, 0, 0, 0.1);
        }
        h1 {
            text-align: center;
            margin-bottom: 30px;
            color: #3b2a56;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: 600;
        }
        select, input, textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 6px;
        }
        .servicio-seleccionado {
            background-color: #f0f0f0;
            padding: 15px;
            border-radius: 8px;
            margin-bottom: 20px;
        }
        .servicio-seleccionado h3 {
            color: #3b2a56;
            margin-bottom: 10px;
        }
        button {
            width: 100%;
            padding: 12px;
            background-color: #3b2a56;
            color: #ffcc5c;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            cursor: pointer;
            transition: all 0.3s ease;
        }
        button:hover {
            background-color: #ffcc5c;
            color: #3b2a56;
        }
        .error-message {
            color: #d9534f;
            background-color: #f2dede;
            padding: 10px;
            border-radius: 5px;
            margin-bottom: 20px;
            border: 1px solid #ebccd1;
        }
        footer {
            background-color: #3b2a56;
            color: white;
            text-align: center;
            padding: 20px;
            margin-top: 214px;
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
            <li><a href="citas_agendadas.jsp">Mis Citas</a></li>
        </ul>
    </nav>
    
    <div class="container">
        <h1>Reserva tu Servicio</h1>
        
        <%-- Mostrar mensaje de error si existe --%>
        <% if(request.getParameter("error") != null) { %>
            <div class="error-message">
                <strong>Error:</strong> No se pudo procesar tu reserva. Por favor intenta nuevamente.
            </div>
        <% } %>
        
        <%-- Mostrar servicio seleccionado si viene por URL --%>
        <% 
        String servicioRecibido = request.getParameter("servicio");
        String precioRecibido = request.getParameter("precio");
        
        if(servicioRecibido != null && !servicioRecibido.isEmpty()) { 
        %>
            <div class="servicio-seleccionado">
                <h3>Servicio seleccionado:</h3>
                <p><strong><%= servicioRecibido %></strong></p>
                <p>Precio: $<%= precioRecibido %></p>
            </div>
        <% } %>
        
        <form action="notificacion.jsp" method="POST" onsubmit="return validarFormulario()">
            <%-- Si no viene servicio por URL, mostrar selector --%>
            <% if(servicioRecibido == null || servicioRecibido.isEmpty()) { %>
                <label for="servicio">Servicio:</label>
                <select id="servicio" name="servicio" onchange="mostrarPrecio()" required>
                    <option value="">Seleccione un servicio</option>
                    <option value="Corte de Cabello" data-precio="25000">Corte de Cabello - $25.000</option>
                    <option value="Corte de Barba" data-precio="20000">Corte de Barba - $20.000</option>
                    <option value="Limpieza Facial" data-precio="30000">Limpieza Facial - $30.000</option>
                    <option value="Corte de Niño" data-precio="18000">Corte de Niño - $18.000</option>
                </select>
                <p id="precio" class="precio-display"></p>
                <input type="hidden" id="precioServicio" name="precioServicio">
            <% } else { %>
                <%-- Campos ocultos para servicio y precio cuando vienen por URL --%>
                <input type="hidden" name="servicio" value="<%= servicioRecibido %>">
                <input type="hidden" name="precioServicio" value="<%= precioRecibido.replace(".", "") %>">
            <% } %>

            <label for="estilista">Estilista:</label>
            <select id="estilista" name="estilista" required>
                <option value="">Seleccione un estilista</option>
                <option value="Carlos">Carlos</option>
                <option value="Ana">Ana</option>
                <option value="Luis">Luis</option>
            </select>

            <label for="fecha">Fecha:</label>
            <input type="date" id="fecha" name="fecha" required min="<%= java.time.LocalDate.now() %>">

            <label for="hora">Hora:</label>
            <input type="time" id="hora" name="hora" min="07:00" max="19:00" required>

            

            <button type="submit">Confirmar Reserva</button>
        </form>
    </div>
    
    <footer>
        <p>Cut Club 83</p>
        <p>Contacto: info@cutclub.com | Tel: 300-1234567</p>
    </footer>
    
    <script>
        function mostrarPrecio() {
            const selectServicio = document.getElementById("servicio");
            const servicio = selectServicio.value;
            const precioElement = document.getElementById("precio");
            const precioServicioInput = document.getElementById("precioServicio");

            const precios = {
                "Corte de Cabello": "$25.000",
                "Corte de Barba": "$20.000",
                "Limpieza Facial": "$30.000",
                "Corte de Niño": "$18.000"
            };

            if (servicio) {
                const precioMostrado = precios[servicio];
                precioElement.innerHTML = "<strong>Precio:</strong> " + precioMostrado;
                const selectedOption = selectServicio.options[selectServicio.selectedIndex];
                precioServicioInput.value = selectedOption.getAttribute("data-precio");
            } else {
                precioElement.innerHTML = "";
                precioServicioInput.value = "";
            }
        }
        
        function validarFormulario() {
            const fecha = document.getElementById("fecha").value;
            const hora = document.getElementById("hora").value;
            
            if (!fecha || !hora) {
                alert("Por favor completa todos los campos requeridos");
                return false;
            }
            
            return true;
        }
        
        // Establecer la fecha mínima como hoy
        document.getElementById("fecha").min = new Date().toISOString().split("T")[0];
    </script>
</body>
</html>