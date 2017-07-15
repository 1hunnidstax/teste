.class public Lcom/fyber/mediation/vungle/rv/VungleVideoMediationAdapter;
.super Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;
.source "VungleVideoMediationAdapter.java"

# interfaces
.implements Lcom/vungle/publisher/EventListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter",
        "<",
        "Lcom/fyber/mediation/vungle/VungleMediationAdapter;",
        ">;",
        "Lcom/vungle/publisher/EventListener;"
    }
.end annotation


# instance fields
.field private mainAdapter:Lcom/fyber/mediation/vungle/VungleMediationAdapter;


# direct methods
.method public constructor <init>(Lcom/fyber/mediation/vungle/VungleMediationAdapter;)V
    .locals 0
    .param p1, "adapter"    # Lcom/fyber/mediation/vungle/VungleMediationAdapter;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;-><init>(Lcom/fyber/mediation/MediationAdapter;)V

    .line 26
    iput-object p1, p0, Lcom/fyber/mediation/vungle/rv/VungleVideoMediationAdapter;->mainAdapter:Lcom/fyber/mediation/vungle/VungleMediationAdapter;

    .line 27
    return-void
.end method


# virtual methods
.method public onAdEnd(ZZ)V
    .locals 1
    .param p1, "wasSuccessfulView"    # Z
    .param p2, "wasCallToActionClicked"    # Z

    .prologue
    .line 64
    iget-object v0, p0, Lcom/fyber/mediation/vungle/rv/VungleVideoMediationAdapter;->mAdapter:Lcom/fyber/mediation/MediationAdapter;

    check-cast v0, Lcom/fyber/mediation/vungle/VungleMediationAdapter;

    invoke-virtual {v0, p0}, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->isActiveChildAdapter(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    if-eqz p1, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/fyber/mediation/vungle/rv/VungleVideoMediationAdapter;->setVideoPlayed()V

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 68
    :cond_1
    invoke-virtual {p0}, Lcom/fyber/mediation/vungle/rv/VungleVideoMediationAdapter;->notifyCloseEngagement()V

    goto :goto_0
.end method

.method public onAdPlayableChanged(Z)V
    .locals 0
    .param p1, "isAdPlayable"    # Z

    .prologue
    .line 99
    return-void
.end method

.method public onAdStart()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/fyber/mediation/vungle/rv/VungleVideoMediationAdapter;->mAdapter:Lcom/fyber/mediation/MediationAdapter;

    check-cast v0, Lcom/fyber/mediation/vungle/VungleMediationAdapter;

    invoke-virtual {v0, p0}, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->isActiveChildAdapter(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/fyber/mediation/vungle/rv/VungleVideoMediationAdapter;->notifyVideoStarted()V

    .line 81
    :cond_0
    return-void
.end method

.method public onAdUnavailable(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 90
    return-void
.end method

.method public onVideoView(ZII)V
    .locals 0
    .param p1, "isCompletedView"    # Z
    .param p2, "watchedMillis"    # I
    .param p3, "videoDurationMillis"    # I

    .prologue
    .line 104
    return-void
.end method

.method public startPrecaching()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public startVideo(Landroid/app/Activity;)V
    .locals 3
    .param p1, "parentActivity"    # Landroid/app/Activity;

    .prologue
    .line 37
    invoke-static {}, Lcom/vungle/publisher/VunglePub;->getInstance()Lcom/vungle/publisher/VunglePub;

    move-result-object v1

    .line 38
    .local v1, "vunglePub":Lcom/vungle/publisher/VunglePub;
    invoke-virtual {v1}, Lcom/vungle/publisher/VunglePub;->isAdPlayable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 39
    iget-object v2, p0, Lcom/fyber/mediation/vungle/rv/VungleVideoMediationAdapter;->mAdapter:Lcom/fyber/mediation/MediationAdapter;

    check-cast v2, Lcom/fyber/mediation/vungle/VungleMediationAdapter;

    invoke-virtual {v2, p0}, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->setActiveChildAdapter(Ljava/lang/Object;)V

    .line 41
    iget-object v2, p0, Lcom/fyber/mediation/vungle/rv/VungleVideoMediationAdapter;->mainAdapter:Lcom/fyber/mediation/vungle/VungleMediationAdapter;

    invoke-virtual {v2}, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->getConfiguredAdConfig()Lcom/vungle/publisher/AdConfig;

    move-result-object v0

    .line 42
    .local v0, "adConfig":Lcom/vungle/publisher/AdConfig;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/vungle/publisher/AdConfig;->setIncentivized(Z)V

    .line 43
    invoke-virtual {v1, v0}, Lcom/vungle/publisher/VunglePub;->playAd(Lcom/vungle/publisher/AdConfig;)V

    .line 47
    .end local v0    # "adConfig":Lcom/vungle/publisher/AdConfig;
    :goto_0
    return-void

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/fyber/mediation/vungle/rv/VungleVideoMediationAdapter;->notifyVideoError()V

    goto :goto_0
.end method

.method public videosAvailable(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-static {}, Lcom/vungle/publisher/VunglePub;->getInstance()Lcom/vungle/publisher/VunglePub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/VunglePub;->isAdPlayable()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;->Success:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/fyber/mediation/vungle/rv/VungleVideoMediationAdapter;->sendValidationEvent(Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;)V

    .line 33
    return-void

    .line 31
    :cond_0
    sget-object v0, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;->NoVideoAvailable:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    goto :goto_0
.end method
