.class Lcom/miniclip/ui/AlertPopup$2;
.super Ljava/lang/Object;
.source "AlertPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/ui/AlertPopup;->showAlertPopup(Ljava/lang/String;Ljava/lang/String;ZZ[Ljava/lang/String;)V
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
    .line 62
    iput-object p1, p0, Lcom/miniclip/ui/AlertPopup$2;->this$0:Lcom/miniclip/ui/AlertPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/miniclip/ui/AlertPopup$2;->this$0:Lcom/miniclip/ui/AlertPopup;

    # invokes: Lcom/miniclip/ui/AlertPopup;->showDialog()V
    invoke-static {v0}, Lcom/miniclip/ui/AlertPopup;->access$200(Lcom/miniclip/ui/AlertPopup;)V

    .line 66
    return-void
.end method
