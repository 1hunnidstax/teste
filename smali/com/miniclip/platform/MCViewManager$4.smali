.class final Lcom/miniclip/platform/MCViewManager$4;
.super Ljava/lang/Object;
.source "MCViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/platform/MCViewManager;->runOnGlThread(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 454
    iput-object p1, p0, Lcom/miniclip/platform/MCViewManager$4;->val$r:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 457
    # getter for: Lcom/miniclip/platform/MCViewManager;->clearRenderer:Lcom/miniclip/nativeJNI/ClearRenderer;
    invoke-static {}, Lcom/miniclip/platform/MCViewManager;->access$1000()Lcom/miniclip/nativeJNI/ClearRenderer;

    move-result-object v0

    iget-object v1, p0, Lcom/miniclip/platform/MCViewManager$4;->val$r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/miniclip/nativeJNI/ClearRenderer;->queueEvent(Ljava/lang/Runnable;)V

    .line 458
    return-void
.end method
