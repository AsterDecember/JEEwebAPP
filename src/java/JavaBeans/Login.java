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
public class Login {
    private boolean opt;
    private int mat;
    
    public Login(){
        opt=false;
    }

    /**
     * @return the opt
     */
    public boolean isOpt() {
        return opt;
    }

    /**
     * @param opt the opt to set
     */
    public void setOpt(boolean opt) {
        this.opt = opt;
    }

    /**
     * @return the mat
     */
    public int getMat() {
        return mat;
    }

    /**
     * @param mat the mat to set
     */
    public void setMat(int mat) {
        this.mat = mat;
    }
    
}
