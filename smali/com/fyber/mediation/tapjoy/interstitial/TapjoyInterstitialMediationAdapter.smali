.class public Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;
.super Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;
.source "TapjoyInterstitialMediationAdapter.java"

# interfaces
.implements Lcom/tapjoy/TJPlacementListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter",
        "<",
        "Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter;",
        ">;",
        "Lcom/tapjoy/TJPlacementListener;"
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

.field private isRequesting:Z

.field private mActivity:Landroid/app/Activity;

.field private final mHandler:Landroid/os/Handler;

.field private tjPlacement:Lcom/tapjoy/TJPlacement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter;Landroid/app/Activity;Ljava/util/Map;)V
    .locals 2
    .param p1, "mediationAdapter"    # Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter;
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter;",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 43
    .local p3, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0, p1}, Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;-><init>(Lcom/fyber/mediation/MediationAdapter;)V

    .line 36
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->mHandler:Landroid/os/Handler;

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->mActivity:Landroid/app/Activity;

    .line 40
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->isRequesting:Z

    .line 44
    iput-object p2, p0, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->mActivity:Landroid/app/Activity;

    .line 45
    iput-object p3, p0, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->configs:Ljava/util/Map;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->getContextData()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;)Lcom/fyber/mediation/MediationAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->adapter:Lcom/fyber/mediation/MediationAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;)Lcom/fyber/mediation/MediationAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->adapter:Lcom/fyber/mediation/MediationAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;)Lcom/fyber/mediation/MediationAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->adapter:Lcom/fyber/mediation/MediationAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->setAdError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;)Lcom/tapjoy/TJPlacement;
    .locals 1
    .param p0, "x0"    # Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->tjPlacement:Lcom/tapjoy/TJPlacement;

    return-object v0
.end method

.method static synthetic access$602(Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;Lcom/tapjoy/TJPlacement;)Lcom/tapjoy/TJPlacement;
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;
    .param p1, "x1"    # Lcom/tapjoy/TJPlacement;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->tjPlacement:Lcom/tapjoy/TJPlacement;

    return-object p1
.end method

.method static synthetic access$702(Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 32
    iput-boolean p1, p0, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->isRequesting:Z

    return p1
.end method


# virtual methods
.method protected checkForAds(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    sget-object v0, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    const-string v1, "checkForAds()"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->tjPlacement:Lcom/tapjoy/TJPlacement;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->tjPlacement:Lcom/tapjoy/TJPlacement;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->isContentReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 70
    invoke-virtual {p0}, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->setAdAvailable()V

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-boolean v0, p0, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->isRequesting:Z

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter$1;-><init>(Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onContentDismiss(Lcom/tapjoy/TJPlacement;)V
    .locals 0
    .param p1, "tjPlacement"    # Lcom/tapjoy/TJPlacement;

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->interstitialClosed()V

    .line 129
    return-void
.end method

.method public onContentReady(Lcom/tapjoy/TJPlacement;)V
    .locals 1
    .param p1, "tjPlacement"    # Lcom/tapjoy/TJPlacement;

    .prologue
    .line 117
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->isRequesting:Z

    .line 118
    invoke-virtual {p0}, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->setAdAvailable()V

    .line 119
    return-void
.end method

.method public onContentShow(Lcom/tapjoy/TJPlacement;)V
    .locals 0
    .param p1, "tjPlacement"    # Lcom/tapjoy/TJPlacement;

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->interstitialShown()V

    .line 124
    return-void
.end method

.method public onPurchaseRequest(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJActionRequest;Ljava/lang/String;)V
    .locals 0
    .param p1, "tjPlacement"    # Lcom/tapjoy/TJPlacement;
    .param p2, "tjActionRequest"    # Lcom/tapjoy/TJActionRequest;
    .param p3, "s"    # Ljava/lang/String;

    .prologue
    .line 134
    return-void
.end method

.method public onRequestFailure(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJError;)V
    .locals 1
    .param p1, "tjPlacement"    # Lcom/tapjoy/TJPlacement;
    .param p2, "tjError"    # Lcom/tapjoy/TJError;

    .prologue
    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->isRequesting:Z

    .line 112
    const-string v0, "Tapjoy interstitial request failed"

    invoke-virtual {p0, v0}, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->setAdError(Ljava/lang/String;)V

    .line 113
    return-void
.end method

.method public onRequestSuccess(Lcom/tapjoy/TJPlacement;)V
    .locals 2
    .param p1, "tjPlacement"    # Lcom/tapjoy/TJPlacement;

    .prologue
    .line 102
    invoke-virtual {p1}, Lcom/tapjoy/TJPlacement;->isContentAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->isRequesting:Z

    .line 104
    sget-object v0, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    const-string v1, "No Tapjoy interstitials available"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0}, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->setAdNotAvailable()V

    .line 107
    :cond_0
    return-void
.end method

.method public onRewardRequest(Lcom/tapjoy/TJPlacement;Lcom/tapjoy/TJActionRequest;Ljava/lang/String;I)V
    .locals 0
    .param p1, "tjPlacement"    # Lcom/tapjoy/TJPlacement;
    .param p2, "tjActionRequest"    # Lcom/tapjoy/TJActionRequest;
    .param p3, "s"    # Ljava/lang/String;
    .param p4, "i"    # I

    .prologue
    .line 139
    return-void
.end method

.method protected show(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 55
    sget-object v0, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->TAG:Ljava/lang/String;

    const-string v1, "show()"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p0, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->tjPlacement:Lcom/tapjoy/TJPlacement;

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->showContent()V

    .line 58
    return-void
.end method
