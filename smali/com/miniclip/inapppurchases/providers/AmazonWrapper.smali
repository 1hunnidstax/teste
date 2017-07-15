.class public Lcom/miniclip/inapppurchases/providers/AmazonWrapper;
.super Ljava/lang/Object;
.source "AmazonWrapper.java"

# interfaces
.implements Lcom/miniclip/inapppurchases/ProviderWrapper;
.implements Lcom/amazon/device/iap/PurchasingListener;


# static fields
.field private static settingsTag:Ljava/lang/String;


# instance fields
.field private _activity:Landroid/app/Activity;

.field private failedSkus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private inited:Z

.field private productDataFailed:Z

.field private remainingSkus:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private requestedProductId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "InAppPurchasesInfo"

    sput-object v0, Lcom/miniclip/inapppurchases/providers/AmazonWrapper;->settingsTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object v0, p0, Lcom/miniclip/inapppurchases/providers/AmazonWrapper;->_activity:Landroid/app/Activity;

    .line 34
    iput-object v0, p0, Lcom/miniclip/inapppurchases/providers/AmazonWrapper;->requestedProductId:Ljava/lang/String;

    .line 35
    iput-boolean v1, p0, Lcom/miniclip/inapppurchases/providers/AmazonWrapper;->inited:Z

    .line 38
    iput-object v0, p0, Lcom/miniclip/inapppurchases/providers/AmazonWrapper;->remainingSkus:Ljava/util/List;

    .line 39
    iput-object v0, p0, Lcom/miniclip/inapppurchases/providers/AmazonWrapper;->failedSkus:Ljava/util/List;

    .line 40
    iput-boolean v1, p0, Lcom/miniclip/inapppurchases/providers/AmazonWrapper;->productDataFailed:Z

    .line 44
    iput-object p1, p0, Lcom/miniclip/inapppurchases/providers/AmazonWrapper;->_activity:Landroid/app/Activity;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/miniclip/inapppurchases/providers/AmazonWrapper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miniclip/inapppurchases/providers/AmazonWrapper;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/miniclip/inapppurchases/providers/AmazonWrapper;->checkRemainingSkus()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/miniclip/inapppurchases/providers/AmazonWrapper;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miniclip/inapppurchases/providers/AmazonWrapper;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/miniclip/inapppurchases/providers/AmazonWrapper;->failedSkus:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miniclip/inapppurchases/providers/AmazonWrapper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miniclip/inapppurchases/providers/AmazonWrapper;

    .prologue
    .line 29
    iget-boolean v0, p0, Lcom/miniclip/inapppurchases/providers/AmazonWrapper;->productDataFailed:Z

    return v0
.end method

.method private checkRemainingSkus()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 48
    iget-object v4, p0, Lcom/miniclip/inapppurchases/providers/AmazonWrapper;->remainingSkus:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 60
    :goto_0
    return v3

    .line 51
    :cond_0
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 52
    .local v2, "skusGet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    const/16 v4, 0x64

    if-ge v0, v4, :cond_1

    .line 53
    iget-object v4, p0, Lcom/miniclip/inapppurchases/providers/AmazonWrapper;->remainingSkus:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_2

    .line 59
    :cond_1
    invoke-static {v2}, Lcom/amazon/device/iap/PurchasingService;->getProductData(Ljava/util/Set;)Lcom/amazon/device/iap/model/RequestId;

    .line 60
    const/4 v3, 0x1

    goto :goto_0

    .line 56
    :cond_2
    iget-object v4, p0, Lcom/miniclip/inapppurchases/providers/AmazonWrapper;->remainingSkus:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 57
    .local v1, "sku":Ljava/lang/String;
    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method


# virtual methods
.method public finishPurchase(Ljava/lang/String;)V
    .locals 6
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 96
    iget-object v3, p0, Lcom/miniclip/inapppurchases/providers/AmazonWrapper;->_activity:Landroid/app/Activity;

    sget-object v4, Lcom/miniclip/inapppurchases/providers/AmazonWrapper;->settingsTag:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 97
    .local v2, "settingsExtra":Landroid/content/SharedPreferences;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_RECEIPT_ID"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 99
    .local v1, "receiptID":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 100
    const-string v3, "AmazonWrapper"

    const-string v4, "Failed to retrieve the receiptID for the last purchase!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    :goto_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 106
    .local v0, "editorExtra":Landroid/content/SharedPreferences$Editor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_RECEIPT_ID"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 107
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_IS_PENDING"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 108
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 109
    return-void

    .line 102
    .end local v0    # "editorExtra":Landroid/content/SharedPreferences$Editor;
    :cond_0
    sget-object v3, Lcom/amazon/device/iap/model/FulfillmentResult;->FULFILLED:Lcom/amazon/device/iap/model/FulfillmentResult;

    invoke-static {v1, v3}, Lcom/amazon/device/iap/PurchasingService;->notifyFulfillment(Ljava/lang/String;Lcom/amazon/device/iap/model/FulfillmentResult;)V

    goto :goto_0
.end method

.method public onProductDataResponse(Lcom/amazon/device/iap/model/ProductDataResponse;)V
    .locals 10
    .param p1, "productDataResponse"    # Lcom/amazon/device/iap/model/ProductDataResponse;

    .prologue
    .line 135
    const-string v5, "AmazonInAppPurchase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onProductDataResponse: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/ProductDataResponse;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/ProductDataResponse;->getProductData()Ljava/util/Map;

    move-result-object v1

    .line 138
    .local v1, "products":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/amazon/device/iap/model/Product;>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 139
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/amazon/device/iap/model/Product;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/device/iap/model/Product;

    invoke-virtual {v5}, Lcom/amazon/device/iap/model/Product;->getSku()Ljava/lang/String;

    move-result-object v2

    .line 140
    .local v2, "sku":Ljava/lang/String;
    const-string v7, "Amazon"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amazon/device/iap/model/Product;

    invoke-virtual {v5}, Lcom/amazon/device/iap/model/Product;->getPrice()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v2, v5}, Lcom/miniclip/inapppurchases/MCInAppPurchases;->setItemPrice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v5, "Amazon"

    const-wide/32 v8, -0xf4240

    invoke-static {v5, v2, v8, v9}, Lcom/miniclip/inapppurchases/MCInAppPurchases;->setItemPriceAmountMicros(Ljava/lang/String;Ljava/lang/String;J)V

    .line 144
    const-string v5, "Amazon"

    const-string v7, "USD"

    invoke-static {v5, v2, v7}, Lcom/miniclip/inapppurchases/MCInAppPurchases;->setItemCurrencyCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 148
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/amazon/device/iap/model/Product;>;"
    .end local v2    # "sku":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/ProductDataResponse;->getRequestStatus()Lcom/amazon/device/iap/model/ProductDataResponse$RequestStatus;

    move-result-object v3

    .line 150
    .local v3, "status":Lcom/amazon/device/iap/model/ProductDataResponse$RequestStatus;
    sget-object v5, Lcom/amazon/device/iap/model/ProductDataResponse$RequestStatus;->SUCCESSFUL:Lcom/amazon/device/iap/model/ProductDataResponse$RequestStatus;

    if-eq v3, v5, :cond_1

    .line 151
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/miniclip/inapppurchases/providers/AmazonWrapper;->productDataFailed:Z

    .line 154
    :cond_1
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/ProductDataResponse;->getUnavailableSkus()Ljava/util/Set;

    move-result-object v4

    .line 155
    .local v4, "unavailableSkus":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 156
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 157
    .restart local v2    # "sku":Ljava/lang/String;
    iget-object v6, p0, Lcom/miniclip/inapppurchases/providers/AmazonWrapper;->failedSkus:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 161
    .end local v2    # "sku":Ljava/lang/String;
    :cond_2
    sget-object v5, Lcom/miniclip/framework/ThreadingContext;->GlThread:Lcom/miniclip/framework/ThreadingContext;

    new-instance v6, Lcom/miniclip/inapppurchases/providers/AmazonWrapper$1;

    invoke-direct {v6, p0}, Lcom/miniclip/inapppurchases/providers/AmazonWrapper$1;-><init>(Lcom/miniclip/inapppurchases/providers/AmazonWrapper;)V

    invoke-static {v5, v6}, Lcom/miniclip/framework/Miniclip;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 171
    return-void
.end method

.method public onPurchaseResponse(Lcom/amazon/device/iap/model/PurchaseResponse;)V
    .locals 9
    .param p1, "purchaseResponse"    # Lcom/amazon/device/iap/model/PurchaseResponse;

    .prologue
    .line 176
    const-string v0, "AmazonInAppPurchase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPurchaseResponse "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseResponse;->getRequestStatus()Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v8, ":"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseResponse;->getRequestStatus()Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;

    move-result-object v7

    .line 184
    .local v7, "status":Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;
    sget-object v0, Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;->SUCCESSFUL:Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;

    if-ne v7, v0, :cond_1

    .line 185
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseResponse;->getReceipt()Lcom/amazon/device/iap/model/Receipt;

    move-result-object v6

    .line 186
    .local v6, "receipt":Lcom/amazon/device/iap/model/Receipt;
    sget v2, Lcom/miniclip/inapppurchases/MCInAppPurchases;->PURCHASE_SUCCESS:I

    .line 187
    .local v2, "responseStatus":I
    invoke-virtual {v6}, Lcom/amazon/device/iap/model/Receipt;->getSku()Ljava/lang/String;

    move-result-object v3

    .line 188
    .local v3, "productId":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/amazon/device/iap/model/Receipt;->getReceiptId()Ljava/lang/String;

    move-result-object v4

    .line 189
    .local v4, "token":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseResponse;->getUserData()Lcom/amazon/device/iap/model/UserData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/iap/model/UserData;->getUserId()Ljava/lang/String;

    move-result-object v5

    .line 191
    .local v5, "userId":Ljava/lang/String;
    invoke-virtual {v6}, Lcom/amazon/device/iap/model/Receipt;->getProductType()Lcom/amazon/device/iap/model/ProductType;

    move-result-object v0

    sget-object v1, Lcom/amazon/device/iap/model/ProductType;->ENTITLED:Lcom/amazon/device/iap/model/ProductType;

    if-ne v0, v1, :cond_0

    .line 192
    const-string v0, "Amazon"

    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseResponse;->getReceipt()Lcom/amazon/device/iap/model/Receipt;

    move-result-object v1

    invoke-virtual {v1}, Lcom/amazon/device/iap/model/Receipt;->getSku()Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x1

    invoke-static {v0, v1, v8}, Lcom/miniclip/inapppurchases/MCInAppPurchases;->setItemOwned(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 214
    .end local v6    # "receipt":Lcom/amazon/device/iap/model/Receipt;
    :cond_0
    :goto_0
    sget-object v8, Lcom/miniclip/framework/ThreadingContext;->GlThread:Lcom/miniclip/framework/ThreadingContext;

    new-instance v0, Lcom/miniclip/inapppurchases/providers/AmazonWrapper$2;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/miniclip/inapppurchases/providers/AmazonWrapper$2;-><init>(Lcom/miniclip/inapppurchases/providers/AmazonWrapper;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v8, v0}, Lcom/miniclip/framework/Miniclip;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 219
    return-void

    .line 195
    .end local v2    # "responseStatus":I
    .end local v3    # "productId":Ljava/lang/String;
    .end local v4    # "token":Ljava/lang/String;
    .end local v5    # "userId":Ljava/lang/String;
    :cond_1
    sget-object v0, Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;->ALREADY_PURCHASED:Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;

    if-ne v7, v0, :cond_2

    .line 196
    iget-object v3, p0, Lcom/miniclip/inapppurchases/providers/AmazonWrapper;->requestedProductId:Ljava/lang/String;

    .line 197
    .restart local v3    # "productId":Ljava/lang/String;
    sget v2, Lcom/miniclip/inapppurchases/MCInAppPurchases;->PURCHASE_SUCCESS:I

    .line 198
    .restart local v2    # "responseStatus":I
    invoke-virtual {p1}, Lcom/amazon/device/iap/model/PurchaseResponse;->getUserData()Lcom/amazon/device/iap/model/UserData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazon/device/iap/model/UserData;->getUserId()Ljava/lang/String;

    move-result-object v5

    .line 199
    .restart local v5    # "userId":Ljava/lang/String;
    const-string v4, ""

    .restart local v4    # "token":Ljava/lang/String;
    goto :goto_0

    .line 202
    .end local v2    # "responseStatus":I
    .end local v3    # "productId":Ljava/lang/String;
    .end local v4    # "token":Ljava/lang/String;
    .end local v5    # "userId":Ljava/lang/String;
    :cond_2
    const-string v0, "AmazonInAppPurchase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPurchaseResponse failed: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v8, p0, Lcom/miniclip/inapppurchases/providers/AmazonWrapper;->requestedProductId:Ljava/lang/String;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    sget-object v0, Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;->INVALID_SKU:Lcom/amazon/device/iap/model/PurchaseResponse$RequestStatus;

    if-ne v7, v0, :cond_3

    .line 205
    sget v2, Lcom/miniclip/inapppurchases/MCInAppPurchases;->PURCHASE_INVALID_SKU:I

    .line 209
    .restart local v2    # "responseStatus":I
    :goto_1
    iget-object v3, p0, Lcom/miniclip/inapppurchases/providers/AmazonWrapper;->requestedProductId:Ljava/lang/String;

    .line 210
    .restart local v3    # "productId":Ljava/lang/String;
    const/4 v4, 0x0

    .line 211
    .restart local v4    # "token":Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5    # "userId":Ljava/lang/String;
    goto :goto_0

    .line 207
    .end local v2    # "responseStatus":I
    .end local v3    # "productId":Ljava/lang/String;
    .end local v4    # "token":Ljava/lang/String;
    .end local v5    # "userId":Ljava/lang/String;
    :cond_3
    sget v2, Lcom/miniclip/inapppurchases/MCInAppPurchases;->PURCHASE_SERVER_FAILURE:I

    .restart local v2    # "responseStatus":I
    goto :goto_1
.end method

.method public onPurchaseUpdatesResponse(Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;)V
    .locals 17
    .param p1, "purchaseUpdatesResponse"    # Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;

    .prologue
    .line 227
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->getRequestStatus()Lcom/amazon/device/iap/model/PurchaseUpdatesResponse$RequestStatus;

    move-result-object v1

    sget-object v2, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse$RequestStatus;->SUCCESSFUL:Lcom/amazon/device/iap/model/PurchaseUpdatesResponse$RequestStatus;

    if-ne v1, v2, :cond_2

    .line 228
    const-string v1, "AmazonInAppPurchase"

    const-string v2, "getPurchaseUpdatesRequestStatus :: successful"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v3, 0x1

    .line 231
    .local v3, "success":Z
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v10, "receipts":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/device/iap/model/Receipt;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->getReceipts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/amazon/device/iap/model/Receipt;

    .line 233
    .local v9, "receipt":Lcom/amazon/device/iap/model/Receipt;
    invoke-virtual {v9}, Lcom/amazon/device/iap/model/Receipt;->getSku()Ljava/lang/String;

    move-result-object v12

    .line 234
    .local v12, "sku":Ljava/lang/String;
    const-string v2, "AmazonInAppPurchase"

    const-string v13, "Receipt: type: %s sku: %s"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-virtual {v9}, Lcom/amazon/device/iap/model/Receipt;->getProductType()Lcom/amazon/device/iap/model/ProductType;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    aput-object v12, v14, v15

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-virtual {v9}, Lcom/amazon/device/iap/model/Receipt;->getProductType()Lcom/amazon/device/iap/model/ProductType;

    move-result-object v2

    sget-object v13, Lcom/amazon/device/iap/model/ProductType;->ENTITLED:Lcom/amazon/device/iap/model/ProductType;

    if-ne v2, v13, :cond_0

    .line 236
    const-string v2, "Amazon"

    const/4 v13, 0x1

    invoke-static {v2, v12, v13}, Lcom/miniclip/inapppurchases/MCInAppPurchases;->setItemOwned(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 238
    :cond_0
    invoke-interface {v10, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 240
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miniclip/inapppurchases/providers/AmazonWrapper;->_activity:Landroid/app/Activity;

    sget-object v13, Lcom/miniclip/inapppurchases/providers/AmazonWrapper;->settingsTag:Ljava/lang/String;

    const/4 v14, 0x0

    invoke-virtual {v2, v13, v14}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 241
    .local v11, "settingsExtra":Landroid/content/SharedPreferences;
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    .line 242
    .local v7, "editorExtra":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v13, "_RECEIPT_ID"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9}, Lcom/amazon/device/iap/model/Receipt;->getReceiptId()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v7, v2, v13}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 243
    invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 246
    .end local v7    # "editorExtra":Landroid/content/SharedPreferences$Editor;
    .end local v9    # "receipt":Lcom/amazon/device/iap/model/Receipt;
    .end local v11    # "settingsExtra":Landroid/content/SharedPreferences;
    .end local v12    # "sku":Ljava/lang/String;
    :cond_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    new-array v4, v1, [Ljava/lang/String;

    .line 247
    .local v4, "productIds":[Ljava/lang/String;
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    new-array v5, v1, [Ljava/lang/String;

    .line 248
    .local v5, "tokens":[Ljava/lang/String;
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    new-array v6, v1, [Ljava/lang/String;

    .line 249
    .local v6, "userIds":[Ljava/lang/String;
    const/4 v8, 0x0

    .line 250
    .local v8, "i":I
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/amazon/device/iap/model/Receipt;

    .line 251
    .restart local v9    # "receipt":Lcom/amazon/device/iap/model/Receipt;
    invoke-virtual {v9}, Lcom/amazon/device/iap/model/Receipt;->getSku()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v8

    .line 252
    invoke-virtual {v9}, Lcom/amazon/device/iap/model/Receipt;->getReceiptId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v8

    .line 253
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->getUserData()Lcom/amazon/device/iap/model/UserData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amazon/device/iap/model/UserData;->getUserId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v6, v8

    .line 254
    add-int/lit8 v8, v8, 0x1

    .line 255
    goto :goto_1

    .line 257
    .end local v3    # "success":Z
    .end local v4    # "productIds":[Ljava/lang/String;
    .end local v5    # "tokens":[Ljava/lang/String;
    .end local v6    # "userIds":[Ljava/lang/String;
    .end local v8    # "i":I
    .end local v9    # "receipt":Lcom/amazon/device/iap/model/Receipt;
    .end local v10    # "receipts":Ljava/util/List;, "Ljava/util/List<Lcom/amazon/device/iap/model/Receipt;>;"
    :cond_2
    const-string v1, "AmazonInAppPurchase"

    const-string v2, "getPurchaseUpdatesRequestStatus :: failed"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v3, 0x0

    .line 259
    .restart local v3    # "success":Z
    const/4 v4, 0x0

    .line 260
    .restart local v4    # "productIds":[Ljava/lang/String;
    const/4 v5, 0x0

    .line 261
    .restart local v5    # "tokens":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 264
    .restart local v6    # "userIds":[Ljava/lang/String;
    :cond_3
    sget-object v13, Lcom/miniclip/framework/ThreadingContext;->GlThread:Lcom/miniclip/framework/ThreadingContext;

    new-instance v1, Lcom/miniclip/inapppurchases/providers/AmazonWrapper$3;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/miniclip/inapppurchases/providers/AmazonWrapper$3;-><init>(Lcom/miniclip/inapppurchases/providers/AmazonWrapper;Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    invoke-static {v13, v1}, Lcom/miniclip/framework/Miniclip;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 270
    invoke-virtual/range {p1 .. p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->getRequestStatus()Lcom/amazon/device/iap/model/PurchaseUpdatesResponse$RequestStatus;

    move-result-object v1

    sget-object v2, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse$RequestStatus;->SUCCESSFUL:Lcom/amazon/device/iap/model/PurchaseUpdatesResponse$RequestStatus;

    if-ne v1, v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;->hasMore()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 271
    const-string v1, "AmazonInAppPurchase"

    const-string v2, "has more"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/amazon/device/iap/PurchasingService;->getPurchaseUpdates(Z)Lcom/amazon/device/iap/model/RequestId;

    .line 274
    :cond_4
    return-void
.end method

.method public onUserDataResponse(Lcom/amazon/device/iap/model/UserDataResponse;)V
    .locals 0
    .param p1, "dataResponse"    # Lcom/amazon/device/iap/model/UserDataResponse;

    .prologue
    .line 130
    return-void
.end method

.method public refreshPurchases()V
    .locals 0

    .prologue
    .line 121
    return-void
.end method

.method public register(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 64
    .local p1, "skus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-boolean v0, p0, Lcom/miniclip/inapppurchases/providers/AmazonWrapper;->inited:Z

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/miniclip/inapppurchases/providers/AmazonWrapper;->_activity:Landroid/app/Activity;

    invoke-static {v0, p0}, Lcom/amazon/device/iap/PurchasingService;->registerListener(Landroid/content/Context;Lcom/amazon/device/iap/PurchasingListener;)V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miniclip/inapppurchases/providers/AmazonWrapper;->inited:Z

    .line 70
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/miniclip/inapppurchases/providers/AmazonWrapper;->remainingSkus:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miniclip/inapppurchases/providers/AmazonWrapper;->failedSkus:Ljava/util/List;

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miniclip/inapppurchases/providers/AmazonWrapper;->productDataFailed:Z

    .line 73
    invoke-direct {p0}, Lcom/miniclip/inapppurchases/providers/AmazonWrapper;->checkRemainingSkus()Z

    .line 74
    return-void
.end method

.method public requestPendingPurchases()V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/amazon/device/iap/PurchasingService;->getPurchaseUpdates(Z)Lcom/amazon/device/iap/model/RequestId;

    .line 118
    return-void
.end method

.method public requestPurchase(Ljava/lang/String;Z)V
    .locals 7
    .param p1, "productId"    # Ljava/lang/String;
    .param p2, "managed"    # Z

    .prologue
    const/4 v6, 0x0

    .line 77
    iput-object p1, p0, Lcom/miniclip/inapppurchases/providers/AmazonWrapper;->requestedProductId:Ljava/lang/String;

    .line 78
    const-string v3, "AmazonWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestPurchase - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v3, p0, Lcom/miniclip/inapppurchases/providers/AmazonWrapper;->_activity:Landroid/app/Activity;

    sget-object v4, Lcom/miniclip/inapppurchases/providers/AmazonWrapper;->settingsTag:Ljava/lang/String;

    invoke-virtual {v3, v4, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 81
    .local v2, "settingsExtra":Landroid/content/SharedPreferences;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_IS_PENDING"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 83
    .local v0, "alreadyRequested":Z
    if-eqz v0, :cond_0

    .line 84
    const-string v3, "AmazonWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Purchase for product "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pending..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :goto_0
    return-void

    .line 88
    :cond_0
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 89
    .local v1, "editorExtra":Landroid/content/SharedPreferences$Editor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_IS_PENDING"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 90
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 92
    invoke-static {p1}, Lcom/amazon/device/iap/PurchasingService;->purchase(Ljava/lang/String;)Lcom/amazon/device/iap/model/RequestId;

    goto :goto_0
.end method

.method public restorePurchases()V
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/amazon/device/iap/PurchasingService;->getPurchaseUpdates(Z)Lcom/amazon/device/iap/model/RequestId;

    .line 114
    return-void
.end method
