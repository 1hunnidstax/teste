.class Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener$1$1$1;
.super Ljava/lang/Object;
.source "MCViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener$1$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$3:Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener$1$1;


# direct methods
.method constructor <init>(Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener$1$1;)V
    .locals 0
    .param p1, "this$3"    # Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener$1$1;

    .prologue
    .line 75
    iput-object p1, p0, Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener$1$1$1;->this$3:Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener$1$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 78
    # getter for: Lcom/miniclip/platform/MCViewManager;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;
    invoke-static {}, Lcom/miniclip/platform/MCViewManager;->access$400()Lcom/miniclip/framework/MiniclipAndroidActivity;

    move-result-object v0

    sget-object v1, Lcom/miniclip/framework/ThreadingContext;->UiThread:Lcom/miniclip/framework/ThreadingContext;

    new-instance v2, Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener$1$1$1$1;

    invoke-direct {v2, p0}, Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener$1$1$1$1;-><init>(Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener$1$1$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/miniclip/framework/MiniclipAndroidActivity;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 84
    return-void
.end method
