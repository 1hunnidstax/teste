.class Lcom/miniclip/ui/AlertPopup$4;
.super Ljava/lang/Object;
.source "AlertPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/ui/AlertPopup;->showDialog()V
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
    .line 155
    iput-object p1, p0, Lcom/miniclip/ui/AlertPopup$4;->this$0:Lcom/miniclip/ui/AlertPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/miniclip/ui/AlertPopup$4;->this$0:Lcom/miniclip/ui/AlertPopup;

    # getter for: Lcom/miniclip/ui/AlertPopup;->mCancelable:Z
    invoke-static {v0}, Lcom/miniclip/ui/AlertPopup;->access$400(Lcom/miniclip/ui/AlertPopup;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/miniclip/ui/AlertPopup$4;->this$0:Lcom/miniclip/ui/AlertPopup;

    invoke-virtual {v0}, Lcom/miniclip/ui/AlertPopup;->dismissAlertPopup()V

    .line 160
    const/4 v0, 0x1

    .line 162
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
