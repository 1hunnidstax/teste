.class Lcom/miniclip/inapppurchases/providers/GoogleWrapper$5;
.super Ljava/lang/Object;
.source "GoogleWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->refreshPurchases()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

.field final synthetic val$refreshQueryInventoryListener:Lcom/miniclip/googlebilling/IabHelper$QueryInventoryFinishedListener;


# direct methods
.method constructor <init>(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;Lcom/miniclip/googlebilling/IabHelper$QueryInventoryFinishedListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$5;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    iput-object p2, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$5;->val$refreshQueryInventoryListener:Lcom/miniclip/googlebilling/IabHelper$QueryInventoryFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v6, 0x0

    .line 189
    iget-object v1, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$5;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    # getter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mBusy:Z
    invoke-static {v1}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$500(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    :goto_0
    return-void

    .line 191
    :cond_0
    # getter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Refreshing purchases."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    iget-object v1, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$5;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    # setter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mBusy:Z
    invoke-static {v1, v3}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$502(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;Z)Z

    .line 194
    :try_start_0
    iget-object v1, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$5;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    # getter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mHelper:Lcom/miniclip/googlebilling/IabHelper;
    invoke-static {v1}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$200(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;)Lcom/miniclip/googlebilling/IabHelper;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$5;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    # getter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->registeredSkus:Ljava/util/Set;
    invoke-static {v4}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$1000(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;)Ljava/util/Set;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$5;->val$refreshQueryInventoryListener:Lcom/miniclip/googlebilling/IabHelper$QueryInventoryFinishedListener;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/miniclip/googlebilling/IabHelper;->queryInventoryAsync(ZLjava/util/List;Ljava/util/List;Lcom/miniclip/googlebilling/IabHelper$QueryInventoryFinishedListener;)V
    :try_end_0
    .catch Lcom/miniclip/googlebilling/IabHelper$IabAsyncInProgressException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Lcom/miniclip/googlebilling/IabHelper$IabAsyncInProgressException;
    iget-object v1, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$5;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IabAsyncInProgressException during refreshPurchases: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/miniclip/googlebilling/IabHelper$IabAsyncInProgressException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->complain(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$600(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;Ljava/lang/String;)V

    .line 197
    iget-object v1, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$5;->val$refreshQueryInventoryListener:Lcom/miniclip/googlebilling/IabHelper$QueryInventoryFinishedListener;

    invoke-interface {v1, v6, v6}, Lcom/miniclip/googlebilling/IabHelper$QueryInventoryFinishedListener;->onQueryInventoryFinished(Lcom/miniclip/googlebilling/IabResult;Lcom/miniclip/googlebilling/Inventory;)V

    goto :goto_0
.end method
