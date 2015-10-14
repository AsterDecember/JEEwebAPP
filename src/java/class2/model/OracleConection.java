/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package class2.model;

/**
 *
 * @author Lenovo
 */
import java.sql.DriverManager;



public class OracleConection {
public java.sql.Connection conexion;

public OracleConection(){
     //PRIMER EJEMPLO CONECCION JE CON ORACLE TRABAJA OK CON BASE DE DATOS DE EJEMPLO

        String nombre,trabajo,email,fecha_contratacion;
        int apellido=0;
        try{
        Class.forName("oracle.jdbc.OracleDriver");
        String BaseDeDatos = "jdbc:oracle:thin:@localhost:1521:XE";
        conexion= DriverManager.getConnection(BaseDeDatos,"ASTERHUSKIE","admin");
        
        if(conexion!=null)
        {
        System.out.println("Conexion exitosa a esquema ejemplo");
        
        }
        else{System.out.println("Conexion fallida");}
        }
        catch(Exception e)
        {e.printStackTrace();}
       
    
}


 public static void main(String[] args) {
  OracleConection obconeccion=new OracleConection();
    
    }
    
  
   

}
