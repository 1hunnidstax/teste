.class public Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;
.super Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;
.source "AdColonyVideoMediationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter$Listener;,
        Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter$RewardListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter",
        "<",
        "Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private listener:Lcom/adcolony/sdk/AdColonyInterstitialListener;

.field private mAdColonyVideoInterstitial:Lcom/adcolony/sdk/AdColonyInterstitial;

.field private mShouldShowConfirmationDialog:Ljava/lang/Boolean;

.field private mVideoZoneIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mZoneBlacklist:Ljava/util/List;
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
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;Ljava/util/List;Z)V
    .locals 1
    .param p1, "adapter"    # Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;
    .param p3, "shouldShowConfirmationDialog"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p2, "pZoneIdsVideo":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;-><init>(Lcom/fyber/mediation/MediationAdapter;)V

    .line 41
    iput-object p2, p0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->mVideoZoneIds:Ljava/util/List;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->mZoneBlacklist:Ljava/util/List;

    .line 43
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->mShouldShowConfirmationDialog:Ljava/lang/Boolean;

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->setVideoPlayed()V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;
    .param p1, "x1"    # Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->sendValidationEvent(Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;)V

    return-void
.end method

.method static synthetic access$302(Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;Lcom/adcolony/sdk/AdColonyInterstitial;)Lcom/adcolony/sdk/AdColonyInterstitial;
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;
    .param p1, "x1"    # Lcom/adcolony/sdk/AdColonyInterstitial;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->mAdColonyVideoInterstitial:Lcom/adcolony/sdk/AdColonyInterstitial;

    return-object p1
.end method

.method static synthetic access$400(Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;
    .param p1, "x1"    # Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->sendValidationEvent(Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;)V

    return-void
.end method

.method static synthetic access$500(Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->mZoneBlacklist:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->notifyVideoStarted()V

    return-void
.end method

.method static synthetic access$700(Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->notifyCloseEngagement()V

    return-void
.end method

.method private getListener()Lcom/adcolony/sdk/AdColonyInterstitialListener;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->listener:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter$Listener;

    invoke-direct {v0, p0}, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter$Listener;-><init>(Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;)V

    iput-object v0, p0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->listener:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->listener:Lcom/adcolony/sdk/AdColonyInterstitialListener;

    return-object v0
.end method

.method private initRewardedVideo()V
    .locals 3

    .prologue
    .line 89
    iget-object v1, p0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->mZoneBlacklist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->mVideoZoneIds:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 90
    iget-object v1, p0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->mZoneBlacklist:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 94
    :cond_0
    iget-object v1, p0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->mVideoZoneIds:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 95
    .local v0, "mVideoZoneId":Ljava/lang/String;
    iget-object v2, p0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->mZoneBlacklist:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 96
    invoke-direct {p0, v0}, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->requestInterstitial(Ljava/lang/String;)V

    .line 100
    .end local v0    # "mVideoZoneId":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private requestInterstitial(Ljava/lang/String;)V
    .locals 4
    .param p1, "zoneId"    # Ljava/lang/String;

    .prologue
    .line 104
    sget-object v1, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got zone id for rewarded video: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    new-instance v0, Lcom/adcolony/sdk/AdColonyAdOptions;

    invoke-direct {v0}, Lcom/adcolony/sdk/AdColonyAdOptions;-><init>()V

    .line 107
    .local v0, "options":Lcom/adcolony/sdk/AdColonyAdOptions;
    iget-object v1, p0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->mShouldShowConfirmationDialog:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/adcolony/sdk/AdColonyAdOptions;->enableConfirmationDialog(Z)Lcom/adcolony/sdk/AdColonyAdOptions;

    move-result-object v1

    iget-object v2, p0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->mShouldShowConfirmationDialog:Ljava/lang/Boolean;

    .line 108
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/adcolony/sdk/AdColonyAdOptions;->enableResultsDialog(Z)Lcom/adcolony/sdk/AdColonyAdOptions;

    .line 110
    invoke-direct {p0}, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->getListener()Lcom/adcolony/sdk/AdColonyInterstitialListener;

    move-result-object v1

    invoke-static {p1, v1, v0}, Lcom/adcolony/sdk/AdColony;->requestInterstitial(Ljava/lang/String;Lcom/adcolony/sdk/AdColonyInterstitialListener;Lcom/adcolony/sdk/AdColonyAdOptions;)Z

    .line 111
    return-void
.end method


# virtual methods
.method public startPrecaching()V
    .locals 0

    .prologue
    .line 70
    return-void
.end method

.method public startVideo(Landroid/app/Activity;)V
    .locals 2
    .param p1, "parentActivity"    # Landroid/app/Activity;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->mAdColonyVideoInterstitial:Lcom/adcolony/sdk/AdColonyInterstitial;

    if-nez v0, :cond_0

    .line 55
    sget-object v0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Ad is null, you have to request it first"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->notifyVideoError()V

    .line 67
    :goto_0
    return-void

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->mAdColonyVideoInterstitial:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 61
    sget-object v0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Ad has expired. You have to request for an ad again"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p0}, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->notifyVideoError()V

    goto :goto_0

    .line 66
    :cond_1
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->mAdColonyVideoInterstitial:Lcom/adcolony/sdk/AdColonyInterstitial;

    invoke-virtual {v0}, Lcom/adcolony/sdk/AdColonyInterstitial;->show()Z

    goto :goto_0
.end method

.method public videosAvailable(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    new-instance v0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter$RewardListener;

    invoke-direct {v0, p0}, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter$RewardListener;-><init>(Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;)V

    invoke-static {v0}, Lcom/adcolony/sdk/AdColony;->setRewardListener(Lcom/adcolony/sdk/AdColonyRewardListener;)Z

    .line 49
    invoke-direct {p0}, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->initRewardedVideo()V

    .line 50
    return-void
.end method
