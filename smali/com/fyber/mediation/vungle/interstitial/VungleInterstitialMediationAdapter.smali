.class public Lcom/fyber/mediation/vungle/interstitial/VungleInterstitialMediationAdapter;
.super Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;
.source "VungleInterstitialMediationAdapter.java"

# interfaces
.implements Lcom/vungle/publisher/EventListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter",
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
    .line 16
    invoke-direct {p0, p1}, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;-><init>(Lcom/fyber/mediation/MediationAdapter;)V

    .line 17
    iput-object p1, p0, Lcom/fyber/mediation/vungle/interstitial/VungleInterstitialMediationAdapter;->mainAdapter:Lcom/fyber/mediation/vungle/VungleMediationAdapter;

    .line 18
    return-void
.end method


# virtual methods
.method protected checkForAds(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-static {}, Lcom/vungle/publisher/VunglePub;->getInstance()Lcom/vungle/publisher/VunglePub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/VunglePub;->isAdPlayable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/fyber/mediation/vungle/interstitial/VungleInterstitialMediationAdapter;->setAdAvailable()V

    .line 43
    :goto_0
    return-void

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/fyber/mediation/vungle/interstitial/VungleInterstitialMediationAdapter;->setAdNotAvailable()V

    goto :goto_0
.end method

.method public onAdEnd(ZZ)V
    .locals 1
    .param p1, "wasSuccessfulView"    # Z
    .param p2, "wasCallToActionClicked"    # Z

    .prologue
    .line 56
    iget-object v0, p0, Lcom/fyber/mediation/vungle/interstitial/VungleInterstitialMediationAdapter;->adapter:Lcom/fyber/mediation/MediationAdapter;

    check-cast v0, Lcom/fyber/mediation/vungle/VungleMediationAdapter;

    invoke-virtual {v0, p0}, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->isActiveChildAdapter(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 57
    if-eqz p2, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/fyber/mediation/vungle/interstitial/VungleInterstitialMediationAdapter;->interstitialClicked()V

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/fyber/mediation/vungle/interstitial/VungleInterstitialMediationAdapter;->interstitialClosed()V

    .line 62
    :cond_1
    return-void
.end method

.method public onAdPlayableChanged(Z)V
    .locals 0
    .param p1, "isAdPlayable"    # Z

    .prologue
    .line 90
    return-void
.end method

.method public onAdStart()V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/fyber/mediation/vungle/interstitial/VungleInterstitialMediationAdapter;->adapter:Lcom/fyber/mediation/MediationAdapter;

    check-cast v0, Lcom/fyber/mediation/vungle/VungleMediationAdapter;

    invoke-virtual {v0, p0}, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->isActiveChildAdapter(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/fyber/mediation/vungle/interstitial/VungleInterstitialMediationAdapter;->interstitialShown()V

    .line 72
    :cond_0
    return-void
.end method

.method public onAdUnavailable(Ljava/lang/String;)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 81
    return-void
.end method

.method public onVideoView(ZII)V
    .locals 0
    .param p1, "isCompletedView"    # Z
    .param p2, "watchedMillis"    # I
    .param p3, "videoDurationMillis"    # I

    .prologue
    .line 95
    return-void
.end method

.method protected show(Landroid/app/Activity;)V
    .locals 3
    .param p1, "parentActivity"    # Landroid/app/Activity;

    .prologue
    .line 22
    invoke-static {}, Lcom/vungle/publisher/VunglePub;->getInstance()Lcom/vungle/publisher/VunglePub;

    move-result-object v1

    .line 23
    .local v1, "vunglePub":Lcom/vungle/publisher/VunglePub;
    invoke-virtual {v1}, Lcom/vungle/publisher/VunglePub;->isAdPlayable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 24
    iget-object v2, p0, Lcom/fyber/mediation/vungle/interstitial/VungleInterstitialMediationAdapter;->adapter:Lcom/fyber/mediation/MediationAdapter;

    check-cast v2, Lcom/fyber/mediation/vungle/VungleMediationAdapter;

    invoke-virtual {v2, p0}, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->setActiveChildAdapter(Ljava/lang/Object;)V

    .line 27
    iget-object v2, p0, Lcom/fyber/mediation/vungle/interstitial/VungleInterstitialMediationAdapter;->mainAdapter:Lcom/fyber/mediation/vungle/VungleMediationAdapter;

    invoke-virtual {v2}, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->getConfiguredAdConfig()Lcom/vungle/publisher/AdConfig;

    move-result-object v0

    .line 28
    .local v0, "adConfig":Lcom/vungle/publisher/AdConfig;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/vungle/publisher/AdConfig;->setIncentivized(Z)V

    .line 30
    invoke-virtual {v1, v0}, Lcom/vungle/publisher/VunglePub;->playAd(Lcom/vungle/publisher/AdConfig;)V

    .line 34
    .end local v0    # "adConfig":Lcom/vungle/publisher/AdConfig;
    :goto_0
    return-void

    .line 32
    :cond_0
    const-string v2, "Interstitial is not ready"

    invoke-virtual {p0, v2}, Lcom/fyber/mediation/vungle/interstitial/VungleInterstitialMediationAdapter;->interstitialError(Ljava/lang/String;)V

    goto :goto_0
.end method
