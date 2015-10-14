/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package JavaBeans;

import java.sql.ResultSet;

/**
 *
 * @author Lenovo
 */
public class NrcBean implements java.io.Serializable {
    private int NRC;
    private int ID_profesor;
    private int Matricula;
    private int ID_materia;
    
    public NrcBean(){
        
    }

    /**
     * @return the NRC
     */
    public int getNRC() {
        return NRC;
    }

    /**
     * @param NRC the NRC to set
     */
    public void setNRC(int NRC) {
        this.NRC = NRC;
    }

    /**
     * @return the ID_profesor
     */
    public int getID_profesor() {
        return ID_profesor;
    }

    /**
     * @param ID_profesor the ID_profesor to set
     */
    public void setID_profesor(int ID_profesor) {
        this.ID_profesor = ID_profesor;
    }

    /**
     * @return the Matricula
     */
    public int getMatricula() {
        return Matricula;
    }

    /**
     * @param Matricula the Matricula to set
     */
    public void setMatricula(int Matricula) {
        this.Matricula = Matricula;
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

    
    
    
}
