package butterknife.internal;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

final class MethodBinding
  implements Binding
{
  private final String name;
  private final List<Parameter> parameters;
  private final boolean required;
  
  MethodBinding(String paramString, List<Parameter> paramList, boolean paramBoolean)
  {
    this.name = paramString;
    this.parameters = Collections.unmodifiableList(new ArrayList(paramList));
    this.required = paramBoolean;
  }
  
  public String getDescription()
  {
    return "method '" + this.name + "'";
  }
  
  public String getName()
  {
    return this.name;
  }
  
  public List<Parameter> getParameters()
  {
    return this.parameters;
  }
  
  public boolean isRequired()
  {
    return this.required;
  }
}


/* Location:              /prj/BitcoinChecker/tools/dex-tools-2.1-SNAPSHOT/bc-signed-aligned-dex2jar.jar!/butterknife/internal/MethodBinding.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */