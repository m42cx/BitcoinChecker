package android.support.v7.app;

class ActionBarActivityDelegateJBMR2
  extends ActionBarActivityDelegateJB
{
  ActionBarActivityDelegateJBMR2(ActionBarActivity paramActionBarActivity)
  {
    super(paramActionBarActivity);
  }
  
  public ActionBar createSupportActionBar()
  {
    return new ActionBarImplJBMR2(this.mActivity, this.mActivity);
  }
}


/* Location:              /prj/BitcoinChecker/tools/dex-tools-2.1-SNAPSHOT/bc-signed-aligned-dex2jar.jar!/android/support/v7/app/ActionBarActivityDelegateJBMR2.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */