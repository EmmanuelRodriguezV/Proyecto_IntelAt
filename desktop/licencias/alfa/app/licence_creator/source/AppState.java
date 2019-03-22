import javax.swing.*;
public abstract class AppState extends JPanel
{
  abstract void start();
  abstract void stop();
}
