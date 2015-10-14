/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package JavaBeans;

/**
 *
 * @author Lenovo
 */
public class ProfesorBean implements java.io.Serializable{

    
    private int ID_profesor;
    private String Nombre;
    private String ApellidoP;
    private String ApellidoM;
    private String Tipo;
    private int Num_cursos;
    private int ID_materia;
    private String NombreM;
    
    
    public int getID_profesor() {
        return ID_profesor;
    }

    public void setID_profesor(int ID_profesor) {
        this.ID_profesor = ID_profesor;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getApellidoP() {
        return ApellidoP;
    }

    public void setApellidoP(String ApellidoP) {
        this.ApellidoP = ApellidoP;
    }

    public String getApellidoM() {
        return ApellidoM;
    }

    public void setApellidoM(String ApellidoM) {
        this.ApellidoM = ApellidoM;
    }

    public String getTipo() {
        return Tipo;
    }

    public void setTipo(String Tipo) {
        this.Tipo = Tipo;
    }

    public int getNum_cursos() {
        return Num_cursos;
    }

    public void setNum_cursos(int Num_cursos) {
        this.Num_cursos = Num_cursos;
    }

    /**
     * @return the ID_materia
     */
    public int getID_materia() {
        return ID_materia;
    }

    /**
     * @param ID_materia the ID_materia to set
     */
    public void setID_materia(int ID_materia) {
        this.ID_materia = ID_materia;
    }

    /**
     * @return the NombreM
     */
    public String getNombreM() {
        return NombreM;
    }

    /**
     * @param NombreM the NombreM to set
     */
    public void setNombreM(String NombreM) {
        this.NombreM = NombreM;
    }
    
}