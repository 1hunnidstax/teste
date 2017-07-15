.class public Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;
.super Lcom/fyber/mediation/MediationAdapter;
.source "InMobiMediationAdapter.java"


# annotations
.annotation runtime Lcom/fyber/mediation/annotations/AdapterDefinition;
    apiVersion = 0x5
    name = "Inmobi"
    sdkFeatures = {
        "banners",
        "blended"
    }
    version = "6.1.1-r1"
.end annotation


# static fields
.field public static final ACCOUNT_ID:Ljava/lang/String; = "inmobi-account-id"

.field public static final ADAPTER_NAME:Ljava/lang/String; = "Inmobi"

.field public static final BANNER_PLACEMENT_ID:Ljava/lang/String; = "inmobi-ban-placement-id"

.field public static final BANNER_REFRESH_INTERVAL:Ljava/lang/String; = "inmobi-ban-refresh-interval"

.field public static final INTERSTITIAL_PLACEMENT_ID:Ljava/lang/String; = "inmobi-int-placement-id"

.field public static final REWARDED_VIDEO_PLACEMENT_ID:Ljava/lang/String; = "inmobi-rv-placement-id"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;

.field private mBannerAdapter:Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;

.field private mInterstitialAdapter:Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;

.field private mVideoAdapter:Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/fyber/mediation/MediationAdapter;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;Ljava/util/Map;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;
    .param p1, "x1"    # Ljava/util/Map;
    .param p2, "x2"    # Landroid/app/Activity;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->initIntAdapter(Ljava/util/Map;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$100(Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;Ljava/util/Map;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;
    .param p1, "x1"    # Ljava/util/Map;
    .param p2, "x2"    # Landroid/app/Activity;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->initRvAdapter(Ljava/util/Map;Landroid/app/Activity;)V

    return-void
.end method

.method static synthetic access$200(Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;Ljava/util/Map;Landroid/app/Activity;)V
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;
    .param p1, "x1"    # Ljava/util/Map;
    .param p2, "x2"    # Landroid/app/Activity;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->initBanAdapter(Ljava/util/Map;Landroid/app/Activity;)V

    return-void
.end method

.method private initBanAdapter(Ljava/util/Map;Landroid/app/Activity;)V
    .locals 9
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 118
    .local p1, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "inmobi-ban-placement-id"

    const-class v2, Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 119
    .local v0, "banPlacementIdString":Ljava/lang/String;
    const-string v1, "inmobi-ban-refresh-interval"

    const-class v2, Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 122
    .local v8, "refreshIntervalString":Ljava/lang/String;
    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    sget-object v1, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->TAG:Ljava/lang/String;

    const-string v2, "No banner placement ID detected. Banner adapter will not be started."

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    :goto_0
    return-void

    .line 131
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    .line 139
    .local v4, "banPlacementId":J
    const/4 v6, 0x0

    .line 140
    .local v6, "refreshInterval":Ljava/lang/Integer;
    invoke-static {v8}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 142
    :try_start_1
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 143
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gtz v1, :cond_2

    .line 144
    const/4 v6, 0x0

    .line 145
    sget-object v1, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->TAG:Ljava/lang/String;

    const-string v2, "Banner ad refresh interval value should be non-negative. Using default value"

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 158
    :cond_1
    :goto_1
    new-instance v1, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;

    iget-object v2, p0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->mAdapter:Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;-><init>(Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;Landroid/app/Activity;JLjava/lang/Integer;)V

    iput-object v1, p0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->mBannerAdapter:Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;

    goto :goto_0

    .line 132
    .end local v4    # "banPlacementId":J
    .end local v6    # "refreshInterval":Ljava/lang/Integer;
    :catch_0
    move-exception v7

    .line 133
    .local v7, "e":Ljava/lang/NumberFormatException;
    sget-object v1, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->TAG:Ljava/lang/String;

    const-string v2, "Invalid inmobi-ban-placement-id config format. Long format required. Banner adapter will not be started."

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 148
    .end local v7    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "banPlacementId":J
    .restart local v6    # "refreshInterval":Ljava/lang/Integer;
    :cond_2
    :try_start_2
    sget-object v1, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Banner ad refresh interval set to: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seconds."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 151
    :catch_1
    move-exception v7

    .line 152
    .restart local v7    # "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 153
    sget-object v1, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->TAG:Ljava/lang/String;

    const-string v2, "Invalid banner ad refresh interval. Please provide a valid integer value."

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private initIntAdapter(Ljava/util/Map;Landroid/app/Activity;)V
    .locals 3
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 82
    .local p1, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "inmobi-int-placement-id"

    const-class v2, Ljava/lang/String;

    invoke-static {p1, v1, v2}, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 83
    .local v0, "intPlacementId":Ljava/lang/String;
    new-instance v1, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;

    iget-object v2, p0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->mAdapter:Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;

    invoke-direct {v1, v2, p2, v0}, Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;-><init>(Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->mInterstitialAdapter:Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;

    .line 84
    return-void
.end method

.method private initRvAdapter(Ljava/util/Map;Landroid/app/Activity;)V
    .locals 6
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v4, "inmobi-rv-placement-id"

    const-class v5, Ljava/lang/String;

    invoke-static {p1, v4, v5}, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 90
    .local v1, "rvPlacementIdString":Ljava/lang/String;
    invoke-static {v1}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 91
    sget-object v4, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->TAG:Ljava/lang/String;

    const-string v5, "No rewarded video placement ID detected. Rewarded video adapter will not be started."

    invoke-static {v4, v5}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    :goto_0
    return-void

    .line 100
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 108
    .local v2, "rvPlacementId":J
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-ge v4, v5, :cond_1

    .line 109
    sget-object v4, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->TAG:Ljava/lang/String;

    const-string v5, "InMobi supports rewarded video ads for Android 4.2 (API 17) or higher.\nThe video adapter will not be started."

    invoke-static {v4, v5}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 101
    .end local v2    # "rvPlacementId":J
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v4, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->TAG:Ljava/lang/String;

    const-string v5, "Invalid inmobi-rv-placement-id config format. Long format required. Rewarded video adapter will not be started."

    invoke-static {v4, v5}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v2    # "rvPlacementId":J
    :cond_1
    new-instance v4, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;

    iget-object v5, p0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->mAdapter:Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;

    invoke-direct {v4, v5, p2, v2, v3}, Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;-><init>(Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;Landroid/app/Activity;J)V

    iput-object v4, p0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->mVideoAdapter:Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;

    goto :goto_0
.end method


# virtual methods
.method public getBannerMediationAdapter()Lcom/fyber/ads/banners/mediation/BannerMediationAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fyber/ads/banners/mediation/BannerMediationAdapter",
            "<",
            "Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->mBannerAdapter:Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;

    return-object v0
.end method

.method public bridge synthetic getInterstitialMediationAdapter()Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->getInterstitialMediationAdapter()Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getInterstitialMediationAdapter()Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->mInterstitialAdapter:Lcom/fyber/mediation/inmobi/interstitial/InMobiInterstitialMediationAdapter;

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
    .line 188
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 163
    const-string v0, "Inmobi"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    const-string v0, "6.1.1-r1"

    return-object v0
.end method

.method public bridge synthetic getVideoMediationAdapter()Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0}, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->getVideoMediationAdapter()Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getVideoMediationAdapter()Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->mVideoAdapter:Lcom/fyber/mediation/inmobi/rv/InMobiVideoMediationAdapter;

    return-object v0
.end method

.method public startAdapter(Landroid/app/Activity;Ljava/util/Map;)Z
    .locals 5
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
    const/4 v1, 0x0

    .line 46
    iput-object p0, p0, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->mAdapter:Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;

    .line 47
    sget-object v2, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->TAG:Ljava/lang/String;

    const-string v3, "Starting InMobi mediation adapter..."

    invoke-static {v2, v3}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    sget-object v2, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InMobi SDK version  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/inmobi/sdk/InMobiSdk;->getVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xf

    if-ge v2, v3, :cond_0

    .line 51
    sget-object v2, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->TAG:Ljava/lang/String;

    const-string v3, "InMobi requires Android 4.0.3 (API 15) or higher.\nThe mediation adapter will not be started"

    invoke-static {v2, v3}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    :goto_0
    return v1

    .line 57
    :cond_0
    const-string v2, "inmobi-account-id"

    const-class v3, Ljava/lang/String;

    invoke-static {p2, v2, v3}, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 58
    .local v0, "accountId":Ljava/lang/String;
    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 59
    sget-object v2, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;->TAG:Ljava/lang/String;

    const-string v3, "You need to provide the parameter: \'inmobi-account-id . Adapter won\u2019t start"

    invoke-static {v2, v3}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 64
    :cond_1
    new-instance v1, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter$1;

    invoke-direct {v1, p0, p1, v0, p2}, Lcom/fyber/mediation/inmobi/InMobiMediationAdapter$1;-><init>(Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;Landroid/app/Activity;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 78
    const/4 v1, 0x1

    goto :goto_0
.end method
