.class Lcom/miniclip/inapppurchases/providers/GoogleWrapper$7;
.super Ljava/lang/Object;
.source "GoogleWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->finishPurchase(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

.field final synthetic val$productId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$7;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    iput-object p2, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$7;->val$productId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 325
    iget-object v7, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$7;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    # getter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mBusy:Z
    invoke-static {v7}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$500(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 361
    :cond_0
    :goto_0
    return-void

    .line 327
    :cond_1
    const/4 v0, 0x0

    .line 328
    .local v0, "consumable":Z
    const-string v7, "Google"

    iget-object v8, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$7;->val$productId:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/miniclip/inapppurchases/MCInAppPurchases;->isItemOwned(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 329
    iget-object v7, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$7;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    # getter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->_activity:Landroid/app/Activity;
    invoke-static {v7}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$300(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;)Landroid/app/Activity;

    move-result-object v7

    const-string v8, "INAPP_PURCHASED_OWNED_EXTRAv3"

    invoke-virtual {v7, v8, v10}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 330
    .local v5, "settingsExtra":Landroid/content/SharedPreferences;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$7;->val$productId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_IS_CONSUMABLE"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 331
    if-eqz v0, :cond_2

    .line 333
    :try_start_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$7;->val$productId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_DATA_UNIQUE"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, "data":Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$7;->val$productId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_SIGNATURE_UNIQUE"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 336
    .local v6, "signature":Ljava/lang/String;
    new-instance v4, Lcom/miniclip/googlebilling/Purchase;

    const-string v7, "inapp"

    invoke-direct {v4, v7, v1, v6}, Lcom/miniclip/googlebilling/Purchase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    .local v4, "purchase":Lcom/miniclip/googlebilling/Purchase;
    iget-object v7, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$7;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    const/4 v8, 0x1

    # setter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mBusy:Z
    invoke-static {v7, v8}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$502(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;Z)Z

    .line 338
    iget-object v7, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$7;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    const/4 v8, 0x1

    # invokes: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->setWaitScreen(Z)V
    invoke-static {v7, v8}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$1400(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 340
    :try_start_1
    iget-object v7, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$7;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    # getter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mHelper:Lcom/miniclip/googlebilling/IabHelper;
    invoke-static {v7}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$200(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;)Lcom/miniclip/googlebilling/IabHelper;

    move-result-object v7

    iget-object v8, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$7;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    # getter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mConsumeFinishedListener:Lcom/miniclip/googlebilling/IabHelper$OnConsumeFinishedListener;
    invoke-static {v8}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$1700(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;)Lcom/miniclip/googlebilling/IabHelper$OnConsumeFinishedListener;

    move-result-object v8

    invoke-virtual {v7, v4, v8}, Lcom/miniclip/googlebilling/IabHelper;->consumeAsync(Lcom/miniclip/googlebilling/Purchase;Lcom/miniclip/googlebilling/IabHelper$OnConsumeFinishedListener;)V
    :try_end_1
    .catch Lcom/miniclip/googlebilling/IabHelper$IabAsyncInProgressException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 351
    .end local v1    # "data":Ljava/lang/String;
    .end local v4    # "purchase":Lcom/miniclip/googlebilling/Purchase;
    .end local v5    # "settingsExtra":Landroid/content/SharedPreferences;
    .end local v6    # "signature":Ljava/lang/String;
    :cond_2
    :goto_1
    if-nez v0, :cond_0

    .line 352
    iget-object v7, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$7;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    # getter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->_activity:Landroid/app/Activity;
    invoke-static {v7}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$300(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;)Landroid/app/Activity;

    move-result-object v7

    const-string v8, "INAPP_PURCHASED_OWNED_EXTRAv3"

    invoke-virtual {v7, v8, v10}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 353
    .restart local v5    # "settingsExtra":Landroid/content/SharedPreferences;
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 354
    .local v3, "editorExtra":Landroid/content/SharedPreferences$Editor;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$7;->val$productId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_IS_PENDING"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7, v10}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 355
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$7;->val$productId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "_COMPLETED_PROCESS"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 356
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 357
    iget-object v7, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$7;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    # getter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->pendingSkus:Ljava/util/Set;
    invoke-static {v7}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$1800(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;)Ljava/util/Set;

    move-result-object v8

    monitor-enter v8

    .line 358
    :try_start_2
    iget-object v7, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$7;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    # getter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->pendingSkus:Ljava/util/Set;
    invoke-static {v7}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$1800(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;)Ljava/util/Set;

    move-result-object v7

    iget-object v9, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$7;->val$productId:Ljava/lang/String;

    invoke-interface {v7, v9}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 359
    monitor-exit v8

    goto/16 :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v7

    .line 341
    .end local v3    # "editorExtra":Landroid/content/SharedPreferences$Editor;
    .restart local v1    # "data":Ljava/lang/String;
    .restart local v4    # "purchase":Lcom/miniclip/googlebilling/Purchase;
    .restart local v6    # "signature":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 342
    .local v2, "e":Lcom/miniclip/googlebilling/IabHelper$IabAsyncInProgressException;
    :try_start_3
    iget-object v7, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$7;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "IabAsyncInProgressException during finishPurchase: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Lcom/miniclip/googlebilling/IabHelper$IabAsyncInProgressException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->complain(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$600(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;Ljava/lang/String;)V

    .line 343
    iget-object v7, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$7;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    # getter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mConsumeFinishedListener:Lcom/miniclip/googlebilling/IabHelper$OnConsumeFinishedListener;
    invoke-static {v7}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$1700(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;)Lcom/miniclip/googlebilling/IabHelper$OnConsumeFinishedListener;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v4, v8}, Lcom/miniclip/googlebilling/IabHelper$OnConsumeFinishedListener;->onConsumeFinished(Lcom/miniclip/googlebilling/Purchase;Lcom/miniclip/googlebilling/IabResult;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 345
    .end local v1    # "data":Ljava/lang/String;
    .end local v2    # "e":Lcom/miniclip/googlebilling/IabHelper$IabAsyncInProgressException;
    .end local v4    # "purchase":Lcom/miniclip/googlebilling/Purchase;
    .end local v6    # "signature":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 346
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_1
.end method
