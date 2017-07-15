.class Lcom/miniclip/ui/HTMLDialog$1;
.super Ljava/lang/Object;
.source "HTMLDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/ui/HTMLDialog;->createCrossImage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/ui/HTMLDialog;


# direct methods
.method constructor <init>(Lcom/miniclip/ui/HTMLDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/ui/HTMLDialog;

    .prologue
    .line 137
    iput-object p1, p0, Lcom/miniclip/ui/HTMLDialog$1;->this$0:Lcom/miniclip/ui/HTMLDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 140
    iget-object v0, p0, Lcom/miniclip/ui/HTMLDialog$1;->this$0:Lcom/miniclip/ui/HTMLDialog;

    iget-object v1, p0, Lcom/miniclip/ui/HTMLDialog$1;->this$0:Lcom/miniclip/ui/HTMLDialog;

    # getter for: Lcom/miniclip/ui/HTMLDialog;->mWebpageID:J
    invoke-static {v1}, Lcom/miniclip/ui/HTMLDialog;->access$000(Lcom/miniclip/ui/HTMLDialog;)J

    move-result-wide v2

    # invokes: Lcom/miniclip/ui/HTMLDialog;->handleBackButtonPressNative(J)V
    invoke-static {v0, v2, v3}, Lcom/miniclip/ui/HTMLDialog;->access$100(Lcom/miniclip/ui/HTMLDialog;J)V

    .line 141
    iget-object v0, p0, Lcom/miniclip/ui/HTMLDialog$1;->this$0:Lcom/miniclip/ui/HTMLDialog;

    invoke-virtual {v0}, Lcom/miniclip/ui/HTMLDialog;->dismiss()V

    .line 142
    iget-object v0, p0, Lcom/miniclip/ui/HTMLDialog$1;->this$0:Lcom/miniclip/ui/HTMLDialog;

    const/4 v1, 0x0

    # setter for: Lcom/miniclip/ui/HTMLDialog;->_isWebViewAttached:Z
    invoke-static {v0, v1}, Lcom/miniclip/ui/HTMLDialog;->access$202(Lcom/miniclip/ui/HTMLDialog;Z)Z

    .line 143
    iget-object v0, p0, Lcom/miniclip/ui/HTMLDialog$1;->this$0:Lcom/miniclip/ui/HTMLDialog;

    const/4 v1, 0x1

    # setter for: Lcom/miniclip/ui/HTMLDialog;->_wasWebviewDismissed:Z
    invoke-static {v0, v1}, Lcom/miniclip/ui/HTMLDialog;->access$302(Lcom/miniclip/ui/HTMLDialog;Z)Z

    .line 144
    return-void
.end method
