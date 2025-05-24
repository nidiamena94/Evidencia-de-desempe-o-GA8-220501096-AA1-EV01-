<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Estilista - Cut Club Barbería</title>
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
        
        /* Header */
        header {
            background-color: #3b2a56;
            padding: 10px 15px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        
        .logo-header {
            display: flex;
            align-items: center;
        }
        
        .logo-header img {
            height: 50px;
            margin-right: 10px;
        }
        
        .logo-header h1 {
            color: #ffcc5c;
            font-size: 18px;
        }
        
        .user-info {
            display: flex;
            align-items: center;
        }
        
        .user-info img {
            width: 36px;
            height: 36px;
            border-radius: 50%;
            margin-right: 8px;
            border: 2px solid #ffcc5c;
        }
        
        .user-info span {
            color: white;
            font-weight: 500;
        }
        
        /* Nav */
        nav {
            background-color: #3b2a56;
            padding: 8px 0;
        }
        
        nav ul {
            display: flex;
            justify-content: space-around;
            list-style: none;
        }
        
        nav ul li a {
            color: white;
            text-decoration: none;
            display: flex;
            align-items: center;
            padding: 5px 10px;
            border-radius: 4px;
            transition: all 0.3s;
        }
        
        nav ul li a:hover {
            background-color: rgba(255, 255, 255, 0.1);
        }
        
        nav ul li a.active {
            background-color: #4a3a6a;
            color: #ffcc5c;
        }
        
        nav ul li a i {
            margin-right: 5px;
        }
        
        /* Main Content */
        .container {
            max-width: 1200px;
            margin: 20px auto;
            padding: 0 15px;
        }
        
        .welcome-section {
            background-color: white;
            border-radius: 8px;
            padding: 20px;
            margin-bottom: 20px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.05);
        }
        
        .welcome-section h2 {
            color: #3b2a56;
            margin-bottom: 10px;
        }
        
        .welcome-section p {
            color: #666;
        }
        
        /* Stats Cards */
        .stats-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(200px, 1fr));
            gap: 15px;
            margin-bottom: 20px;
        }
        
        .stat-card {
            background-color: white;
            border-radius: 8px;
            padding: 15px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.05);
        }
        
        .stat-card h3 {
            font-size: 14px;
            color: #666;
            margin-bottom: 5px;
        }
        
        .stat-card .value {
            font-size: 24px;
            font-weight: 700;
        }
        
        /* Agenda */
        .agenda-container {
            background-color: white;
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.05);
            margin-bottom: 20px;
        }
        
        .agenda-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 15px;
        }
        
        .agenda-header h3 {
            color: #3b2a56;
        }
        
        .date-navigation {
            display: flex;
            align-items: center;
        }
        
        .date-navigation button {
            background: none;
            border: none;
            cursor: pointer;
            font-size: 16px;
            padding: 5px 10px;
        }
        
        .current-date {
            margin: 0 15px;
            font-weight: 500;
        }
        
        .time-slots {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
            gap: 15px;
        }
        
        .time-slot {
            background-color: #f9f9f9;
            border-radius: 6px;
            padding: 12px;
            border-left: 4px solid #3b2a56;
        }
        
        .time-slot-header {
            display: flex;
            justify-content: space-between;
            margin-bottom: 8px;
        }
        
        .time-slot-time {
            font-weight: 600;
            color: #3b2a56;
        }
        
        .time-slot-status {
            padding: 3px 8px;
            border-radius: 12px;
            font-size: 12px;
            font-weight: 500;
        }
        
        .status-confirmed {
            background-color: #e6f7e6;
            color: #2e7d32;
        }
        
        .status-completed {
            background-color: #e6f3ff;
            color: #1565c0;
        }
        
        .time-slot-client {
            font-weight: 500;
            margin-bottom: 5px;
        }
        
        .time-slot-service {
            color: #666;
            font-size: 14px;
            margin-bottom: 10px;
        }
        
        .time-slot-actions {
            display: flex;
            gap: 8px;
        }
        
        .btn {
            padding: 6px 12px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            font-size: 13px;
            font-weight: 500;
            transition: all 0.3s;
        }
        
        .btn-primary {
            background-color: #3b2a56;
            color: white;
        }
        
        .btn-primary:hover {
            background-color: #4a3a6a;
        }
        
        .btn-secondary {
            background-color: #ffcc5c;
            color: #3b2a56;
        }
        
        .btn-secondary:hover {
            background-color: #ffd87a;
        }
        
        .btn-outline {
            background-color: transparent;
            border: 1px solid #ddd;
        }
        
        .btn-outline:hover {
            background-color: #f5f5f5;
        }
        
        /* Horario */
        .schedule-container {
            background-color: white;
            border-radius: 8px;
            padding: 20px;
            box-shadow: 0 2px 5px rgba(0,0,0,0.05);
        }
        
        .schedule-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 15px;
        }
        
        .schedule-header h3 {
            color: #3b2a56;
        }
        
        .schedule-table {
            width: 100%;
            border-collapse: collapse;
        }
        
        .schedule-table th {
            background-color: #f5f5f5;
            padding: 10px;
            text-align: left;
            font-weight: 600;
            color: #555;
        }
        
        .schedule-table td {
            padding: 10px;
            border-bottom: 1px solid #eee;
        }
        
        .schedule-table tr:last-child td {
            border-bottom: none;
        }
        
        .availability-toggle {
            position: relative;
            display: inline-block;
            width: 40px;
            height: 20px;
        }
        
        .availability-toggle input {
            opacity: 0;
            width: 0;
            height: 0;
        }
        
        .slider {
            position: absolute;
            cursor: pointer;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: #ccc;
            transition: .4s;
            border-radius: 20px;
        }
        
        .slider:before {
            position: absolute;
            content: "";
            height: 16px;
            width: 16px;
            left: 2px;
            bottom: 2px;
            background-color: white;
            transition: .4s;
            border-radius: 50%;
        }
        
        input:checked + .slider {
            background-color: #3b2a56;
        }
        
        input:checked + .slider:before {
            transform: translateX(20px);
        }
        
        /* Responsive */
        @media (max-width: 768px) {
            .stats-grid {
                grid-template-columns: 1fr 1fr;
            }
            
            .time-slots {
                grid-template-columns: 1fr;
            }
            
            nav ul li a span {
                display: none;
            }
            
            nav ul li a i {
                margin-right: 0;
                font-size: 18px;
            }
        }
    </style>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0/css/all.min.css">
</head>
<body>
    <!-- Header -->
    <header>
        <div class="logo-header">
            <img src="images/logo.png" alt="logo cut club">
            <h1>Cut Club 83</h1>
        </div>
        <div class="user-info">
            <img src="https://ui-avatars.com/api/?name=Alex+Blade&background=ffcc5c&color=3b2a56" alt="Alex Blade">
            <span>Alex Blade</span>
        </div>
    </header>
    
    <!-- Navigation -->
    <nav>
        <ul>
            <li><a href="#" class="active"><i class="fas fa-home"></i> <span>Inicio</span></a></li>
            <li><a href="#"><i class="fas fa-calendar-alt"></i> <span>Agenda</span></a></li>
            <li><a href="#"><i class="fas fa-users"></i> <span>Clientes</span></a></li>
            <li><a href="#"><i class="fas fa-chart-line"></i> <span>Estadísticas</span></a></li>
            <li><a href="#"><i class="fas fa-cog"></i> <span>Configuración</span></a></li>
        </ul>
    </nav>
    
    <!-- Main Content -->
    <div class="container">
        <!-- Welcome Section -->
        <div class="welcome-section">
            <h2>Bienvenido, Alex Blade</h2>
            <p>Aquí puedes gestionar tus citas, ver tu horario y administrar tu perfil de estilista.</p>
        </div>
        
        <!-- Stats -->
        <div class="stats-grid">
            <div class="stat-card">
                <h3>Citas hoy</h3>
                <div class="value">5</div>
            </div>
            <div class="stat-card">
                <h3>Ingresos del día</h3>
                <div class="value">$175,000</div>
            </div>
            <div class="stat-card">
                <h3>Clientes nuevos</h3>
                <div class="value">2</div>
            </div>
            <div class="stat-card">
                <h3>Valoración promedio</h3>
                <div class="value">4.8 ?</div>
            </div>
        </div>
        
        <!-- Agenda -->
        <div class="agenda-container">
            <div class="agenda-header">
                <h3>Tu agenda hoy</h3>
                <div class="date-navigation">
                    <button><i class="fas fa-chevron-left"></i></button>
                    <span class="current-date">Miércoles, 15 Mayo 2023</span>
                    <button><i class="fas fa-chevron-right"></i></button>
                </div>
            </div>
            
            <div class="time-slots">
                <div class="time-slot">
                    <div class="time-slot-header">
                        <span class="time-slot-time">10:00 AM - 10:45 AM</span>
                        <span class="time-slot-status status-confirmed">Confirmada</span>
                    </div>
                    <div class="time-slot-client">Juan Pérez</div>
                    <div class="time-slot-service">Corte Premium</div>
                    <div class="time-slot-actions">
                        <button class="btn btn-primary">Iniciar</button>
                        <button class="btn btn-outline">Detalles</button>
                    </div>
                </div>
                
                <div class="time-slot">
                    <div class="time-slot-header">
                        <span class="time-slot-time">11:30 AM - 12:15 PM</span>
                        <span class="time-slot-status status-confirmed">Confirmada</span>
                    </div>
                    <div class="time-slot-client">Carlos Gómez</div>
                    <div class="time-slot-service">Diseño con Máquina</div>
                    <div class="time-slot-actions">
                        <button class="btn btn-primary">Iniciar</button>
                        <button class="btn btn-outline">Detalles</button>
                    </div>
                </div>
                
                <div class="time-slot">
                    <div class="time-slot-header">
                        <span class="time-slot-time">2:00 PM - 2:45 PM</span>
                        <span class="time-slot-status status-confirmed">Confirmada</span>
                    </div>
                    <div class="time-slot-client">Miguel Rodríguez</div>
                    <div class="time-slot-service">Corte + Barba</div>
                    <div class="time-slot-actions">
                        <button class="btn btn-primary">Iniciar</button>
                        <button class="btn btn-outline">Detalles</button>
                    </div>
                </div>
                
                <div class="time-slot">
                    <div class="time-slot-header">
                        <span class="time-slot-time">4:00 PM - 4:45 PM</span>
                        <span class="time-slot-status status-confirmed">Confirmada</span>
                    </div>
                    <div class="time-slot-client">Andrés López</div>
                    <div class="time-slot-service">Coloración Premium</div>
                    <div class="time-slot-actions">
                        <button class="btn btn-primary">Iniciar</button>
                        <button class="btn btn-outline">Detalles</button>
                    </div>
                </div>
                
                <div class="time-slot">
                    <div class="time-slot-header">
                        <span class="time-slot-time">5:30 PM - 6:15 PM</span>
                        <span class="time-slot-status status-completed">Completada</span>
                    </div>
                    <div class="time-slot-client">David Martínez</div>
                    <div class="time-slot-service">Afeitado Clásico</div>
                    <div class="time-slot-actions">
                        <button class="btn btn-secondary">Ver detalles</button>
                    </div>
                </div>
            </div>
        </div>
        
        <!-- Horario -->
        <div class="schedule-container">
            <div class="schedule-header">
                <h3>Tu horario semanal</h3>
                <button class="btn btn-primary">
                    <i class="fas fa-edit"></i> Editar horario
                </button>
            </div>
            
            <table class="schedule-table">
                <thead>
                    <tr>
                        <th>Día</th>
                        <th>Horario</th>
                        <th>Disponibilidad</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>Lunes</td>
                        <td>10:00 AM - 7:00 PM</td>
                        <td>
                            <label class="availability-toggle">
                                <input type="checkbox" checked>
                                <span class="slider"></span>
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td>Martes</td>
                        <td>10:00 AM - 7:00 PM</td>
                        <td>
                            <label class="availability-toggle">
                                <input type="checkbox" checked>
                                <span class="slider"></span>
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td>Miércoles</td>
                        <td>10:00 AM - 7:00 PM</td>
                        <td>
                            <label class="availability-toggle">
                                <input type="checkbox" checked>
                                <span class="slider"></span>
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td>Jueves</td>
                        <td>10:00 AM - 7:00 PM</td>
                        <td>
                            <label class="availability-toggle">
                                <input type="checkbox" checked>
                                <span class="slider"></span>
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td>Viernes</td>
                        <td>10:00 AM - 7:00 PM</td>
                        <td>
                            <label class="availability-toggle">
                                <input type="checkbox" checked>
                                <span class="slider"></span>
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td>Sábado</td>
                        <td>9:00 AM - 4:00 PM</td>
                        <td>
                            <label class="availability-toggle">
                                <input type="checkbox">
                                <span class="slider"></span>
                            </label>
                        </td>
                    </tr>
                    <tr>
                        <td>Domingo</td>
                        <td>No disponible</td>
                        <td>
                            <label class="availability-toggle">
                                <input type="checkbox">
                                <span class="slider"></span>
                            </label>
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    
    <script>
        // Función para marcar cita como completada
        document.querySelectorAll('.btn-primary').forEach(btn => {
            if (btn.textContent.includes('Iniciar')) {
                btn.addEventListener('click', function() {
                    const timeSlot = this.closest('.time-slot');
                    const status = timeSlot.querySelector('.time-slot-status');
                    
                    if (confirm('¿Deseas iniciar esta cita?')) {
                        status.textContent = 'En progreso';
                        status.className = 'time-slot-status status-completed';
                        this.textContent = 'Finalizar';
                        
                        // Cambiar el botón de detalles
                        const detailsBtn = timeSlot.querySelector('.btn-outline');
                        detailsBtn.textContent = 'Ver detalles';
                    }
                });
            }
        });
        
        // Navegación de fechas
        document.querySelectorAll('.date-navigation button').forEach(btn => {
            btn.addEventListener('click', function() {
                const currentDateEl = document.querySelector('.current-date');
                let currentDate = new Date(currentDateEl.textContent.split(', ')[1]);
                
                if (this.querySelector('i').classList.contains('fa-chevron-left')) {
                    currentDate.setDate(currentDate.getDate() - 1);
                } else {
                    currentDate.setDate(currentDate.getDate() + 1);
                }
                
                const options = { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' };
                currentDateEl.textContent = currentDate.toLocaleDateString('es-ES', options);
                
                // Aquí podrías cargar las citas para la nueva fecha
                alert('Cargando citas para ' + currentDateEl.textContent);
            });
        });
        
        // Toggle de disponibilidad
        document.querySelectorAll('.availability-toggle input').forEach(toggle => {
            toggle.addEventListener('change', function() {
                const row = this.closest('tr');
                const dayCell = row.querySelector('td:first-child');
                
                if (this.checked) {
                    dayCell.style.color = '#3b2a56';
                } else {
                    dayCell.style.color = '#999';
                }
            });
        });
    </script>
</body>
</html>