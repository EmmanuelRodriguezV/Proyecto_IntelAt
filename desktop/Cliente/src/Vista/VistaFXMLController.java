/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Vista;

import java.net.URL;
import java.util.ResourceBundle;
import javafx.fxml.FXML;
import javafx.fxml.Initializable;
import javafx.scene.control.Button;
import javafx.scene.control.TextField;


public class VistaFXMLController implements Initializable {

    @FXML 
    public Button btnGuardar;
    @FXML 
    public Button btnModificar;
    @FXML
    public Button btnBorrar;
    @FXML
    public Button btnLimpiar;
    @FXML
    public TextField txtId;
    @FXML
    public TextField txtNombreServ;
    @FXML
    public TextField txtEmail;
    @FXML
    public TextField txtTelefono;
    
    String id = txtId.getText();
    String nombreServ = txtNombreServ.getText();
    String Email = txtEmail.getText();
    String Telefono = txtTelefono.getText();

    public String getId() {
        return id;
    }

    public String getNombreServ() {
        return nombreServ;
    }

    public String getEmail() {
        return Email;
    }

    public String getTelefono() {
        return Telefono;
    }
    
    @Override
    public void initialize(URL url, ResourceBundle rb) {
        // TODO
    }    
    
}
