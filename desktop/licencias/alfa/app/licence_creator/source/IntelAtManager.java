
public class IntelAtManager extends AppStateManager
{
  //Manager especifico para Intelat
  public IntelAtManager(MainFrame _parent)
  {
    super(_parent);
    //Añadir tu AppState
    gss.add(new LoadState(this));
    addAllToFrame(_parent);
  }
  //añadir funcion para desactivar ventana anterior y activar ventana nueva
  public void setLoading(int gt)
  {
    stop();
    actual=0;
    ((LoadState)gss.get(actual)).setWhereTogt(gt);
    System.out.println("Iniciando Carga");
    start();
  }
}
