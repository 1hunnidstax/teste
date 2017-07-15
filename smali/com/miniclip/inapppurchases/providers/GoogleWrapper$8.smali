.class Lcom/miniclip/inapppurchases/providers/GoogleWrapper$8;
.super Ljava/lang/Object;
.source "GoogleWrapper.java"

# interfaces
.implements Lcom/miniclip/googlebilling/IabHelper$OnIabPurchaseFinishedListener;


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
    .line 407
    iput-object p1, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$8;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIabPurchaseFinished(Lcom/miniclip/googlebilling/IabResult;Lcom/miniclip/googlebilling/Purchase;)V
    .locals 2
    .param p1, "result"    # Lcom/miniclip/googlebilling/IabResult;
    .param p2, "purchase"    # Lcom/miniclip/googlebilling/Purchase;

    .prologue
    .line 409
    iget-object v0, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$8;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    const/4 v1, 0x0

    # invokes: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->purchaseFinishedCallback(Lcom/miniclip/googlebilling/IabResult;Lcom/miniclip/googlebilling/Purchase;Z)V
    invoke-static {v0, p1, p2, v1}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$1900(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;Lcom/miniclip/googlebilling/IabResult;Lcom/miniclip/googlebilling/Purchase;Z)V

    .line 410
    return-void
.end method
