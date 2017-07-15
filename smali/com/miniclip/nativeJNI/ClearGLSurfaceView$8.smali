.class Lcom/miniclip/nativeJNI/ClearGLSurfaceView$8;
.super Ljava/lang/Object;
.source "ClearGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/nativeJNI/ClearGLSurfaceView;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/nativeJNI/ClearGLSurfaceView;


# direct methods
.method constructor <init>(Lcom/miniclip/nativeJNI/ClearGLSurfaceView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/nativeJNI/ClearGLSurfaceView;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/miniclip/nativeJNI/ClearGLSurfaceView$8;->this$0:Lcom/miniclip/nativeJNI/ClearGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/miniclip/nativeJNI/ClearGLSurfaceView$8;->this$0:Lcom/miniclip/nativeJNI/ClearGLSurfaceView;

    iget-object v0, v0, Lcom/miniclip/nativeJNI/ClearGLSurfaceView;->mRenderer:Lcom/miniclip/nativeJNI/ClearRenderer;

    new-instance v1, Lcom/miniclip/nativeJNI/ClearGLSurfaceView$8$1;

    invoke-direct {v1, p0}, Lcom/miniclip/nativeJNI/ClearGLSurfaceView$8$1;-><init>(Lcom/miniclip/nativeJNI/ClearGLSurfaceView$8;)V

    invoke-virtual {v0, v1}, Lcom/miniclip/nativeJNI/ClearRenderer;->queueEvent(Ljava/lang/Runnable;)V

    .line 184
    return-void
.end method
