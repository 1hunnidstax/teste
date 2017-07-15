.class final Lcom/miniclip/inapppurchases/MCInAppPurchases$3;
.super Ljava/lang/Object;
.source "MCInAppPurchases.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/inapppurchases/MCInAppPurchases;->signalPurchasesRestoredResult(Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$productId:[Ljava/lang/String;

.field final synthetic val$success:Z

.field final synthetic val$verificationData1:[Ljava/lang/String;

.field final synthetic val$verificationData2:[Ljava/lang/String;


# direct methods
.method constructor <init>(Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 200
    iput-boolean p1, p0, Lcom/miniclip/inapppurchases/MCInAppPurchases$3;->val$success:Z

    iput-object p2, p0, Lcom/miniclip/inapppurchases/MCInAppPurchases$3;->val$productId:[Ljava/lang/String;

    iput-object p3, p0, Lcom/miniclip/inapppurchases/MCInAppPurchases$3;->val$verificationData1:[Ljava/lang/String;

    iput-object p4, p0, Lcom/miniclip/inapppurchases/MCInAppPurchases$3;->val$verificationData2:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/miniclip/inapppurchases/MCInAppPurchases$3;->val$success:Z

    iget-object v1, p0, Lcom/miniclip/inapppurchases/MCInAppPurchases$3;->val$productId:[Ljava/lang/String;

    iget-object v2, p0, Lcom/miniclip/inapppurchases/MCInAppPurchases$3;->val$verificationData1:[Ljava/lang/String;

    iget-object v3, p0, Lcom/miniclip/inapppurchases/MCInAppPurchases$3;->val$verificationData2:[Ljava/lang/String;

    # invokes: Lcom/miniclip/inapppurchases/MCInAppPurchases;->onPurchasesRestoredResult(Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    invoke-static {v0, v1, v2, v3}, Lcom/miniclip/inapppurchases/MCInAppPurchases;->access$200(Z[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 203
    return-void
.end method
