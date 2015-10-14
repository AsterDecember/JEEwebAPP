/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package class2.model;

import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author aster
 */
public class Conexion {
    
    public static final String USERNAME="root";
    public static final String PASSWORD="";
    public static final String HOST="localhost";
    public static final String PORT="3306";
    public static final String DATABASE="HuskiesExample";
    public static final String CLASSNAME="com.mysql.jdbc.Driver";
    public static final String URL="jdbc:mysql://localhost:3306/HuskiesExample";
    
    public java.sql.Connection con;
    
    public Conexion(){
        try{
            Class.forName(CLASSNAME);
            con= DriverManager.getConnection(URL,USERNAME,PASSWORD);
        }catch(ClassNotFoundException e){
            System.out.println("Error");
        }catch(SQLException e){
            System.out.println("No se encontro base");
        }
    }
    
   /*public static void main(String args[]){
       Conexion conexion = new Conexion();
       
   }*/
}
