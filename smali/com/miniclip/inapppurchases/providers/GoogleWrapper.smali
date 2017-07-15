.class public Lcom/miniclip/inapppurchases/providers/GoogleWrapper;
.super Lcom/miniclip/framework/AbstractActivityListener;
.source "GoogleWrapper.java"

# interfaces
.implements Lcom/miniclip/inapppurchases/ProviderWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miniclip/inapppurchases/providers/GoogleWrapper$QueryInventoryFinishedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private _activity:Landroid/app/Activity;

.field private _publicKey:Ljava/lang/String;

.field private mBusy:Z

.field private mConsumeFinishedListener:Lcom/miniclip/googlebilling/IabHelper$OnConsumeFinishedListener;

.field private mHelper:Lcom/miniclip/googlebilling/IabHelper;

.field private mHelperReady:Z

.field private mInAppProductId:Ljava/lang/String;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mPurchaseFinishedListener:Lcom/miniclip/googlebilling/IabHelper$OnIabPurchaseFinishedListener;

.field private mPurchaseFinishedListenerManaged:Lcom/miniclip/googlebilling/IabHelper$OnIabPurchaseFinishedListener;

.field private pendingSkus:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private registeredSkus:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "publicKey"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Lcom/miniclip/framework/AbstractActivityListener;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->_activity:Landroid/app/Activity;

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->registeredSkus:Ljava/util/Set;

    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->pendingSkus:Ljava/util/Set;

    .line 41
    iput-boolean v1, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mHelperReady:Z

    .line 42
    iput-boolean v1, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mBusy:Z

    .line 46
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->queue:Ljava/util/Queue;

    .line 407
    new-instance v0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$8;

    invoke-direct {v0, p0}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$8;-><init>(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;)V

    iput-object v0, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mPurchaseFinishedListener:Lcom/miniclip/googlebilling/IabHelper$OnIabPurchaseFinishedListener;

    .line 414
    new-instance v0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$9;

    invoke-direct {v0, p0}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$9;-><init>(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;)V

    iput-object v0, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mPurchaseFinishedListenerManaged:Lcom/miniclip/googlebilling/IabHelper$OnIabPurchaseFinishedListener;

    .line 421
    new-instance v0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$10;

    invoke-direct {v0, p0}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$10;-><init>(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;)V

    iput-object v0, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mConsumeFinishedListener:Lcom/miniclip/googlebilling/IabHelper$OnConsumeFinishedListener;

    .line 49
    iput-object p1, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->_activity:Landroid/app/Activity;

    .line 50
    iput-object p2, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->_publicKey:Ljava/lang/String;

    .line 51
    return-void
.end method

.method private CollectionToArray(Ljava/util/Collection;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 511
    .local p1, "col":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 512
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 513
    :goto_0
    return-object v0

    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mHelperReady:Z

    return v0
.end method

.method static synthetic access$002(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miniclip/inapppurchases/providers/GoogleWrapper;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mHelperReady:Z

    return p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    sget-object v0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->registeredSkus:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;Ljava/util/Collection;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miniclip/inapppurchases/providers/GoogleWrapper;
    .param p1, "x1"    # Ljava/util/Collection;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->CollectionToArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mInAppProductId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/miniclip/inapppurchases/providers/GoogleWrapper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mInAppProductId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miniclip/inapppurchases/providers/GoogleWrapper;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->onPurchaseResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miniclip/inapppurchases/providers/GoogleWrapper;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->setWaitScreen(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;)Lcom/miniclip/googlebilling/IabHelper$OnIabPurchaseFinishedListener;
    .locals 1
    .param p0, "x0"    # Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mPurchaseFinishedListenerManaged:Lcom/miniclip/googlebilling/IabHelper$OnIabPurchaseFinishedListener;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;)Lcom/miniclip/googlebilling/IabHelper$OnIabPurchaseFinishedListener;
    .locals 1
    .param p0, "x0"    # Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mPurchaseFinishedListener:Lcom/miniclip/googlebilling/IabHelper$OnIabPurchaseFinishedListener;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;)Lcom/miniclip/googlebilling/IabHelper$OnConsumeFinishedListener;
    .locals 1
    .param p0, "x0"    # Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mConsumeFinishedListener:Lcom/miniclip/googlebilling/IabHelper$OnConsumeFinishedListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->pendingSkus:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;Lcom/miniclip/googlebilling/IabResult;Lcom/miniclip/googlebilling/Purchase;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miniclip/inapppurchases/providers/GoogleWrapper;
    .param p1, "x1"    # Lcom/miniclip/googlebilling/IabResult;
    .param p2, "x2"    # Lcom/miniclip/googlebilling/Purchase;
    .param p3, "x3"    # Z

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->purchaseFinishedCallback(Lcom/miniclip/googlebilling/IabResult;Lcom/miniclip/googlebilling/Purchase;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;)Lcom/miniclip/googlebilling/IabHelper;
    .locals 1
    .param p0, "x0"    # Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mHelper:Lcom/miniclip/googlebilling/IabHelper;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/miniclip/inapppurchases/providers/GoogleWrapper;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$202(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;Lcom/miniclip/googlebilling/IabHelper;)Lcom/miniclip/googlebilling/IabHelper;
    .locals 0
    .param p0, "x0"    # Lcom/miniclip/inapppurchases/providers/GoogleWrapper;
    .param p1, "x1"    # Lcom/miniclip/googlebilling/IabHelper;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mHelper:Lcom/miniclip/googlebilling/IabHelper;

    return-object p1
.end method

.method static synthetic access$300(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->_activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->_publicKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mBusy:Z

    return v0
.end method

.method static synthetic access$502(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miniclip/inapppurchases/providers/GoogleWrapper;
    .param p1, "x1"    # Z

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mBusy:Z

    return p1
.end method

.method static synthetic access$600(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miniclip/inapppurchases/providers/GoogleWrapper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->complain(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;ZLjava/util/Collection;)V
    .locals 0
    .param p0, "x0"    # Lcom/miniclip/inapppurchases/providers/GoogleWrapper;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/util/Collection;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->onRegisterProviderResult(ZLjava/util/Collection;)V

    return-void
.end method

.method static synthetic access$800(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;Lcom/miniclip/googlebilling/Inventory;)V
    .locals 0
    .param p0, "x0"    # Lcom/miniclip/inapppurchases/providers/GoogleWrapper;
    .param p1, "x1"    # Lcom/miniclip/googlebilling/Inventory;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->syncInventory(Lcom/miniclip/googlebilling/Inventory;)V

    return-void
.end method

.method static synthetic access$900(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;ZLjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/miniclip/inapppurchases/providers/GoogleWrapper;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Ljava/util/List;
    .param p3, "x3"    # Ljava/util/List;
    .param p4, "x4"    # Ljava/util/List;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->onPurchasesRestoredResult(ZLjava/util/List;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private complain(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 528
    sget-object v0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "**** InAppActivity Error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    return-void
.end method

.method private onPendingPurchasesResult()V
    .locals 9

    .prologue
    .line 208
    iget-object v5, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->pendingSkus:Ljava/util/Set;

    monitor-enter v5

    .line 209
    :try_start_0
    iget-object v4, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->pendingSkus:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 210
    .local v1, "productId":Ljava/lang/String;
    sget-object v6, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPendingPurchasesResult pending: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object v6, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->_activity:Landroid/app/Activity;

    const-string v7, "INAPP_PURCHASED_OWNED_EXTRAv3"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 212
    .local v2, "settingsExtra":Landroid/content/SharedPreferences;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_DATA_UNIQUE"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "data":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_SIGNATURE_UNIQUE"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 214
    .local v3, "signature":Ljava/lang/String;
    sget v6, Lcom/miniclip/inapppurchases/MCInAppPurchases;->PURCHASE_SUCCESS:I

    invoke-direct {p0, v6, v1, v0, v3}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->onPurchaseResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 216
    .end local v0    # "data":Ljava/lang/String;
    .end local v1    # "productId":Ljava/lang/String;
    .end local v2    # "settingsExtra":Landroid/content/SharedPreferences;
    .end local v3    # "signature":Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_0
    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    return-void
.end method

.method private onPurchaseResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "response"    # I
    .param p2, "productId"    # Ljava/lang/String;
    .param p3, "verificationData1"    # Ljava/lang/String;
    .param p4, "verificationData2"    # Ljava/lang/String;

    .prologue
    .line 508
    invoke-static {p1, p2, p3, p4}, Lcom/miniclip/inapppurchases/MCInAppPurchases;->signalPurchaseResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    return-void
.end method

.method private onPurchasesRestoredResult(ZLjava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .param p1, "success"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 502
    .local p2, "productIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "verificationData1":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "verificationData2":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->CollectionToArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v2

    .line 503
    .local v2, "products":[Ljava/lang/String;
    invoke-direct {p0, p3}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->CollectionToArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    .line 504
    .local v0, "data1":[Ljava/lang/String;
    invoke-direct {p0, p4}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->CollectionToArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v1

    .line 505
    .local v1, "data2":[Ljava/lang/String;
    invoke-static {p1, v2, v0, v1}, Lcom/miniclip/inapppurchases/MCInAppPurchases;->signalPurchasesRestoredResult(Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 506
    return-void
.end method

.method private onRegisterProviderResult(ZLjava/util/Collection;)V
    .locals 1
    .param p1, "success"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 498
    .local p2, "failedSkus":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-direct {p0, p2}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->CollectionToArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    .line 499
    .local v0, "failed":[Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/miniclip/inapppurchases/MCInAppPurchases;->signalRegisterProviderResult(Z[Ljava/lang/String;)V

    .line 500
    return-void
.end method

.method private purchaseFinishedCallback(Lcom/miniclip/googlebilling/IabResult;Lcom/miniclip/googlebilling/Purchase;Z)V
    .locals 11
    .param p1, "result"    # Lcom/miniclip/googlebilling/IabResult;
    .param p2, "purchase"    # Lcom/miniclip/googlebilling/Purchase;
    .param p3, "managed"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 367
    sget-object v6, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Purchase finished: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", purchase: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    sget v3, Lcom/miniclip/inapppurchases/MCInAppPurchases;->PURCHASE_UNKNOWN_ERROR:I

    .line 370
    .local v3, "responseStatus":I
    iget-object v2, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mInAppProductId:Ljava/lang/String;

    .line 371
    .local v2, "productId":Ljava/lang/String;
    const-string v1, ""

    .line 372
    .local v1, "json":Ljava/lang/String;
    const-string v5, ""

    .line 374
    .local v5, "signature":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miniclip/googlebilling/IabResult;->isFailure()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 375
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Error purchasing: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->complain(Ljava/lang/String;)V

    .line 376
    sget-object v6, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "purchaseFinishedCallback failed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mInAppProductId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    if-nez p1, :cond_1

    .line 380
    sget v3, Lcom/miniclip/inapppurchases/MCInAppPurchases;->PURCHASE_UNKNOWN_ERROR:I

    .line 401
    :goto_0
    invoke-direct {p0, v8}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->setWaitScreen(Z)V

    .line 402
    iput-boolean v8, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mBusy:Z

    .line 403
    invoke-direct {p0, v3, v2, v1, v5}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->onPurchaseResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    return-void

    .line 381
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/miniclip/googlebilling/Purchase;->getPurchaseState()I

    move-result v6

    if-ne v6, v7, :cond_3

    .line 382
    :cond_2
    sget v3, Lcom/miniclip/inapppurchases/MCInAppPurchases;->PURCHASE_CANCELED:I

    goto :goto_0

    .line 384
    :cond_3
    sget v3, Lcom/miniclip/inapppurchases/MCInAppPurchases;->PURCHASE_SERVER_FAILURE:I

    goto :goto_0

    .line 386
    :cond_4
    sget-object v6, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "purchaseFinishedCallback success: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mInAppProductId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    sget v3, Lcom/miniclip/inapppurchases/MCInAppPurchases;->PURCHASE_SUCCESS:I

    .line 388
    invoke-virtual {p2}, Lcom/miniclip/googlebilling/Purchase;->getSku()Ljava/lang/String;

    move-result-object v2

    .line 389
    invoke-virtual {p2}, Lcom/miniclip/googlebilling/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v1

    .line 390
    invoke-virtual {p2}, Lcom/miniclip/googlebilling/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v5

    .line 392
    iget-object v6, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->_activity:Landroid/app/Activity;

    const-string v9, "INAPP_PURCHASED_OWNED_EXTRAv3"

    invoke-virtual {v6, v9, v8}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 393
    .local v4, "settingsExtra":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 394
    .local v0, "editorExtra":Landroid/content/SharedPreferences$Editor;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "_DATA_UNIQUE"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 395
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "_SIGNATURE_UNIQUE"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 396
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, "_IS_CONSUMABLE"

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    if-nez p3, :cond_5

    move v6, v7

    :goto_1
    invoke-interface {v0, v9, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 397
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 398
    const-string v6, "Google"

    invoke-static {v6, v2, v7}, Lcom/miniclip/inapppurchases/MCInAppPurchases;->setItemOwned(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_5
    move v6, v8

    .line 396
    goto :goto_1
.end method

.method private setWaitScreen(Z)V
    .locals 2
    .param p1, "set"    # Z

    .prologue
    .line 518
    iget-object v0, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->_activity:Landroid/app/Activity;

    new-instance v1, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$11;

    invoke-direct {v1, p0, p1}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$11;-><init>(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;Z)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 525
    return-void
.end method

.method private syncInventory(Lcom/miniclip/googlebilling/Inventory;)V
    .locals 14
    .param p1, "inventory"    # Lcom/miniclip/googlebilling/Inventory;

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 450
    if-nez p1, :cond_1

    .line 451
    sget-object v9, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->TAG:Ljava/lang/String;

    const-string v10, "syncInventory error: Inventory is null"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_0
    return-void

    .line 455
    :cond_1
    iget-object v9, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->_activity:Landroid/app/Activity;

    const-string v10, "INAPP_PURCHASED_OWNED_EXTRAv3"

    invoke-virtual {v9, v10, v11}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 456
    .local v6, "settingsExtra":Landroid/content/SharedPreferences;
    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 457
    .local v1, "editorExtra":Landroid/content/SharedPreferences$Editor;
    invoke-virtual {p1}, Lcom/miniclip/googlebilling/Inventory;->getAllPurchases()Ljava/util/List;

    move-result-object v5

    .line 458
    .local v5, "products":Ljava/util/List;, "Ljava/util/List<Lcom/miniclip/googlebilling/Purchase;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_5

    .line 459
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miniclip/googlebilling/Purchase;

    invoke-virtual {v9}, Lcom/miniclip/googlebilling/Purchase;->getPurchaseState()I

    move-result v9

    if-eqz v9, :cond_2

    .line 458
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 462
    :cond_2
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miniclip/googlebilling/Purchase;

    invoke-virtual {v9}, Lcom/miniclip/googlebilling/Purchase;->getSku()Ljava/lang/String;

    move-result-object v7

    .line 463
    .local v7, "sku":Ljava/lang/String;
    invoke-virtual {p1, v7}, Lcom/miniclip/googlebilling/Inventory;->getPurchase(Ljava/lang/String;)Lcom/miniclip/googlebilling/Purchase;

    move-result-object v3

    .line 464
    .local v3, "p":Lcom/miniclip/googlebilling/Purchase;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_DATA_UNIQUE"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Lcom/miniclip/googlebilling/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 465
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_SIGNATURE_UNIQUE"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Lcom/miniclip/googlebilling/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v1, v9, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 467
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_IS_PENDING"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 468
    .local v4, "pending":Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_COMPLETED_PROCESS"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v9, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 469
    .local v0, "alreadyProcessed":Z
    if-nez v0, :cond_3

    .line 470
    const/4 v4, 0x1

    .line 471
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "_IS_PENDING"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v1, v9, v12}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 474
    :cond_3
    if-eqz v4, :cond_4

    .line 475
    iget-object v10, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->pendingSkus:Ljava/util/Set;

    monitor-enter v10

    .line 476
    :try_start_0
    iget-object v9, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->pendingSkus:Ljava/util/Set;

    invoke-interface {v9, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 477
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    :cond_4
    const-string v9, "Google"

    invoke-static {v9, v7, v12}, Lcom/miniclip/inapppurchases/MCInAppPurchases;->setItemOwned(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_1

    .line 477
    :catchall_0
    move-exception v9

    :try_start_1
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v9

    .line 482
    .end local v0    # "alreadyProcessed":Z
    .end local v3    # "p":Lcom/miniclip/googlebilling/Purchase;
    .end local v4    # "pending":Z
    .end local v7    # "sku":Ljava/lang/String;
    :cond_5
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 484
    invoke-virtual {p1}, Lcom/miniclip/googlebilling/Inventory;->getAllSkuDetails()Ljava/util/List;

    move-result-object v8

    .line 485
    .local v8, "skuDetails":Ljava/util/List;, "Ljava/util/List<Lcom/miniclip/googlebilling/SkuDetails;>;"
    const/4 v2, 0x0

    :goto_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_0

    .line 486
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miniclip/googlebilling/SkuDetails;

    invoke-virtual {v9}, Lcom/miniclip/googlebilling/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v7

    .line 487
    .restart local v7    # "sku":Ljava/lang/String;
    iget-object v9, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->registeredSkus:Ljava/util/Set;

    invoke-interface {v9, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 488
    const-string v10, "Google"

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miniclip/googlebilling/SkuDetails;

    invoke-virtual {v9}, Lcom/miniclip/googlebilling/SkuDetails;->getPrice()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v7, v9}, Lcom/miniclip/inapppurchases/MCInAppPurchases;->setItemPrice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const-string v10, "Google"

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miniclip/googlebilling/SkuDetails;

    invoke-virtual {v9}, Lcom/miniclip/googlebilling/SkuDetails;->getPriceAmountMicros()J

    move-result-wide v12

    invoke-static {v10, v7, v12, v13}, Lcom/miniclip/inapppurchases/MCInAppPurchases;->setItemPriceAmountMicros(Ljava/lang/String;Ljava/lang/String;J)V

    .line 490
    const-string v10, "Google"

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/miniclip/googlebilling/SkuDetails;

    invoke-virtual {v9}, Lcom/miniclip/googlebilling/SkuDetails;->getPriceCurrencyCode()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v7, v9}, Lcom/miniclip/inapppurchases/MCInAppPurchases;->setItemCurrencyCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method


# virtual methods
.method public finishPurchase(Ljava/lang/String;)V
    .locals 2
    .param p1, "productId"    # Ljava/lang/String;

    .prologue
    .line 322
    sget-object v0, Lcom/miniclip/framework/ThreadingContext;->UiThread:Lcom/miniclip/framework/ThreadingContext;

    new-instance v1, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$7;

    invoke-direct {v1, p0, p1}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$7;-><init>(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/miniclip/framework/Miniclip;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 363
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 58
    sget-object v0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object v0, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mHelper:Lcom/miniclip/googlebilling/IabHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/miniclip/googlebilling/IabHelper;->handleActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    sget-object v0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->TAG:Ljava/lang/String;

    const-string v1, "onActivityResult handled by IABUtil."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    :cond_0
    return-void
.end method

.method public refreshPurchases()V
    .locals 3

    .prologue
    .line 172
    new-instance v0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$4;

    invoke-direct {v0, p0}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$4;-><init>(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;)V

    .line 186
    .local v0, "refreshQueryInventoryListener":Lcom/miniclip/googlebilling/IabHelper$QueryInventoryFinishedListener;
    sget-object v1, Lcom/miniclip/framework/ThreadingContext;->UiThread:Lcom/miniclip/framework/ThreadingContext;

    new-instance v2, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$5;

    invoke-direct {v2, p0, v0}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$5;-><init>(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;Lcom/miniclip/googlebilling/IabHelper$QueryInventoryFinishedListener;)V

    invoke-static {v1, v2}, Lcom/miniclip/framework/Miniclip;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 201
    return-void
.end method

.method public register(Ljava/util/List;)V
    .locals 2
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
    .line 67
    .local p1, "skus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    sget-object v0, Lcom/miniclip/framework/ThreadingContext;->UiThread:Lcom/miniclip/framework/ThreadingContext;

    new-instance v1, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1;

    invoke-direct {v1, p0, p1}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1;-><init>(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/miniclip/framework/Miniclip;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 113
    return-void
.end method

.method public requestPendingPurchases()V
    .locals 0

    .prologue
    .line 204
    invoke-direct {p0}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->onPendingPurchasesResult()V

    .line 205
    return-void
.end method

.method public requestPurchase(Ljava/lang/String;Z)V
    .locals 2
    .param p1, "productId"    # Ljava/lang/String;
    .param p2, "managed"    # Z

    .prologue
    .line 280
    sget-object v0, Lcom/miniclip/framework/ThreadingContext;->UiThread:Lcom/miniclip/framework/ThreadingContext;

    new-instance v1, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$6;-><init>(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;Ljava/lang/String;Z)V

    invoke-static {v0, v1}, Lcom/miniclip/framework/Miniclip;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 319
    return-void
.end method

.method public restorePurchases()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 116
    iget-boolean v1, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mHelperReady:Z

    if-nez v1, :cond_0

    .line 117
    sget-object v1, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->TAG:Ljava/lang/String;

    const-string v2, "requestRestore not ready - "

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const/4 v1, 0x0

    invoke-direct {p0, v1, v3, v3, v3}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->onPurchasesRestoredResult(ZLjava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 168
    :goto_0
    return-void

    .line 121
    :cond_0
    new-instance v0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$2;

    invoke-direct {v0, p0}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$2;-><init>(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;)V

    .line 153
    .local v0, "restoreQueryInventoryListener":Lcom/miniclip/googlebilling/IabHelper$QueryInventoryFinishedListener;
    sget-object v1, Lcom/miniclip/framework/ThreadingContext;->UiThread:Lcom/miniclip/framework/ThreadingContext;

    new-instance v2, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$3;

    invoke-direct {v2, p0, v0}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$3;-><init>(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;Lcom/miniclip/googlebilling/IabHelper$QueryInventoryFinishedListener;)V

    invoke-static {v1, v2}, Lcom/miniclip/framework/Miniclip;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    goto :goto_0
.end method
