.class public Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;
.super Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;
.source "UnityAdsInterstitialMediationAdapter.java"

# interfaces
.implements Lcom/unity3d/ads/IUnityAdsListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter",
        "<",
        "Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;",
        ">;",
        "Lcom/unity3d/ads/IUnityAdsListener;"
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

.field private currentZoneId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;Ljava/util/Map;)V
    .locals 0
    .param p1, "adapter"    # Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p2, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;-><init>(Lcom/fyber/mediation/MediationAdapter;)V

    .line 28
    iput-object p2, p0, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->configs:Ljava/util/Map;

    .line 29
    return-void
.end method

.method private getZoneId()Ljava/lang/String;
    .locals 5

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->getContextData()Ljava/util/Map;

    move-result-object v2

    const-string v3, "tpn_placement_id"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 64
    .local v0, "zoneId":Ljava/lang/String;
    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 65
    iget-object v2, p0, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->configs:Ljava/util/Map;

    const-string v3, "zone.id.interstitial"

    const-class v4, Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/fyber/mediation/MediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 66
    .local v1, "zoneIdFromConfigs":Ljava/lang/String;
    invoke-static {v1}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 67
    sget-object v2, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    const-string v3, "No zone id found in context data, falling back to configs."

    invoke-static {v2, v3}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    move-object v0, v1

    .end local v1    # "zoneIdFromConfigs":Ljava/lang/String;
    :cond_0
    move-object v2, v0

    .line 73
    :goto_0
    return-object v2

    .line 70
    .restart local v1    # "zoneIdFromConfigs":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected checkForAds(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->getZoneId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->currentZoneId:Ljava/lang/String;

    .line 45
    iget-object v1, p0, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->currentZoneId:Ljava/lang/String;

    invoke-static {v1}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    sget-object v1, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    const-string v2, "Ad request failed because there is no placement id to use in the ad request."

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v1, "no_placement_id"

    invoke-virtual {p0, v1}, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->setAdError(Ljava/lang/String;)V

    .line 60
    :goto_0
    return-void

    .line 51
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->currentZoneId:Ljava/lang/String;

    invoke-static {v1}, Lcom/unity3d/ads/UnityAds;->isReady(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 52
    invoke-virtual {p0}, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->setAdAvailable()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v1, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->setAdError(Ljava/lang/String;)V

    goto :goto_0

    .line 54
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->setAdNotAvailable()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onUnityAdsError(Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V
    .locals 3
    .param p1, "unityAdsError"    # Lcom/unity3d/ads/UnityAds$UnityAdsError;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v0, p0, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->currentZoneId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    sget-object v0, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UnityAds error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_0
    return-void
.end method

.method public onUnityAdsFinish(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$FinishState;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "finishState"    # Lcom/unity3d/ads/UnityAds$FinishState;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->currentZoneId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    sget-object v0, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter$1;->$SwitchMap$com$unity3d$ads$UnityAds$FinishState:[I

    invoke-virtual {p2}, Lcom/unity3d/ads/UnityAds$FinishState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 95
    :pswitch_0
    invoke-virtual {p0}, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->interstitialClosed()V

    goto :goto_0

    .line 98
    :pswitch_1
    invoke-virtual {p0}, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->interstitialClosed()V

    goto :goto_0

    .line 101
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Interstitial error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->interstitialError(Ljava/lang/String;)V

    goto :goto_0

    .line 93
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onUnityAdsReady(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->currentZoneId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    :cond_0
    return-void
.end method

.method public onUnityAdsStart(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->currentZoneId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->interstitialShown()V

    .line 88
    :cond_0
    return-void
.end method

.method protected show(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->currentZoneId:Ljava/lang/String;

    invoke-static {v0}, Lcom/unity3d/ads/UnityAds;->isReady(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->currentZoneId:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/unity3d/ads/UnityAds;->show(Landroid/app/Activity;Ljava/lang/String;)V

    .line 40
    :goto_0
    return-void

    .line 37
    :cond_0
    sget-object v0, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Cannot show interstitial ad."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    const-string v0, "Can\'t show ad: ad is not ready."

    invoke-virtual {p0, v0}, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;->interstitialError(Ljava/lang/String;)V

    goto :goto_0
.end method
