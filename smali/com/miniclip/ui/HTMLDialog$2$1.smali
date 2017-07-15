.class Lcom/miniclip/ui/HTMLDialog$2$1;
.super Ljava/lang/Object;
.source "HTMLDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/ui/HTMLDialog$2;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miniclip/ui/HTMLDialog$2;


# direct methods
.method constructor <init>(Lcom/miniclip/ui/HTMLDialog$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miniclip/ui/HTMLDialog$2;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/miniclip/ui/HTMLDialog$2$1;->this$1:Lcom/miniclip/ui/HTMLDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 225
    iget-object v0, p0, Lcom/miniclip/ui/HTMLDialog$2$1;->this$1:Lcom/miniclip/ui/HTMLDialog$2;

    iget-object v0, v0, Lcom/miniclip/ui/HTMLDialog$2;->this$0:Lcom/miniclip/ui/HTMLDialog;

    iget-object v1, p0, Lcom/miniclip/ui/HTMLDialog$2$1;->this$1:Lcom/miniclip/ui/HTMLDialog$2;

    iget-object v1, v1, Lcom/miniclip/ui/HTMLDialog$2;->this$0:Lcom/miniclip/ui/HTMLDialog;

    # getter for: Lcom/miniclip/ui/HTMLDialog;->mWebpageID:J
    invoke-static {v1}, Lcom/miniclip/ui/HTMLDialog;->access$000(Lcom/miniclip/ui/HTMLDialog;)J

    move-result-wide v2

    # invokes: Lcom/miniclip/ui/HTMLDialog;->dismissLoadingPopupNative(J)V
    invoke-static {v0, v2, v3}, Lcom/miniclip/ui/HTMLDialog;->access$700(Lcom/miniclip/ui/HTMLDialog;J)V

    .line 226
    return-void
.end method
