.class public Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;
.super Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;
.source "InMobiInterstitialMediationAdapter.java"

# interfaces
.implements Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter",
        "<",
        "Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;",
        ">;",
        "Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener2;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final configIntPlacementId:Ljava/lang/String;

.field private mActivity:Landroid/app/Activity;

.field private final mHandler:Landroid/os/Handler;

.field private mInterstitial:Lcom/inmobi/ads/InMobiInterstitial;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 2
    .param p1, "adapter"    # Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;
    .param p2, "parentActivity"    # Landroid/app/Activity;
    .param p3, "intPlacementId"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;-><init>(Lcom/fyber/mediation/MediationAdapter;)V

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->mHandler:Landroid/os/Handler;

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->mInterstitial:Lcom/inmobi/ads/InMobiInterstitial;

    .line 38
    iput-object p2, p0, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->mActivity:Landroid/app/Activity;

    .line 39
    iput-object p3, p0, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->configIntPlacementId:Ljava/lang/String;

    .line 40
    return-void
.end method

.method static synthetic access$000(Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->loadInterstitial()V

    return-void
.end method

.method private getPlacementId()J
    .locals 7

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->getContextData()Ljava/util/Map;

    move-result-object v4

    const-string v5, "tpn_placement_id"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 65
    .local v1, "intPlacementId":Ljava/lang/String;
    sget-object v4, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Context placement id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sget-object v4, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Config placement id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->configIntPlacementId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    invoke-static {v1}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 68
    iget-object v4, p0, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->configIntPlacementId:Ljava/lang/String;

    invoke-static {v4}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 69
    sget-object v4, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    const-string v5, "No placement id found in context data, falling back to configs."

    invoke-static {v4, v5}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v1, p0, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->configIntPlacementId:Ljava/lang/String;

    .line 77
    :cond_0
    const-wide/16 v2, 0x0

    .line 79
    .local v2, "result":J
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 84
    :goto_0
    sget-object v4, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Using placement id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .end local v2    # "result":J
    :goto_1
    return-wide v2

    .line 72
    :cond_1
    sget-object v4, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    const-string v5, "no_placement_id"

    invoke-static {v4, v5}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    const-string v4, "no_placement_id"

    invoke-virtual {p0, v4}, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->setAdError(Ljava/lang/String;)V

    .line 74
    const-wide/16 v2, 0x0

    goto :goto_1

    .line 80
    .restart local v2    # "result":J
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v4, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    const-string v5, "Incorrect placement id. Long value required."

    invoke-static {v4, v5}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    const-string v4, "Incorrect placement id. Long value required."

    invoke-virtual {p0, v4}, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->setAdError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private loadInterstitial()V
    .locals 6

    .prologue
    .line 89
    invoke-direct {p0}, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->getPlacementId()J

    move-result-wide v2

    .line 90
    .local v2, "placementId":J
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 99
    :goto_0
    return-void

    .line 93
    :cond_0
    new-instance v1, Lcom/inmobi/ads/InMobiInterstitial;

    iget-object v4, p0, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->mActivity:Landroid/app/Activity;

    invoke-direct {v1, v4, v2, v3, p0}, Lcom/inmobi/ads/InMobiInterstitial;-><init>(Landroid/app/Activity;JLcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener2;)V

    iput-object v1, p0, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->mInterstitial:Lcom/inmobi/ads/InMobiInterstitial;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 95
    .local v0, "params":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "tp"

    const-string v4, "c_sponsorpay"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    const-string v1, "tp-ver"

    sget-object v4, Lcom/fyber/Fyber;->RELEASE_VERSION_STRING:Ljava/lang/String;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget-object v1, p0, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->mInterstitial:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/InMobiInterstitial;->setExtras(Ljava/util/Map;)V

    .line 98
    iget-object v1, p0, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->mInterstitial:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v1}, Lcom/inmobi/ads/InMobiInterstitial;->load()V

    goto :goto_0
.end method


# virtual methods
.method protected checkForAds(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    sget-object v0, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    const-string v1, "checkForAds"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter$1;

    invoke-direct {v1, p0}, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter$1;-><init>(Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 61
    return-void
.end method

.method public onAdDismissed(Lcom/inmobi/ads/InMobiInterstitial;)V
    .locals 0
    .param p1, "inMobiInterstitial"    # Lcom/inmobi/ads/InMobiInterstitial;

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->interstitialClosed()V

    .line 124
    return-void
.end method

.method public onAdDisplayFailed(Lcom/inmobi/ads/InMobiInterstitial;)V
    .locals 1
    .param p1, "inMobiInterstitial"    # Lcom/inmobi/ads/InMobiInterstitial;

    .prologue
    .line 108
    const-string v0, "Ad display attempt failed"

    invoke-virtual {p0, v0}, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->interstitialError(Ljava/lang/String;)V

    .line 109
    return-void
.end method

.method public onAdDisplayed(Lcom/inmobi/ads/InMobiInterstitial;)V
    .locals 0
    .param p1, "inMobiInterstitial"    # Lcom/inmobi/ads/InMobiInterstitial;

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->interstitialShown()V

    .line 119
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
    .line 128
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->interstitialClicked()V

    .line 129
    return-void
.end method

.method public onAdLoadFailed(Lcom/inmobi/ads/InMobiInterstitial;Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 4
    .param p1, "inMobiInterstitial"    # Lcom/inmobi/ads/InMobiInterstitial;
    .param p2, "inMobiAdRequestStatus"    # Lcom/inmobi/ads/InMobiAdRequestStatus;

    .prologue
    .line 139
    invoke-virtual {p2}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    .line 140
    .local v0, "errorCode":Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;
    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->NO_FILL:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->setAdNotAvailable()V

    .line 149
    :goto_0
    return-void

    .line 143
    :cond_0
    sget-object v1, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAdLoadFailed() : errorCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Interstitial failed to load with errorCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 145
    invoke-virtual {p2}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and error message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 147
    invoke-virtual {p2}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 144
    invoke-virtual {p0, v1}, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->setAdError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onAdLoadSucceeded(Lcom/inmobi/ads/InMobiInterstitial;)V
    .locals 0
    .param p1, "inMobiInterstitial"    # Lcom/inmobi/ads/InMobiInterstitial;

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->setAdAvailable()V

    .line 134
    return-void
.end method

.method public onAdReceived(Lcom/inmobi/ads/InMobiInterstitial;)V
    .locals 0
    .param p1, "inMobiInterstitial"    # Lcom/inmobi/ads/InMobiInterstitial;

    .prologue
    .line 154
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
    .line 104
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    return-void
.end method

.method public onAdWillDisplay(Lcom/inmobi/ads/InMobiInterstitial;)V
    .locals 0
    .param p1, "inMobiInterstitial"    # Lcom/inmobi/ads/InMobiInterstitial;

    .prologue
    .line 114
    return-void
.end method

.method public onUserLeftApplication(Lcom/inmobi/ads/InMobiInterstitial;)V
    .locals 0
    .param p1, "inMobiInterstitial"    # Lcom/inmobi/ads/InMobiInterstitial;

    .prologue
    .line 159
    return-void
.end method

.method protected show(Landroid/app/Activity;)V
    .locals 1
    .param p1, "parentActivity"    # Landroid/app/Activity;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->mInterstitial:Lcom/inmobi/ads/InMobiInterstitial;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->mInterstitial:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiInterstitial;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->mInterstitial:Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiInterstitial;->show()V

    .line 49
    :goto_0
    return-void

    .line 47
    :cond_0
    const-string v0, "Ad is not ready yet"

    invoke-virtual {p0, v0}, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;->interstitialError(Ljava/lang/String;)V

    goto :goto_0
.end method
