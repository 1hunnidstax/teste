.class Lcom/miniclip/inapppurchases/providers/AmazonWrapper$2;
.super Ljava/lang/Object;
.source "AmazonWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/inapppurchases/providers/AmazonWrapper;->onPurchaseResponse(Lcom/amazon/device/iap/model/PurchaseResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/inapppurchases/providers/AmazonWrapper;

.field final synthetic val$productId:Ljava/lang/String;

.field final synthetic val$responseStatus:I

.field final synthetic val$token:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miniclip/inapppurchases/providers/AmazonWrapper;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/inapppurchases/providers/AmazonWrapper;

    .prologue
    .line 214
    iput-object p1, p0, Lcom/miniclip/inapppurchases/providers/AmazonWrapper$2;->this$0:Lcom/miniclip/inapppurchases/providers/AmazonWrapper;

    iput p2, p0, Lcom/miniclip/inapppurchases/providers/AmazonWrapper$2;->val$responseStatus:I

    iput-object p3, p0, Lcom/miniclip/inapppurchases/providers/AmazonWrapper$2;->val$productId:Ljava/lang/String;

    iput-object p4, p0, Lcom/miniclip/inapppurchases/providers/AmazonWrapper$2;->val$token:Ljava/lang/String;

    iput-object p5, p0, Lcom/miniclip/inapppurchases/providers/AmazonWrapper$2;->val$userId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 216
    iget v0, p0, Lcom/miniclip/inapppurchases/providers/AmazonWrapper$2;->val$responseStatus:I

    iget-object v1, p0, Lcom/miniclip/inapppurchases/providers/AmazonWrapper$2;->val$productId:Ljava/lang/String;

    iget-object v2, p0, Lcom/miniclip/inapppurchases/providers/AmazonWrapper$2;->val$token:Ljava/lang/String;

    iget-object v3, p0, Lcom/miniclip/inapppurchases/providers/AmazonWrapper$2;->val$userId:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/miniclip/inapppurchases/MCInAppPurchases;->signalPurchaseResponse(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    return-void
.end method
