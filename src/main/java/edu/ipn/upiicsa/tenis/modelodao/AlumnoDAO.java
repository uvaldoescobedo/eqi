package edu.ipn.upiicsa.tenis.modelodao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import edu.ipn.upiicsa.tenis.config.Conexion;
import edu.ipn.upiicsa.tenis.interfaces.CRUD;
import edu.ipn.upiicsa.tenis.modelo.Alumno;

public class AlumnoDAO implements CRUD{
	Conexion cn=new Conexion();
	Connection con;
	PreparedStatement ps;
	ResultSet rs;
	Alumno a=new Alumno();
	
	@Override
	public List listar(){
		ArrayList<Alumno>list=new ArrayList<>();
		String sql="select * from alumnos";
		try {
			con=cn.getConnection();
			ps=con.prepareStatement(sql);
			rs=ps.executeQuery();
			while(rs.next()){
				Alumno alumno = new Alumno();
				alumno.setAlumid(rs.getInt("ALUMID"));
				alumno.setNombre(rs.getString("ALUMNOMS"));
				alumno.setApellidoPat(rs.getString("ALUMAPEP"));
				alumno.setAlumnoboleta(rs.getInt("ALUMBOLE"));
				alumno.setCarrera(rs.getString("ALUMCARR"));
				list.add(alumno);
			}

		} catch (Exception e) {
			 System.err.println("Error"+e);
		}
		return list;
	}

	@Override
    public Alumno list(int id) {
        String sql="select * from tenista where TENSID="+id;
        try {
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            rs=ps.executeQuery();
            while(rs.next()){
            	a.setAlumid(rs.getInt("ALUMID"));
				a.setNombre(rs.getString("ALUMNOMS"));
				a.setApellidoPat(rs.getString("ALUMAPEP"));
				a.setAlumnoboleta(rs.getInt("ALUMBOLE"));
				a.setCarrera(rs.getString("ALUMCARR"));
            }
        }	 catch (Exception e) {
        } return a;
    }
}
