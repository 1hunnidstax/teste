.class Lcom/miniclip/inapppurchases/providers/GoogleWrapper$4;
.super Ljava/lang/Object;
.source "GoogleWrapper.java"

# interfaces
.implements Lcom/miniclip/googlebilling/IabHelper$QueryInventoryFinishedListener;


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


# direct methods
.method constructor <init>(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$4;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryInventoryFinished(Lcom/miniclip/googlebilling/IabResult;Lcom/miniclip/googlebilling/Inventory;)V
    .locals 3
    .param p1, "result"    # Lcom/miniclip/googlebilling/IabResult;
    .param p2, "inventory"    # Lcom/miniclip/googlebilling/Inventory;

    .prologue
    .line 175
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/miniclip/googlebilling/IabResult;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$4;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to query inventory: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->complain(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$600(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;Ljava/lang/String;)V

    .line 181
    :goto_0
    iget-object v0, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$4;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    const/4 v1, 0x0

    # setter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mBusy:Z
    invoke-static {v0, v1}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$502(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;Z)Z

    .line 182
    iget-object v0, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$4;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    invoke-virtual {v0}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->requestPendingPurchases()V

    .line 183
    return-void

    .line 178
    :cond_1
    # getter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Query inventory was successful."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v0, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$4;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    # invokes: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->syncInventory(Lcom/miniclip/googlebilling/Inventory;)V
    invoke-static {v0, p2}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$800(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;Lcom/miniclip/googlebilling/Inventory;)V

    goto :goto_0
.end method
