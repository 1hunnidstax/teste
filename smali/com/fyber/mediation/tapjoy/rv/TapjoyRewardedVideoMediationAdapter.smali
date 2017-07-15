.class public Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;
.super Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;
.source "TapjoyRewardedVideoMediationAdapter.java"

# interfaces
.implements Lcom/tapjoy/TJPlacementListener;
.implements Lcom/tapjoy/TJVideoListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter",
        "<",
        "Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter;",
        ">;",
        "Lcom/tapjoy/TJPlacementListener;",
        "Lcom/tapjoy/TJVideoListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final configs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private isRequesting:Z

.field private final mActivity:Landroid/app/Activity;

.field private final mHandler:Landroid/os/Handler;

.field private tjPlacement:Lcom/tapjoy/TJPlacement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter;Landroid/app/Activity;Ljava/util/Map;)V
    .locals 2
    .param p1, "mediationAdapter"    # Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter;
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter;",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 52
    .local p3, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;-><init>(Lcom/fyber/mediation/MediationAdapter;)V

    .line 45
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;->mHandler:Landroid/os/Handler;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;->isRequesting:Z

    .line 53
    iput-object p2, p0, Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;->mActivity:Landroid/app/Activity;

    .line 54
    iput-object p3, p0, Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;->configs:Ljava/util/Map;

    .line 56
    invoke-static {}, Lcom/tapjoy/Tapjoy;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;->connectDidFinish()V

    .line 59
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;)Lcom/tapjoy/TJPlacement;
    .locals 1
    .param p0, "x0"    # Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;->tjPlacement:Lcom/tapjoy/TJPlacement;

    return-object v0
.end method

.method static synthetic access$002(Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;Lcom/tapjoy/TJPlacement;)Lcom/tapjoy/TJPlacement;
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;
    .param p1, "x1"    # Lcom/tapjoy/TJPlacement;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;->tjPlacement:Lcom/tapjoy/TJPlacement;

    return-object p1
.end method

.method static synthetic access$100(Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;)Lcom/fyber/mediation/MediationAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;->mAdapter:Lcom/fyber/mediation/MediationAdapter;

    return-object v0
.end method

.method static synthetic access$202(Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;->isRequesting:Z

    return p1
.end method


# virtual methods
.method public connectDidFinish()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;->videosAvailable(Landroid/content/Context;)V

    .line 64
    return-void
.end method

.method public onContentDismiss(Lcom/tapjoy/TJPlacement;)V
    .locals 1
    .param p1, "tjPlacement"    # Lcom/tapjoy/TJPlacement;

    .prologue
    .line 140
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/tapjoy/Tapjoy;->setVideoListener(Lcom/tapjoy/TJVideoListener;)V

    .line 141
    iget-object v0, p0, Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;->videosAvailable(Landroid/content/Context;)V

    .line 142
    invoke-virtual {p0}, Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;->notifyCloseEngagement()V

    .line 143
    return-void
.end method

.method public onContentReady(Lcom/tapjoy/TJPlacement;)V
    .locals 1
    .param p1, "tjPlacement"    # Lcom/tapjoy/TJPlacement;

    .prologue
    .line 128
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;->isRequesting:Z

    .line 129
    sget-object v0, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;->Success:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    invoke-virtual {p0, v0}, Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;->sendValidationEvent(Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;)V

    .line 130
    return-void
.end method

.method public onContentShow(Lcom/tapjoy/TJPlacement;)V
    .locals 0
    .param p1, "tjPlacement"    # Lcom/tapjoy/TJPlacement;

    .prologue
    .line 134
    invoke-static {p0}, Lcom/tapjoy/Tapjoy;->setVideoListener(Lcom/tapjoy/TJVideoListener;)V

    .line 135
    invoke-virtual {p0}, Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;->notifyVideoStarted()V

    .line 136
    return-void
.end method

.method public onPurchaseRequest(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJActionRequest;Ljava/lang/String;)V
    .locals 0
    .param p1, "tjPlacement"    # Lcom/tapjoy/TJPlacement;
    .param p2, "tjActionRequest"    # Lcom/tapjoy/TJActionRequest;
    .param p3, "s"    # Ljava/lang/String;

    .prologue
    .line 148
    return-void
.end method

.method public onRequestFailure(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJError;)V
    .locals 1
    .param p1, "tjPlacement"    # Lcom/tapjoy/TJPlacement;
    .param p2, "tjError"    # Lcom/tapjoy/TJError;

    .prologue
    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;->isRequesting:Z

    .line 123
    sget-object v0, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;->NetworkError:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    invoke-virtual {p0, v0}, Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;->sendValidationEvent(Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;)V

    .line 124
    return-void
.end method

.method public onRequestSuccess(Lcom/tapjoy/TJPlacement;)V
    .locals 1
    .param p1, "tjPlacement"    # Lcom/tapjoy/TJPlacement;

    .prologue
    .line 114
    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->isContentAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;->isRequesting:Z

    .line 116
    sget-object v0, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;->NoVideoAvailable:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    invoke-virtual {p0, v0}, Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;->sendValidationEvent(Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;)V

    .line 118
    :cond_0
    return-void
.end method

.method public onRewardRequest(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJActionRequest;Ljava/lang/String;I)V
    .locals 0
    .param p1, "tjPlacement"    # Lcom/tapjoy/TJPlacement;
    .param p2, "tjActionRequest"    # Lcom/tapjoy/TJActionRequest;
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "i"    # I

    .prologue
    .line 153
    return-void
.end method

.method public onVideoComplete()V
    .locals 0

    .prologue
    .line 166
    invoke-virtual {p0}, Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;->setVideoPlayed()V

    .line 167
    return-void
.end method

.method public onVideoError(I)V
    .locals 0
    .param p1, "statusCode"    # I

    .prologue
    .line 161
    invoke-virtual {p0}, Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;->notifyVideoError()V

    .line 162
    return-void
.end method

.method public onVideoStart()V
    .locals 0

    .prologue
    .line 157
    return-void
.end method

.method public startPrecaching()V
    .locals 2

    .prologue
    .line 106
    sget-object v0, Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;->TAG:Ljava/lang/String;

    const-string v1, "startPrecaching()"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    return-void
.end method

.method public startVideo(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 100
    sget-object v0, Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;->TAG:Ljava/lang/String;

    const-string v1, "startVideo()"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;->tjPlacement:Lcom/tapjoy/TJPlacement;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->showContent()V

    .line 102
    return-void
.end method

.method public videosAvailable(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 72
    sget-object v0, Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;->TAG:Ljava/lang/String;

    const-string v1, "videosAvailable()"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;->tjPlacement:Lcom/tapjoy/TJPlacement;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;->tjPlacement:Lcom/tapjoy/TJPlacement;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->isContentReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 76
    sget-object v0, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;->Success:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    invoke-virtual {p0, v0}, Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;->sendValidationEvent(Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;)V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    iget-boolean v0, p0, Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;->isRequesting:Z

    if-nez v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter$1;-><init>(Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
