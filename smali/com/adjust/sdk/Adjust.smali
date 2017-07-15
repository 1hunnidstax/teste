.class public Lcom/adjust/sdk/Adjust;
.super Ljava/lang/Object;
.source "Adjust.java"


# static fields
.field private static defaultInstance:Lcom/adjust/sdk/AdjustInstance;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static appWillOpenUrl(Landroid/net/Uri;)V
    .locals 1
    .param p0, "url"    # Landroid/net/Uri;

    .prologue
    .line 64
    invoke-static {}, Lcom/adjust/sdk/Adjust;->getDefaultInstance()Lcom/adjust/sdk/AdjustInstance;

    move-result-object v0

    .line 65
    .local v0, "adjustInstance":Lcom/adjust/sdk/AdjustInstance;
    invoke-virtual {v0, p0}, Lcom/adjust/sdk/AdjustInstance;->appWillOpenUrl(Landroid/net/Uri;)V

    .line 66
    return-void
.end method

.method public static declared-synchronized getDefaultInstance()Lcom/adjust/sdk/AdjustInstance;
    .locals 2

    .prologue
    .line 27
    const-class v1, Lcom/adjust/sdk/Adjust;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/adjust/sdk/Adjust;->defaultInstance:Lcom/adjust/sdk/AdjustInstance;

    if-nez v0, :cond_0

    .line 28
    new-instance v0, Lcom/adjust/sdk/AdjustInstance;

    invoke-direct {v0}, Lcom/adjust/sdk/AdjustInstance;-><init>()V

    sput-object v0, Lcom/adjust/sdk/Adjust;->defaultInstance:Lcom/adjust/sdk/AdjustInstance;

    .line 30
    :cond_0
    sget-object v0, Lcom/adjust/sdk/Adjust;->defaultInstance:Lcom/adjust/sdk/AdjustInstance;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static isEnabled()Z
    .locals 2

    .prologue
    .line 59
    invoke-static {}, Lcom/adjust/sdk/Adjust;->getDefaultInstance()Lcom/adjust/sdk/AdjustInstance;

    move-result-object v0

    .line 60
    .local v0, "adjustInstance":Lcom/adjust/sdk/AdjustInstance;
    invoke-virtual {v0}, Lcom/adjust/sdk/AdjustInstance;->isEnabled()Z

    move-result v1

    return v1
.end method

.method public static onCreate(Lcom/adjust/sdk/AdjustConfig;)V
    .locals 1
    .param p0, "adjustConfig"    # Lcom/adjust/sdk/AdjustConfig;

    .prologue
    .line 34
    invoke-static {}, Lcom/adjust/sdk/Adjust;->getDefaultInstance()Lcom/adjust/sdk/AdjustInstance;

    move-result-object v0

    .line 35
    .local v0, "adjustInstance":Lcom/adjust/sdk/AdjustInstance;
    invoke-virtual {v0, p0}, Lcom/adjust/sdk/AdjustInstance;->onCreate(Lcom/adjust/sdk/AdjustConfig;)V

    .line 36
    return-void
.end method

.method public static onPause()V
    .locals 1

    .prologue
    .line 49
    invoke-static {}, Lcom/adjust/sdk/Adjust;->getDefaultInstance()Lcom/adjust/sdk/AdjustInstance;

    move-result-object v0

    .line 50
    .local v0, "adjustInstance":Lcom/adjust/sdk/AdjustInstance;
    invoke-virtual {v0}, Lcom/adjust/sdk/AdjustInstance;->onPause()V

    .line 51
    return-void
.end method

.method public static onResume()V
    .locals 1

    .prologue
    .line 44
    invoke-static {}, Lcom/adjust/sdk/Adjust;->getDefaultInstance()Lcom/adjust/sdk/AdjustInstance;

    move-result-object v0

    .line 45
    .local v0, "adjustInstance":Lcom/adjust/sdk/AdjustInstance;
    invoke-virtual {v0}, Lcom/adjust/sdk/AdjustInstance;->onResume()V

    .line 46
    return-void
.end method

.method public static setEnabled(Z)V
    .locals 1
    .param p0, "enabled"    # Z

    .prologue
    .line 54
    invoke-static {}, Lcom/adjust/sdk/Adjust;->getDefaultInstance()Lcom/adjust/sdk/AdjustInstance;

    move-result-object v0

    .line 55
    .local v0, "adjustInstance":Lcom/adjust/sdk/AdjustInstance;
    invoke-virtual {v0, p0}, Lcom/adjust/sdk/AdjustInstance;->setEnabled(Z)V

    .line 56
    return-void
.end method

.method public static setOfflineMode(Z)V
    .locals 1
    .param p0, "enabled"    # Z

    .prologue
    .line 74
    invoke-static {}, Lcom/adjust/sdk/Adjust;->getDefaultInstance()Lcom/adjust/sdk/AdjustInstance;

    move-result-object v0

    .line 75
    .local v0, "adjustInstance":Lcom/adjust/sdk/AdjustInstance;
    invoke-virtual {v0, p0}, Lcom/adjust/sdk/AdjustInstance;->setOfflineMode(Z)V

    .line 76
    return-void
.end method

.method public static setReferrer(Ljava/lang/String;)V
    .locals 1
    .param p0, "referrer"    # Ljava/lang/String;

    .prologue
    .line 69
    invoke-static {}, Lcom/adjust/sdk/Adjust;->getDefaultInstance()Lcom/adjust/sdk/AdjustInstance;

    move-result-object v0

    .line 70
    .local v0, "adjustInstance":Lcom/adjust/sdk/AdjustInstance;
    invoke-virtual {v0, p0}, Lcom/adjust/sdk/AdjustInstance;->sendReferrer(Ljava/lang/String;)V

    .line 71
    return-void
.end method

.method public static trackEvent(Lcom/adjust/sdk/AdjustEvent;)V
    .locals 1
    .param p0, "event"    # Lcom/adjust/sdk/AdjustEvent;

    .prologue
    .line 39
    invoke-static {}, Lcom/adjust/sdk/Adjust;->getDefaultInstance()Lcom/adjust/sdk/AdjustInstance;

    move-result-object v0

    .line 40
    .local v0, "adjustInstance":Lcom/adjust/sdk/AdjustInstance;
    invoke-virtual {v0, p0}, Lcom/adjust/sdk/AdjustInstance;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    .line 41
    return-void
.end method
