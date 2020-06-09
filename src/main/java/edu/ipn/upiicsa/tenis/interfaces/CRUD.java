package edu.ipn.upiicsa.tenis.interfaces;

import edu.ipn.upiicsa.tenis.modelo.Alumno;
import java.util.List;


public interface CRUD {
    public List listar();

    public Alumno list(int id);
    
    public Alumno delet(int id);

}
