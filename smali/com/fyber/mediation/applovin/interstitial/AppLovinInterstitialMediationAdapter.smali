.class public Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;
.super Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;
.source "AppLovinInterstitialMediationAdapter.java"

# interfaces
.implements Lcom/applovin/sdk/AppLovinAdLoadListener;
.implements Lcom/applovin/sdk/AppLovinAdDisplayListener;
.implements Lcom/applovin/sdk/AppLovinAdClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter",
        "<",
        "Lcom/fyber/mediation/applovin/AppLovinMediationAdapter;",
        ">;",
        "Lcom/applovin/sdk/AppLovinAdLoadListener;",
        "Lcom/applovin/sdk/AppLovinAdDisplayListener;",
        "Lcom/applovin/sdk/AppLovinAdClickListener;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final activityReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private appLovinSdk:Lcom/applovin/sdk/AppLovinSdk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/fyber/mediation/applovin/AppLovinMediationAdapter;Landroid/app/Activity;Lcom/applovin/sdk/AppLovinSdk;)V
    .locals 1
    .param p1, "adapter"    # Lcom/fyber/mediation/applovin/AppLovinMediationAdapter;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "appLovinSdk"    # Lcom/applovin/sdk/AppLovinSdk;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;-><init>(Lcom/fyber/mediation/MediationAdapter;)V

    .line 37
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;->activityReference:Ljava/lang/ref/WeakReference;

    .line 38
    iput-object p3, p0, Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;->appLovinSdk:Lcom/applovin/sdk/AppLovinSdk;

    .line 39
    return-void
.end method


# virtual methods
.method public adClicked(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 101
    sget-object v0, Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    const-string v1, "AppLovin adClicked"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;->interstitialClicked()V

    .line 103
    return-void
.end method

.method public adDisplayed(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 88
    sget-object v0, Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    const-string v1, "AppLovin adDisplayed"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;->interstitialShown()V

    .line 90
    return-void
.end method

.method public adHidden(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 94
    sget-object v0, Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    const-string v1, "AppLovin adHidden"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;->interstitialClosed()V

    .line 96
    return-void
.end method

.method public adReceived(Lcom/applovin/sdk/AppLovinAd;)V
    .locals 2
    .param p1, "ad"    # Lcom/applovin/sdk/AppLovinAd;

    .prologue
    .line 71
    sget-object v0, Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    const-string v1, "AppLovin adReceived"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;->setAdAvailable()V

    .line 73
    return-void
.end method

.method protected checkForAds(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    iget-object v1, p0, Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;->activityReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 54
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_1

    .line 55
    invoke-static {v0}, Lcom/applovin/adview/AppLovinInterstitialAd;->isAdReadyToDisplay(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;->setAdAvailable()V

    .line 66
    :goto_0
    return-void

    .line 58
    :cond_0
    iget-object v1, p0, Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;->appLovinSdk:Lcom/applovin/sdk/AppLovinSdk;

    invoke-virtual {v1}, Lcom/applovin/sdk/AppLovinSdk;->getAdService()Lcom/applovin/sdk/AppLovinAdService;

    move-result-object v1

    sget-object v2, Lcom/applovin/sdk/AppLovinAdSize;->INTERSTITIAL:Lcom/applovin/sdk/AppLovinAdSize;

    invoke-interface {v1, v2, p0}, Lcom/applovin/sdk/AppLovinAdService;->loadNextAd(Lcom/applovin/sdk/AppLovinAdSize;Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    goto :goto_0

    .line 64
    :cond_1
    const-string v1, "The activity reference is null"

    invoke-virtual {p0, v1}, Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;->interstitialError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public failedToReceiveAd(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    .line 77
    const/16 v0, 0xcc

    if-ne p1, v0, :cond_0

    .line 78
    sget-object v0, Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    const-string v1, "AppLovin failedToReceiveAd: No Fill"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0}, Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;->setAdNotAvailable()V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppLovin failedToReceiveAd with errorCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;->setAdError(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public show(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 43
    iget-object v1, p0, Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;->appLovinSdk:Lcom/applovin/sdk/AppLovinSdk;

    invoke-static {v1, p1}, Lcom/applovin/adview/AppLovinInterstitialAd;->create(Lcom/applovin/sdk/AppLovinSdk;Landroid/app/Activity;)Lcom/applovin/adview/AppLovinInterstitialAdDialog;

    move-result-object v0

    .line 44
    .local v0, "interstitialAdDialog":Lcom/applovin/adview/AppLovinInterstitialAdDialog;
    invoke-interface {v0, p0}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdLoadListener(Lcom/applovin/sdk/AppLovinAdLoadListener;)V

    .line 45
    invoke-interface {v0, p0}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdDisplayListener(Lcom/applovin/sdk/AppLovinAdDisplayListener;)V

    .line 46
    invoke-interface {v0, p0}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->setAdClickListener(Lcom/applovin/sdk/AppLovinAdClickListener;)V

    .line 47
    invoke-interface {v0}, Lcom/applovin/adview/AppLovinInterstitialAdDialog;->show()V

    .line 48
    return-void
.end method
