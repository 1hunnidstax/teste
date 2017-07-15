.class public Lcom/miniclip/inapppurchases/MCInAppPurchases;
.super Ljava/lang/Object;
.source "MCInAppPurchases.java"


# static fields
.field public static final AMAZON_NAME:Ljava/lang/String; = "Amazon"

.field public static final GOOGLE_NAME:Ljava/lang/String; = "Google"

.field private static final ITEM_CURRENCYCODE_FORMAT:Ljava/lang/String; = "ITEM_CURRENCYCODES_%s"

.field private static final ITEM_PRICEAMOUNTMICROS_FORMAT:Ljava/lang/String; = "ITEM_PRICEAMOUNTMICROS_%s"

.field private static final ITEM_PRICES_FORMAT:Ljava/lang/String; = "ITEM_PRICES_%s"

.field private static final OWNED_ITEMS_FORMAT:Ljava/lang/String; = "OWNED_ITEMS_%s"

.field public static PURCHASE_CANCELED:I

.field public static PURCHASE_INVALID_SKU:I

.field public static PURCHASE_SERVER_FAILURE:I

.field public static PURCHASE_SUCCESS:I

.field public static PURCHASE_UNKNOWN_ERROR:I

.field private static _activity:Landroid/app/Activity;

.field private static _amazon:Lcom/miniclip/inapppurchases/providers/AmazonWrapper;

.field private static _google:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 19
    sput-object v0, Lcom/miniclip/inapppurchases/MCInAppPurchases;->_activity:Landroid/app/Activity;

    .line 21
    sput-object v0, Lcom/miniclip/inapppurchases/MCInAppPurchases;->_google:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    .line 22
    sput-object v0, Lcom/miniclip/inapppurchases/MCInAppPurchases;->_amazon:Lcom/miniclip/inapppurchases/providers/AmazonWrapper;

    .line 179
    const/4 v0, 0x0

    sput v0, Lcom/miniclip/inapppurchases/MCInAppPurchases;->PURCHASE_SUCCESS:I

    .line 180
    const/4 v0, 0x1

    sput v0, Lcom/miniclip/inapppurchases/MCInAppPurchases;->PURCHASE_CANCELED:I

    .line 181
    const/4 v0, 0x2

    sput v0, Lcom/miniclip/inapppurchases/MCInAppPurchases;->PURCHASE_SERVER_FAILURE:I

    .line 182
    const/4 v0, 0x3

    sput v0, Lcom/miniclip/inapppurchases/MCInAppPurchases;->PURCHASE_INVALID_SKU:I

    .line 183
    const/4 v0, -0x1

    sput v0, Lcom/miniclip/inapppurchases/MCInAppPurchases;->PURCHASE_UNKNOWN_ERROR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Z[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Z
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 15
    invoke-static {p0, p1}, Lcom/miniclip/inapppurchases/MCInAppPurchases;->onRegisterProviderResult(Z[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-static {p0, p1, p2, p3}, Lcom/miniclip/inapppurchases/MCInAppPurchases;->onPurchaseResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Z
    .param p1, "x1"    # [Ljava/lang/String;
    .param p2, "x2"    # [Ljava/lang/String;
    .param p3, "x3"    # [Ljava/lang/String;

    .prologue
    .line 15
    invoke-static {p0, p1, p2, p3}, Lcom/miniclip/inapppurchases/MCInAppPurchases;->onPurchasesRestoredResult(Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public static finishPurchase(Ljava/lang/String;)V
    .locals 1
    .param p0, "productId"    # Ljava/lang/String;

    .prologue
    .line 108
    sget-object v0, Lcom/miniclip/inapppurchases/MCInAppPurchases;->_google:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    if-eqz v0, :cond_1

    .line 109
    sget-object v0, Lcom/miniclip/inapppurchases/MCInAppPurchases;->_google:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    invoke-virtual {v0, p0}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->finishPurchase(Ljava/lang/String;)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    sget-object v0, Lcom/miniclip/inapppurchases/MCInAppPurchases;->_amazon:Lcom/miniclip/inapppurchases/providers/AmazonWrapper;

    if-eqz v0, :cond_0

    .line 111
    sget-object v0, Lcom/miniclip/inapppurchases/MCInAppPurchases;->_amazon:Lcom/miniclip/inapppurchases/providers/AmazonWrapper;

    invoke-virtual {v0, p0}, Lcom/miniclip/inapppurchases/providers/AmazonWrapper;->finishPurchase(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static native getConsumableSkus([Ljava/lang/String;)[Ljava/lang/String;
.end method

.method public static getItemCurrencyCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "itemId"    # Ljava/lang/String;

    .prologue
    .line 67
    sget-object v0, Lcom/miniclip/inapppurchases/MCInAppPurchases;->_google:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    if-eqz v0, :cond_0

    .line 68
    const-string v0, "Google"

    invoke-static {v0, p0}, Lcom/miniclip/inapppurchases/MCInAppPurchases;->getItemCurrencyCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    :goto_0
    return-object v0

    .line 69
    :cond_0
    sget-object v0, Lcom/miniclip/inapppurchases/MCInAppPurchases;->_amazon:Lcom/miniclip/inapppurchases/providers/AmazonWrapper;

    if-eqz v0, :cond_1

    .line 70
    const-string v0, "Amazon"

    invoke-static {v0, p0}, Lcom/miniclip/inapppurchases/MCInAppPurchases;->getItemCurrencyCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 72
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static getItemCurrencyCode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "provider"    # Ljava/lang/String;
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 155
    sget-object v1, Lcom/miniclip/inapppurchases/MCInAppPurchases;->_activity:Landroid/app/Activity;

    const-string v2, "ITEM_CURRENCYCODES_%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 156
    .local v0, "currencyCodes":Landroid/content/SharedPreferences;
    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getItemPrice(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "itemId"    # Ljava/lang/String;

    .prologue
    .line 47
    sget-object v0, Lcom/miniclip/inapppurchases/MCInAppPurchases;->_google:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    if-eqz v0, :cond_0

    .line 48
    const-string v0, "Google"

    invoke-static {v0, p0}, Lcom/miniclip/inapppurchases/MCInAppPurchases;->getItemPrice(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    :goto_0
    return-object v0

    .line 49
    :cond_0
    sget-object v0, Lcom/miniclip/inapppurchases/MCInAppPurchases;->_amazon:Lcom/miniclip/inapppurchases/providers/AmazonWrapper;

    if-eqz v0, :cond_1

    .line 50
    const-string v0, "Amazon"

    invoke-static {v0, p0}, Lcom/miniclip/inapppurchases/MCInAppPurchases;->getItemPrice(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 52
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public static getItemPrice(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "provider"    # Ljava/lang/String;
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 133
    sget-object v1, Lcom/miniclip/inapppurchases/MCInAppPurchases;->_activity:Landroid/app/Activity;

    const-string v2, "ITEM_PRICES_%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 134
    .local v0, "prices":Landroid/content/SharedPreferences;
    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getItemPriceAmountMicros(Ljava/lang/String;)J
    .locals 2
    .param p0, "itemId"    # Ljava/lang/String;

    .prologue
    .line 57
    sget-object v0, Lcom/miniclip/inapppurchases/MCInAppPurchases;->_google:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    if-eqz v0, :cond_0

    .line 58
    const-string v0, "Google"

    invoke-static {v0, p0}, Lcom/miniclip/inapppurchases/MCInAppPurchases;->getItemPriceAmountMicros(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    .line 62
    :goto_0
    return-wide v0

    .line 59
    :cond_0
    sget-object v0, Lcom/miniclip/inapppurchases/MCInAppPurchases;->_amazon:Lcom/miniclip/inapppurchases/providers/AmazonWrapper;

    if-eqz v0, :cond_1

    .line 60
    const-string v0, "Amazon"

    invoke-static {v0, p0}, Lcom/miniclip/inapppurchases/MCInAppPurchases;->getItemPriceAmountMicros(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    .line 62
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static getItemPriceAmountMicros(Ljava/lang/String;Ljava/lang/String;)J
    .locals 5
    .param p0, "provider"    # Ljava/lang/String;
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 144
    sget-object v1, Lcom/miniclip/inapppurchases/MCInAppPurchases;->_activity:Landroid/app/Activity;

    const-string v2, "ITEM_PRICEAMOUNTMICROS_%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 145
    .local v0, "priceAmountMicros":Landroid/content/SharedPreferences;
    const-wide/16 v2, 0x0

    invoke-interface {v0, p1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 25
    sput-object p0, Lcom/miniclip/inapppurchases/MCInAppPurchases;->_activity:Landroid/app/Activity;

    .line 26
    return-void
.end method

.method public static isItemOwned(Ljava/lang/String;)Z
    .locals 1
    .param p0, "itemId"    # Ljava/lang/String;

    .prologue
    .line 116
    sget-object v0, Lcom/miniclip/inapppurchases/MCInAppPurchases;->_google:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    if-eqz v0, :cond_0

    .line 117
    const-string v0, "Google"

    invoke-static {v0, p0}, Lcom/miniclip/inapppurchases/MCInAppPurchases;->isItemOwned(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    .line 121
    :goto_0
    return v0

    .line 118
    :cond_0
    sget-object v0, Lcom/miniclip/inapppurchases/MCInAppPurchases;->_amazon:Lcom/miniclip/inapppurchases/providers/AmazonWrapper;

    if-eqz v0, :cond_1

    .line 119
    const-string v0, "Amazon"

    invoke-static {v0, p0}, Lcom/miniclip/inapppurchases/MCInAppPurchases;->isItemOwned(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 121
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isItemOwned(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p0, "provider"    # Ljava/lang/String;
    .param p1, "itemId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 166
    sget-object v1, Lcom/miniclip/inapppurchases/MCInAppPurchases;->_activity:Landroid/app/Activity;

    const-string v2, "OWNED_ITEMS_%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 167
    .local v0, "ownedItems":Landroid/content/SharedPreferences;
    invoke-interface {v0, p1, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private static native onPurchaseResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private static native onPurchasesRestoredResult(Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
.end method

.method private static native onRegisterProviderResult(Z[Ljava/lang/String;)V
.end method

.method public static refreshPurchases()V
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/miniclip/inapppurchases/MCInAppPurchases;->_google:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    if-eqz v0, :cond_1

    .line 93
    sget-object v0, Lcom/miniclip/inapppurchases/MCInAppPurchases;->_google:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    invoke-virtual {v0}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->refreshPurchases()V

    .line 97
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    sget-object v0, Lcom/miniclip/inapppurchases/MCInAppPurchases;->_amazon:Lcom/miniclip/inapppurchases/providers/AmazonWrapper;

    if-eqz v0, :cond_0

    .line 95
    sget-object v0, Lcom/miniclip/inapppurchases/MCInAppPurchases;->_amazon:Lcom/miniclip/inapppurchases/providers/AmazonWrapper;

    invoke-virtual {v0}, Lcom/miniclip/inapppurchases/providers/AmazonWrapper;->refreshPurchases()V

    goto :goto_0
.end method

.method public static registerProvider(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "providerName"    # Ljava/lang/String;
    .param p1, "inAppSkus"    # [Ljava/lang/String;
    .param p2, "publicKey"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 29
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 31
    .local v0, "inAppSkusList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v2, "Google"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 32
    sget-object v2, Lcom/miniclip/inapppurchases/MCInAppPurchases;->_google:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    if-nez v2, :cond_0

    .line 33
    new-instance v2, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    sget-object v3, Lcom/miniclip/inapppurchases/MCInAppPurchases;->_activity:Landroid/app/Activity;

    invoke-direct {v2, v3, p2}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    sput-object v2, Lcom/miniclip/inapppurchases/MCInAppPurchases;->_google:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    .line 34
    :cond_0
    sget-object v2, Lcom/miniclip/inapppurchases/MCInAppPurchases;->_google:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    invoke-virtual {v2, v0}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->register(Ljava/util/List;)V

    .line 42
    :goto_0
    return v1

    .line 36
    :cond_1
    const-string v2, "Amazon"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 37
    sget-object v2, Lcom/miniclip/inapppurchases/MCInAppPurchases;->_amazon:Lcom/miniclip/inapppurchases/providers/AmazonWrapper;

    if-nez v2, :cond_2

    .line 38
    new-instance v2, Lcom/miniclip/inapppurchases/providers/AmazonWrapper;

    sget-object v3, Lcom/miniclip/inapppurchases/MCInAppPurchases;->_activity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/miniclip/inapppurchases/providers/AmazonWrapper;-><init>(Landroid/app/Activity;)V

    sput-object v2, Lcom/miniclip/inapppurchases/MCInAppPurchases;->_amazon:Lcom/miniclip/inapppurchases/providers/AmazonWrapper;

    .line 39
    :cond_2
    sget-object v2, Lcom/miniclip/inapppurchases/MCInAppPurchases;->_amazon:Lcom/miniclip/inapppurchases/providers/AmazonWrapper;

    invoke-virtual {v2, v0}, Lcom/miniclip/inapppurchases/providers/AmazonWrapper;->register(Ljava/util/List;)V

    goto :goto_0

    .line 42
    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static requestPendingPurchases()V
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/miniclip/inapppurchases/MCInAppPurchases;->_google:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    if-eqz v0, :cond_1

    .line 101
    sget-object v0, Lcom/miniclip/inapppurchases/MCInAppPurchases;->_google:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    invoke-virtual {v0}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->requestPendingPurchases()V

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    sget-object v0, Lcom/miniclip/inapppurchases/MCInAppPurchases;->_amazon:Lcom/miniclip/inapppurchases/providers/AmazonWrapper;

    if-eqz v0, :cond_0

    .line 103
    sget-object v0, Lcom/miniclip/inapppurchases/MCInAppPurchases;->_amazon:Lcom/miniclip/inapppurchases/providers/AmazonWrapper;

    invoke-virtual {v0}, Lcom/miniclip/inapppurchases/providers/AmazonWrapper;->requestPendingPurchases()V

    goto :goto_0
.end method

.method public static requestPurchase(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "itemId"    # Ljava/lang/String;
    .param p1, "managed"    # Z

    .prologue
    .line 77
    sget-object v0, Lcom/miniclip/inapppurchases/MCInAppPurchases;->_google:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    if-eqz v0, :cond_1

    .line 78
    sget-object v0, Lcom/miniclip/inapppurchases/MCInAppPurchases;->_google:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    invoke-virtual {v0, p0, p1}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->requestPurchase(Ljava/lang/String;Z)V

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    sget-object v0, Lcom/miniclip/inapppurchases/MCInAppPurchases;->_amazon:Lcom/miniclip/inapppurchases/providers/AmazonWrapper;

    if-eqz v0, :cond_0

    .line 80
    sget-object v0, Lcom/miniclip/inapppurchases/MCInAppPurchases;->_amazon:Lcom/miniclip/inapppurchases/providers/AmazonWrapper;

    invoke-virtual {v0, p0, p1}, Lcom/miniclip/inapppurchases/providers/AmazonWrapper;->requestPurchase(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static restorePurchases()V
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/miniclip/inapppurchases/MCInAppPurchases;->_google:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    if-eqz v0, :cond_1

    .line 86
    sget-object v0, Lcom/miniclip/inapppurchases/MCInAppPurchases;->_google:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    invoke-virtual {v0}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->restorePurchases()V

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 87
    :cond_1
    sget-object v0, Lcom/miniclip/inapppurchases/MCInAppPurchases;->_amazon:Lcom/miniclip/inapppurchases/providers/AmazonWrapper;

    if-eqz v0, :cond_0

    .line 88
    sget-object v0, Lcom/miniclip/inapppurchases/MCInAppPurchases;->_amazon:Lcom/miniclip/inapppurchases/providers/AmazonWrapper;

    invoke-virtual {v0}, Lcom/miniclip/inapppurchases/providers/AmazonWrapper;->restorePurchases()V

    goto :goto_0
.end method

.method public static setItemCurrencyCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "provider"    # Ljava/lang/String;
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "currencyCode"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 159
    sget-object v2, Lcom/miniclip/inapppurchases/MCInAppPurchases;->_activity:Landroid/app/Activity;

    const-string v3, "ITEM_CURRENCYCODES_%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 160
    .local v0, "currencyCodes":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 161
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 162
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 163
    return-void
.end method

.method public static setItemOwned(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 6
    .param p0, "provider"    # Ljava/lang/String;
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "owned"    # Z

    .prologue
    const/4 v5, 0x0

    .line 170
    sget-object v2, Lcom/miniclip/inapppurchases/MCInAppPurchases;->_activity:Landroid/app/Activity;

    const-string v3, "OWNED_ITEMS_%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 171
    .local v1, "prices":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 172
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 173
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 174
    return-void
.end method

.method public static setItemPrice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p0, "provider"    # Ljava/lang/String;
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "price"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 137
    sget-object v2, Lcom/miniclip/inapppurchases/MCInAppPurchases;->_activity:Landroid/app/Activity;

    const-string v3, "ITEM_PRICES_%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 138
    .local v1, "prices":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 139
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 140
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 141
    return-void
.end method

.method public static setItemPriceAmountMicros(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6
    .param p0, "provider"    # Ljava/lang/String;
    .param p1, "itemId"    # Ljava/lang/String;
    .param p2, "amount"    # J

    .prologue
    const/4 v5, 0x0

    .line 148
    sget-object v2, Lcom/miniclip/inapppurchases/MCInAppPurchases;->_activity:Landroid/app/Activity;

    const-string v3, "ITEM_PRICEAMOUNTMICROS_%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 149
    .local v1, "priceAmountMicros":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 150
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 151
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 152
    return-void
.end method

.method public static signalPurchaseResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "response"    # I
    .param p1, "productId"    # Ljava/lang/String;
    .param p2, "verificationData1"    # Ljava/lang/String;
    .param p3, "verificationData2"    # Ljava/lang/String;

    .prologue
    .line 193
    sget-object v0, Lcom/miniclip/framework/ThreadingContext;->GlThread:Lcom/miniclip/framework/ThreadingContext;

    new-instance v1, Lcom/miniclip/inapppurchases/MCInAppPurchases$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/miniclip/inapppurchases/MCInAppPurchases$2;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/miniclip/framework/Miniclip;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 198
    return-void
.end method

.method public static signalPurchasesRestoredResult(Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2
    .param p0, "success"    # Z
    .param p1, "productId"    # [Ljava/lang/String;
    .param p2, "verificationData1"    # [Ljava/lang/String;
    .param p3, "verificationData2"    # [Ljava/lang/String;

    .prologue
    .line 200
    sget-object v0, Lcom/miniclip/framework/ThreadingContext;->GlThread:Lcom/miniclip/framework/ThreadingContext;

    new-instance v1, Lcom/miniclip/inapppurchases/MCInAppPurchases$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/miniclip/inapppurchases/MCInAppPurchases$3;-><init>(Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/miniclip/framework/Miniclip;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 205
    return-void
.end method

.method public static signalRegisterProviderResult(Z[Ljava/lang/String;)V
    .locals 2
    .param p0, "success"    # Z
    .param p1, "failedSkus"    # [Ljava/lang/String;

    .prologue
    .line 186
    sget-object v0, Lcom/miniclip/framework/ThreadingContext;->GlThread:Lcom/miniclip/framework/ThreadingContext;

    new-instance v1, Lcom/miniclip/inapppurchases/MCInAppPurchases$1;

    invoke-direct {v1, p0, p1}, Lcom/miniclip/inapppurchases/MCInAppPurchases$1;-><init>(Z[Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/miniclip/framework/Miniclip;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 191
    return-void
.end method
