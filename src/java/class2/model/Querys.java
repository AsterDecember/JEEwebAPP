/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package class2.model;

import JavaBeans.AlumnoBean;
import JavaBeans.AuthNRC;
import JavaBeans.ConsultaBean;
import JavaBeans.CursoBean;
import JavaBeans.Login;
import JavaBeans.NrcBean;
import JavaBeans.ProfesorBean;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import class2.model.OracleConection;
import java.util.LinkedList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author aster
 */
public class Querys extends OracleConection{
    String consulta="";
    
    public LinkedList<ProfesorBean> mostrarProfeMateria() throws SQLException{
        LinkedList<ProfesorBean> CB = new LinkedList<ProfesorBean>();
        Statement st;
        st= conexion.createStatement();
        consulta="Select c.\"ID_profesor\",p.\"NombreP\",p.\"ApellidoP\",p.\"ApellidoM\",m.\"ID_materia\",m.\"Nombre\"\n" +
"  From curso c, profesor p, materia m\n" +
"  Where c.\"ID_profesor\" in(p.\"ID_profesor\") and c.\"ID_materia\" in (m.\"ID_materia\")";
        ResultSet rs;
        rs= st.executeQuery(consulta);
        while(rs.next()){
            System.out.println(" next");
            ProfesorBean profe = new ProfesorBean();
                    //System.out.println("holis");
            profe.setID_profesor(rs.getInt("ID_profesor"));
            profe.setNombre(rs.getString("NombreP"));
            profe.setApellidoP(rs.getString("ApellidoP"));
            profe.setApellidoM(rs.getString("ApellidoM"));
            profe.setID_materia(rs.getInt("ID_materia"));
            profe.setNombreM(rs.getString("Nombre"));
            CB.add(profe);
        }
        return CB;
    }
    
    
    
    public LinkedList<ConsultaBean> orderByProfesor() throws SQLException{
        LinkedList<ConsultaBean> CB = new LinkedList<ConsultaBean>();
        Statement st;
        st = conexion.createStatement();
        consulta="Select c.nrc,c.\"ID_profesor\",p.\"NombreP\",p.\"ApellidoP\",c.\"ID_materia\",m.\"Nombre\"\n" +
"From curso c, profesor p, materia m\n" +
"Where c.\"ID_materia\" in (m.\"ID_materia\") and c.\"ID_profesor\" in(p.\"ID_profesor\")\n" +
"Order by p.\"NombreP\"";
        ResultSet rs;
        rs= st.executeQuery(consulta);
        while(rs.next()){
                    ConsultaBean consulta = new ConsultaBean();
                    //System.out.println("holis");
                    
                    consulta.setNRC(rs.getInt("NRC"));
                    consulta.setID_profesor(rs.getInt("ID_profesor"));
                    consulta.setNombreP(rs.getString("NombreP"));
                    consulta.setApellidoP(rs.getString("ApellidoP"));
                    consulta.setID_materia(rs.getInt("ID_materia"));
                    consulta.setNombreM(rs.getString("Nombre"));
                    CB.add(consulta);
                    
                }
        
        return CB;
    }
    
    
     public LinkedList<ConsultaBean> orderByMateria() throws SQLException{
        LinkedList<ConsultaBean> CB = new LinkedList<ConsultaBean>();
        Statement st;
        st = conexion.createStatement();
        consulta="Select c.nrc,c.\"ID_profesor\",p.\"NombreP\",p.\"ApellidoP\",c.\"ID_materia\",m.\"Nombre\"\n" +
"From curso c, profesor p, materia m\n" +
"Where c.\"ID_materia\" in (m.\"ID_materia\") and c.\"ID_profesor\" in(p.\"ID_profesor\")\n" +
"Order by m.\"Nombre\"";
        ResultSet rs;
        rs= st.executeQuery(consulta);
        while(rs.next()){
                    ConsultaBean consulta = new ConsultaBean();
                    //System.out.println("holis");
                    consulta.setNRC(rs.getInt("NRC"));
                    consulta.setID_profesor(rs.getInt("ID_profesor"));
                    consulta.setNombreP(rs.getString("NombreP"));
                    consulta.setApellidoP(rs.getString("ApellidoP"));
                    consulta.setID_materia(rs.getInt("ID_materia"));
                    consulta.setNombreM(rs.getString("Nombre"));
                    CB.add(consulta);
                    
                }
        
        return CB;
    }
    
    
    
    
    public LinkedList<ConsultaBean> obtenerInformation() throws SQLException{
        LinkedList<ConsultaBean> CB = new LinkedList<ConsultaBean>();
        Statement st;
        st = conexion.createStatement();
        consulta="Select c.nrc,c.\"ID_profesor\",p.\"NombreP\",p.\"ApellidoP\",c.\"ID_materia\",m.\"Nombre\"\n" +
"From curso c, profesor p, materia m\n" +
"Where c.\"ID_materia\" in (m.\"ID_materia\") and c.\"ID_profesor\" in(p.\"ID_profesor\")";
        ResultSet rs;
        rs= st.executeQuery(consulta);
        while(rs.next()){
                    ConsultaBean consulta = new ConsultaBean();
                    //System.out.println("holis");
                    consulta.setNRC(rs.getInt("NRC"));
                    consulta.setID_profesor(rs.getInt("ID_profesor"));
                    consulta.setNombreP(rs.getString("NombreP"));
                    consulta.setApellidoP(rs.getString("ApellidoP"));
                    consulta.setID_materia(rs.getInt("ID_materia"));
                    consulta.setNombreM(rs.getString("Nombre"));
                    CB.add(consulta);
                    
                }
        
        return CB;
    }
    
    public AlumnoBean obtenerAlumno(int id) throws SQLException{
        AlumnoBean ab= new AlumnoBean();
        Number idr=Integer.valueOf(id);
        Statement st;

        String mat="\"Matricula\"";
        System.out.println(mat);
        st = conexion.createStatement();
         consulta="Select * from ALUMNO Where "+mat+" in '"+idr+"'";
         System.out.println(consulta);
          ResultSet rs;
           rs= st.executeQuery(consulta);
           System.out.println("omaiga");
            rs.next();
            System.out.println("jeje");
            int datini=0;
            ab.setNombre(rs.getString("Nombre"));
            ab.setMatricula(rs.getInt("Matricula"));
            ab.setApellidoP(rs.getString("ApellidoP"));
            ab.setApellidoM(rs.getString("ApellidoM"));
            ab.setColonia(rs.getString("Colonia"));
            ab.setCalle(rs.getString("Calle"));
            ab.setNumeroExt(rs.getInt("NumeroExt"));
            ab.setEmail(rs.getString("E-mail"));
            ab.setPASSWORD(rs.getString("PASSWORD"));
           //System.out.println(rs.getInt("Matricula")+"oye ci");
           
        return ab;
    }
    public Login AUtenticacion(String pass,int matricula) throws SQLException{
        Login log = new Login();
        Statement st;
        st = conexion.createStatement();
        consulta="Select * from ALUMNO";
        ResultSet rs= st.executeQuery(consulta);
        System.out.println("chambeando");
        
        while(rs.next()){
            System.out.println("LLEGO");
            if(rs.getInt("Matricula")==matricula&&pass.equals(rs.getString("PASSWORD"))){
                System.out.println("EL DATO"+rs.getInt("Matricula"));
                log.setOpt(true);
                log.setMat(matricula);
                return log;
            }
            
        }
        
      
        
        return log;
    }
    public  LinkedList<ProfesorBean> MostrarProfes() throws SQLException{
      
    LinkedList<ProfesorBean>listaProfes=new LinkedList<ProfesorBean>();
        try{
              Statement st;
                          System.out.println("Entre campeon");

                st = conexion.createStatement();
                consulta="Select * from PROFESOR";
                System.out.println(consulta);
                ResultSet rs=st.executeQuery(consulta);
  
                while(rs.next()){
                    //System.out.println("hdosahd");
                    ProfesorBean profe = new ProfesorBean();
                    //System.out.println("holis");
                    profe.setID_profesor(rs.getInt("ID_profesor"));
                    profe.setNombre(rs.getString("NombreP"));
                    profe.setApellidoP(rs.getString("ApellidoP"));
                    profe.setApellidoM(rs.getString("ApellidoM"));
                    profe.setTipo(rs.getString("Tipo"));
                    profe.setNum_cursos(rs.getInt("Num_cursos"));//era una jalada decia num _cusos
                    listaProfes.add(profe);
                    
                }
                
                for (int i=0;i<listaProfes.size();i++){
                    System.out.println("info"+listaProfes.get(i).getNombre());
                }
          
        }catch(SQLException ex){
            
        }
        return listaProfes;
    }
    
    public  LinkedList<CursoBean> MostrarCursos() throws SQLException{
      
    LinkedList<CursoBean>listaCursos=new LinkedList<CursoBean>();
        try{
              Statement st;

                st = conexion.createStatement();
                consulta="Select * from CURSO";
                ResultSet rs=st.executeQuery(consulta);
  
                while(rs.next()){
                    CursoBean curso = new CursoBean();
                    //System.out.println("holis");
                    curso.setID_profesor(rs.getInt("ID_profesor"));
                    curso.setID_materia(rs.getInt("ID_materia"));
                    curso.setMatricula(rs.getInt("Matricula"));
                    curso.setNRC(rs.getInt("NRC"));
                    listaCursos.add(curso);
                    
                }
                
             
          
        }catch(SQLException ex){
            
        }
        return listaCursos;
    }
    
    public AlumnoBean MostrarInfo(NrcBean nrc) throws SQLException{
        AlumnoBean AB = new AlumnoBean();
        Statement st=conexion.createStatement();   
         consulta="Select * from Alumno Where NRC in '"+nrc.getMatricula()+"'";
          ResultSet rs;
           rs= st.executeQuery(consulta);
           
        return AB;
    }
    public AuthNRC BuscarNRC(int nrc)throws SQLException{
       // boolean opt=false;
        AuthNRC auth= new AuthNRC();
        
        Statement st=conexion.createStatement();    
        //consulta="Select * from ALUMNO";
        System.out.println(nrc+"holiwi");
        consulta="Select * from CURSO Where NRC in '"+nrc+"'";
        ResultSet rs;
        try{rs= st.executeQuery(consulta);
        if(rs==null){
        
        auth.setRS(rs);
        auth.setOPT(false);
        }else{
        
            rs.next();
            if(nrc==rs.getInt("nrc")){
                auth.setRS(rs);
                auth.setOPT(true);
                System.out.println("DATOS:"+rs.getString("matricula"));
                return auth;
            }else{
                
            }
        }
        }catch(SQLException ex){
            
            auth.setOPT(false);
            System.out.println(":3");
            return auth;
        }
        
        
        
        return auth;
        
    }
    
      public void Insertar(int id,String user, String pass) throws SQLException{
          Statement st= conexion.createStatement();
          consulta="Insert Into Empleados values("+id+",'"+user+"','"+pass+"')";
          st.execute(consulta);
      }
      public void Actualiza(int id,String user,String pass) throws SQLException{
          Statement st= conexion.createStatement();
          consulta="Update Empleados Set usuario = '"+user+"',password = '"+pass+"' where id_empleado = '"+id+"';";
          st.execute(consulta);

      }
      
      
      public ResultSet getalldates() throws SQLException
      {
          ResultSet rs = null;
          
          Statement st= conexion.createStatement();
          consulta="Select * from Empleados";
          rs = st.executeQuery(consulta);
          
          return rs;    
      }
      
      
   public void Delete(String id_empleado) throws SQLException
   {
       
       Statement st= conexion.createStatement();
          consulta="Delete from Empleados where id_empleados ='"+id_empleado+"';";
          st.execute(consulta);
   }
   
   public static void main(String args[]){
       Querys q= new Querys();
        try {
            System.out.println("Entre campeon");
           
            LinkedList<ProfesorBean> pb= new LinkedList<ProfesorBean>();
          
            pb=q.mostrarProfeMateria();
            for (int i=0;i<pb.size();i++)
                                        {
                                            System.out.println(pb.get(i).getNombreM());
                                            System.out.println(pb.get(i).getID_materia());

                                        }
        } catch (SQLException ex) {
            Logger.getLogger(Querys.class.getName()).log(Level.SEVERE, null, ex);
        }
           
       
   }
   
   
   
   
      
}
