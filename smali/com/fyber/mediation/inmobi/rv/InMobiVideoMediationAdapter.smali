.class public Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;
.super Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;
.source "InMobiVideoMediationAdapter.java"

# interfaces
.implements Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter",
        "<",
        "Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;",
        ">;",
        "Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener2;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private final mHandler:Landroid/os/Handler;

.field private mRewardedAd:Lcom/inmobi/ads/InMobiInterstitial;

.field private final rvPlacementId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;Landroid/app/Activity;J)V
    .locals 3
    .param p1, "adapter"    # Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "rvPlacementId"    # J

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;-><init>(Lcom/fyber/mediation/MediationAdapter;)V

    .line 33
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->mHandler:Landroid/os/Handler;

    .line 38
    iput-object p2, p0, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->mActivity:Landroid/app/Activity;

    .line 39
    iput-wide p3, p0, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->rvPlacementId:J

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->loadVideo()V

    return-void
.end method

.method private loadVideo()V
    .locals 6

    .prologue
    .line 43
    new-instance v1, Lcom/inmobi/ads/InMobiInterstitial;

    iget-object v2, p0, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->mActivity:Landroid/app/Activity;

    iget-wide v4, p0, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->rvPlacementId:J

    invoke-direct {v1, v2, v4, v5, p0}, Lcom/inmobi/ads/InMobiInterstitial;-><init>(Landroid/app/Activity;JLcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener2;)V

    iput-object v1, p0, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->mRewardedAd:Lcom/inmobi/ads/InMobiInterstitial;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 45
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "tp"

    const-string v2, "c_sponsorpay"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v1, "tp-ver"

    sget-object v2, Lcom/fyber/Fyber;->RELEASE_VERSION_STRING:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object v1, p0, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->mRewardedAd:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/InMobiInterstitial;->setExtras(Ljava/util/Map;)V

    .line 48
    iget-object v1, p0, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->mRewardedAd:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v1}, Lcom/inmobi/ads/InMobiInterstitial;->load()V

    .line 49
    return-void
.end method


# virtual methods
.method public onAdDismissed(Lcom/inmobi/ads/InMobiInterstitial;)V
    .locals 0
    .param p1, "inMobiInterstitial"    # Lcom/inmobi/ads/InMobiInterstitial;

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->notifyCloseEngagement()V

    .line 100
    return-void
.end method

.method public onAdDisplayFailed(Lcom/inmobi/ads/InMobiInterstitial;)V
    .locals 0
    .param p1, "inMobiInterstitial"    # Lcom/inmobi/ads/InMobiInterstitial;

    .prologue
    .line 84
    invoke-virtual {p0}, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->notifyVideoError()V

    .line 85
    return-void
.end method

.method public onAdDisplayed(Lcom/inmobi/ads/InMobiInterstitial;)V
    .locals 0
    .param p1, "inMobiInterstitial"    # Lcom/inmobi/ads/InMobiInterstitial;

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->notifyVideoStarted()V

    .line 95
    return-void
.end method

.method public onAdInteraction(Lcom/inmobi/ads/InMobiInterstitial;Ljava/util/Map;)V
    .locals 0
    .param p1, "inMobiInterstitial"    # Lcom/inmobi/ads/InMobiInterstitial;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/InMobiInterstitial;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 105
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    return-void
.end method

.method public onAdLoadFailed(Lcom/inmobi/ads/InMobiInterstitial;Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 3
    .param p1, "inMobiInterstitial"    # Lcom/inmobi/ads/InMobiInterstitial;
    .param p2, "inMobiAdRequestStatus"    # Lcom/inmobi/ads/InMobiAdRequestStatus;

    .prologue
    .line 115
    invoke-virtual {p2}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    .line 116
    .local v0, "errorCode":Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;
    sget-object v1, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter$2;->$SwitchMap$com$inmobi$ads$InMobiAdRequestStatus$StatusCode:[I

    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 133
    sget-object v1, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->TAG:Ljava/lang/String;

    const-string v2, "InMobi error: Unknown error"

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    sget-object v1, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;->Error:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    invoke-virtual {p0, v1}, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->sendValidationEvent(Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;)V

    .line 137
    :goto_0
    return-void

    .line 118
    :pswitch_0
    sget-object v1, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->TAG:Ljava/lang/String;

    const-string v2, "InMobi error: REQUEST_TIMED_OUT"

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    sget-object v1, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;->Timeout:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    invoke-virtual {p0, v1}, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->sendValidationEvent(Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;)V

    goto :goto_0

    .line 122
    :pswitch_1
    sget-object v1, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->TAG:Ljava/lang/String;

    const-string v2, "InMobi error: NETWORK_UNREACHABLE"

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    sget-object v1, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;->NetworkError:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    invoke-virtual {p0, v1}, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->sendValidationEvent(Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;)V

    goto :goto_0

    .line 126
    :pswitch_2
    sget-object v1, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->TAG:Ljava/lang/String;

    const-string v2, "InMobi error: SERVER_ERROR"

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    sget-object v1, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;->NetworkError:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    invoke-virtual {p0, v1}, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->sendValidationEvent(Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;)V

    goto :goto_0

    .line 130
    :pswitch_3
    sget-object v1, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;->NoVideoAvailable:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    invoke-virtual {p0, v1}, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->sendValidationEvent(Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;)V

    goto :goto_0

    .line 116
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onAdLoadSucceeded(Lcom/inmobi/ads/InMobiInterstitial;)V
    .locals 1
    .param p1, "inMobiInterstitial"    # Lcom/inmobi/ads/InMobiInterstitial;

    .prologue
    .line 109
    sget-object v0, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;->Success:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    invoke-virtual {p0, v0}, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->sendValidationEvent(Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;)V

    .line 110
    return-void
.end method

.method public onAdReceived(Lcom/inmobi/ads/InMobiInterstitial;)V
    .locals 0
    .param p1, "inMobiInterstitial"    # Lcom/inmobi/ads/InMobiInterstitial;

    .prologue
    .line 142
    return-void
.end method

.method public onAdRewardActionCompleted(Lcom/inmobi/ads/InMobiInterstitial;Ljava/util/Map;)V
    .locals 0
    .param p1, "inMobiInterstitial"    # Lcom/inmobi/ads/InMobiInterstitial;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/InMobiInterstitial;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->setVideoPlayed()V

    .line 80
    return-void
.end method

.method public onAdWillDisplay(Lcom/inmobi/ads/InMobiInterstitial;)V
    .locals 0
    .param p1, "inMobiInterstitial"    # Lcom/inmobi/ads/InMobiInterstitial;

    .prologue
    .line 90
    return-void
.end method

.method public onUserLeftApplication(Lcom/inmobi/ads/InMobiInterstitial;)V
    .locals 0
    .param p1, "inMobiInterstitial"    # Lcom/inmobi/ads/InMobiInterstitial;

    .prologue
    .line 147
    return-void
.end method

.method public startPrecaching()V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method public startVideo(Landroid/app/Activity;)V
    .locals 2
    .param p1, "parentActivity"    # Landroid/app/Activity;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->mRewardedAd:Lcom/inmobi/ads/InMobiInterstitial;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->mRewardedAd:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiInterstitial;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->mRewardedAd:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiInterstitial;->show()V

    .line 59
    :goto_0
    return-void

    .line 56
    :cond_0
    sget-object v0, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Video ad has expired. Make a new request"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->notifyVideoError()V

    goto :goto_0
.end method

.method public videosAvailable(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter$1;

    invoke-direct {v1, p0}, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter$1;-><init>(Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 75
    return-void
.end method
