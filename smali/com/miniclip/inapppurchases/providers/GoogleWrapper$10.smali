.class Lcom/miniclip/inapppurchases/providers/GoogleWrapper$10;
.super Ljava/lang/Object;
.source "GoogleWrapper.java"

# interfaces
.implements Lcom/miniclip/googlebilling/IabHelper$OnConsumeFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miniclip/inapppurchases/providers/GoogleWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;


# direct methods
.method constructor <init>(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    .prologue
    .line 421
    iput-object p1, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$10;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConsumeFinished(Lcom/miniclip/googlebilling/Purchase;Lcom/miniclip/googlebilling/IabResult;)V
    .locals 6
    .param p1, "purchase"    # Lcom/miniclip/googlebilling/Purchase;
    .param p2, "result"    # Lcom/miniclip/googlebilling/IabResult;

    .prologue
    const/4 v5, 0x0

    .line 423
    # getter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Consumption finished. Purchase: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/miniclip/googlebilling/IabResult;->getResponse()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_0

    .line 426
    const-string v2, "Google"

    invoke-virtual {p1}, Lcom/miniclip/googlebilling/Purchase;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/miniclip/inapppurchases/MCInAppPurchases;->setItemOwned(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 429
    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/miniclip/googlebilling/IabResult;->isSuccess()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 430
    # getter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Consumption successful. Provisioning."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    const-string v2, "Google"

    invoke-virtual {p1}, Lcom/miniclip/googlebilling/Purchase;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/miniclip/inapppurchases/MCInAppPurchases;->setItemOwned(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 432
    iget-object v2, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$10;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    # getter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->_activity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$300(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;)Landroid/app/Activity;

    move-result-object v2

    const-string v3, "INAPP_PURCHASED_OWNED_EXTRAv3"

    invoke-virtual {v2, v3, v5}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 433
    .local v1, "settingsExtra":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 434
    .local v0, "editorExtra":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/miniclip/googlebilling/Purchase;->getSku()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_IS_PENDING"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 435
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 436
    iget-object v2, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$10;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    # getter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->pendingSkus:Ljava/util/Set;
    invoke-static {v2}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$1800(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;)Ljava/util/Set;

    move-result-object v3

    monitor-enter v3

    .line 437
    :try_start_0
    iget-object v2, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$10;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    # getter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->pendingSkus:Ljava/util/Set;
    invoke-static {v2}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$1800(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;)Ljava/util/Set;

    move-result-object v2

    invoke-virtual {p1}, Lcom/miniclip/googlebilling/Purchase;->getSku()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 438
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 443
    .end local v0    # "editorExtra":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "settingsExtra":Landroid/content/SharedPreferences;
    :goto_0
    # getter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v3, "End consumption flow."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    iget-object v2, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$10;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    # invokes: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->setWaitScreen(Z)V
    invoke-static {v2, v5}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$1400(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;Z)V

    .line 445
    iget-object v2, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$10;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    # setter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mBusy:Z
    invoke-static {v2, v5}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$502(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;Z)Z

    .line 446
    return-void

    .line 438
    .restart local v0    # "editorExtra":Landroid/content/SharedPreferences$Editor;
    .restart local v1    # "settingsExtra":Landroid/content/SharedPreferences;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 441
    .end local v0    # "editorExtra":Landroid/content/SharedPreferences$Editor;
    .end local v1    # "settingsExtra":Landroid/content/SharedPreferences;
    :cond_1
    iget-object v2, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$10;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while consuming: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->complain(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$600(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;Ljava/lang/String;)V

    goto :goto_0
.end method
