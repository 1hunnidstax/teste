.class final Lcom/miniclip/inapppurchases/MCInAppPurchases$1;
.super Ljava/lang/Object;
.source "MCInAppPurchases.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/inapppurchases/MCInAppPurchases;->signalRegisterProviderResult(Z[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$failedSkus:[Ljava/lang/String;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Z[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 186
    iput-boolean p1, p0, Lcom/miniclip/inapppurchases/MCInAppPurchases$1;->val$success:Z

    iput-object p2, p0, Lcom/miniclip/inapppurchases/MCInAppPurchases$1;->val$failedSkus:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/miniclip/inapppurchases/MCInAppPurchases$1;->val$success:Z

    iget-object v1, p0, Lcom/miniclip/inapppurchases/MCInAppPurchases$1;->val$failedSkus:[Ljava/lang/String;

    # invokes: Lcom/miniclip/inapppurchases/MCInAppPurchases;->onRegisterProviderResult(Z[Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/miniclip/inapppurchases/MCInAppPurchases;->access$000(Z[Ljava/lang/String;)V

    .line 189
    return-void
.end method
