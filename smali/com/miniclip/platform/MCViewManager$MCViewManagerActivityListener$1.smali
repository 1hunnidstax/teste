.class Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener$1;
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

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener$1;->this$1:Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener;

    iput-object p2, p0, Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 71
    # getter for: Lcom/miniclip/platform/MCViewManager;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;
    invoke-static {}, Lcom/miniclip/platform/MCViewManager;->access$400()Lcom/miniclip/framework/MiniclipAndroidActivity;

    move-result-object v0

    sget-object v1, Lcom/miniclip/framework/ThreadingContext;->UiThread:Lcom/miniclip/framework/ThreadingContext;

    new-instance v2, Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener$1$1;

    invoke-direct {v2, p0}, Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener$1$1;-><init>(Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/miniclip/framework/MiniclipAndroidActivity;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 88
    return-void
.end method
