package butterknife.internal;

final class Parameter
{
  static final Parameter[] NONE = new Parameter[0];
  private final int listenerPosition;
  private final String type;
  
  Parameter(int paramInt, String paramString)
  {
    this.listenerPosition = paramInt;
    this.type = paramString;
  }
  
  int getListenerPosition()
  {
    return this.listenerPosition;
  }
  
  String getType()
  {
    return this.type;
  }
}


/* Location:              /prj/BitcoinChecker/tools/dex-tools-2.1-SNAPSHOT/bc-signed-aligned-dex2jar.jar!/butterknife/internal/Parameter.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */