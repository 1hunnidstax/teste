.class Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener;
.super Lcom/miniclip/framework/AbstractActivityListener;
.source "MCViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miniclip/platform/MCViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MCViewManagerActivityListener"
.end annotation


# instance fields
.field private hasWindowFocus:Z

.field private resumeOnFocus:Z

.field final synthetic this$0:Lcom/miniclip/platform/MCViewManager;


# direct methods
.method private constructor <init>(Lcom/miniclip/platform/MCViewManager;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 43
    iput-object p1, p0, Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener;->this$0:Lcom/miniclip/platform/MCViewManager;

    invoke-direct {p0}, Lcom/miniclip/framework/AbstractActivityListener;-><init>()V

    .line 44
    iput-boolean v0, p0, Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener;->hasWindowFocus:Z

    .line 45
    iput-boolean v0, p0, Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener;->resumeOnFocus:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/miniclip/platform/MCViewManager;Lcom/miniclip/platform/MCViewManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miniclip/platform/MCViewManager;
    .param p2, "x1"    # Lcom/miniclip/platform/MCViewManager$1;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener;-><init>(Lcom/miniclip/platform/MCViewManager;)V

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 1

    .prologue
    .line 49
    # getter for: Lcom/miniclip/platform/MCViewManager;->glView:Lcom/miniclip/nativeJNI/ClearGLSurfaceView;
    invoke-static {}, Lcom/miniclip/platform/MCViewManager;->access$000()Lcom/miniclip/nativeJNI/ClearGLSurfaceView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    # getter for: Lcom/miniclip/platform/MCViewManager;->glView:Lcom/miniclip/nativeJNI/ClearGLSurfaceView;
    invoke-static {}, Lcom/miniclip/platform/MCViewManager;->access$000()Lcom/miniclip/nativeJNI/ClearGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miniclip/nativeJNI/ClearGLSurfaceView;->onPause()V

    .line 51
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener;->hasWindowFocus:Z

    if-eqz v0, :cond_1

    .line 107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener;->resumeOnFocus:Z

    .line 109
    # getter for: Lcom/miniclip/platform/MCViewManager;->glView:Lcom/miniclip/nativeJNI/ClearGLSurfaceView;
    invoke-static {}, Lcom/miniclip/platform/MCViewManager;->access$000()Lcom/miniclip/nativeJNI/ClearGLSurfaceView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 110
    # getter for: Lcom/miniclip/platform/MCViewManager;->glView:Lcom/miniclip/nativeJNI/ClearGLSurfaceView;
    invoke-static {}, Lcom/miniclip/platform/MCViewManager;->access$000()Lcom/miniclip/nativeJNI/ClearGLSurfaceView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miniclip/nativeJNI/ClearGLSurfaceView;->onResume()V

    .line 114
    :cond_0
    :goto_0
    return-void

    .line 112
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener;->resumeOnFocus:Z

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4
    .param p1, "nowHasWindowFocus"    # Z

    .prologue
    const/4 v2, 0x0

    .line 55
    iput-boolean p1, p0, Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener;->hasWindowFocus:Z

    .line 56
    iget-boolean v1, p0, Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener;->hasWindowFocus:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener;->resumeOnFocus:Z

    if-eqz v1, :cond_0

    .line 57
    iput-boolean v2, p0, Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener;->resumeOnFocus:Z

    .line 59
    # getter for: Lcom/miniclip/platform/MCViewManager;->glView:Lcom/miniclip/nativeJNI/ClearGLSurfaceView;
    invoke-static {}, Lcom/miniclip/platform/MCViewManager;->access$000()Lcom/miniclip/nativeJNI/ClearGLSurfaceView;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 60
    # getter for: Lcom/miniclip/platform/MCViewManager;->glView:Lcom/miniclip/nativeJNI/ClearGLSurfaceView;
    invoke-static {}, Lcom/miniclip/platform/MCViewManager;->access$000()Lcom/miniclip/nativeJNI/ClearGLSurfaceView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miniclip/nativeJNI/ClearGLSurfaceView;->onResume()V

    .line 63
    :cond_0
    iget-boolean v1, p0, Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener;->hasWindowFocus:Z

    if-eqz v1, :cond_1

    .line 64
    invoke-static {}, Lcom/miniclip/platform/MCViewManager;->fixScreen()V

    .line 65
    :cond_1
    iget-boolean v1, p0, Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener;->hasWindowFocus:Z

    if-eqz v1, :cond_2

    # getter for: Lcom/miniclip/platform/MCViewManager;->isFirstRun:Z
    invoke-static {}, Lcom/miniclip/platform/MCViewManager;->access$100()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 66
    # setter for: Lcom/miniclip/platform/MCViewManager;->isFirstRun:Z
    invoke-static {v2}, Lcom/miniclip/platform/MCViewManager;->access$102(Z)Z

    .line 67
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 68
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener$1;

    invoke-direct {v1, p0, v0}, Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener$1;-><init>(Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener;Landroid/os/Handler;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 93
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_2
    iget-boolean v1, p0, Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener;->hasWindowFocus:Z

    if-eqz v1, :cond_3

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_3

    .line 94
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 95
    .restart local v0    # "handler":Landroid/os/Handler;
    new-instance v1, Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener$2;

    invoke-direct {v1, p0}, Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener$2;-><init>(Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 102
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_3
    return-void
.end method
