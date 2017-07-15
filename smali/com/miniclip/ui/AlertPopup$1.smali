.class Lcom/miniclip/ui/AlertPopup$1;
.super Lcom/miniclip/framework/AbstractActivityListener;
.source "AlertPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miniclip/ui/AlertPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/ui/AlertPopup;


# direct methods
.method constructor <init>(Lcom/miniclip/ui/AlertPopup;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/ui/AlertPopup;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/miniclip/ui/AlertPopup$1;->this$0:Lcom/miniclip/ui/AlertPopup;

    invoke-direct {p0}, Lcom/miniclip/framework/AbstractActivityListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/miniclip/ui/AlertPopup$1;->this$0:Lcom/miniclip/ui/AlertPopup;

    # getter for: Lcom/miniclip/ui/AlertPopup;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/miniclip/ui/AlertPopup;->access$000(Lcom/miniclip/ui/AlertPopup;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/miniclip/ui/AlertPopup$1;->this$0:Lcom/miniclip/ui/AlertPopup;

    # getter for: Lcom/miniclip/ui/AlertPopup;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/miniclip/ui/AlertPopup;->access$000(Lcom/miniclip/ui/AlertPopup;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 35
    :cond_0
    # invokes: Lcom/miniclip/ui/AlertPopup;->nativeClearRunningPopups()V
    invoke-static {}, Lcom/miniclip/ui/AlertPopup;->access$100()V

    .line 36
    return-void
.end method
