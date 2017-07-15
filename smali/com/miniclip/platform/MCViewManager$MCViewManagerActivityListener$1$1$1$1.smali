.class Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener$1$1$1$1;
.super Ljava/lang/Object;
.source "MCViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener$1$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$4:Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener$1$1$1;


# direct methods
.method constructor <init>(Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener$1$1$1;)V
    .locals 0
    .param p1, "this$4"    # Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener$1$1$1;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener$1$1$1$1;->this$4:Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener$1$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener$1$1$1$1;->this$4:Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener$1$1$1;

    iget-object v0, v0, Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener$1$1$1;->this$3:Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener$1$1;

    iget-object v0, v0, Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener$1$1;->this$2:Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener$1;

    iget-object v0, v0, Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener$1;->this$1:Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener;

    iget-object v0, v0, Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener;->this$0:Lcom/miniclip/platform/MCViewManager;

    # invokes: Lcom/miniclip/platform/MCViewManager;->firstRun()V
    invoke-static {v0}, Lcom/miniclip/platform/MCViewManager;->access$300(Lcom/miniclip/platform/MCViewManager;)V

    .line 82
    return-void
.end method
