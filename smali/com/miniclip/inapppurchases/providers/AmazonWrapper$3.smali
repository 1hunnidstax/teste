.class Lcom/miniclip/inapppurchases/providers/AmazonWrapper$3;
.super Ljava/lang/Object;
.source "AmazonWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/inapppurchases/providers/AmazonWrapper;->onPurchaseUpdatesResponse(Lcom/amazon/device/iap/model/PurchaseUpdatesResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/inapppurchases/providers/AmazonWrapper;

.field final synthetic val$productIds:[Ljava/lang/String;

.field final synthetic val$success:Z

.field final synthetic val$tokens:[Ljava/lang/String;

.field final synthetic val$userIds:[Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miniclip/inapppurchases/providers/AmazonWrapper;Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/inapppurchases/providers/AmazonWrapper;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/miniclip/inapppurchases/providers/AmazonWrapper$3;->this$0:Lcom/miniclip/inapppurchases/providers/AmazonWrapper;

    iput-boolean p2, p0, Lcom/miniclip/inapppurchases/providers/AmazonWrapper$3;->val$success:Z

    iput-object p3, p0, Lcom/miniclip/inapppurchases/providers/AmazonWrapper$3;->val$productIds:[Ljava/lang/String;

    iput-object p4, p0, Lcom/miniclip/inapppurchases/providers/AmazonWrapper$3;->val$tokens:[Ljava/lang/String;

    iput-object p5, p0, Lcom/miniclip/inapppurchases/providers/AmazonWrapper$3;->val$userIds:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/miniclip/inapppurchases/providers/AmazonWrapper$3;->val$success:Z

    iget-object v1, p0, Lcom/miniclip/inapppurchases/providers/AmazonWrapper$3;->val$productIds:[Ljava/lang/String;

    iget-object v2, p0, Lcom/miniclip/inapppurchases/providers/AmazonWrapper$3;->val$tokens:[Ljava/lang/String;

    iget-object v3, p0, Lcom/miniclip/inapppurchases/providers/AmazonWrapper$3;->val$userIds:[Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/miniclip/inapppurchases/MCInAppPurchases;->signalPurchasesRestoredResult(Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 267
    return-void
.end method
