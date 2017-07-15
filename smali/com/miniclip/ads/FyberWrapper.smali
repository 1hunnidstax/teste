.class public Lcom/miniclip/ads/FyberWrapper;
.super Ljava/lang/Object;
.source "FyberWrapper.java"


# static fields
.field static final REQUEST_CODE:I = 0x2466

.field private static fyberSettings:Lcom/fyber/Fyber$Settings;

.field private static initialized:Z

.field private static final listenerProxy:Lcom/miniclip/ads/FyberListenerProxy;

.field static loadedIntent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 87
    new-instance v0, Lcom/miniclip/ads/FyberListenerProxy;

    invoke-direct {v0}, Lcom/miniclip/ads/FyberListenerProxy;-><init>()V

    sput-object v0, Lcom/miniclip/ads/FyberWrapper;->listenerProxy:Lcom/miniclip/ads/FyberListenerProxy;

    .line 88
    const/4 v0, 0x0

    sput-boolean v0, Lcom/miniclip/ads/FyberWrapper;->initialized:Z

    .line 89
    sput-object v1, Lcom/miniclip/ads/FyberWrapper;->fyberSettings:Lcom/fyber/Fyber$Settings;

    .line 90
    sput-object v1, Lcom/miniclip/ads/FyberWrapper;->loadedIntent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 83
    sget-boolean v0, Lcom/miniclip/ads/FyberWrapper;->initialized:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0
    .param p0, "x0"    # Z

    .prologue
    .line 83
    sput-boolean p0, Lcom/miniclip/ads/FyberWrapper;->initialized:Z

    return p0
.end method

.method static synthetic access$100()Lcom/fyber/Fyber$Settings;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/miniclip/ads/FyberWrapper;->fyberSettings:Lcom/fyber/Fyber$Settings;

    return-object v0
.end method

.method static synthetic access$102(Lcom/fyber/Fyber$Settings;)Lcom/fyber/Fyber$Settings;
    .locals 0
    .param p0, "x0"    # Lcom/fyber/Fyber$Settings;

    .prologue
    .line 83
    sput-object p0, Lcom/miniclip/ads/FyberWrapper;->fyberSettings:Lcom/fyber/Fyber$Settings;

    return-object p0
.end method

.method static synthetic access$200()Lcom/miniclip/ads/FyberListenerProxy;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/miniclip/ads/FyberWrapper;->listenerProxy:Lcom/miniclip/ads/FyberListenerProxy;

    return-object v0
.end method

.method public static enableLogging(Z)V
    .locals 0
    .param p0, "value"    # Z

    .prologue
    .line 133
    invoke-static {p0}, Lcom/fyber/utils/FyberLogger;->enableLogging(Z)Z

    .line 134
    return-void
.end method

.method public static declared-synchronized init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "appId"    # Ljava/lang/String;
    .param p1, "securityToken"    # Ljava/lang/String;
    .param p2, "userId"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 94
    const-class v1, Lcom/miniclip/ads/FyberWrapper;

    monitor-enter v1

    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v3, 0xe

    if-ge v2, v3, :cond_1

    .line 95
    const/4 v0, 0x0

    .line 129
    :cond_0
    :goto_0
    monitor-exit v1

    return v0

    .line 98
    :cond_1
    :try_start_1
    sget-boolean v2, Lcom/miniclip/ads/FyberWrapper;->initialized:Z

    if-nez v2, :cond_0

    .line 102
    sget-object v2, Lcom/miniclip/framework/ThreadingContext;->AndroidUi:Lcom/miniclip/framework/ThreadingContext;

    new-instance v3, Lcom/miniclip/ads/FyberWrapper$1;

    invoke-direct {v3, p0, p2, p1}, Lcom/miniclip/ads/FyberWrapper$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2, v3}, Lcom/miniclip/framework/Miniclip;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 94
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static presentRewardedVideo()V
    .locals 2

    .prologue
    .line 156
    sget-object v0, Lcom/miniclip/framework/ThreadingContext;->AndroidUi:Lcom/miniclip/framework/ThreadingContext;

    new-instance v1, Lcom/miniclip/ads/FyberWrapper$3;

    invoke-direct {v1}, Lcom/miniclip/ads/FyberWrapper$3;-><init>()V

    invoke-static {v0, v1}, Lcom/miniclip/framework/Miniclip;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 165
    return-void
.end method

.method public static requestRewardedVideo(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p0, "placementId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, "customParameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v0, Lcom/miniclip/framework/ThreadingContext;->AndroidUi:Lcom/miniclip/framework/ThreadingContext;

    new-instance v1, Lcom/miniclip/ads/FyberWrapper$2;

    invoke-direct {v1, p0, p1}, Lcom/miniclip/ads/FyberWrapper$2;-><init>(Ljava/lang/String;Ljava/util/Map;)V

    invoke-static {v0, v1}, Lcom/miniclip/framework/Miniclip;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 153
    return-void
.end method

.method public static showTestSuiteUI()V
    .locals 2

    .prologue
    .line 177
    sget-object v0, Lcom/miniclip/framework/ThreadingContext;->AndroidUi:Lcom/miniclip/framework/ThreadingContext;

    new-instance v1, Lcom/miniclip/ads/FyberWrapper$5;

    invoke-direct {v1}, Lcom/miniclip/ads/FyberWrapper$5;-><init>()V

    invoke-static {v0, v1}, Lcom/miniclip/framework/Miniclip;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 183
    return-void
.end method

.method public static updateUserId(Ljava/lang/String;)V
    .locals 2
    .param p0, "userId"    # Ljava/lang/String;

    .prologue
    .line 168
    sget-object v0, Lcom/miniclip/framework/ThreadingContext;->AndroidUi:Lcom/miniclip/framework/ThreadingContext;

    new-instance v1, Lcom/miniclip/ads/FyberWrapper$4;

    invoke-direct {v1, p0}, Lcom/miniclip/ads/FyberWrapper$4;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/miniclip/framework/Miniclip;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 174
    return-void
.end method
