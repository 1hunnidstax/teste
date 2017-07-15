.class Lcom/miniclip/inapppurchases/providers/GoogleWrapper$2;
.super Ljava/lang/Object;
.source "GoogleWrapper.java"

# interfaces
.implements Lcom/miniclip/googlebilling/IabHelper$QueryInventoryFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->restorePurchases()V
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
    .line 121
    iput-object p1, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$2;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/miniclip/googlebilling/IabResult;Lcom/miniclip/googlebilling/Inventory;)V
    .locals 8
    .param p1, "result"    # Lcom/miniclip/googlebilling/IabResult;
    .param p2, "inventory"    # Lcom/miniclip/googlebilling/Inventory;

    .prologue
    .line 124
    const/4 v4, 0x0

    .line 126
    .local v4, "success":Z
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miniclip/googlebilling/IabResult;->isFailure()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 127
    :cond_0
    iget-object v5, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$2;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to query inventory: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    # invokes: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->complain(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$600(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;Ljava/lang/String;)V

    .line 135
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 136
    .local v3, "skusList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 137
    .local v0, "jsonList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v2, "signatureList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p2, :cond_3

    invoke-virtual {p2}, Lcom/miniclip/googlebilling/Inventory;->getAllPurchases()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 140
    invoke-virtual {p2}, Lcom/miniclip/googlebilling/Inventory;->getAllPurchases()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miniclip/googlebilling/Purchase;

    .line 141
    .local v1, "p":Lcom/miniclip/googlebilling/Purchase;
    invoke-virtual {v1}, Lcom/miniclip/googlebilling/Purchase;->getPurchaseState()I

    move-result v6

    if-nez v6, :cond_1

    .line 142
    invoke-virtual {v1}, Lcom/miniclip/googlebilling/Purchase;->getSku()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    invoke-virtual {v1}, Lcom/miniclip/googlebilling/Purchase;->getOriginalJson()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-virtual {v1}, Lcom/miniclip/googlebilling/Purchase;->getSignature()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 129
    .end local v0    # "jsonList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v1    # "p":Lcom/miniclip/googlebilling/Purchase;
    .end local v2    # "signatureList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "skusList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    # getter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Query inventory was successful."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const/4 v4, 0x1

    .line 131
    iget-object v5, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$2;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    # invokes: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->syncInventory(Lcom/miniclip/googlebilling/Inventory;)V
    invoke-static {v5, p2}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$800(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;Lcom/miniclip/googlebilling/Inventory;)V

    .line 132
    # getter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$100()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Inventory query finished."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 148
    .restart local v0    # "jsonList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v2    # "signatureList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "skusList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    iget-object v5, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$2;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    const/4 v6, 0x0

    # setter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mBusy:Z
    invoke-static {v5, v6}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$502(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;Z)Z

    .line 149
    iget-object v5, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$2;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    # invokes: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->onPurchasesRestoredResult(ZLjava/util/List;Ljava/util/List;Ljava/util/List;)V
    invoke-static {v5, v4, v3, v0, v2}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$900(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;ZLjava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 150
    return-void
.end method
