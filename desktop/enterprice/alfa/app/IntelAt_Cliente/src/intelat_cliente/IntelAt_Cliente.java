/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package intelat_cliente;

import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JLabel;

/**
 *
 * @author Emmanuel
 */
public class IntelAt_Cliente {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
        // TODO code application logic here
        JCarga loader = new JCarga();
        loader.setVisible(true);
        int n=0;
        while (true)
        {
            
                if(n ==0)
                    loader.setCargador("Cargando.");
                else
                    if(n==1)
                        loader.setCargador("Cargando..");
                    else
                        if(n==2)
                            loader.setCargador("Cargando...");
                n++;
                if(n>3)
                    n=0;
                try{
                Thread.sleep(400);
            } catch (InterruptedException ex) {
                Logger.getLogger(IntelAt_Cliente.class.getName()).log(Level.SEVERE, null, ex);
            }
            
        }
    }
    
}
