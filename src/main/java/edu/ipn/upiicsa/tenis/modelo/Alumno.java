package edu.ipn.upiicsa.tenis.modelo;

public class Alumno {
	int alumid,alumnoboleta;
	String nombre,apellidoPat,carrera;
	public Alumno() {
		super();
	}
	public Alumno(int alumid, int alumnoboleta, String nombre, String apellidoPat , String carrera) {
		super();
		this.alumid = alumid;
		this.alumnoboleta = alumnoboleta;
		this.nombre = nombre;
		this.apellidoPat = apellidoPat;
		
		this.carrera = carrera;
	}
	
	public int getAlumid() {
		return alumid;
	}
	public void setAlumid(int alumid) {
		this.alumid = alumid;
	}
	public int getAlumnoboleta() {
		return alumnoboleta;
	}
	public void setAlumnoboleta(int alumnoboleta) {
		this.alumnoboleta = alumnoboleta;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getApellidoPat() {
		return apellidoPat;
	}
	public void setApellidoPat(String apellidoPat) {
		this.apellidoPat = apellidoPat;
	}
	
	public String getCarrera() {
		return carrera;
	}
	public void setCarrera(String carrera) {
		this.carrera = carrera;
	}


}
