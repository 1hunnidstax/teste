.class Lcom/miniclip/platform/MCViewManager$EGLComponentSizeParameters;
.super Ljava/lang/Object;
.source "MCViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miniclip/platform/MCViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EGLComponentSizeParameters"
.end annotation


# instance fields
.field private alphaSize:I

.field private blueSize:I

.field private depthSize:I

.field private greenSize:I

.field private redSize:I

.field private stencilSize:I


# direct methods
.method constructor <init>(IIIIII)V
    .locals 0
    .param p1, "redSize"    # I
    .param p2, "greenSize"    # I
    .param p3, "blueSize"    # I
    .param p4, "alphaSize"    # I
    .param p5, "depthSize"    # I
    .param p6, "stencilSize"    # I

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    iput p1, p0, Lcom/miniclip/platform/MCViewManager$EGLComponentSizeParameters;->redSize:I

    .line 128
    iput p2, p0, Lcom/miniclip/platform/MCViewManager$EGLComponentSizeParameters;->greenSize:I

    .line 129
    iput p3, p0, Lcom/miniclip/platform/MCViewManager$EGLComponentSizeParameters;->blueSize:I

    .line 130
    iput p4, p0, Lcom/miniclip/platform/MCViewManager$EGLComponentSizeParameters;->alphaSize:I

    .line 131
    iput p5, p0, Lcom/miniclip/platform/MCViewManager$EGLComponentSizeParameters;->depthSize:I

    .line 132
    iput p6, p0, Lcom/miniclip/platform/MCViewManager$EGLComponentSizeParameters;->stencilSize:I

    .line 133
    return-void
.end method


# virtual methods
.method createEGLConfigChooser(Lcom/miniclip/nativeJNI/GLSurfaceViewProfile;)Lcom/miniclip/nativeJNI/GLSurfaceViewProfile$EGLConfigChooser;
    .locals 8
    .param p1, "glSurfaceView"    # Lcom/miniclip/nativeJNI/GLSurfaceViewProfile;

    .prologue
    .line 136
    new-instance v0, Lcom/miniclip/nativeJNI/GLSurfaceViewProfile$ComponentSizeChooser;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, p0, Lcom/miniclip/platform/MCViewManager$EGLComponentSizeParameters;->redSize:I

    iget v3, p0, Lcom/miniclip/platform/MCViewManager$EGLComponentSizeParameters;->greenSize:I

    iget v4, p0, Lcom/miniclip/platform/MCViewManager$EGLComponentSizeParameters;->blueSize:I

    iget v5, p0, Lcom/miniclip/platform/MCViewManager$EGLComponentSizeParameters;->alphaSize:I

    iget v6, p0, Lcom/miniclip/platform/MCViewManager$EGLComponentSizeParameters;->depthSize:I

    iget v7, p0, Lcom/miniclip/platform/MCViewManager$EGLComponentSizeParameters;->stencilSize:I

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/miniclip/nativeJNI/GLSurfaceViewProfile$ComponentSizeChooser;-><init>(Lcom/miniclip/nativeJNI/GLSurfaceViewProfile;IIIIII)V

    return-object v0
.end method
