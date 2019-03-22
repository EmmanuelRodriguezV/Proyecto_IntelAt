import java.util.ArrayList;
import javax.swing.*;
public class AppStateManager
{
  //Manager Para Cualquier Juego
  ArrayList<AppState> gss;
  boolean active;
  int actual;
  int width,height;
  public AppStateManager(MainFrame _parent)
  {
    gss=new ArrayList<AppState>();
    actual=0;
    width=_parent.getWidth();
    height=_parent.getHeight();
  }

  public void addAllToFrame(MainFrame _parent){for (AppState gs : gss )_parent.add(gs);}

  public void setActual(int i)
  {
    if(i!=-1)
    {
      stop();
      actual=i;
      start();
    }
    else
      System.exit(0);

  }
  public void start()
  {
    if(!active)
    {
      active=true;
      gss.get(actual).start();
    }
  }
  public void stop()
  {
    if(active)
    {
      active=false;
      gss.get(actual).stop();
    }
  }
}