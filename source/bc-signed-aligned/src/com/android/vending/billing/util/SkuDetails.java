package com.android.vending.billing.util;

import org.json.JSONException;
import org.json.JSONObject;

public class SkuDetails
{
  String mDescription;
  String mItemType;
  String mJson;
  String mPrice;
  String mSku;
  String mTitle;
  String mType;
  
  public SkuDetails(String paramString)
    throws JSONException
  {
    this("inapp", paramString);
  }
  
  public SkuDetails(String paramString1, String paramString2)
    throws JSONException
  {
    this.mItemType = paramString1;
    this.mJson = paramString2;
    paramString1 = new JSONObject(this.mJson);
    this.mSku = paramString1.optString("productId");
    this.mType = paramString1.optString("type");
    this.mPrice = paramString1.optString("price");
    this.mTitle = paramString1.optString("title");
    this.mDescription = paramString1.optString("description");
  }
  
  public String getDescription()
  {
    return this.mDescription;
  }
  
  public String getPrice()
  {
    return this.mPrice;
  }
  
  public String getSku()
  {
    return this.mSku;
  }
  
  public String getTitle()
  {
    return this.mTitle;
  }
  
  public String getType()
  {
    return this.mType;
  }
  
  public String toString()
  {
    return "SkuDetails:" + this.mJson;
  }
}


/* Location:              /prj/BitcoinChecker/tools/dex-tools-2.1-SNAPSHOT/bc-signed-aligned-dex2jar.jar!/com/android/vending/billing/util/SkuDetails.class
 * Java compiler version: 6 (50.0)
 * JD-Core Version:       0.7.1
 */