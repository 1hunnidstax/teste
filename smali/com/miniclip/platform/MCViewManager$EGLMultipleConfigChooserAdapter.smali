.class Lcom/miniclip/platform/MCViewManager$EGLMultipleConfigChooserAdapter;
.super Ljava/lang/Object;
.source "MCViewManager.java"

# interfaces
.implements Lcom/miniclip/nativeJNI/GLSurfaceViewProfile$EGLConfigChooser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miniclip/platform/MCViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EGLMultipleConfigChooserAdapter"
.end annotation


# instance fields
.field private configChoosers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miniclip/nativeJNI/GLSurfaceViewProfile$EGLConfigChooser;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/miniclip/platform/MCViewManager;


# direct methods
.method private constructor <init>(Lcom/miniclip/platform/MCViewManager;)V
    .locals 1

    .prologue
    .line 141
    iput-object p1, p0, Lcom/miniclip/platform/MCViewManager$EGLMultipleConfigChooserAdapter;->this$0:Lcom/miniclip/platform/MCViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miniclip/platform/MCViewManager$EGLMultipleConfigChooserAdapter;->configChoosers:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miniclip/platform/MCViewManager;Lcom/miniclip/platform/MCViewManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miniclip/platform/MCViewManager;
    .param p2, "x1"    # Lcom/miniclip/platform/MCViewManager$1;

    .prologue
    .line 141
    invoke-direct {p0, p1}, Lcom/miniclip/platform/MCViewManager$EGLMultipleConfigChooserAdapter;-><init>(Lcom/miniclip/platform/MCViewManager;)V

    return-void
.end method


# virtual methods
.method addEGLConfigChooser(Lcom/miniclip/nativeJNI/GLSurfaceViewProfile$EGLConfigChooser;)V
    .locals 1
    .param p1, "configChooser"    # Lcom/miniclip/nativeJNI/GLSurfaceViewProfile$EGLConfigChooser;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/miniclip/platform/MCViewManager$EGLMultipleConfigChooserAdapter;->configChoosers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    return-void
.end method

.method public chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    .locals 4
    .param p1, "egl"    # Ljavax/microedition/khronos/egl/EGL10;
    .param p2, "display"    # Ljavax/microedition/khronos/egl/EGLDisplay;

    .prologue
    .line 150
    iget-object v2, p0, Lcom/miniclip/platform/MCViewManager$EGLMultipleConfigChooserAdapter;->configChoosers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miniclip/nativeJNI/GLSurfaceViewProfile$EGLConfigChooser;

    .line 152
    .local v1, "configChooser":Lcom/miniclip/nativeJNI/GLSurfaceViewProfile$EGLConfigChooser;
    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/miniclip/nativeJNI/GLSurfaceViewProfile$EGLConfigChooser;->chooseConfig(Ljavax/microedition/khronos/egl/EGL10;Ljavax/microedition/khronos/egl/EGLDisplay;)Ljavax/microedition/khronos/egl/EGLConfig;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 153
    .local v0, "config":Ljavax/microedition/khronos/egl/EGLConfig;
    if-eqz v0, :cond_0

    .line 154
    return-object v0

    .line 158
    .end local v0    # "config":Ljavax/microedition/khronos/egl/EGLConfig;
    .end local v1    # "configChooser":Lcom/miniclip/nativeJNI/GLSurfaceViewProfile$EGLConfigChooser;
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No config chosen"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 156
    .restart local v1    # "configChooser":Lcom/miniclip/nativeJNI/GLSurfaceViewProfile$EGLConfigChooser;
    :catch_0
    move-exception v3

    goto :goto_0
.end method
