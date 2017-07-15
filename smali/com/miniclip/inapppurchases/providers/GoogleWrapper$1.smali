.class Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1;
.super Ljava/lang/Object;
.source "GoogleWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->register(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

.field final synthetic val$skus:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    iput-object p2, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1;->val$skus:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 70
    new-instance v1, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$QueryInventoryFinishedListener;

    iget-object v2, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    iget-object v3, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1;->val$skus:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$QueryInventoryFinishedListener;-><init>(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;Ljava/util/Collection;)V

    .line 72
    .local v1, "listener":Lcom/miniclip/inapppurchases/providers/GoogleWrapper$QueryInventoryFinishedListener;
    iget-object v2, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    # getter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mHelperReady:Z
    invoke-static {v2}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$000(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 74
    # getter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Creating IAB helper."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v2, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    new-instance v3, Lcom/miniclip/googlebilling/IabHelper;

    iget-object v4, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    # getter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->_activity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$300(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;)Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    # getter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->_publicKey:Ljava/lang/String;
    invoke-static {v5}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$400(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/miniclip/googlebilling/IabHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    # setter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mHelper:Lcom/miniclip/googlebilling/IabHelper;
    invoke-static {v2, v3}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$202(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;Lcom/miniclip/googlebilling/IabHelper;)Lcom/miniclip/googlebilling/IabHelper;

    .line 76
    iget-object v2, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    # getter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mHelper:Lcom/miniclip/googlebilling/IabHelper;
    invoke-static {v2}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$200(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;)Lcom/miniclip/googlebilling/IabHelper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/miniclip/googlebilling/IabHelper;->enableDebugLogging(Z)V

    .line 79
    # getter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Starting setup."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v2, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    # getter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mHelper:Lcom/miniclip/googlebilling/IabHelper;
    invoke-static {v2}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$200(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;)Lcom/miniclip/googlebilling/IabHelper;

    move-result-object v2

    new-instance v3, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1$1;

    invoke-direct {v3, p0, v1}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1$1;-><init>(Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1;Lcom/miniclip/inapppurchases/providers/GoogleWrapper$QueryInventoryFinishedListener;)V

    invoke-virtual {v2, v3}, Lcom/miniclip/googlebilling/IabHelper;->startSetup(Lcom/miniclip/googlebilling/IabHelper$OnIabSetupFinishedListener;)V

    .line 111
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v2, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    # setter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mBusy:Z
    invoke-static {v2, v4}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$502(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;Z)Z

    .line 105
    :try_start_0
    iget-object v2, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    # getter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mHelper:Lcom/miniclip/googlebilling/IabHelper;
    invoke-static {v2}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$200(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;)Lcom/miniclip/googlebilling/IabHelper;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1;->val$skus:Ljava/util/List;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5, v1}, Lcom/miniclip/googlebilling/IabHelper;->queryInventoryAsync(ZLjava/util/List;Ljava/util/List;Lcom/miniclip/googlebilling/IabHelper$QueryInventoryFinishedListener;)V
    :try_end_0
    .catch Lcom/miniclip/googlebilling/IabHelper$IabAsyncInProgressException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Lcom/miniclip/googlebilling/IabHelper$IabAsyncInProgressException;
    iget-object v2, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IabAsyncInProgressException during register: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/miniclip/googlebilling/IabHelper$IabAsyncInProgressException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->complain(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$600(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;Ljava/lang/String;)V

    .line 108
    invoke-virtual {v1, v6, v6}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$QueryInventoryFinishedListener;->onQueryInventoryFinished(Lcom/miniclip/googlebilling/IabResult;Lcom/miniclip/googlebilling/Inventory;)V

    goto :goto_0
.end method
