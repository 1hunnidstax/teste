.class Lcom/miniclip/inapppurchases/providers/GoogleWrapper$QueryInventoryFinishedListener;
.super Ljava/lang/Object;
.source "GoogleWrapper.java"

# interfaces
.implements Lcom/miniclip/googlebilling/IabHelper$QueryInventoryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miniclip/inapppurchases/providers/GoogleWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryInventoryFinishedListener"
.end annotation


# instance fields
.field skus:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;


# direct methods
.method constructor <init>(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 224
    .local p2, "skus":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$QueryInventoryFinishedListener;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 225
    iput-object p2, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$QueryInventoryFinishedListener;->skus:Ljava/util/Collection;

    .line 226
    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/miniclip/googlebilling/IabResult;Lcom/miniclip/googlebilling/Inventory;)V
    .locals 11
    .param p1, "result"    # Lcom/miniclip/googlebilling/IabResult;
    .param p2, "inventory"    # Lcom/miniclip/googlebilling/Inventory;

    .prologue
    const/4 v10, 0x0

    .line 229
    const/4 v6, 0x0

    .line 231
    .local v6, "success":Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miniclip/googlebilling/IabResult;->isFailure()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 232
    :cond_0
    iget-object v7, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$QueryInventoryFinishedListener;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to query inventory: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    # invokes: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->complain(Ljava/lang/String;)V
    invoke-static {v7, v8}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$600(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;Ljava/lang/String;)V

    .line 257
    :goto_0
    new-instance v3, Ljava/util/HashSet;

    iget-object v7, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$QueryInventoryFinishedListener;->skus:Ljava/util/Collection;

    invoke-direct {v3, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 258
    .local v3, "failed":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$QueryInventoryFinishedListener;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    # getter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->_activity:Landroid/app/Activity;
    invoke-static {v7}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$300(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;)Landroid/app/Activity;

    move-result-object v7

    const-string v8, "INAPP_PURCHASED_OWNED_EXTRAv3"

    invoke-virtual {v7, v8, v10}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 259
    .local v4, "settingsExtra":Landroid/content/SharedPreferences;
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 261
    .local v2, "editorExtra":Landroid/content/SharedPreferences$Editor;
    iget-object v7, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$QueryInventoryFinishedListener;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    iget-object v8, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$QueryInventoryFinishedListener;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    # getter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->registeredSkus:Ljava/util/Set;
    invoke-static {v8}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$1000(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;)Ljava/util/Set;

    move-result-object v8

    # invokes: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->CollectionToArray(Ljava/util/Collection;)[Ljava/lang/String;
    invoke-static {v7, v8}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$1100(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/miniclip/inapppurchases/MCInAppPurchases;->getConsumableSkus([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 263
    .local v1, "consumableSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/miniclip/googlebilling/Inventory;->getAllSkuDetails()Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 264
    invoke-virtual {p2}, Lcom/miniclip/googlebilling/Inventory;->getAllSkuDetails()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miniclip/googlebilling/SkuDetails;

    .line 265
    .local v5, "skuDetails":Lcom/miniclip/googlebilling/SkuDetails;
    invoke-virtual {v5}, Lcom/miniclip/googlebilling/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 266
    .local v0, "consumable":Z
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/miniclip/googlebilling/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_IS_CONSUMABLE"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 267
    invoke-virtual {v5}, Lcom/miniclip/googlebilling/SkuDetails;->getSku()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 234
    .end local v0    # "consumable":Z
    .end local v1    # "consumableSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "editorExtra":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "failed":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v4    # "settingsExtra":Landroid/content/SharedPreferences;
    .end local v5    # "skuDetails":Lcom/miniclip/googlebilling/SkuDetails;
    :cond_1
    # getter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Query inventory was successful."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    const/4 v6, 0x1

    .line 237
    iget-object v7, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$QueryInventoryFinishedListener;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    # invokes: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->syncInventory(Lcom/miniclip/googlebilling/Inventory;)V
    invoke-static {v7, p2}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$800(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;Lcom/miniclip/googlebilling/Inventory;)V

    .line 239
    # getter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$100()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Initial inventory query finished."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 270
    .restart local v1    # "consumableSkus":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "editorExtra":Landroid/content/SharedPreferences$Editor;
    .restart local v3    # "failed":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4    # "settingsExtra":Landroid/content/SharedPreferences;
    :cond_2
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 271
    iget-object v7, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$QueryInventoryFinishedListener;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    # setter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mBusy:Z
    invoke-static {v7, v10}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$502(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;Z)Z

    .line 272
    iget-object v7, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$QueryInventoryFinishedListener;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    # invokes: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->onRegisterProviderResult(ZLjava/util/Collection;)V
    invoke-static {v7, v6, v3}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$700(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;ZLjava/util/Collection;)V

    .line 274
    iget-object v7, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$QueryInventoryFinishedListener;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    invoke-virtual {v7}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->requestPendingPurchases()V

    .line 275
    return-void
.end method
