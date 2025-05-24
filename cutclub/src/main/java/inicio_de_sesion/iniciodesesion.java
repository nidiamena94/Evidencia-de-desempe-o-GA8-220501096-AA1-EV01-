package iniciodesesion;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class iniciodesesion extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        // OBTENER DATOS DEL FORMULARIO
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Validación de datos
        if ("nidiamena@outlook.com".equals(email) && "123456".equals(password)) {
            // Acceso Valido
            response.sendRedirect("menu_principal.jsp");
        } else {
            // Acceso Invalido
            request.setAttribute("error", "Correo o contraseña incorrectos");
            request.getRequestDispatcher("inicio_de_sesion.jsp").forward(request, response);
        }
    }
}
