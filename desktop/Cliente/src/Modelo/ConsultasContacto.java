/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import com.mysql.jdbc.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author JUAN
 */
public class ConsultasContacto extends Conexion{
    
    public boolean registrar (Contacto contacto ){
        PreparedStatement ps = null; 
        Connection con = getConexion(); 
        
        String sql = "INSERT INTO ServicioContacto (id_servicio, nombre_servicio, email_contacto, telefono) VALUES (?,?,?,?);";
        
        try{
            ps = con.prepareStatement(sql); 
            ps.setString(1, contacto.getId()); 
            ps.setString(2, contacto.getNombreServicio());
            ps.setString(3, contacto.getEmailContacto());
            ps.setString(4, contacto.getTelefono()); 
            ps.execute(); 
            return true; 
            
        } catch (SQLException e) {
            System.err.println(e); 
            return false; 
        }finally{
            try{
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(ConsultasContacto.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
    
    public boolean modificar (Contacto contacto ){
        PreparedStatement ps = null; 
        Connection con = getConexion(); 
        
        String sql = "UPDATE ServicioContacto SET id_servicio=?, nombre_servicio=?, email_contacto=?, telefono=?) VALUES (?,?,?,?) WHERE id = ? ";
        
        try{
            ps = con.prepareStatement(sql); 
            ps.setString(1, contacto.getId()); 
            ps.setString(2, contacto.getNombreServicio());
            ps.setString(3, contacto.getEmailContacto());
            ps.setString(4, contacto.getTelefono()); 
            ps.execute(); 
            return true; 
            
        } catch (SQLException e) {
            System.err.println(e); 
            return false; 
        }finally{
            try{
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(ConsultasContacto.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
  
      public boolean eliminar (Contacto contacto ){
        PreparedStatement ps = null; 
        Connection con = getConexion(); 
        
        String sql = "DELETE FROM ServicioContacto WHERE id_servicio=?";       
        try{
            ps = con.prepareStatement(sql); 
            ps.setString(1, contacto.getId()); 
            ps.execute(); 
            return true; 
            
        } catch (SQLException e) {
            System.err.println(e); 
            return false; 
        }finally{
            try{
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(ConsultasContacto.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
      
      public boolean buscar (Contacto contacto ){
        PreparedStatement ps = null; 
        ResultSet rs = null; 
        Connection con = getConexion(); 
        
        String sql = "SELECT * FROM ServicioContacto WHERE id_servicio=?";       
        try{
            ps = con.prepareStatement(sql); 
            ps.setString(1, contacto.getId()); 
         rs = ps.executeQuery();
         
         if (rs.next()){
             contacto.setId(rs.getString("id_servicio"));
             contacto.setNombreServicio(rs.getString("nombre_servicio"));
             contacto.setId(rs.getString("email_contacto"));
             contacto.setId(rs.getString("telefono"));
             return true;
         }
            return true; 
            
        } catch (SQLException e) {
            System.err.println(e); 
            return false; 
        }finally{
            try{
                con.close();
            } catch (SQLException ex) {
                Logger.getLogger(ConsultasContacto.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }
      
      
}
