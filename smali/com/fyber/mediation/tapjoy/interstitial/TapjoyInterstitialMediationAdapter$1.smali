.class Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter$1;
.super Ljava/lang/Object;
.source "TapjoyInterstitialMediationAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->checkForAds(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter$1;->this$0:Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;

    iput-object p2, p0, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 76
    iget-object v1, p0, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter$1;->this$0:Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;

    # invokes: Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->getContextData()Ljava/util/Map;
    invoke-static {v1}, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->access$000(Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "tpn_placement_id"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 77
    .local v0, "placementName":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 78
    :cond_0
    # getter for: Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No placement id found in context data, falling back to configs."

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v1, p0, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter$1;->this$0:Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;

    # getter for: Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->adapter:Lcom/fyber/mediation/MediationAdapter;
    invoke-static {v1}, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->access$200(Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;)Lcom/fyber/mediation/MediationAdapter;

    move-result-object v1

    check-cast v1, Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter;

    invoke-virtual {v1}, Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter;->getInterstitialPlacementName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter$1;->this$0:Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;

    # getter for: Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->adapter:Lcom/fyber/mediation/MediationAdapter;
    invoke-static {v1}, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->access$300(Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;)Lcom/fyber/mediation/MediationAdapter;

    move-result-object v1

    check-cast v1, Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter;

    invoke-virtual {v1}, Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter;->getInterstitialPlacementName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 80
    iget-object v1, p0, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter$1;->this$0:Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;

    # getter for: Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->adapter:Lcom/fyber/mediation/MediationAdapter;
    invoke-static {v1}, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->access$400(Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;)Lcom/fyber/mediation/MediationAdapter;

    move-result-object v1

    check-cast v1, Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter;

    invoke-virtual {v1}, Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter;->getInterstitialPlacementName()Ljava/lang/String;

    move-result-object v0

    .line 87
    :cond_1
    iget-object v1, p0, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter$1;->this$0:Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;

    new-instance v2, Lcom/tapjoy/TJPlacement;

    iget-object v3, p0, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter$1;->this$0:Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;

    invoke-direct {v2, v3, v0, v4}, Lcom/tapjoy/TJPlacement;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)V

    # setter for: Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->tjPlacement:Lcom/tapjoy/TJPlacement;
    invoke-static {v1, v2}, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->access$602(Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;Lcom/tapjoy/TJPlacement;)Lcom/tapjoy/TJPlacement;

    .line 88
    iget-object v1, p0, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter$1;->this$0:Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;

    # getter for: Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->tjPlacement:Lcom/tapjoy/TJPlacement;
    invoke-static {v1}, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->access$600(Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;)Lcom/tapjoy/TJPlacement;

    move-result-object v1

    const-string v2, "fyber"

    invoke-virtual {v1, v2}, Lcom/tapjoy/TJPlacement;->setMediationName(Ljava/lang/String;)V

    .line 89
    iget-object v1, p0, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter$1;->this$0:Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;

    # getter for: Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->tjPlacement:Lcom/tapjoy/TJPlacement;
    invoke-static {v1}, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->access$600(Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;)Lcom/tapjoy/TJPlacement;

    move-result-object v1

    const-string v2, "4.0.0"

    invoke-virtual {v1, v2}, Lcom/tapjoy/TJPlacement;->setAdapterVersion(Ljava/lang/String;)V

    .line 90
    iget-object v1, p0, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter$1;->this$0:Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;

    # getter for: Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->tjPlacement:Lcom/tapjoy/TJPlacement;
    invoke-static {v1}, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->access$600(Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;)Lcom/tapjoy/TJPlacement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tapjoy/TJPlacement;->requestContent()V

    .line 91
    iget-object v1, p0, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter$1;->this$0:Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;

    const/4 v2, 0x1

    # setter for: Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->isRequesting:Z
    invoke-static {v1, v2}, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->access$702(Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;Z)Z

    .line 92
    :goto_0
    return-void

    .line 82
    :cond_2
    # getter for: Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v2, "no_placement_id"

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter$1;->this$0:Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;

    const-string v2, "no_placement_id"

    # invokes: Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->setAdError(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;->access$500(Lcom/fyber/mediation/tapjoy/interstitial/TapjoyInterstitialMediationAdapter;Ljava/lang/String;)V

    goto :goto_0
.end method
