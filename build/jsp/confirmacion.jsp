<%@page import="java.util.Iterator"%>
<%@page import="edu.ipn.upiicsa.tenis.modelo.Alumno"%>
<%@page import="java.util.List"%>
<%@page import="edu.ipn.upiicsa.tenis.modelodao.AlumnoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <title> Confirmar Borrado </title>
<style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers {
  margin: auto;
width: 90%;
height: auto;
margin: 40px ;
  border: 3px solid green;
  padding: 10px;
}
#customers tr{background-color: #00BCD4;}
#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
.text{
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  margin: auto;
  width: 90%;
  padding: 10px;

}

.button {
  background-color: #4CAF50;
  border: 2px solid #FFFFFF;
  color: white;
  padding: 15px 32px;
  margin: 20px ;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
}

.borrar{
  border: solid 1px black;
  height: 500px;
  width: 500px;
  margin-left: 25%;

}

p{
  margin-top: 100px;
  font-size: 20px;
  text-align: center;
}



</style>
    </head>
    <body  style="background-color:#C8E6C9;">
        
               <% AlumnoDAO dao=new AlumnoDAO();
               try{
               if(request.getParameter("idalumno")!=""){
               
                    Alumno alumno =dao.search(request.getParameter("idalumno"));
                    if(alumno.getNombre()==null){
                %>
                 <h3 class="text" >No hay registros con ese id</h3>
                 <%} else{%>
       				<div class="container" >
        				<div class="row">
							<h3 class="text" >Estas Seguro que deseas borrar el registro?</h3>
       						<form >
            					 <table id="customers" align="10">

					                <thead>                                   
					                    <th>ID </th>
					                    <th>Nombre </th>
					                    <th>Apellido </th>
					                    <th>Boleta </th>
					                    <th>Carrera </th>
					                </thead>
					                <tbody >
					                  <tr>
					                        <td ><%= alumno.getAlumid()%></td>
					                        <td><%= alumno.getNombre()%></td>
					                        <td><%= alumno.getApellidoPat()%></td>
					                        <td> <%= alumno.getAlumnoboleta()%></td>
					                        <td> <%= alumno.getCarrera()%></td>
					                    </tr>
					                    
					                </tbody>        
					            </table>
				            <td><input type="hidden" name="accion" value="exitoso"></td>
							<td><input type="submit" class="button" value="Confirmar"></td>
				         </form>
					<a class="button" btn-lg centrado" href="../eqi/alumno?accion=exitoso">Confirma</a>
        			</div>
   			 </div>  
          <% } }else{ %>
          <h3 class="text" >Error no se introdujo ID</h3>
          <% } %>
          <% } catch (Exception e){ %>
          <h3 class="text" >Error no se introdujo ID valido</h3>
           <% } %>
          
<a class="button" btn-lg centrado" href="../eqi/alumno?accion=index">Inicio</a>
<input class="button" type="button" onclick="history.back()" value="Regresar">

</body>

</html>
