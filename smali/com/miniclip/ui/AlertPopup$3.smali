.class Lcom/miniclip/ui/AlertPopup$3;
.super Ljava/lang/Object;
.source "AlertPopup.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/ui/AlertPopup;->dismissAlertPopup()V
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
    .line 71
    iput-object p1, p0, Lcom/miniclip/ui/AlertPopup$3;->this$0:Lcom/miniclip/ui/AlertPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/miniclip/ui/AlertPopup$3;->this$0:Lcom/miniclip/ui/AlertPopup;

    # invokes: Lcom/miniclip/ui/AlertPopup;->closeDialog()V
    invoke-static {v0}, Lcom/miniclip/ui/AlertPopup;->access$300(Lcom/miniclip/ui/AlertPopup;)V

    .line 75
    return-void
.end method
