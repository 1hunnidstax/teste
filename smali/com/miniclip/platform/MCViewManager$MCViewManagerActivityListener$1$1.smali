.class Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener$1$1;
.super Ljava/lang/Object;
.source "MCViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener$1;


# direct methods
.method constructor <init>(Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener$1;)V
    .locals 0
    .param p1, "this$2"    # Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener$1;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener$1$1;->this$2:Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 74
    iget-object v0, p0, Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener$1$1;->this$2:Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener$1;

    iget-object v0, v0, Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener$1;->this$1:Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener;

    iget-object v0, v0, Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener;->this$0:Lcom/miniclip/platform/MCViewManager;

    # invokes: Lcom/miniclip/platform/MCViewManager;->showDefaultView()V
    invoke-static {v0}, Lcom/miniclip/platform/MCViewManager;->access$200(Lcom/miniclip/platform/MCViewManager;)V

    .line 75
    iget-object v0, p0, Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener$1$1;->this$2:Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener$1;

    iget-object v0, v0, Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener$1;->val$handler:Landroid/os/Handler;

    new-instance v1, Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener$1$1$1;

    invoke-direct {v1, p0}, Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener$1$1$1;-><init>(Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener$1$1;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 86
    return-void
.end method
