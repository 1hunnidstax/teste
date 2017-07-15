.class Lcom/miniclip/nativeJNI/ClearGLSurfaceView$7;
.super Ljava/lang/Object;
.source "ClearGLSurfaceView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/nativeJNI/ClearGLSurfaceView;->onPause()V
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
    .line 162
    iput-object p1, p0, Lcom/miniclip/nativeJNI/ClearGLSurfaceView$7;->this$0:Lcom/miniclip/nativeJNI/ClearGLSurfaceView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/miniclip/nativeJNI/ClearGLSurfaceView$7;->this$0:Lcom/miniclip/nativeJNI/ClearGLSurfaceView;

    iget-object v0, v0, Lcom/miniclip/nativeJNI/ClearGLSurfaceView;->mRenderer:Lcom/miniclip/nativeJNI/ClearRenderer;

    invoke-virtual {v0}, Lcom/miniclip/nativeJNI/ClearRenderer;->handleOnPause()V

    .line 166
    return-void
.end method
