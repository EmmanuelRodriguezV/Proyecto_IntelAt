import javax.swing.*;
import java.awt.event.*;
import java.awt.Color;
public class MainFrame extends JFrame implements WindowListener
{
  IntelAtManager cgm;
  //GameState mgs;
  public MainFrame()
  {
    super("IntelAt");
    getContentPane().setBackground(new Color(33,31,48));
    addWindowListener(this);
    setSize(360,640);
    setResizable(false);
    setLayout(null);
    cgm=new IntelAtManager(this);
    setVisible(true);
    cgm.setLoading(1);
  }
  public void windowActivated(WindowEvent arg0){}
  public void windowClosed(WindowEvent arg0){}
  public void windowClosing(WindowEvent arg0)
  {
    cgm.stop();
    //System.out.println("closing");
    dispose();
  }
  public void windowDeactivated(WindowEvent arg0) {}
  public void windowDeiconified(WindowEvent arg0) {}
  public void windowIconified(WindowEvent arg0) {}
  public void windowOpened(WindowEvent arg0){}
}
