.class Lcom/miniclip/inapppurchases/providers/GoogleWrapper$6;
.super Ljava/lang/Object;
.source "GoogleWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->requestPurchase(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

.field final synthetic val$managed:Z

.field final synthetic val$productId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$6;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    iput-object p2, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$6;->val$productId:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$6;->val$managed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 283
    iget-object v8, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$6;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    # getter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mBusy:Z
    invoke-static {v8}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$500(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 317
    :goto_0
    return-void

    .line 285
    :cond_0
    iget-object v8, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$6;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    iget-object v9, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$6;->val$productId:Ljava/lang/String;

    # setter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mInAppProductId:Ljava/lang/String;
    invoke-static {v8, v9}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$1202(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;Ljava/lang/String;)Ljava/lang/String;

    .line 286
    # getter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$100()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "requestPurchase - "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$6;->val$productId:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    iget-object v8, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$6;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    # getter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mHelperReady:Z
    invoke-static {v8}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$000(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 289
    # getter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "requestPurchase not ready - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$6;->val$productId:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object v6, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$6;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    sget v7, Lcom/miniclip/inapppurchases/MCInAppPurchases;->PURCHASE_UNKNOWN_ERROR:I

    iget-object v8, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$6;->val$productId:Ljava/lang/String;

    const-string v9, ""

    const-string v10, ""

    # invokes: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->onPurchaseResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7, v8, v9, v10}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$1300(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 294
    :cond_1
    iget-object v8, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$6;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    # getter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->_activity:Landroid/app/Activity;
    invoke-static {v8}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$300(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;)Landroid/app/Activity;

    move-result-object v8

    const-string v9, "INAPP_PURCHASED_OWNED_EXTRAv3"

    invoke-virtual {v8, v9, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 295
    .local v4, "settingsExtra":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 296
    .local v2, "editorExtra":Landroid/content/SharedPreferences$Editor;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$6;->val$productId:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_IS_CONSUMABLE"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-boolean v9, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$6;->val$managed:Z

    if-nez v9, :cond_2

    move v6, v7

    :cond_2
    invoke-interface {v2, v8, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 297
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$6;->val$productId:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "_IS_PENDING"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 298
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 300
    const-string v6, "Google"

    iget-object v8, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$6;->val$productId:Ljava/lang/String;

    invoke-static {v6, v8}, Lcom/miniclip/inapppurchases/MCInAppPurchases;->isItemOwned(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 301
    # getter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$100()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "requestPurchaseAct restore: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$6;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    # getter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mInAppProductId:Ljava/lang/String;
    invoke-static {v8}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$1200(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$6;->val$productId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_DATA_UNIQUE"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "data":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$6;->val$productId:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_SIGNATURE_UNIQUE"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 304
    .local v5, "signature":Ljava/lang/String;
    iget-object v6, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$6;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    sget v7, Lcom/miniclip/inapppurchases/MCInAppPurchases;->PURCHASE_SUCCESS:I

    iget-object v8, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$6;->val$productId:Ljava/lang/String;

    # invokes: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->onPurchaseResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v6, v7, v8, v0, v5}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$1300(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 306
    .end local v0    # "data":Ljava/lang/String;
    .end local v5    # "signature":Ljava/lang/String;
    :cond_3
    iget-object v6, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$6;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    # setter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mBusy:Z
    invoke-static {v6, v7}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$502(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;Z)Z

    .line 307
    iget-object v6, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$6;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    # invokes: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->setWaitScreen(Z)V
    invoke-static {v6, v7}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$1400(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;Z)V

    .line 308
    iget-boolean v6, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$6;->val$managed:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$6;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    .line 309
    # getter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mPurchaseFinishedListenerManaged:Lcom/miniclip/googlebilling/IabHelper$OnIabPurchaseFinishedListener;
    invoke-static {v6}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$1500(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;)Lcom/miniclip/googlebilling/IabHelper$OnIabPurchaseFinishedListener;

    move-result-object v3

    .line 311
    .local v3, "listener":Lcom/miniclip/googlebilling/IabHelper$OnIabPurchaseFinishedListener;
    :goto_1
    :try_start_0
    iget-object v6, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$6;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    # getter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mHelper:Lcom/miniclip/googlebilling/IabHelper;
    invoke-static {v6}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$200(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;)Lcom/miniclip/googlebilling/IabHelper;

    move-result-object v6

    iget-object v7, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$6;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    # getter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->_activity:Landroid/app/Activity;
    invoke-static {v7}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$300(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;)Landroid/app/Activity;

    move-result-object v7

    iget-object v8, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$6;->val$productId:Ljava/lang/String;

    const/16 v9, 0x2711

    invoke-virtual {v6, v7, v8, v9, v3}, Lcom/miniclip/googlebilling/IabHelper;->launchPurchaseFlow(Landroid/app/Activity;Ljava/lang/String;ILcom/miniclip/googlebilling/IabHelper$OnIabPurchaseFinishedListener;)V
    :try_end_0
    .catch Lcom/miniclip/googlebilling/IabHelper$IabAsyncInProgressException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 312
    :catch_0
    move-exception v1

    .line 313
    .local v1, "e":Lcom/miniclip/googlebilling/IabHelper$IabAsyncInProgressException;
    iget-object v6, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$6;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "IabAsyncInProgressException during requestPurchase: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Lcom/miniclip/googlebilling/IabHelper$IabAsyncInProgressException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    # invokes: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->complain(Ljava/lang/String;)V
    invoke-static {v6, v7}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$600(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;Ljava/lang/String;)V

    .line 314
    invoke-interface {v3, v11, v11}, Lcom/miniclip/googlebilling/IabHelper$OnIabPurchaseFinishedListener;->onIabPurchaseFinished(Lcom/miniclip/googlebilling/IabResult;Lcom/miniclip/googlebilling/Purchase;)V

    goto/16 :goto_0

    .line 309
    .end local v1    # "e":Lcom/miniclip/googlebilling/IabHelper$IabAsyncInProgressException;
    .end local v3    # "listener":Lcom/miniclip/googlebilling/IabHelper$OnIabPurchaseFinishedListener;
    :cond_4
    iget-object v6, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$6;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    # getter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mPurchaseFinishedListener:Lcom/miniclip/googlebilling/IabHelper$OnIabPurchaseFinishedListener;
    invoke-static {v6}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$1600(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;)Lcom/miniclip/googlebilling/IabHelper$OnIabPurchaseFinishedListener;

    move-result-object v3

    goto :goto_1
.end method
