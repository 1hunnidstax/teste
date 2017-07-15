.class public Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter;
.super Lcom/fyber/mediation/MediationAdapter;
.source "TapjoyMediationAdapter.java"


# annotations
.annotation runtime Lcom/fyber/mediation/annotations/AdapterDefinition;
    apiVersion = 0x5
    name = "Tapjoy"
    sdkFeatures = {
        "blended",
        "banners"
    }
    version = "11.9.0-r1"
.end annotation


# static fields
.field public static final ADAPTER_NAME:Ljava/lang/String; = "Tapjoy"

.field public static final DEBUG_ENABLED:Ljava/lang/String; = "debugEnabled"

.field public static final INTERSTITIAL_PLACEMENT_NAME:Ljava/lang/String; = "interstitialPlacementName"

.field public static final SDK_KEY:Ljava/lang/String; = "sdkKey"

.field public static final TAG:Ljava/lang/String;

.field public static final USER_ID:Ljava/lang/String; = "userId"

.field public static final VIDEO_PLACEMENT_NAME:Ljava/lang/String; = "videoPlacementName"


# instance fields
.field private interstitialAdapter:Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;

.field private mInterstitialPlacementName:Ljava/lang/String;

.field private mVideoPlacementName:Ljava/lang/String;

.field private rewardedVideoAdapter:Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/fyber/mediation/MediationAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter;)Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter;->rewardedVideoAdapter:Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;

    return-object v0
.end method


# virtual methods
.method public getBannerMediationAdapter()Lcom/fyber/ads/banners/mediation/BannerMediationAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fyber/ads/banners/mediation/BannerMediationAdapter",
            "<",
            "Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterstitialMediationAdapter()Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter",
            "<",
            "Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    iget-object v0, p0, Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter;->interstitialAdapter:Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;

    return-object v0
.end method

.method public getInterstitialPlacementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter;->mInterstitialPlacementName:Ljava/lang/String;

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
    .line 138
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    const-string v0, "Tapjoy"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    const-string v0, "11.9.0-r1"

    return-object v0
.end method

.method public getVideoMediationAdapter()Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter",
            "<",
            "Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter;->rewardedVideoAdapter:Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;

    return-object v0
.end method

.method public getVideoPlacementName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter;->mVideoPlacementName:Ljava/lang/String;

    return-object v0
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
    const/4 v5, 0x0

    .line 60
    sget-object v4, Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter;->TAG:Ljava/lang/String;

    const-string v6, "startAdapter()"

    invoke-static {v4, v6}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v4, "sdkKey"

    const-class v6, Ljava/lang/String;

    invoke-static {p2, v4, v6}, Lcom/fyber/mediation/MediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 64
    .local v2, "sdkKey":Ljava/lang/String;
    const-string v4, "interstitialPlacementName"

    const-class v6, Ljava/lang/String;

    invoke-static {p2, v4, v6}, Lcom/fyber/mediation/MediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter;->mInterstitialPlacementName:Ljava/lang/String;

    .line 65
    const-string v4, "videoPlacementName"

    const-class v6, Ljava/lang/String;

    invoke-static {p2, v4, v6}, Lcom/fyber/mediation/MediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter;->mVideoPlacementName:Ljava/lang/String;

    .line 67
    invoke-static {v2}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 68
    sget-object v4, Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter;->TAG:Ljava/lang/String;

    const-string v6, "You need to provide the parameter: \'sdkKey . Adapter won\u2019t start"

    invoke-static {v4, v6}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v5

    .line 108
    :goto_0
    return v4

    .line 73
    :cond_0
    invoke-static {}, Lcom/tapjoy/Tapjoy;->isConnected()Z

    move-result v4

    if-nez v4, :cond_2

    .line 74
    const-string v4, "debugEnabled"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-class v6, Ljava/lang/Boolean;

    invoke-static {p2, v4, v5, v6}, Lcom/fyber/mediation/MediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 75
    .local v1, "enableDebug":Z
    invoke-static {v1}, Lcom/tapjoy/Tapjoy;->setDebugEnabled(Z)V

    .line 77
    const-string v4, "userId"

    const-class v5, Ljava/lang/String;

    invoke-static {p2, v4, v5}, Lcom/fyber/mediation/MediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 78
    .local v3, "userId":Ljava/lang/String;
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 79
    .local v0, "connectFlags":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {v3}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 80
    const-string v4, "TJC_OPTION_USER_ID"

    invoke-virtual {v0, v4, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    :cond_1
    new-instance v4, Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter$1;

    invoke-direct {v4, p0}, Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter$1;-><init>(Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter;)V

    invoke-static {p1, v2, v0, v4}, Lcom/tapjoy/Tapjoy;->connect(Landroid/content/Context;Ljava/lang/String;Ljava/util/Hashtable;Lcom/tapjoy/TJConnectListener;)Z

    .line 100
    .end local v0    # "connectFlags":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v1    # "enableDebug":Z
    .end local v3    # "userId":Ljava/lang/String;
    :cond_2
    new-instance v4, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;

    invoke-direct {v4, p0, p1, p2}, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;-><init>(Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter;Landroid/app/Activity;Ljava/util/Map;)V

    iput-object v4, p0, Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter;->interstitialAdapter:Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;

    .line 102
    iget-object v4, p0, Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter;->mVideoPlacementName:Ljava/lang/String;

    invoke-static {v4}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 103
    new-instance v4, Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;

    invoke-direct {v4, p0, p1, p2}, Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;-><init>(Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter;Landroid/app/Activity;Ljava/util/Map;)V

    iput-object v4, p0, Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter;->rewardedVideoAdapter:Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;

    .line 108
    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    .line 105
    :cond_3
    sget-object v4, Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter;->TAG:Ljava/lang/String;

    const-string v5, "The \'videoPlacementName\' parameter is missing. The Tapjoy Rewarded Video adapter won\u2019t start."

    invoke-static {v4, v5}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
