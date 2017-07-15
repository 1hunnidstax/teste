.class Lcom/miniclip/inapppurchases/providers/GoogleWrapper$11;
.super Ljava/lang/Object;
.source "GoogleWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->setWaitScreen(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

.field final synthetic val$set:Z


# direct methods
.method constructor <init>(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    .prologue
    .line 518
    iput-object p1, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$11;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    iput-boolean p2, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$11;->val$set:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 520
    iget-boolean v0, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$11;->val$set:Z

    if-eqz v0, :cond_1

    .line 521
    iget-object v0, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$11;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    iget-object v1, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$11;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    # getter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->_activity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$300(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;)Landroid/app/Activity;

    move-result-object v1

    const-string v2, "Processing Transaction"

    const-string v3, "Please Wait"

    invoke-static {v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v1

    # setter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0, v1}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$2002(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 522
    :cond_1
    iget-object v0, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$11;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    # getter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$2000(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/miniclip/inapppurchases/providers/GoogleWrapper$11;->this$0:Lcom/miniclip/inapppurchases/providers/GoogleWrapper;

    # getter for: Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->mProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v0}, Lcom/miniclip/inapppurchases/providers/GoogleWrapper;->access$2000(Lcom/miniclip/inapppurchases/providers/GoogleWrapper;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    goto :goto_0
.end method
