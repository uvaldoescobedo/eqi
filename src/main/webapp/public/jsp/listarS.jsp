<%@page import="java.util.Iterator"%>
<%@page import="edu.ipn.upiicsa.tenis.modelo.Alumno"%>
<%@page import="java.util.List"%>
<%@page import="edu.ipn.upiicsa.tenis.modelodao.AlumnoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <title> Lista de Alumnos </title>
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
  width: 50%;
  border: 3px solid green;
  padding: 10px;
}
#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
</style>
    </head>
    <body style="background-color:#AEB6BF;">
        <h1 id="customers" align="10">Tabla: alumnos</h1>
    <div class="container" >
        <div class="row">
            <table id="customers" align="10">
                
                <thead>                                   
                    <th>ID </th>
                    <th>Nombre </th>
                    <th>Apellido </th>
                    <th>Boleta </th>
                    <th>Carrera </th>
                </thead>
                <tbody>
                    <%
                    AlumnoDAO dao=new AlumnoDAO();
                    List<Alumno>list=dao.listar();
                    Iterator<Alumno>iter=list.iterator();
                    Alumno per=null;
                    while(iter.hasNext()){
                    per=iter.next();
                %>
                  <tr>
                        <td><%= per.getAlumid()%> </td>
                        <td><%= per.getNombre()%> </td>
                        <td><%= per.getApellidoPat()%></td>
                        <td> <%= per.getAlumnoboleta()%></td>
                        <td> <%= per.getCarrera()%></td>
                    </tr>
                    <%}%>
                </tbody>
            </table>
        </div>
        

    </div>    
</body>
</html>
