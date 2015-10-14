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
public class AuthNRC {
    private ResultSet rs;
    private boolean opt;
    
    public AuthNRC(){
        
    }
    
    public ResultSet getRS(){
        return this.rs;
    }
    public void setRS(ResultSet rs){
        this.rs=rs;
    }
    
    public boolean getOPT(){
        return this.opt;
    }
    public void setOPT(boolean opt){
        this.opt=opt;
    }
    
    
}
