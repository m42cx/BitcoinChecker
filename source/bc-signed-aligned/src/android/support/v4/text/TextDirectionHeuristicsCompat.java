package android.support.v4.text;

import java.nio.CharBuffer;
import java.util.Locale;

public class TextDirectionHeuristicsCompat
{
  public static final TextDirectionHeuristicCompat ANYRTL_LTR = new TextDirectionHeuristicInternal(AnyStrong.INSTANCE_RTL, false, null);
  public static final TextDirectionHeuristicCompat FIRSTSTRONG_LTR;
  public static final TextDirectionHeuristicCompat FIRSTSTRONG_RTL;
  public static final TextDirectionHeuristicCompat LOCALE = TextDirectionHeuristicLocale.INSTANCE;
  public static final TextDirectionHeuristicCompat LTR = new TextDirectionHeuristicInternal(null, false, null);
  public static final TextDirectionHeuristicCompat RTL = new TextDirectionHeuristicInternal(null, true, null);
  private static final int STATE_FALSE = 1;
  private static final int STATE_TRUE = 0;
  private static final int STATE_UNKNOWN = 2;
  
  static
  {
    FIRSTSTRONG_LTR = new TextDirectionHeuristicInternal(FirstStrong.INSTANCE, false, null);
    FIRSTSTRONG_RTL = new TextDirectionHeuristicInternal(FirstStrong.INSTANCE, true, null);
  }
  
  private static int isRtlText(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      paramInt = 2;
    }
    for (;;)
    {
      return paramInt;
      paramInt = 1;
      continue;
      paramInt = 0;
    }
  }
  
  private static int isRtlTextOrFormat(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      paramInt = 2;
    }
    for (;;)
    {
      return paramInt;
      paramInt = 1;
      continue;
      paramInt = 0;
    }
  }
  
  private static class AnyStrong
    implements TextDirectionHeuristicsCompat.TextDirectionAlgorithm
  {
    public static final AnyStrong INSTANCE_LTR = new AnyStrong(false);
    public static final AnyStrong INSTANCE_RTL = new AnyStrong(true);
    private final boolean mLookForRtl;
    
    private AnyStrong(boolean paramBoolean)
    {
      this.mLookForRtl = paramBoolean;
    }
    
    public int checkRtl(CharSequence paramCharSequence, int paramInt1, int paramInt2)
    {
      int i = 1;
      int j = 0;
      int k = paramInt1;
      for (;;)
      {
        if (k < paramInt1 + paramInt2) {
          switch (TextDirectionHeuristicsCompat.isRtlText(Character.getDirectionality(paramCharSequence.charAt(k))))
          {
          default: 
            k++;
            break;
          case 0: 
            if (this.mLookForRtl) {
              j = 0;
            }
            break;
          }
        }
      }
      for (;;)
      {
        return j;
        j = 1;
        break;
        j = i;
        if (this.mLookForRtl)
        {
          j = 1;
          break;
          if (j != 0)
          {
            j = i;
            if (!this.mLookForRtl) {
              j = 0;
            }
          }
          else
          {
            j = 2;
          }
        }
      }
    }
  }
  
  private static class FirstStrong
    implements TextDirectionHeuristicsCompat.TextDirectionAlgorithm
  {
    public static final FirstStrong INSTANCE = new FirstStrong();
    
    public int checkRtl(CharSequence paramCharSequence, int paramInt1, int paramInt2)
    {
      int i = 2;
      for (int j = paramInt1; (j < paramInt1 + paramInt2) && (i == 2); j++) {
        i = TextDirectionHeuristicsCompat.isRtlTextOrFormat(Character.getDirectionality(paramCharSequence.charAt(j)));
      }
      return i;
    }
  }
  
  private static abstract interface TextDirectionAlgorithm
  {
    public abstract int checkRtl(CharSequence paramCharSequence, int paramInt1, int paramInt2);
  }
  
  private static abstract class TextDirectionHeuristicImpl
    implements TextDirectionHeuristicCompat
  {
    private final TextDirectionHeuristicsCompat.TextDirectionAlgorithm mAlgorithm;
    
    public TextDirectionHeuristicImpl(TextDirectionHeuristicsCompat.TextDirectionAlgorithm paramTextDirectionAlgorithm)
    {
      this.mAlgorithm = paramTextDirectionAlgorithm;
    }
    
    private boolean doCheck(CharSequence paramCharSequence, int paramInt1, int paramInt2)
    {
      boolean bool;
      switch (this.mAlgorithm.checkRtl(paramCharSequence, paramInt1, paramInt2))
      {
      default: 
        bool = defaultIsRtl();
      }
      for (;;)
      {
        return bool;
        bool = true;
        continue;
        bool = false;
      }
    }
    
    protected abstract boolean defaultIsRtl();
    
    public boolean isRtl(CharSequence paramCharSequence, int paramInt1, int paramInt2)
    {
      if ((paramCharSequence == null) || (paramInt1 < 0) || (paramInt2 < 0) || (paramCharSequence.length() - paramInt2 < paramInt1)) {
        throw new IllegalArgumentException();
      }
      if (this.mAlgorithm == null) {}
      for (boolean bool = defaultIsRtl();; bool = doCheck(paramCharSequence, paramInt1, paramInt2)) {
        return bool;
      }
    }
    
    public boolean isRtl(char[] paramArrayOfChar, int paramInt1, int paramInt2)
    {
      return isRtl(CharBuffer.wrap(paramArrayOfChar), paramInt1, paramInt2);
    }
  }
  
  private static class TextDirectionHeuristicInternal
    extends TextDirectionHeuristicsCompat.TextDirectionHeuristicImpl
  {
    private final boolean mDefaultIsRtl;
    
    private TextDirectionHeuristicInternal(TextDirectionHeuristicsCompat.TextDirectionAlgorithm paramTextDirectionAlgorithm, boolean paramBoolean)
    {
      super();
      this.mDefaultIsRtl = paramBoolean;
    }
    
    protected boolean defaultIsRtl()
    {
      return this.mDefaultIsRtl;
    }
  }
  
  private static class TextDirectionHeuristicLocale
    extends TextDirectionHeuristicsCompat.TextDirectionHeuristicImpl
  {
    public static final TextDirectionHeuristicLocale INSTANCE = new TextDirectionHeuristicLocale();
    
    public TextDirectionHeuristicLocale()
    {
      super();
    }
    
    protected boolean defaultIsRtl()
    {
      boolean bool = true;
      if (TextUtilsCompat.getLayoutDirectionFromLocale(Locale.getDefault()) == 1) {}
      for (;;)
      {
        return bool;
        bool = false;
      }
    }
  }
}


/* Location:              /prj/BitcoinChecker/tools/dex-tools-2.1-SNAPSHOT/bc-signed-aligned-dex2jar.jar!/android/support/v4/text/TextDirectionHeuristicsCompat.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */