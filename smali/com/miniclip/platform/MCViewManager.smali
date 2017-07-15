.class public Lcom/miniclip/platform/MCViewManager;
.super Ljava/lang/Object;
.source "MCViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miniclip/platform/MCViewManager$EGLMultipleConfigChooserAdapter;,
        Lcom/miniclip/platform/MCViewManager$EGLComponentSizeParameters;,
        Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener;,
        Lcom/miniclip/platform/MCViewManager$MCViewManagerEventsListener;
    }
.end annotation


# static fields
.field private static final GL_VERSION_CODE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MCViewManager"

.field private static activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

.field private static clearRenderer:Lcom/miniclip/nativeJNI/ClearRenderer;

.field public static displayHeight:I

.field public static displayWidth:I

.field private static eglParametersList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miniclip/platform/MCViewManager$EGLComponentSizeParameters;",
            ">;"
        }
    .end annotation
.end field

.field private static glView:Lcom/miniclip/nativeJNI/ClearGLSurfaceView;

.field private static initView:Landroid/widget/RelativeLayout;

.field private static instance:Lcom/miniclip/platform/MCViewManager;

.field private static isFirstRun:Z

.field private static isInitialized:Z

.field private static listeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/miniclip/platform/MCViewManager$MCViewManagerEventsListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mainLayout:Landroid/widget/RelativeLayout;

.field private static final pendingEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static screenFixHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 171
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/miniclip/platform/MCViewManager;->screenFixHandler:Landroid/os/Handler;

    .line 173
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/miniclip/platform/MCViewManager;->listeners:Ljava/util/Set;

    .line 174
    const/4 v0, 0x0

    sput-boolean v0, Lcom/miniclip/platform/MCViewManager;->isInitialized:Z

    .line 175
    const/4 v0, 0x1

    sput-boolean v0, Lcom/miniclip/platform/MCViewManager;->isFirstRun:Z

    .line 180
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miniclip/platform/MCViewManager;->eglParametersList:Ljava/util/List;

    .line 182
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/miniclip/platform/MCViewManager;->pendingEvents:Ljava/util/List;

    .line 185
    new-instance v0, Lcom/miniclip/platform/MCViewManager;

    invoke-direct {v0}, Lcom/miniclip/platform/MCViewManager;-><init>()V

    sput-object v0, Lcom/miniclip/platform/MCViewManager;->instance:Lcom/miniclip/platform/MCViewManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/miniclip/nativeJNI/ClearGLSurfaceView;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/miniclip/platform/MCViewManager;->glView:Lcom/miniclip/nativeJNI/ClearGLSurfaceView;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 37
    sget-boolean v0, Lcom/miniclip/platform/MCViewManager;->isFirstRun:Z

    return v0
.end method

.method static synthetic access$1000()Lcom/miniclip/nativeJNI/ClearRenderer;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/miniclip/platform/MCViewManager;->clearRenderer:Lcom/miniclip/nativeJNI/ClearRenderer;

    return-object v0
.end method

.method static synthetic access$102(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 37
    sput-boolean p0, Lcom/miniclip/platform/MCViewManager;->isFirstRun:Z

    return p0
.end method

.method static synthetic access$200(Lcom/miniclip/platform/MCViewManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/miniclip/platform/MCViewManager;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/miniclip/platform/MCViewManager;->showDefaultView()V

    return-void
.end method

.method static synthetic access$300(Lcom/miniclip/platform/MCViewManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/miniclip/platform/MCViewManager;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/miniclip/platform/MCViewManager;->firstRun()V

    return-void
.end method

.method static synthetic access$400()Lcom/miniclip/framework/MiniclipAndroidActivity;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/miniclip/platform/MCViewManager;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/miniclip/platform/MCViewManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/miniclip/platform/MCViewManager;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/miniclip/platform/MCViewManager;->setSystemUiVisibility()V

    return-void
.end method

.method static synthetic access$700()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/miniclip/platform/MCViewManager;->initView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$800()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/miniclip/platform/MCViewManager;->mainLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public static addEGLConfigOption(IIIIII)V
    .locals 8
    .param p0, "redSize"    # I
    .param p1, "greenSize"    # I
    .param p2, "blueSize"    # I
    .param p3, "alphaSize"    # I
    .param p4, "depthSize"    # I
    .param p5, "stencilSize"    # I

    .prologue
    .line 438
    sget-object v7, Lcom/miniclip/platform/MCViewManager;->eglParametersList:Ljava/util/List;

    new-instance v0, Lcom/miniclip/platform/MCViewManager$EGLComponentSizeParameters;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/miniclip/platform/MCViewManager$EGLComponentSizeParameters;-><init>(IIIIII)V

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    return-void
.end method

.method public static addListener(Lcom/miniclip/platform/MCViewManager$MCViewManagerEventsListener;)Z
    .locals 1
    .param p0, "listener"    # Lcom/miniclip/platform/MCViewManager$MCViewManagerEventsListener;

    .prologue
    .line 470
    sget-object v0, Lcom/miniclip/platform/MCViewManager;->listeners:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private createEGLConfigChooser(Lcom/miniclip/nativeJNI/GLSurfaceViewProfile;)Lcom/miniclip/nativeJNI/GLSurfaceViewProfile$EGLConfigChooser;
    .locals 4
    .param p1, "glSurfaceView"    # Lcom/miniclip/nativeJNI/GLSurfaceViewProfile;

    .prologue
    const/4 v2, 0x0

    .line 425
    sget-object v3, Lcom/miniclip/platform/MCViewManager;->eglParametersList:Ljava/util/List;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/miniclip/platform/MCViewManager;->eglParametersList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move-object v0, v2

    .line 433
    :cond_1
    return-object v0

    .line 429
    :cond_2
    new-instance v0, Lcom/miniclip/platform/MCViewManager$EGLMultipleConfigChooserAdapter;

    invoke-direct {v0, p0, v2}, Lcom/miniclip/platform/MCViewManager$EGLMultipleConfigChooserAdapter;-><init>(Lcom/miniclip/platform/MCViewManager;Lcom/miniclip/platform/MCViewManager$1;)V

    .line 430
    .local v0, "multipleConfigChooser":Lcom/miniclip/platform/MCViewManager$EGLMultipleConfigChooserAdapter;
    sget-object v2, Lcom/miniclip/platform/MCViewManager;->eglParametersList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miniclip/platform/MCViewManager$EGLComponentSizeParameters;

    .line 431
    .local v1, "parameters":Lcom/miniclip/platform/MCViewManager$EGLComponentSizeParameters;
    invoke-virtual {v1, p1}, Lcom/miniclip/platform/MCViewManager$EGLComponentSizeParameters;->createEGLConfigChooser(Lcom/miniclip/nativeJNI/GLSurfaceViewProfile;)Lcom/miniclip/nativeJNI/GLSurfaceViewProfile$EGLConfigChooser;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/miniclip/platform/MCViewManager$EGLMultipleConfigChooserAdapter;->addEGLConfigChooser(Lcom/miniclip/nativeJNI/GLSurfaceViewProfile$EGLConfigChooser;)V

    goto :goto_0
.end method

.method private firstRun()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x0

    .line 387
    sget-object v4, Lcom/miniclip/platform/MCViewManager;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    check-cast v4, Lcom/miniclip/nativeJNI/cocojava;

    invoke-virtual {v4}, Lcom/miniclip/nativeJNI/cocojava;->firstRun()V

    .line 390
    invoke-static {}, Lcom/miniclip/platform/MCApplication;->hasFatalErrorOccurred()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 422
    :goto_0
    return-void

    .line 393
    :cond_0
    const-string v4, "MCViewManager"

    const-string v5, "firstRun"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    sget-object v4, Lcom/miniclip/platform/MCViewManager;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    invoke-virtual {v4}, Lcom/miniclip/framework/MiniclipAndroidActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v1, v4, Landroid/util/DisplayMetrics;->density:F

    .line 396
    .local v1, "displayDensity":F
    const-string v4, "Dim"

    const-string v5, "width: %d, height: %d, density: %f"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    sget v7, Lcom/miniclip/platform/MCViewManager;->displayWidth:I

    .line 397
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v9

    const/4 v7, 0x1

    sget v8, Lcom/miniclip/platform/MCViewManager;->displayHeight:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v6, v10

    .line 396
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    sget-object v5, Lcom/miniclip/platform/MCViewManager;->pendingEvents:Ljava/util/List;

    monitor-enter v5

    .line 401
    :try_start_0
    new-instance v4, Lcom/miniclip/nativeJNI/ClearGLSurfaceView;

    sget-object v6, Lcom/miniclip/platform/MCViewManager;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    invoke-direct {v4, v6}, Lcom/miniclip/nativeJNI/ClearGLSurfaceView;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/miniclip/platform/MCViewManager;->glView:Lcom/miniclip/nativeJNI/ClearGLSurfaceView;

    .line 402
    new-instance v4, Lcom/miniclip/nativeJNI/ClearRenderer;

    invoke-direct {v4}, Lcom/miniclip/nativeJNI/ClearRenderer;-><init>()V

    sput-object v4, Lcom/miniclip/platform/MCViewManager;->clearRenderer:Lcom/miniclip/nativeJNI/ClearRenderer;

    .line 403
    sget-object v4, Lcom/miniclip/platform/MCViewManager;->glView:Lcom/miniclip/nativeJNI/ClearGLSurfaceView;

    const/4 v6, 0x2

    invoke-virtual {v4, v6}, Lcom/miniclip/nativeJNI/ClearGLSurfaceView;->setEGLContextClientVersion(I)V

    .line 405
    sget-object v4, Lcom/miniclip/platform/MCViewManager;->glView:Lcom/miniclip/nativeJNI/ClearGLSurfaceView;

    invoke-direct {p0, v4}, Lcom/miniclip/platform/MCViewManager;->createEGLConfigChooser(Lcom/miniclip/nativeJNI/GLSurfaceViewProfile;)Lcom/miniclip/nativeJNI/GLSurfaceViewProfile$EGLConfigChooser;

    move-result-object v0

    .line 406
    .local v0, "configChooser":Lcom/miniclip/nativeJNI/GLSurfaceViewProfile$EGLConfigChooser;
    if-eqz v0, :cond_1

    .line 407
    sget-object v4, Lcom/miniclip/platform/MCViewManager;->glView:Lcom/miniclip/nativeJNI/ClearGLSurfaceView;

    invoke-virtual {v4, v0}, Lcom/miniclip/nativeJNI/ClearGLSurfaceView;->setEGLConfigChooser(Lcom/miniclip/nativeJNI/GLSurfaceViewProfile$EGLConfigChooser;)V

    .line 410
    :cond_1
    sget-object v4, Lcom/miniclip/platform/MCViewManager;->glView:Lcom/miniclip/nativeJNI/ClearGLSurfaceView;

    sget-object v6, Lcom/miniclip/platform/MCViewManager;->clearRenderer:Lcom/miniclip/nativeJNI/ClearRenderer;

    invoke-virtual {v4, v6}, Lcom/miniclip/nativeJNI/ClearGLSurfaceView;->setRenderer(Lcom/miniclip/nativeJNI/GLSurfaceViewProfile$Renderer;)V

    .line 412
    new-instance v2, Ljava/util/ArrayList;

    sget-object v4, Lcom/miniclip/platform/MCViewManager;->pendingEvents:Ljava/util/List;

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 413
    .local v2, "pendingEventsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    sget-object v4, Lcom/miniclip/platform/MCViewManager;->pendingEvents:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 414
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    sget-object v4, Lcom/miniclip/platform/MCViewManager;->mainLayout:Landroid/widget/RelativeLayout;

    sget-object v5, Lcom/miniclip/platform/MCViewManager;->glView:Lcom/miniclip/nativeJNI/ClearGLSurfaceView;

    invoke-virtual {v4, v5, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;I)V

    .line 416
    invoke-direct {p0}, Lcom/miniclip/platform/MCViewManager;->showDefaultViewAnimation()V

    .line 418
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Runnable;

    .line 419
    .local v3, "r":Ljava/lang/Runnable;
    invoke-static {v3}, Lcom/miniclip/platform/MCViewManager;->runOnGlThread(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 414
    .end local v0    # "configChooser":Lcom/miniclip/nativeJNI/GLSurfaceViewProfile$EGLConfigChooser;
    .end local v2    # "pendingEventsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    .end local v3    # "r":Ljava/lang/Runnable;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 421
    .restart local v0    # "configChooser":Lcom/miniclip/nativeJNI/GLSurfaceViewProfile$EGLConfigChooser;
    .restart local v2    # "pendingEventsCopy":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto/16 :goto_0
.end method

.method public static fixScreen()V
    .locals 4

    .prologue
    .line 375
    new-instance v0, Lcom/miniclip/platform/MCViewManager$3;

    invoke-direct {v0}, Lcom/miniclip/platform/MCViewManager$3;-><init>()V

    .line 382
    .local v0, "fixScreenRunnable":Ljava/lang/Runnable;
    sget-object v1, Lcom/miniclip/platform/MCViewManager;->screenFixHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 383
    sget-object v1, Lcom/miniclip/platform/MCViewManager;->screenFixHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 384
    return-void
.end method

.method public static getMainLayout()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 443
    sget-object v0, Lcom/miniclip/platform/MCViewManager;->mainLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private getMetricsOfDisplay(Landroid/graphics/Point;)V
    .locals 2
    .param p1, "size"    # Landroid/graphics/Point;

    .prologue
    .line 264
    sget-object v1, Lcom/miniclip/platform/MCViewManager;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    invoke-virtual {v1}, Lcom/miniclip/framework/MiniclipAndroidActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 265
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p1, Landroid/graphics/Point;->x:I

    .line 266
    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, p1, Landroid/graphics/Point;->y:I

    .line 267
    return-void
.end method

.method private getRealSizeOfDisplay(Landroid/graphics/Point;)V
    .locals 2
    .param p1, "size"    # Landroid/graphics/Point;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    .line 253
    sget-object v1, Lcom/miniclip/platform/MCViewManager;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    invoke-virtual {v1}, Lcom/miniclip/framework/MiniclipAndroidActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 254
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0, p1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 255
    return-void
.end method

.method private getSizeOfDisplay(Landroid/graphics/Point;)V
    .locals 2
    .param p1, "size"    # Landroid/graphics/Point;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xd
    .end annotation

    .prologue
    .line 259
    sget-object v1, Lcom/miniclip/platform/MCViewManager;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    invoke-virtual {v1}, Lcom/miniclip/framework/MiniclipAndroidActivity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 260
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 261
    return-void
.end method

.method public static init(Lcom/miniclip/framework/MiniclipAndroidActivity;)V
    .locals 1
    .param p0, "miniclipActivity"    # Lcom/miniclip/framework/MiniclipAndroidActivity;

    .prologue
    .line 189
    sget-object v0, Lcom/miniclip/platform/MCViewManager;->instance:Lcom/miniclip/platform/MCViewManager;

    invoke-direct {v0, p0}, Lcom/miniclip/platform/MCViewManager;->initImpl(Lcom/miniclip/framework/MiniclipAndroidActivity;)V

    .line 190
    return-void
.end method

.method private initImpl(Lcom/miniclip/framework/MiniclipAndroidActivity;)V
    .locals 5
    .param p1, "miniclipActivity"    # Lcom/miniclip/framework/MiniclipAndroidActivity;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 194
    sget-boolean v2, Lcom/miniclip/platform/MCViewManager;->isInitialized:Z

    if-eqz v2, :cond_0

    .line 249
    :goto_0
    return-void

    .line 197
    :cond_0
    sput-object p1, Lcom/miniclip/platform/MCViewManager;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    .line 198
    new-instance v2, Landroid/widget/RelativeLayout;

    sget-object v3, Lcom/miniclip/platform/MCViewManager;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    invoke-direct {v2, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    sput-object v2, Lcom/miniclip/platform/MCViewManager;->mainLayout:Landroid/widget/RelativeLayout;

    .line 199
    sget-object v2, Lcom/miniclip/platform/MCViewManager;->mainLayout:Landroid/widget/RelativeLayout;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 200
    sget-object v2, Lcom/miniclip/platform/MCViewManager;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    sget-object v3, Lcom/miniclip/platform/MCViewManager;->mainLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v3}, Lcom/miniclip/framework/MiniclipAndroidActivity;->setContentView(Landroid/view/View;)V

    .line 203
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_1

    .line 205
    sget-object v2, Lcom/miniclip/platform/MCViewManager;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    invoke-virtual {v2}, Lcom/miniclip/framework/MiniclipAndroidActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/miniclip/platform/MCViewManager$1;

    invoke-direct {v3, p0}, Lcom/miniclip/platform/MCViewManager$1;-><init>(Lcom/miniclip/platform/MCViewManager;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 214
    invoke-direct {p0}, Lcom/miniclip/platform/MCViewManager;->setSystemUiVisibility()V

    .line 218
    :cond_1
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 219
    .local v0, "size":Landroid/graphics/Point;
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-lt v2, v3, :cond_3

    .line 221
    invoke-direct {p0, v0}, Lcom/miniclip/platform/MCViewManager;->getRealSizeOfDisplay(Landroid/graphics/Point;)V

    .line 231
    :goto_1
    sget-boolean v2, Lcom/miniclip/nativeJNI/cocojava;->mINGAME_LANDSCAPE:Z

    if-eqz v2, :cond_2

    iget v2, v0, Landroid/graphics/Point;->y:I

    iget v3, v0, Landroid/graphics/Point;->x:I

    if-le v2, v3, :cond_2

    .line 233
    const-string v2, "Activity"

    const-string v3, "wrong proportions"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 235
    .local v1, "temp":I
    iget v2, v0, Landroid/graphics/Point;->y:I

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 236
    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 240
    .end local v1    # "temp":I
    :cond_2
    iget v2, v0, Landroid/graphics/Point;->x:I

    sput v2, Lcom/miniclip/platform/MCViewManager;->displayWidth:I

    .line 241
    iget v2, v0, Landroid/graphics/Point;->y:I

    sput v2, Lcom/miniclip/platform/MCViewManager;->displayHeight:I

    .line 243
    sget-object v2, Lcom/miniclip/platform/MCViewManager;->mainLayout:Landroid/widget/RelativeLayout;

    sget v3, Lcom/miniclip/platform/MCViewManager;->displayWidth:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setMinimumWidth(I)V

    .line 244
    sget-object v2, Lcom/miniclip/platform/MCViewManager;->mainLayout:Landroid/widget/RelativeLayout;

    sget v3, Lcom/miniclip/platform/MCViewManager;->displayHeight:I

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setMinimumHeight(I)V

    .line 246
    sget-object v2, Lcom/miniclip/platform/MCViewManager;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    new-instance v3, Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/miniclip/platform/MCViewManager$MCViewManagerActivityListener;-><init>(Lcom/miniclip/platform/MCViewManager;Lcom/miniclip/platform/MCViewManager$1;)V

    invoke-virtual {v2, v3}, Lcom/miniclip/framework/MiniclipAndroidActivity;->addListener(Lcom/miniclip/framework/ActivityListener;)Z

    .line 248
    const/4 v2, 0x1

    sput-boolean v2, Lcom/miniclip/platform/MCViewManager;->isInitialized:Z

    goto :goto_0

    .line 222
    :cond_3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xd

    if-lt v2, v3, :cond_4

    .line 224
    invoke-direct {p0, v0}, Lcom/miniclip/platform/MCViewManager;->getSizeOfDisplay(Landroid/graphics/Point;)V

    goto :goto_1

    .line 227
    :cond_4
    invoke-direct {p0, v0}, Lcom/miniclip/platform/MCViewManager;->getMetricsOfDisplay(Landroid/graphics/Point;)V

    goto :goto_1
.end method

.method private onShowDefaultView(Landroid/widget/RelativeLayout;)V
    .locals 3
    .param p1, "defaultView"    # Landroid/widget/RelativeLayout;

    .prologue
    .line 474
    sget-object v1, Lcom/miniclip/platform/MCViewManager;->listeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miniclip/platform/MCViewManager$MCViewManagerEventsListener;

    .line 475
    .local v0, "listener":Lcom/miniclip/platform/MCViewManager$MCViewManagerEventsListener;
    invoke-interface {v0, p1}, Lcom/miniclip/platform/MCViewManager$MCViewManagerEventsListener;->onShowDefaultView(Landroid/widget/RelativeLayout;)V

    goto :goto_0

    .line 477
    .end local v0    # "listener":Lcom/miniclip/platform/MCViewManager$MCViewManagerEventsListener;
    :cond_0
    return-void
.end method

.method public static runOnGlThread(Ljava/lang/Runnable;)V
    .locals 3
    .param p0, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 447
    sget-object v1, Lcom/miniclip/platform/MCViewManager;->pendingEvents:Ljava/util/List;

    monitor-enter v1

    .line 448
    :try_start_0
    sget-object v0, Lcom/miniclip/platform/MCViewManager;->glView:Lcom/miniclip/nativeJNI/ClearGLSurfaceView;

    if-nez v0, :cond_0

    .line 449
    const-string v0, "MCViewManager"

    const-string v2, "Tried to run on a null glView:"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    sget-object v0, Lcom/miniclip/platform/MCViewManager;->pendingEvents:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 451
    monitor-exit v1

    .line 460
    :goto_0
    return-void

    .line 453
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 454
    sget-object v0, Lcom/miniclip/platform/MCViewManager;->glView:Lcom/miniclip/nativeJNI/ClearGLSurfaceView;

    new-instance v1, Lcom/miniclip/platform/MCViewManager$4;

    invoke-direct {v1, p0}, Lcom/miniclip/platform/MCViewManager$4;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lcom/miniclip/nativeJNI/ClearGLSurfaceView;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 453
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static setContentToGl()V
    .locals 3

    .prologue
    .line 351
    sget-object v0, Lcom/miniclip/platform/MCViewManager;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    sget-object v1, Lcom/miniclip/framework/ThreadingContext;->UiThread:Lcom/miniclip/framework/ThreadingContext;

    new-instance v2, Lcom/miniclip/platform/MCViewManager$2;

    invoke-direct {v2}, Lcom/miniclip/platform/MCViewManager$2;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/miniclip/framework/MiniclipAndroidActivity;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 372
    return-void
.end method

.method private setSystemUiVisibility()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 271
    sget-object v0, Lcom/miniclip/platform/MCViewManager;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    invoke-virtual {v0}, Lcom/miniclip/framework/MiniclipAndroidActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x1706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 278
    return-void
.end method

.method private showDefaultView()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 281
    new-instance v0, Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/miniclip/platform/MCViewManager;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miniclip/platform/MCViewManager;->initView:Landroid/widget/RelativeLayout;

    .line 283
    sget-object v0, Lcom/miniclip/platform/MCViewManager;->initView:Landroid/widget/RelativeLayout;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    sget v2, Lcom/miniclip/platform/MCViewManager;->displayWidth:I

    sget v3, Lcom/miniclip/platform/MCViewManager;->displayHeight:I

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 284
    sget-object v0, Lcom/miniclip/platform/MCViewManager;->initView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 285
    sget-object v0, Lcom/miniclip/platform/MCViewManager;->initView:Landroid/widget/RelativeLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 287
    sget-object v0, Lcom/miniclip/platform/MCViewManager;->initView:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/miniclip/platform/MCViewManager;->onShowDefaultView(Landroid/widget/RelativeLayout;)V

    .line 289
    sget-object v0, Lcom/miniclip/platform/MCViewManager;->mainLayout:Landroid/widget/RelativeLayout;

    sget-object v1, Lcom/miniclip/platform/MCViewManager;->initView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 290
    return-void
.end method

.method private showDefaultViewAnimation()V
    .locals 15

    .prologue
    .line 294
    sget v11, Lcom/miniclip/platform/MCViewManager;->displayHeight:I

    int-to-float v8, v11

    .line 296
    .local v8, "height":F
    new-instance v9, Landroid/widget/RelativeLayout;

    sget-object v11, Lcom/miniclip/platform/MCViewManager;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    invoke-direct {v9, v11}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 300
    .local v9, "mainContainer":Landroid/widget/RelativeLayout;
    new-instance v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v11, 0x40000000    # 2.0f

    div-float v11, v8, v11

    float-to-int v11, v11

    const/high16 v12, 0x40000000    # 2.0f

    div-float v12, v8, v12

    float-to-int v12, v12

    invoke-direct {v10, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 302
    .local v10, "mainContainerParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v11, 0xe

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 303
    const/16 v11, 0xc

    invoke-virtual {v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 304
    invoke-virtual {v9, v10}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    sget-object v11, Lcom/miniclip/platform/MCViewManager;->initView:Landroid/widget/RelativeLayout;

    invoke-virtual {v11, v9}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 308
    sget-boolean v11, Lcom/miniclip/nativeJNI/cocojava;->mSPINNING_ANIMATION:Z

    if-eqz v11, :cond_0

    .line 313
    :try_start_0
    new-instance v1, Landroid/widget/ImageView;

    sget-object v11, Lcom/miniclip/platform/MCViewManager;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    invoke-direct {v1, v11}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 314
    .local v1, "ball":Landroid/widget/ImageView;
    sget-object v11, Lcom/miniclip/platform/MCViewManager;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    invoke-virtual {v11}, Lcom/miniclip/framework/MiniclipAndroidActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "spinning_ball"

    const-string v13, "drawable"

    sget-object v14, Lcom/miniclip/platform/MCViewManager;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    .line 315
    invoke-virtual {v14}, Lcom/miniclip/framework/MiniclipAndroidActivity;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 314
    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 316
    .local v3, "ballResourceId":I
    sget-object v11, Lcom/miniclip/platform/MCViewManager;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    invoke-virtual {v11}, Lcom/miniclip/framework/MiniclipAndroidActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 317
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v11, 0x41400000    # 12.0f

    div-float v11, v8, v11

    float-to-int v11, v11

    const/high16 v12, 0x41400000    # 12.0f

    div-float v12, v8, v12

    float-to-int v12, v12

    invoke-direct {v2, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 318
    .local v2, "ballParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v11, 0xd

    invoke-virtual {v2, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 319
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 320
    sget-object v11, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 321
    invoke-virtual {v9, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 324
    new-instance v4, Landroid/widget/ImageView;

    sget-object v11, Lcom/miniclip/platform/MCViewManager;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    invoke-direct {v4, v11}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 325
    .local v4, "ballSpin":Landroid/widget/ImageView;
    sget-object v11, Lcom/miniclip/platform/MCViewManager;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    invoke-virtual {v11}, Lcom/miniclip/framework/MiniclipAndroidActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const-string v12, "spinning_ball_effect"

    const-string v13, "drawable"

    sget-object v14, Lcom/miniclip/platform/MCViewManager;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    .line 326
    invoke-virtual {v14}, Lcom/miniclip/framework/MiniclipAndroidActivity;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 325
    invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 327
    .local v6, "ballSpinResourceId":I
    sget-object v11, Lcom/miniclip/platform/MCViewManager;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    invoke-virtual {v11}, Lcom/miniclip/framework/MiniclipAndroidActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 328
    new-instance v5, Landroid/widget/RelativeLayout$LayoutParams;

    const/high16 v11, 0x41000000    # 8.0f

    div-float v11, v8, v11

    float-to-int v11, v11

    const/high16 v12, 0x41000000    # 8.0f

    div-float v12, v8, v12

    float-to-int v12, v12

    invoke-direct {v5, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 329
    .local v5, "ballSpinParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v11, 0xd

    invoke-virtual {v5, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 330
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 331
    sget-object v11, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v4, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 332
    invoke-virtual {v9, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 335
    const/4 v0, 0x0

    .line 336
    .local v0, "anim":Landroid/view/animation/Animation;
    new-instance v0, Landroid/view/animation/RotateAnimation;

    .end local v0    # "anim":Landroid/view/animation/Animation;
    const/4 v11, 0x0

    const/high16 v12, 0x43b40000    # 360.0f

    const/high16 v13, 0x41000000    # 8.0f

    div-float v13, v8, v13

    float-to-int v13, v13

    div-int/lit8 v13, v13, 0x2

    int-to-float v13, v13

    const/high16 v14, 0x41000000    # 8.0f

    div-float v14, v8, v14

    float-to-int v14, v14

    div-int/lit8 v14, v14, 0x2

    int-to-float v14, v14

    invoke-direct {v0, v11, v12, v13, v14}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V

    .line 337
    .restart local v0    # "anim":Landroid/view/animation/Animation;
    const-wide/16 v12, 0x3e8

    invoke-virtual {v0, v12, v13}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 338
    const/4 v11, -0x1

    invoke-virtual {v0, v11}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 339
    new-instance v11, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v11}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v11}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 340
    const/4 v11, 0x1

    invoke-virtual {v0, v11}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 341
    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    .end local v0    # "anim":Landroid/view/animation/Animation;
    .end local v1    # "ball":Landroid/widget/ImageView;
    .end local v2    # "ballParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "ballResourceId":I
    .end local v4    # "ballSpin":Landroid/widget/ImageView;
    .end local v5    # "ballSpinParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v6    # "ballSpinResourceId":I
    :cond_0
    :goto_0
    return-void

    .line 343
    :catch_0
    move-exception v7

    .line 345
    .local v7, "ex":Ljava/lang/Exception;
    const/16 v11, 0x3ec

    invoke-static {v11}, Lcom/miniclip/nativeJNI/cocojava;->displayLowStorageMessage(I)V

    goto :goto_0
.end method
