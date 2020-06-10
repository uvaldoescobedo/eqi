package edu.ipn.upiicsa.tenis.controlador;

import java.io.IOException;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import edu.ipn.upiicsa.tenis.modelo.Alumno;
import edu.ipn.upiicsa.tenis.modelodao.AlumnoDAO;


public class ControladorAlumnos extends HttpServlet {
	String index="html/index.html";
	String listar="jsp/listar.jsp";
	String borrar="jsp/borrar.jsp";
	String confirmacion="jsp/confirmacion.jsp";
	String exitoso ="jsp/exitoso.jsp";
    Alumno p=new Alumno();
    AlumnoDAO dao=new AlumnoDAO();
    int id;
    
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
			String acceso="";
        String action=request.getParameter("accion");
        
        if(action.equalsIgnoreCase("index")){
            acceso=index;
        }else if(action.equalsIgnoreCase("listar")){
            acceso=listar;
        }else if(action.equalsIgnoreCase("borrar")){
            acceso=borrar;
        }else if(action.equalsIgnoreCase("confirmacion")) {
        	acceso=confirmacion;
        }else if(action.equalsIgnoreCase("exitoso")) {
        	acceso=exitoso;
        }
        RequestDispatcher vista=request.getRequestDispatcher(acceso);
        vista.forward(request, response);

		}


    public String getServletInfo() {
        return "CRUD";
    }
}
