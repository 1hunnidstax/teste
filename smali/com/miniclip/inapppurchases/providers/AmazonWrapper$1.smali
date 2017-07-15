.class Lcom/miniclip/inapppurchases/providers/AmazonWrapper$1;
.super Ljava/lang/Object;
.source "AmazonWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/inapppurchases/providers/AmazonWrapper;->onProductDataResponse(Lcom/amazon/device/iap/model/ProductDataResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/inapppurchases/providers/AmazonWrapper;


# direct methods
.method constructor <init>(Lcom/miniclip/inapppurchases/providers/AmazonWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/inapppurchases/providers/AmazonWrapper;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/miniclip/inapppurchases/providers/AmazonWrapper$1;->this$0:Lcom/miniclip/inapppurchases/providers/AmazonWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 163
    iget-object v2, p0, Lcom/miniclip/inapppurchases/providers/AmazonWrapper$1;->this$0:Lcom/miniclip/inapppurchases/providers/AmazonWrapper;

    # invokes: Lcom/miniclip/inapppurchases/providers/AmazonWrapper;->checkRemainingSkus()Z
    invoke-static {v2}, Lcom/miniclip/inapppurchases/providers/AmazonWrapper;->access$000(Lcom/miniclip/inapppurchases/providers/AmazonWrapper;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 164
    iget-object v2, p0, Lcom/miniclip/inapppurchases/providers/AmazonWrapper$1;->this$0:Lcom/miniclip/inapppurchases/providers/AmazonWrapper;

    # getter for: Lcom/miniclip/inapppurchases/providers/AmazonWrapper;->failedSkus:Ljava/util/List;
    invoke-static {v2}, Lcom/miniclip/inapppurchases/providers/AmazonWrapper;->access$100(Lcom/miniclip/inapppurchases/providers/AmazonWrapper;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    new-array v0, v3, [Ljava/lang/String;

    .line 165
    .local v0, "failedSkusArray":[Ljava/lang/String;
    :goto_0
    array-length v4, v0

    move v2, v3

    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v1, v0, v2

    .line 166
    .local v1, "sku":Ljava/lang/String;
    const-string v5, "AmazonInAppPurchase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "signalRegisterProviderResult failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 164
    .end local v0    # "failedSkusArray":[Ljava/lang/String;
    .end local v1    # "sku":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/miniclip/inapppurchases/providers/AmazonWrapper$1;->this$0:Lcom/miniclip/inapppurchases/providers/AmazonWrapper;

    # getter for: Lcom/miniclip/inapppurchases/providers/AmazonWrapper;->failedSkus:Ljava/util/List;
    invoke-static {v2}, Lcom/miniclip/inapppurchases/providers/AmazonWrapper;->access$100(Lcom/miniclip/inapppurchases/providers/AmazonWrapper;)Ljava/util/List;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/String;

    invoke-interface {v2, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    move-object v0, v2

    goto :goto_0

    .line 167
    .restart local v0    # "failedSkusArray":[Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/miniclip/inapppurchases/providers/AmazonWrapper$1;->this$0:Lcom/miniclip/inapppurchases/providers/AmazonWrapper;

    # getter for: Lcom/miniclip/inapppurchases/providers/AmazonWrapper;->productDataFailed:Z
    invoke-static {v2}, Lcom/miniclip/inapppurchases/providers/AmazonWrapper;->access$200(Lcom/miniclip/inapppurchases/providers/AmazonWrapper;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    :goto_2
    invoke-static {v2, v0}, Lcom/miniclip/inapppurchases/MCInAppPurchases;->signalRegisterProviderResult(Z[Ljava/lang/String;)V

    .line 169
    .end local v0    # "failedSkusArray":[Ljava/lang/String;
    :cond_2
    return-void

    .restart local v0    # "failedSkusArray":[Ljava/lang/String;
    :cond_3
    move v2, v3

    .line 167
    goto :goto_2
.end method
