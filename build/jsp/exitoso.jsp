<%@page import="java.util.Iterator"%>
<%@page import="edu.ipn.upiicsa.tenis.modelo.Alumno"%>
<%@page import="java.util.List"%>
<%@page import="edu.ipn.upiicsa.tenis.modelodao.AlumnoDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        <title> Borrar Registro </title>
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
    <body style="background-color:#C8E6C9;">
        <h1 class="text" >Borrado de  Registro</h1>
    <div class="container" >
        <div class="row">
           <div class="borrar">
              <p>Borrado de registro exitoso</p>
                <a class="button" btn-lg centrado" href="../eqi/alumno?accion=index">Inicio</a>
            </div>  
          </div>
        </div>
</body>

</html>
