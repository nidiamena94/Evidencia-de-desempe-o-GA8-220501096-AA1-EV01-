<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Menú Principal - Cut Club Barbería</title>
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
        
        .welcome-banner {
            background: linear-gradient(135deg, #3b2a56, #5e4a7e);
            color: white;
            padding: 30px;
            border-radius: 10px;
            margin-bottom: 30px;
            text-align: center;
            position: relative;
            overflow: hidden;
        }
        
        .welcome-banner h2 {
            font-size: 28px;
            margin-bottom: 10px;
            color: #ffcc5c;
        }
        
        .coupon {
            background-color: #ffcc5c;
            color: #3b2a56;
            padding: 15px;
            border-radius: 8px;
            margin: 20px auto;
            max-width: 300px;
            text-align: center;
            font-weight: bold;
            border: 2px dashed #3b2a56;
        }
        
        .section-title {
            color: #3b2a56;
            margin: 30px 0 15px;
            padding-bottom: 10px;
            border-bottom: 2px solid #ffcc5c;
        }
        
        .products-grid, .services-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(250px, 1fr));
            gap: 20px;
            margin-bottom: 40px;
        }
        
        .product-card, .service-card {
            background-color: white;
            border-radius: 8px;
            overflow: hidden;
            box-shadow: 0 3px 10px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
        }
        
        .product-card:hover, .service-card:hover {
            transform: translateY(-5px);
        }
        
        .product-image, .service-image {
            height: 180px;
            background-color: #f6f7f8;
            display: flex;
            align-items: center;
            justify-content: center;
            color: #3b2a56;
            font-size: 50px;
        }
        
        .product-info, .service-info {
            padding: 15px;
        }
        
        .product-info h3, .service-info h3 {
            color: #3b2a56;
            margin-bottom: 10px;
        }
        
        .product-info p, .service-info p {
            color: #666;
            font-size: 14px;
            margin-bottom: 15px;
        }
        
        .price {
            font-weight: bold;
            color: #3b2a56;
            font-size: 18px;
            margin-bottom: 10px;
        }
        
        .btn {
            display: inline-block;
            padding: 8px 15px;
            background-color: #3b2a56;
            color: #ffcc5c;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            font-weight: 500;
            transition: all 0.3s ease;
            cursor: pointer;
        }
        
        .btn:hover {
            background-color: #ffcc5c;
            color: #3b2a56;
        }
        
        footer {
            background-color: #3b2a56;
            color: white;
            text-align: center;
            padding: 20px;
            margin-top: 37px;
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
    
    <nav>
        <ul>
            <li><a href="menu_principal.jsp">Menú principal</a></li>
            <li><a href="servicios.jsp">Servicios</a></li>
            <li><a href="citas_agendadas.jsp">Mis Citas</a></li>
        </ul>
    </nav>
    
    <div class="container">
        <div class="welcome-banner">
            <h2>¡Bienvenido, Juan!</h2>
            <p>Disfruta de nuestros servicios exclusivos y productos premium</p>
            
            <div class="coupon">
                <p>¡CUPÓN DE BIENVENIDA!</p>
                <p>15% DE DESCUENTO</p>
                <p>CÓDIGO: CUTCLUB15</p>
            </div>
        </div>
        
        <h2 class="section-title">Productos y servicios destacados</h2>
             
             
                  
        <div class="services-grid">
    <div class="service-card">
        <div class="service-image">
            <img src="images/corte_cabello.png" alt="Corte de Cabello" width="170" height="170">
        </div>
        <div class="service-info">
            <h3>Corte de Cabello</h3>
            <p>Corte profesional con estilo moderno y acabado perfecto.</p>
            <div class="price">$25.000</div>
           <a href="reservar.jsp?servicio=Corte%20de%20Cabello&precio=25.000" class="btn">Reservar</a>
        </div>
    </div>
            
            
    <div class="service-card">
        <div class="service-image">
            <img src="images/Barbas.avif" alt="Corte de Cabello" width="170" height="170">
        </div>
        <div class="service-info">
                    <h3>Corte de Barba</h3>
                    <p>Diseño y arreglo de barba con acabado impecable.</p>
                    <div class="price">$20.000</div>
                  <a href="reservar.jsp?servicio=Corte%20de%20barba&precio=20.000" class="btn">Reservar</a>
                </div>
            </div>
            
            <div class="service-card">
                <div class="service-image">
                <img src="images/limpieza_facial.jpg" alt="Corte de Cabello" width="170" height="170">
        </div>
                <div class="service-info">
                    <h3>Limpieza Facial</h3>
                    <p>Tratamiento completo para una piel limpia y saludable.</p>
                    <div class="price">$30.000</div>
                   <a href="reservar.jsp?servicio=limpieza%20facial&precio=30.000" class="btn">Reservar</a>
                </div>
            </div>
            
            <div class="service-card">
                <div class="service-image">
                    <img src="images/corte_niño.jpeg" alt="Corte de Cabello" width="170" height="170">
        </div>
                <div class="service-info">
                    <h3>Corte de Niños</h3>
                    <p>Corte especializado para los más pequeños de la casa.</p>
                    <div class="price">$18.000</div>
                  <a href="reservar.jsp?servicio=Corte%20de%20niños&precio=18.000" class="btn">Reservar</a>
                </div>
            </div>
        </div>
    </div>
   
    <footer>
        <p>Cut Club 83-</p>
        <p>Contacto: info@cutclub.com | Tel: 300-1234567</p>
    </footer>
</body>
</html>