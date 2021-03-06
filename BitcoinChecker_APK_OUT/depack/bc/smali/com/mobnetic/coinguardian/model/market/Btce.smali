.class public Lcom/mobnetic/coinguardian/model/market/Btce;
.super Lcom/mobnetic/coinguardian/model/Market;
.source "Btce.java"


# static fields
.field private static final CURRENCY_PAIRS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private static final NAME:Ljava/lang/String; = "WEX"

.field private static final TTS_NAME:Ljava/lang/String; = "WEX"

.field private static final URL:Ljava/lang/String; = "https://wex.link/api/3/ticker/%1$s"

.field private static final URL_CURRENCY_PAIRS:Ljava/lang/String; = "https://wex.link/api/3/info"


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 24
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/mobnetic/coinguardian/model/market/Btce;->CURRENCY_PAIRS:Ljava/util/HashMap;

    .line 26
    sget-object v0, Lcom/mobnetic/coinguardian/model/market/Btce;->CURRENCY_PAIRS:Ljava/util/HashMap;

    const-string v1, "BTC"

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "USD"

    aput-object v3, v2, v4

    const-string v3, "RUR"

    aput-object v3, v2, v5

    const-string v3, "EUR"

    aput-object v3, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/mobnetic/coinguardian/model/market/Btce;->CURRENCY_PAIRS:Ljava/util/HashMap;

    const-string v1, "LTC"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "BTC"

    aput-object v3, v2, v4

    const-string v3, "USD"

    aput-object v3, v2, v5

    const-string v3, "RUR"

    aput-object v3, v2, v6

    const-string v3, "EUR"

    aput-object v3, v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/mobnetic/coinguardian/model/market/Btce;->CURRENCY_PAIRS:Ljava/util/HashMap;

    const-string v1, "NMC"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BTC"

    aput-object v3, v2, v4

    const-string v3, "USD"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/mobnetic/coinguardian/model/market/Btce;->CURRENCY_PAIRS:Ljava/util/HashMap;

    const-string v1, "NVC"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BTC"

    aput-object v3, v2, v4

    const-string v3, "USD"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/mobnetic/coinguardian/model/market/Btce;->CURRENCY_PAIRS:Ljava/util/HashMap;

    const-string v1, "USD"

    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "RUR"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/mobnetic/coinguardian/model/market/Btce;->CURRENCY_PAIRS:Ljava/util/HashMap;

    const-string v1, "EUR"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "USD"

    aput-object v3, v2, v4

    const-string v3, "RUR"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/mobnetic/coinguardian/model/market/Btce;->CURRENCY_PAIRS:Ljava/util/HashMap;

    const-string v1, "PPC"

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "BTC"

    aput-object v3, v2, v4

    const-string v3, "USD"

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 59
    const-string v0, "WEX"

    const-string v1, "WEX"

    sget-object v2, Lcom/mobnetic/coinguardian/model/market/Btce;->CURRENCY_PAIRS:Ljava/util/HashMap;

    invoke-direct {p0, v0, v1, v2}, Lcom/mobnetic/coinguardian/model/Market;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V

    .line 60
    return-void
.end method


# virtual methods
.method public getCurrencyPairsUrl(I)Ljava/lang/String;
    .locals 1
    .param p1, "requestId"    # I

    .prologue
    .line 90
    const-string v0, "https://wex.link/api/3/info"

    return-object v0
.end method

.method public getUrl(ILcom/mobnetic/coinguardian/model/CheckerInfo;)Ljava/lang/String;
    .locals 6
    .param p1, "requestId"    # I
    .param p2, "checkerInfo"    # Lcom/mobnetic/coinguardian/model/CheckerInfo;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 64
    invoke-virtual {p2}, Lcom/mobnetic/coinguardian/model/CheckerInfo;->getCurrencyPairId()Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, "pairId":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/mobnetic/coinguardian/model/CheckerInfo;->getCurrencyPairId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 66
    const-string v1, "%1$s_%2$s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p2}, Lcom/mobnetic/coinguardian/model/CheckerInfo;->getCurrencyBaseLowerCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p2}, Lcom/mobnetic/coinguardian/model/CheckerInfo;->getCurrencyCounterLowerCase()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 68
    :cond_0
    const-string v1, "https://wex.link/api/3/ticker/%1$s"

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v0, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected parseCurrencyPairsFromJsonObject(ILorg/json/JSONObject;Ljava/util/List;)V
    .locals 9
    .param p1, "requestId"    # I
    .param p2, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/json/JSONObject;",
            "Ljava/util/List",
            "<",
            "Lcom/mobnetic/coinguardian/model/CurrencyPairInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 95
    .local p3, "pairs":Ljava/util/List;, "Ljava/util/List<Lcom/mobnetic/coinguardian/model/CurrencyPairInfo;>;"
    const-string v7, "pairs"

    invoke-virtual {p2, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 96
    .local v5, "pairsJsonObject":Lorg/json/JSONObject;
    invoke-virtual {v5}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v6

    .line 97
    .local v6, "pairsNames":Lorg/json/JSONArray;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 98
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 99
    .local v4, "pairId":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 97
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 101
    :cond_1
    const-string v7, "_"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "currencies":[Ljava/lang/String;
    array-length v7, v0

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 105
    const/4 v7, 0x0

    aget-object v7, v0, v7

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "currencyBase":Ljava/lang/String;
    const/4 v7, 0x1

    aget-object v7, v0, v7

    sget-object v8, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "currencyCounter":Ljava/lang/String;
    new-instance v7, Lcom/mobnetic/coinguardian/model/CurrencyPairInfo;

    invoke-direct {v7, v1, v2, v4}, Lcom/mobnetic/coinguardian/model/CurrencyPairInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 109
    .end local v0    # "currencies":[Ljava/lang/String;
    .end local v1    # "currencyBase":Ljava/lang/String;
    .end local v2    # "currencyCounter":Ljava/lang/String;
    .end local v4    # "pairId":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method protected parseTickerFromJsonObject(ILorg/json/JSONObject;Lcom/mobnetic/coinguardian/model/Ticker;Lcom/mobnetic/coinguardian/model/CheckerInfo;)V
    .locals 4
    .param p1, "requestId"    # I
    .param p2, "jsonObject"    # Lorg/json/JSONObject;
    .param p3, "ticker"    # Lcom/mobnetic/coinguardian/model/Ticker;
    .param p4, "checkerInfo"    # Lcom/mobnetic/coinguardian/model/CheckerInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 73
    invoke-virtual {p2}, Lorg/json/JSONObject;->names()Lorg/json/JSONArray;

    move-result-object v0

    .line 74
    .local v0, "names":Lorg/json/JSONArray;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 76
    .local v1, "tickerJsonObject":Lorg/json/JSONObject;
    const-string v2, "sell"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p3, Lcom/mobnetic/coinguardian/model/Ticker;->bid:D

    .line 77
    const-string v2, "buy"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p3, Lcom/mobnetic/coinguardian/model/Ticker;->ask:D

    .line 78
    const-string v2, "vol"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p3, Lcom/mobnetic/coinguardian/model/Ticker;->vol:D

    .line 79
    const-string v2, "high"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p3, Lcom/mobnetic/coinguardian/model/Ticker;->high:D

    .line 80
    const-string v2, "low"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p3, Lcom/mobnetic/coinguardian/model/Ticker;->low:D

    .line 81
    const-string v2, "last"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p3, Lcom/mobnetic/coinguardian/model/Ticker;->last:D

    .line 82
    const-string v2, "updated"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p3, Lcom/mobnetic/coinguardian/model/Ticker;->timestamp:J

    .line 83
    return-void
.end method
