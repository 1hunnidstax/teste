.class public Lcom/miniclip/ads/TapjoyHelper;
.super Ljava/lang/Object;
.source "TapjoyHelper.java"


# static fields
.field private static initialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-boolean v0, Lcom/miniclip/ads/TapjoyHelper;->initialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized init()V
    .locals 3

    .prologue
    .line 31
    const-class v1, Lcom/miniclip/ads/TapjoyHelper;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/miniclip/ads/TapjoyHelper;->initialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 50
    :cond_0
    :goto_0
    monitor-exit v1

    return-void

    .line 34
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/miniclip/ads/TapjoyHelper;->initialized:Z

    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v0, v2, :cond_0

    .line 40
    sget-object v0, Lcom/miniclip/framework/ThreadingContext;->AndroidUi:Lcom/miniclip/framework/ThreadingContext;

    new-instance v2, Lcom/miniclip/ads/TapjoyHelper$1;

    invoke-direct {v2}, Lcom/miniclip/ads/TapjoyHelper$1;-><init>()V

    invoke-static {v0, v2}, Lcom/miniclip/framework/Miniclip;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 31
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
