.class public Lcom/miniclip/nativeJNI/ClearRenderer;
.super Ljava/lang/Object;
.source "ClearRenderer.java"

# interfaces
.implements Lcom/miniclip/nativeJNI/GLSurfaceViewProfile$Renderer;


# static fields
.field private static final NANOSECONDSPERMICROSECOND:J = 0xf4240L

.field private static final NANOSECONDSPERSECOND:J = 0x3b9aca00L

.field private static sAnimationInterval:J


# instance fields
.field public hasStarted:Z

.field private mLastTickInNanoSeconds:J

.field private mNativeInitCompleted:Z

.field private mQueuedEvents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenHeight:I

.field private mScreenWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    const-wide/32 v0, 0xfe502a

    sput-wide v0, Lcom/miniclip/nativeJNI/ClearRenderer;->sAnimationInterval:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean v1, p0, Lcom/miniclip/nativeJNI/ClearRenderer;->mNativeInitCompleted:Z

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miniclip/nativeJNI/ClearRenderer;->mQueuedEvents:Ljava/util/List;

    .line 150
    iput-boolean v1, p0, Lcom/miniclip/nativeJNI/ClearRenderer;->hasStarted:Z

    return-void
.end method

.method private static native nativeInit(III)V
.end method

.method private static native nativeOnPause()V
.end method

.method private static native nativeOnResume()V
.end method

.method private static native nativeOnSurfaceChanged(III)V
.end method

.method private static native nativeRender()V
.end method

.method public static setAnimationInterval(D)V
    .locals 2
    .param p0, "animationInterval"    # D

    .prologue
    .line 32
    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    mul-double/2addr v0, p0

    double-to-long v0, v0

    sput-wide v0, Lcom/miniclip/nativeJNI/ClearRenderer;->sAnimationInterval:J

    .line 33
    return-void
.end method


# virtual methods
.method public handleActionCancel([I[F[F)V
    .locals 0
    .param p1, "id"    # [I
    .param p2, "x"    # [F
    .param p3, "y"    # [F

    .prologue
    .line 164
    invoke-static {p1, p2, p3}, Lcom/miniclip/input/MCInput;->nativeTouchesCancel([I[F[F)V

    .line 165
    return-void
.end method

.method public handleActionDown(IFF)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 154
    invoke-static {p1, p2, p3}, Lcom/miniclip/input/MCInput;->nativeTouchesBegin(IFF)V

    .line 155
    return-void
.end method

.method public handleActionMove([I[F[F)V
    .locals 0
    .param p1, "id"    # [I
    .param p2, "x"    # [F
    .param p3, "y"    # [F

    .prologue
    .line 169
    invoke-static {p1, p2, p3}, Lcom/miniclip/input/MCInput;->nativeTouchesMove([I[F[F)V

    .line 170
    return-void
.end method

.method public handleActionUp(IFF)V
    .locals 0
    .param p1, "id"    # I
    .param p2, "x"    # F
    .param p3, "y"    # F

    .prologue
    .line 159
    invoke-static {p1, p2, p3}, Lcom/miniclip/input/MCInput;->nativeTouchesEnd(IFF)V

    .line 160
    return-void
.end method

.method public handleOnPause()V
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Lcom/miniclip/nativeJNI/ClearRenderer;->mNativeInitCompleted:Z

    if-nez v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 142
    :cond_0
    invoke-static {}, Lcom/miniclip/nativeJNI/ClearRenderer;->nativeOnPause()V

    goto :goto_0
.end method

.method public handleOnResume()V
    .locals 0

    .prologue
    .line 147
    invoke-static {}, Lcom/miniclip/nativeJNI/ClearRenderer;->nativeOnResume()V

    .line 148
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 10
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 82
    invoke-static {}, Lcom/miniclip/platform/MCApplication;->hasFatalErrorOccurred()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 122
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-boolean v6, p0, Lcom/miniclip/nativeJNI/ClearRenderer;->hasStarted:Z

    if-nez v6, :cond_1

    .line 89
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sput-wide v6, Lcom/miniclip/nativeJNI/CocoJNI;->t1:J

    .line 90
    invoke-static {}, Lcom/miniclip/nativeJNI/CocoJNI;->Mrun()V

    .line 91
    invoke-static {}, Lcom/miniclip/platform/MCViewManager;->setContentToGl()V

    .line 92
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/miniclip/nativeJNI/ClearRenderer;->hasStarted:Z

    .line 96
    :cond_1
    iget-object v7, p0, Lcom/miniclip/nativeJNI/ClearRenderer;->mQueuedEvents:Ljava/util/List;

    monitor-enter v7

    .line 97
    :try_start_0
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/miniclip/nativeJNI/ClearRenderer;->mQueuedEvents:Ljava/util/List;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 98
    .local v5, "temp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    iget-object v6, p0, Lcom/miniclip/nativeJNI/ClearRenderer;->mQueuedEvents:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 99
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    .line 101
    .local v4, "r":Ljava/lang/Runnable;
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 99
    .end local v4    # "r":Ljava/lang/Runnable;
    .end local v5    # "temp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    :catchall_0
    move-exception v6

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 106
    .restart local v5    # "temp":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    :cond_2
    sget-wide v6, Lcom/miniclip/nativeJNI/ClearRenderer;->sAnimationInterval:J

    long-to-double v6, v6

    const-wide v8, 0x416fca0555555555L    # 1.6666666666666666E7

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_3

    .line 107
    invoke-static {}, Lcom/miniclip/nativeJNI/ClearRenderer;->nativeRender()V

    goto :goto_0

    .line 109
    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 110
    .local v2, "now":J
    iget-wide v6, p0, Lcom/miniclip/nativeJNI/ClearRenderer;->mLastTickInNanoSeconds:J

    sub-long v0, v2, v6

    .line 112
    .local v0, "interval":J
    sget-wide v6, Lcom/miniclip/nativeJNI/ClearRenderer;->sAnimationInterval:J

    cmp-long v6, v0, v6

    if-gez v6, :cond_4

    .line 114
    :try_start_2
    sget-wide v6, Lcom/miniclip/nativeJNI/ClearRenderer;->sAnimationInterval:J

    sub-long/2addr v6, v0

    const-wide/32 v8, 0xf4240

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 119
    :cond_4
    :goto_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/miniclip/nativeJNI/ClearRenderer;->mLastTickInNanoSeconds:J

    .line 120
    invoke-static {}, Lcom/miniclip/nativeJNI/ClearRenderer;->nativeRender()V

    goto :goto_0

    .line 115
    :catch_0
    move-exception v6

    goto :goto_2
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 9
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "w"    # I
    .param p3, "h"    # I

    .prologue
    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 51
    sget-boolean v4, Lcom/miniclip/nativeJNI/cocojava;->mINGAME_LANDSCAPE:Z

    if-eqz v4, :cond_0

    move v0, v2

    .line 52
    .local v0, "orientation":I
    :goto_0
    const-string v4, "Dim"

    const-string v5, "width: %d, height: %d"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    if-ne p2, p3, :cond_1

    .line 72
    :goto_1
    return-void

    .end local v0    # "orientation":I
    :cond_0
    move v0, v3

    .line 51
    goto :goto_0

    .line 59
    .restart local v0    # "orientation":I
    :cond_1
    sget-boolean v4, Lcom/miniclip/nativeJNI/cocojava;->mINGAME_LANDSCAPE:Z

    if-eqz v4, :cond_2

    if-le p3, p2, :cond_2

    .line 60
    move v1, p2

    .line 61
    .local v1, "temp":I
    move p2, p3

    .line 62
    move p3, v1

    .line 64
    .end local v1    # "temp":I
    :cond_2
    const-string v4, "After Hack Dim"

    const-string v5, "width: %d, height: %d"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    sget-boolean v2, Lcom/miniclip/nativeJNI/cocojava;->mHAS_RETINA:Z

    if-eqz v2, :cond_3

    sget v2, Lcom/miniclip/platform/MCViewManager;->displayWidth:I

    const/16 v4, 0x31f

    if-gt v2, v4, :cond_4

    :cond_3
    sget-boolean v2, Lcom/miniclip/nativeJNI/cocojava;->mONLY_RETINA:Z

    if-eqz v2, :cond_5

    .line 68
    :cond_4
    invoke-static {v3}, Lcom/miniclip/nativeJNI/CocoJNI;->MsetIsRetina(I)V

    .line 71
    :cond_5
    invoke-static {p2, p3, v0}, Lcom/miniclip/nativeJNI/ClearRenderer;->nativeOnSurfaceChanged(III)V

    goto :goto_1
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 4
    .param p1, "GL10"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "EGLConfig"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    const/4 v1, 0x1

    .line 42
    sget-boolean v2, Lcom/miniclip/nativeJNI/cocojava;->mINGAME_LANDSCAPE:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    .line 43
    .local v0, "orientation":I
    :goto_0
    iget v2, p0, Lcom/miniclip/nativeJNI/ClearRenderer;->mScreenWidth:I

    iget v3, p0, Lcom/miniclip/nativeJNI/ClearRenderer;->mScreenHeight:I

    invoke-static {v2, v3, v0}, Lcom/miniclip/nativeJNI/ClearRenderer;->nativeInit(III)V

    .line 44
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miniclip/nativeJNI/ClearRenderer;->mLastTickInNanoSeconds:J

    .line 45
    iput-boolean v1, p0, Lcom/miniclip/nativeJNI/ClearRenderer;->mNativeInitCompleted:Z

    .line 46
    return-void

    .end local v0    # "orientation":I
    :cond_0
    move v0, v1

    .line 42
    goto :goto_0
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 126
    iget-object v1, p0, Lcom/miniclip/nativeJNI/ClearRenderer;->mQueuedEvents:Ljava/util/List;

    monitor-enter v1

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/miniclip/nativeJNI/ClearRenderer;->mQueuedEvents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    monitor-exit v1

    .line 129
    return-void

    .line 128
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setScreenWidthAndHeight(II)V
    .locals 0
    .param p1, "surfaceWidth"    # I
    .param p2, "surfaceHeight"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/miniclip/nativeJNI/ClearRenderer;->mScreenWidth:I

    .line 37
    iput p2, p0, Lcom/miniclip/nativeJNI/ClearRenderer;->mScreenHeight:I

    .line 38
    return-void
.end method
