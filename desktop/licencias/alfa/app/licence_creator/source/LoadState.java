import javax.swing.*;
public class LoadState extends AppState
{
  Thread cicle;
  int gt=-1;
  AppStateManager gm;
  public LoadState(AppStateManager _gm)
  {
    gm=_gm;
    setBounds(0,0,_gm.width,_gm.height);
    setLayout(null);
    JLabel fondo=new JLabel();
    fondo.setIcon(new ImageIcon("splashbg.png"));
    fondo.setBounds(0,0,_gm.width,_gm.height);
    JLabel Load=new JLabel();
    Load.setIcon(new ImageIcon("elipse.gif"));
    Load.setBounds(130,400,200,100);
    add(Load);
    add(fondo);
    cicle=new Thread(new Runnable(){
      public void run()
      {
        try{
          Thread.sleep(5000);
          stop();
        }catch(Exception e){}
      }
    });
    setVisible(false);
  }
  //Selecciona lugar a donde ir despues de terminar la carga
  public void setWhereTogt(int i){gt=i;}
  //inicia las tareas de este panel
  public void start()
  {
    setVisible(true);
    if(gt!=-1)
      cicle.start();
  }
  //detiene este panel
  public void stop()
  {
    setVisible(false);
    //gm.setActual(gt);
  }
}