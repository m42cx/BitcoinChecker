package butterknife;

import butterknife.internal.ListenerClass;
import java.lang.annotation.Annotation;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@ListenerClass("android.widget.AdapterView.OnItemLongClickListener")
@Retention(RetentionPolicy.CLASS)
@Target({java.lang.annotation.ElementType.METHOD})
public @interface OnItemLongClick
{
  int[] value();
}


/* Location:              /prj/BitcoinChecker/tools/dex-tools-2.1-SNAPSHOT/bc-signed-aligned-dex2jar.jar!/butterknife/OnItemLongClick.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */