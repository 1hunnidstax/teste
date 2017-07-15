.class Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener$2;
.super Ljava/lang/Object;
.source "MCViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener;->onWindowFocusChanged(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener;


# direct methods
.method constructor <init>(Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener$2;->this$1:Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener$2;->this$1:Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener;

    iget-object v0, v0, Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener;->this$0:Lcom/miniclip/platform/MCViewManager;

    # invokes: Lcom/miniclip/platform/MCViewManager;->setSystemUiVisibility()V
    invoke-static {v0}, Lcom/miniclip/platform/MCViewManager;->access$500(Lcom/miniclip/platform/MCViewManager;)V

    .line 99
    return-void
.end method
