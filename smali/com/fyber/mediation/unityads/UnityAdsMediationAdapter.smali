.class public Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;
.super Lcom/fyber/mediation/MediationAdapter;
.source "UnityAdsMediationAdapter.java"

# interfaces
.implements Lcom/unity3d/ads/IUnityAdsListener;


# annotations
.annotation runtime Lcom/fyber/mediation/annotations/AdapterDefinition;
    apiVersion = 0x5
    name = "Applifier"
    sdkFeatures = {
        "banners",
        "blended"
    }
    version = "2.0.5-r1"
.end annotation


# static fields
.field public static final ADAPTER_NAME:Ljava/lang/String; = "Applifier"

.field public static final ADAPTER_VERSION:Ljava/lang/String; = "2.0.5-r1"

.field public static final DEBUG_MODE:Ljava/lang/String; = "debug.mode"

.field public static final GAME_ID_KEY:Ljava/lang/String; = "game.id.key"

.field public static final TAG:Ljava/lang/String;

.field public static final ZONE_ID_INTERSTITIAL:Ljava/lang/String; = "zone.id.interstitial"

.field public static final ZONE_ID_REWARDED_VIDEO:Ljava/lang/String; = "zone.id.rewarded.video"


# instance fields
.field private availableAdListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/unity3d/ads/IUnityAdsListener;",
            ">;"
        }
    .end annotation
.end field

.field private interstitialMediationAdapter:Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;

.field private videoMediationAdapter:Lcom/fyber/mediation/unityads/rv/UnityAdsVideoMediationAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/fyber/mediation/MediationAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getBannerMediationAdapter()Lcom/fyber/ads/banners/mediation/BannerMediationAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fyber/ads/banners/mediation/BannerMediationAdapter",
            "<",
            "Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getInterstitialMediationAdapter()Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->getInterstitialMediationAdapter()Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getInterstitialMediationAdapter()Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->interstitialMediationAdapter:Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;

    return-object v0
.end method

.method protected getListeners()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 115
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const-string v0, "Applifier"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    const-string v0, "2.0.5-r1"

    return-object v0
.end method

.method public bridge synthetic getVideoMediationAdapter()Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->getVideoMediationAdapter()Lcom/fyber/mediation/unityads/rv/UnityAdsVideoMediationAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getVideoMediationAdapter()Lcom/fyber/mediation/unityads/rv/UnityAdsVideoMediationAdapter;
    .locals 1

    .prologue
    .line 100
    iget-object v0, p0, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->videoMediationAdapter:Lcom/fyber/mediation/unityads/rv/UnityAdsVideoMediationAdapter;

    return-object v0
.end method

.method public onUnityAdsError(Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V
    .locals 3
    .param p1, "unityAdsError"    # Lcom/unity3d/ads/UnityAds$UnityAdsError;
    .param p2, "s"    # Ljava/lang/String;

    .prologue
    .line 141
    iget-object v1, p0, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->availableAdListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/IUnityAdsListener;

    .line 142
    .local v0, "listener":Lcom/unity3d/ads/IUnityAdsListener;
    invoke-interface {v0, p1, p2}, Lcom/unity3d/ads/IUnityAdsListener;->onUnityAdsError(Lcom/unity3d/ads/UnityAds$UnityAdsError;Ljava/lang/String;)V

    goto :goto_0

    .line 144
    .end local v0    # "listener":Lcom/unity3d/ads/IUnityAdsListener;
    :cond_0
    return-void
.end method

.method public onUnityAdsFinish(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$FinishState;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "finishState"    # Lcom/unity3d/ads/UnityAds$FinishState;

    .prologue
    .line 134
    iget-object v1, p0, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->availableAdListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/IUnityAdsListener;

    .line 135
    .local v0, "listener":Lcom/unity3d/ads/IUnityAdsListener;
    invoke-interface {v0, p1, p2}, Lcom/unity3d/ads/IUnityAdsListener;->onUnityAdsFinish(Ljava/lang/String;Lcom/unity3d/ads/UnityAds$FinishState;)V

    goto :goto_0

    .line 137
    .end local v0    # "listener":Lcom/unity3d/ads/IUnityAdsListener;
    :cond_0
    return-void
.end method

.method public onUnityAdsReady(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v1, p0, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->availableAdListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/IUnityAdsListener;

    .line 121
    .local v0, "listener":Lcom/unity3d/ads/IUnityAdsListener;
    invoke-interface {v0, p1}, Lcom/unity3d/ads/IUnityAdsListener;->onUnityAdsReady(Ljava/lang/String;)V

    goto :goto_0

    .line 123
    .end local v0    # "listener":Lcom/unity3d/ads/IUnityAdsListener;
    :cond_0
    return-void
.end method

.method public onUnityAdsStart(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 127
    iget-object v1, p0, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->availableAdListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unity3d/ads/IUnityAdsListener;

    .line 128
    .local v0, "listener":Lcom/unity3d/ads/IUnityAdsListener;
    invoke-interface {v0, p1}, Lcom/unity3d/ads/IUnityAdsListener;->onUnityAdsStart(Ljava/lang/String;)V

    goto :goto_0

    .line 130
    .end local v0    # "listener":Lcom/unity3d/ads/IUnityAdsListener;
    :cond_0
    return-void
.end method

.method public startAdapter(Landroid/app/Activity;Ljava/util/Map;)Z
    .locals 7
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v3, 0x0

    .line 45
    sget-object v4, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Starting UnityAds (former Applifier) adapter - SDK version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 46
    invoke-static {}, Lcom/unity3d/ads/UnityAds;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 45
    invoke-static {v4, v5}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const-string v4, "game.id.key"

    const-class v5, Ljava/lang/String;

    invoke-static {p2, v4, v5}, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 49
    .local v0, "gameKey":Ljava/lang/String;
    const-string v4, "zone.id.rewarded.video"

    const-class v5, Ljava/lang/String;

    invoke-static {p2, v4, v5}, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 51
    .local v2, "rewardedVideoZoneId":Ljava/lang/String;
    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 52
    sget-object v4, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->TAG:Ljava/lang/String;

    const-string v5, "Game key is missing. Adapter won\'t start."

    invoke-static {v4, v5}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :goto_0
    return v3

    .line 56
    :cond_0
    const-string v4, "[1-9][0-9]*"

    invoke-virtual {v0, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 57
    sget-object v4, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->TAG:Ljava/lang/String;

    const-string v5, "Game key value is not valid. Adapter won\'t start."

    invoke-static {v4, v5}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    const/4 v5, 0x2

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v4, p0, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->availableAdListeners:Ljava/util/List;

    .line 62
    new-instance v4, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;

    invoke-direct {v4, p0, p2}, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;-><init>(Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;Ljava/util/Map;)V

    iput-object v4, p0, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->interstitialMediationAdapter:Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;

    .line 63
    iget-object v4, p0, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->availableAdListeners:Ljava/util/List;

    iget-object v5, p0, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->interstitialMediationAdapter:Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-static {v2}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 66
    new-instance v4, Lcom/fyber/mediation/unityads/rv/UnityAdsVideoMediationAdapter;

    invoke-virtual {p0}, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, p2, v5}, Lcom/fyber/mediation/unityads/rv/UnityAdsVideoMediationAdapter;-><init>(Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;Ljava/util/Map;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->videoMediationAdapter:Lcom/fyber/mediation/unityads/rv/UnityAdsVideoMediationAdapter;

    .line 67
    iget-object v4, p0, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->videoMediationAdapter:Lcom/fyber/mediation/unityads/rv/UnityAdsVideoMediationAdapter;

    invoke-virtual {v4, v2}, Lcom/fyber/mediation/unityads/rv/UnityAdsVideoMediationAdapter;->setZoneId(Ljava/lang/String;)V

    .line 68
    iget-object v4, p0, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->availableAdListeners:Ljava/util/List;

    iget-object v5, p0, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->videoMediationAdapter:Lcom/fyber/mediation/unityads/rv/UnityAdsVideoMediationAdapter;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 71
    :cond_2
    iget-object v4, p0, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->availableAdListeners:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 72
    sget-object v4, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->TAG:Ljava/lang/String;

    const-string v5, "No valid zone id provided. Adapter won\'t start."

    invoke-static {v4, v5}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 77
    :cond_3
    new-instance v1, Lcom/unity3d/ads/metadata/MediationMetaData;

    invoke-direct {v1, p1}, Lcom/unity3d/ads/metadata/MediationMetaData;-><init>(Landroid/content/Context;)V

    .line 78
    .local v1, "mediationMetaData":Lcom/unity3d/ads/metadata/MediationMetaData;
    const-string v4, "Fyber"

    invoke-virtual {v1, v4}, Lcom/unity3d/ads/metadata/MediationMetaData;->setName(Ljava/lang/String;)V

    .line 79
    sget-object v4, Lcom/fyber/Fyber;->RELEASE_VERSION_STRING:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/unity3d/ads/metadata/MediationMetaData;->setVersion(Ljava/lang/String;)V

    .line 80
    invoke-virtual {v1}, Lcom/unity3d/ads/metadata/MediationMetaData;->commit()V

    .line 82
    const-string v4, "debug.mode"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-class v5, Ljava/lang/Boolean;

    invoke-static {p2, v4, v3, v5}, Lcom/fyber/mediation/unityads/UnityAdsMediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    invoke-static {v3}, Lcom/unity3d/ads/UnityAds;->setDebugMode(Z)V

    .line 83
    invoke-static {p1, v0, p0}, Lcom/unity3d/ads/UnityAds;->initialize(Landroid/app/Activity;Ljava/lang/String;Lcom/unity3d/ads/IUnityAdsListener;)V

    .line 85
    const/4 v3, 0x1

    goto :goto_0
.end method
