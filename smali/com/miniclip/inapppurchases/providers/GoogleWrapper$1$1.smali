.class Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1$1;
.super Ljava/lang/Object;
.source "GoogleWrapper.java"

# interfaces
.implements Lcom/miniclip/googlebilling/IabHelper$OnIabSetupFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1;

.field final synthetic val$listener:Lcom/miniclip/inapppurchases/providers/GoogleWrapper$QueryInventoryFinishedListener;


# direct methods
.method constructor <init>(Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1;Lcom/miniclip/inapppurchases/providers/GoogleWrapper$QueryInventoryFinishedListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1$1;->this$1:Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1;

    iput-object p2, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1$1;->val$listener:Lcom/miniclip/inapppurchases/providers/GoogleWrapper$QueryInventoryFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabSetupFinished(Lcom/miniclip/googlebilling/IabResult;)V
    .locals 8
    .param p1, "result"    # Lcom/miniclip/googlebilling/IabResult;

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 82
    # getter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Setup finished."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {p1}, Lcom/miniclip/googlebilling/IabResult;->isSuccess()Z

    move-result v1

    .line 85
    .local v1, "success":Z
    if-eqz v1, :cond_0

    .line 86
    # getter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Setup successful."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-object v2, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1$1;->this$1:Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1;

    iget-object v2, v2, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    # setter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mHelperReady:Z
    invoke-static {v2, v4}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$002(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;Z)Z

    .line 88
    iget-object v2, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1$1;->this$1:Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1;

    iget-object v2, v2, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    invoke-static {v2}, Lcom/miniclip/framework/Miniclip;->addListener(Lcom/miniclip/framework/ActivityListener;)Z

    .line 89
    iget-object v2, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1$1;->this$1:Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1;

    iget-object v2, v2, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    # setter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mBusy:Z
    invoke-static {v2, v4}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$502(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;Z)Z

    .line 91
    :try_start_0
    iget-object v2, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1$1;->this$1:Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1;

    iget-object v2, v2, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    # getter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mHelper:Lcom/miniclip/googlebilling/IabHelper;
    invoke-static {v2}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$200(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;)Lcom/miniclip/googlebilling/IabHelper;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1$1;->this$1:Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1;

    iget-object v4, v4, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1;->val$skus:Ljava/util/List;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1$1;->val$listener:Lcom/miniclip/inapppurchases/providers/GoogleWrapper$QueryInventoryFinishedListener;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/miniclip/googlebilling/IabHelper;->queryInventoryAsync(ZLjava/util/List;Ljava/util/List;Lcom/miniclip/googlebilling/IabHelper$QueryInventoryFinishedListener;)V
    :try_end_0
    .catch Lcom/miniclip/googlebilling/IabHelper$IabAsyncInProgressException; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Lcom/miniclip/googlebilling/IabHelper$IabAsyncInProgressException;
    iget-object v2, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1$1;->this$1:Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1;

    iget-object v2, v2, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IabAsyncInProgressException occurred during register: "

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

    .line 94
    iget-object v2, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1$1;->val$listener:Lcom/miniclip/inapppurchases/providers/GoogleWrapper$QueryInventoryFinishedListener;

    invoke-virtual {v2, v7, v7}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$QueryInventoryFinishedListener;->onQueryInventoryFinished(Lcom/miniclip/googlebilling/IabResult;Lcom/miniclip/googlebilling/Inventory;)V

    goto :goto_0

    .line 97
    .end local v0    # "e":Lcom/miniclip/googlebilling/IabHelper$IabAsyncInProgressException;
    :cond_0
    iget-object v2, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1$1;->this$1:Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1;

    iget-object v2, v2, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Problem setting up in-app billing: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->complain(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$600(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;Ljava/lang/String;)V

    .line 98
    iget-object v2, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1$1;->this$1:Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1;

    iget-object v2, v2, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1$1;->this$1:Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1;

    iget-object v4, v4, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$1;->val$skus:Ljava/util/List;

    # invokes: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->onRegisterProviderResult(ZLjava/util/Collection;)V
    invoke-static {v2, v3, v4}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$700(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;ZLjava/util/Collection;)V

    goto :goto_0
.end method
