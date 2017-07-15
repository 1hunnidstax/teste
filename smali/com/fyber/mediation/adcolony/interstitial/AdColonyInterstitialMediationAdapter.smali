.class public Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;
.super Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;
.source "AdColonyInterstitialMediationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter$Listener;,
        Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter$AntiFreezer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter",
        "<",
        "Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static ANTI_FREEZE_TIMEOUT:J = 0x0L

.field private static final ERROR_NO_VIDEO_AVAILABLE:Ljava/lang/String; = "No Video Available"

.field private static TAG:Ljava/lang/String;


# instance fields
.field private antiFreezeGuardian:Landroid/os/Handler;

.field private interstitialZoneIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/adcolony/sdk/AdColonyInterstitialListener;

.field private mAdColonyInterstitial:Lcom/adcolony/sdk/AdColonyInterstitial;

.field private zoneBlacklist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    const-class v0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    .line 42
    const-wide/16 v0, 0xbb8

    sput-wide v0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->ANTI_FREEZE_TIMEOUT:J

    return-void
.end method

.method public constructor <init>(Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;Ljava/util/List;)V
    .locals 2
    .param p1, "adapter"    # Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 57
    .local p2, "interstitialZoneIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;-><init>(Lcom/fyber/mediation/MediationAdapter;)V

    .line 43
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->antiFreezeGuardian:Landroid/os/Handler;

    .line 58
    iput-object p2, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->interstitialZoneIds:Ljava/util/List;

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->zoneBlacklist:Ljava/util/List;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;)Lcom/adcolony/sdk/AdColonyInterstitial;
    .locals 1
    .param p0, "x0"    # Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->mAdColonyInterstitial:Lcom/adcolony/sdk/AdColonyInterstitial;

    return-object v0
.end method

.method static synthetic access$002(Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;Lcom/adcolony/sdk/AdColonyInterstitial;)Lcom/adcolony/sdk/AdColonyInterstitial;
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;
    .param p1, "x1"    # Lcom/adcolony/sdk/AdColonyInterstitial;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->mAdColonyInterstitial:Lcom/adcolony/sdk/AdColonyInterstitial;

    return-object p1
.end method

.method static synthetic access$100()J
    .locals 2

    .prologue
    .line 26
    sget-wide v0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->ANTI_FREEZE_TIMEOUT:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->interstitialShown()V

    return-void
.end method

.method static synthetic access$1100(Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->interstitialClosed()V

    return-void
.end method

.method static synthetic access$1200(Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->interstitialClicked()V

    return-void
.end method

.method static synthetic access$200(Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->interstitialError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->setAdAvailable()V

    return-void
.end method

.method static synthetic access$700(Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->setAdNotAvailable()V

    return-void
.end method

.method static synthetic access$800(Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->zoneBlacklist:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->antiFreezeGuardian:Landroid/os/Handler;

    return-object v0
.end method

.method private getFirstNotBlacklistedZoneId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 119
    iget-object v1, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->interstitialZoneIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 120
    .local v0, "zoneId":Ljava/lang/String;
    iget-object v2, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->zoneBlacklist:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 124
    .end local v0    # "zoneId":Ljava/lang/String;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getListener()Lcom/adcolony/sdk/AdColonyInterstitialListener;
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->listener:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter$Listener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter$Listener;-><init>(Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter$1;)V

    iput-object v0, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->listener:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->listener:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    return-object v0
.end method

.method private getZoneId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 99
    invoke-virtual {p0}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->getContextData()Ljava/util/Map;

    move-result-object v2

    const-string v3, "tpn_placement_id"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 102
    .local v0, "placementId":Ljava/lang/String;
    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 103
    invoke-direct {p0}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->getFirstNotBlacklistedZoneId()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "zoneId":Ljava/lang/String;
    invoke-static {v1}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    sget-object v2, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    const-string v3, "No placement id found in context data, falling back to configs."

    invoke-static {v2, v3}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    .end local v1    # "zoneId":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 109
    .restart local v1    # "zoneId":Ljava/lang/String;
    :cond_0
    const-string v2, "no_placement_id"

    invoke-virtual {p0, v2}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->setAdError(Ljava/lang/String;)V

    .line 110
    sget-object v2, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    const-string v3, "Ad request failed because there is no placement id to use in the ad request."

    invoke-static {v2, v3}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const/4 v1, 0x0

    goto :goto_0

    .end local v1    # "zoneId":Ljava/lang/String;
    :cond_1
    move-object v1, v0

    .line 115
    goto :goto_0
.end method


# virtual methods
.method protected checkForAds(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    iget-object v1, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->zoneBlacklist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->interstitialZoneIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 85
    iget-object v1, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->zoneBlacklist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 88
    :cond_0
    invoke-direct {p0}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->getZoneId()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "tZoneId":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got zone id for interstitials: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    invoke-direct {p0}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->getListener()Lcom/adcolony/sdk/AdColonyInterstitialListener;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/adcolony/sdk/AdColony;->requestInterstitial(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyInterstitialListener;)Z

    .line 95
    :cond_1
    return-void
.end method

.method protected show(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->mAdColonyInterstitial:Lcom/adcolony/sdk/AdColonyInterstitial;

    if-nez v0, :cond_0

    .line 65
    sget-object v0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Ad is null, you have to request it first"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v0, "No Video Available"

    invoke-virtual {p0, v0}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->interstitialError(Ljava/lang/String;)V

    .line 79
    :goto_0
    return-void

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->mAdColonyInterstitial:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    sget-object v0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Ad has expired. You have to request for an ad again"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v0, "No Video Available"

    invoke-virtual {p0, v0}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->interstitialError(Ljava/lang/String;)V

    goto :goto_0

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->mAdColonyInterstitial:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->show()Z

    .line 78
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->antiFreezeGuardian:Landroid/os/Handler;

    new-instance v1, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter$AntiFreezer;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter$AntiFreezer;-><init>(Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter$1;)V

    sget-wide v2, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->ANTI_FREEZE_TIMEOUT:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
