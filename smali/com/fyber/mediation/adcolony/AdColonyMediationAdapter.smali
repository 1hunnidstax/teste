.class public Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;
.super Lcom/fyber/mediation/MediationAdapter;
.source "AdColonyMediationAdapter.java"


# annotations
.annotation runtime Lcom/fyber/mediation/annotations/AdapterDefinition;
    apiVersion = 0x5
    name = "AdColony"
    sdkFeatures = {
        "banners",
        "blended"
    }
    version = "3.1.2-r1"
.end annotation


# static fields
.field public static final APP_ID:Ljava/lang/String; = "app.id"

.field public static final CLIENT_OPTIONS:Ljava/lang/String; = "client.options"

.field public static final CONFIRMATION_DIALOG:Ljava/lang/String; = "with.confirmation.dialog"

.field private static final CUSTOM_ID:Ljava/lang/String; = "custom.id"

.field private static final DEVICE_ID:Ljava/lang/String; = "device.id"

.field private static final TAG:Ljava/lang/String;

.field public static final ZONE_IDS_INTERSTITIAL:Ljava/lang/String; = "zone.ids.interstitial"

.field public static final ZONE_IDS_REWARDED_VIDEO:Ljava/lang/String; = "zone.ids.rewarded.video"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mInterstitialMediationAdapter:Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;

.field private mVideoMediationAdapter:Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;

.field private mZoneIdInterstitialList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mZoneIdRewardedVideoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private shouldShowConfirmationDialog:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/fyber/mediation/MediationAdapter;-><init>()V

    .line 48
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;
    .locals 1
    .param p0, "x0"    # Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->getAdColonyOptionsFromString(Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->mZoneIdInterstitialList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$202(Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;)Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;
    .param p1, "x1"    # Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->mInterstitialMediationAdapter:Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;

    return-object p1
.end method

.method static synthetic access$300(Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->mZoneIdRewardedVideoList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$402(Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;)Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;
    .param p1, "x1"    # Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->mVideoMediationAdapter:Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;

    return-object p1
.end method

.method static synthetic access$500(Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->shouldShowConfirmationDialog()Z

    move-result v0

    return v0
.end method

.method private getAdColonyOptionsFromString(Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;
    .locals 5
    .param p1, "clientOptions"    # Ljava/lang/String;

    .prologue
    .line 110
    new-instance v1, Lcom/adcolony/sdk/AdColonyAppOptions;

    invoke-direct {v1}, Lcom/adcolony/sdk/AdColonyAppOptions;-><init>()V

    .line 111
    .local v1, "options":Lcom/adcolony/sdk/AdColonyAppOptions;
    if-eqz p1, :cond_0

    .line 114
    const/16 v3, 0x3a

    .line 115
    :try_start_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x2c

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 116
    .local v0, "appVersion":Ljava/lang/String;
    invoke-virtual {v1, v0}, Lcom/adcolony/sdk/AdColonyAppOptions;->setAppVersion(Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    .line 121
    .end local v0    # "appVersion":Ljava/lang/String;
    :goto_0
    const/16 v3, 0x3a

    :try_start_1
    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 122
    .local v2, "store":Ljava/lang/String;
    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/AdColonyAppOptions;->setOriginStore(Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 127
    .end local v2    # "store":Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-virtual {p0}, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/adcolony/sdk/AdColonyAppOptions;->setUserID(Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;

    .line 128
    return-object v1

    .line 123
    :catch_0
    move-exception v3

    goto :goto_1

    .line 117
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method private getZoneIds(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p2, "selectedZoneId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 169
    .local p1, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 171
    .local v2, "zoneIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-class v4, [Ljava/lang/String;

    invoke-static {p1, p2, v4}, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    .line 172
    .local v3, "zoneIdsFromAnnotation":[Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 174
    array-length v5, v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v0, v3, v4

    .line 175
    .local v0, "id":Ljava/lang/String;
    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 176
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 182
    .end local v0    # "id":Ljava/lang/String;
    :cond_1
    const-class v4, Ljava/lang/String;

    invoke-static {p1, p2, v4}, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 183
    .local v1, "zoneIdString":Ljava/lang/String;
    invoke-static {v1}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 184
    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 187
    .end local v1    # "zoneIdString":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0}, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "selected zone id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    return-object v2
.end method

.method private shouldShowConfirmationDialog()Z
    .locals 1

    .prologue
    .line 192
    iget-boolean v0, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->shouldShowConfirmationDialog:Z

    return v0
.end method


# virtual methods
.method public getBannerMediationAdapter()Lcom/fyber/ads/banners/mediation/BannerMediationAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fyber/ads/banners/mediation/BannerMediationAdapter",
            "<",
            "Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getInterstitialMediationAdapter()Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->getInterstitialMediationAdapter()Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getInterstitialMediationAdapter()Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->mInterstitialMediationAdapter:Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;

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
    .line 158
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 133
    const-string v0, "AdColony"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    const-string v0, "3.1.2-r1"

    return-object v0
.end method

.method public bridge synthetic getVideoMediationAdapter()Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->getVideoMediationAdapter()Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getVideoMediationAdapter()Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->mVideoMediationAdapter:Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;

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
    const/4 v1, 0x0

    .line 56
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-ge v0, v2, :cond_0

    .line 57
    sget-object v0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->TAG:Ljava/lang/String;

    const-string v2, "AdColony requires Android Version 4.0.0\nThe mediation adapter will not be started"

    invoke-static {v0, v2}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 106
    :goto_0
    return v0

    .line 61
    :cond_0
    sget-object v0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->TAG:Ljava/lang/String;

    const-string v2, "Starting AdColony adapter"

    invoke-static {v0, v2}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v0, "app.id"

    const-class v2, Ljava/lang/String;

    invoke-static {p2, v0, v2}, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 65
    .local v4, "appId":Ljava/lang/String;
    const-string v0, "zone.ids.interstitial"

    invoke-direct {p0, p2, v0}, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->getZoneIds(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->mZoneIdInterstitialList:Ljava/util/List;

    .line 66
    const-string v0, "zone.ids.rewarded.video"

    invoke-direct {p0, p2, v0}, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->getZoneIds(Ljava/util/Map;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->mZoneIdRewardedVideoList:Ljava/util/List;

    .line 68
    const-string v0, "client.options"

    const-class v2, Ljava/lang/String;

    invoke-static {p2, v0, v2}, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 69
    .local v3, "clientOptions":Ljava/lang/String;
    const-string v0, "with.confirmation.dialog"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-class v6, Ljava/lang/Boolean;

    invoke-static {p2, v0, v2, v6}, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->shouldShowConfirmationDialog:Z

    .line 72
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 73
    .local v5, "tUsedZones":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->mZoneIdRewardedVideoList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 74
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->mZoneIdInterstitialList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 76
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 77
    sget-object v0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->TAG:Ljava/lang/String;

    const-string v2, "At least one Zone ID must be provided! Adapter won\'t start."

    invoke-static {v0, v2}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 78
    goto :goto_0

    .line 82
    :cond_1
    invoke-static {v4}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    sget-object v0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->TAG:Ljava/lang/String;

    const-string v2, "App Id is not provided! Adapter won\'t start"

    invoke-static {v0, v2}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 84
    goto :goto_0

    .line 87
    :cond_2
    iget-object v6, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter$1;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter$1;-><init>(Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 106
    const/4 v0, 0x1

    goto :goto_0
.end method
