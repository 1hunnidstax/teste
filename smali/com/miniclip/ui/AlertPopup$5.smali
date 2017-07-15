.class Lcom/miniclip/ui/AlertPopup$5;
.super Ljava/lang/Object;
.source "AlertPopup.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


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
    .line 173
    iput-object p1, p0, Lcom/miniclip/ui/AlertPopup$5;->this$0:Lcom/miniclip/ui/AlertPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShow(Landroid/content/DialogInterface;)V
    .locals 4
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 176
    iget-object v0, p0, Lcom/miniclip/ui/AlertPopup$5;->this$0:Lcom/miniclip/ui/AlertPopup;

    # getter for: Lcom/miniclip/ui/AlertPopup;->mNativeObjectReference:Ljava/lang/Number;
    invoke-static {v0}, Lcom/miniclip/ui/AlertPopup;->access$500(Lcom/miniclip/ui/AlertPopup;)Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/miniclip/ui/AlertPopup$5;->this$0:Lcom/miniclip/ui/AlertPopup;

    iget-object v1, p0, Lcom/miniclip/ui/AlertPopup$5;->this$0:Lcom/miniclip/ui/AlertPopup;

    # getter for: Lcom/miniclip/ui/AlertPopup;->mNativeObjectReference:Ljava/lang/Number;
    invoke-static {v1}, Lcom/miniclip/ui/AlertPopup;->access$500(Lcom/miniclip/ui/AlertPopup;)Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    # invokes: Lcom/miniclip/ui/AlertPopup;->nativePopupDidAppear(J)V
    invoke-static {v0, v2, v3}, Lcom/miniclip/ui/AlertPopup;->access$600(Lcom/miniclip/ui/AlertPopup;J)V

    .line 181
    :goto_0
    return-void

    .line 179
    :cond_0
    const-string v0, "AlertPopup"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried calling nativePopupDidAppear with null messageId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miniclip/ui/AlertPopup$5;->this$0:Lcom/miniclip/ui/AlertPopup;

    # getter for: Lcom/miniclip/ui/AlertPopup;->mNativeDialogId:J
    invoke-static {v2}, Lcom/miniclip/ui/AlertPopup;->access$700(Lcom/miniclip/ui/AlertPopup;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
