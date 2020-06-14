package edu.ipn.upiicsa.tenis.interfaces;

import edu.ipn.upiicsa.tenis.modelo.Alumno;
import java.util.List;


public interface CRUD {
    public List listar();

    public Alumno search(String id);
    
    public Alumno delet(String id);

}
