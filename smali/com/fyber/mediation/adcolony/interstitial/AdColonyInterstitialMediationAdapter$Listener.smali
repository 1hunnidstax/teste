.class Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter$Listener;
.super Lcom/adcolony/sdk/AdColonyInterstitialListener;
.source "AdColonyInterstitialMediationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;


# direct methods
.method private constructor <init>(Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter$Listener;->this$0:Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;

    invoke-direct {p0}, Lcom/adcolony/sdk/AdColonyInterstitialListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;
    .param p2, "x1"    # Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter$1;

    .prologue
    .line 135
    invoke-direct {p0, p1}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter$Listener;-><init>(Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;)V

    return-void
.end method


# virtual methods
.method public onClicked(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 1
    .param p1, "ad"    # Lcom/adcolony/sdk/AdColonyInterstitial;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter$Listener;->this$0:Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;

    # invokes: Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->interstitialClicked()V
    invoke-static {v0}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->access$1200(Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;)V

    .line 184
    return-void
.end method

.method public onClosed(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 2
    .param p1, "ad"    # Lcom/adcolony/sdk/AdColonyInterstitial;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter$Listener;->this$0:Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;

    # invokes: Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->interstitialClosed()V
    invoke-static {v0}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->access$1100(Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;)V

    .line 161
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter$Listener;->this$0:Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;

    const/4 v1, 0x0

    # setter for: Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->mAdColonyInterstitial:Lcom/adcolony/sdk/AdColonyInterstitial;
    invoke-static {v0, v1}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->access$002(Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;Lcom/adcolony/sdk/AdColonyInterstitial;)Lcom/adcolony/sdk/AdColonyInterstitial;

    .line 162
    return-void
.end method

.method public onExpiring(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 0
    .param p1, "ad"    # Lcom/adcolony/sdk/AdColonyInterstitial;

    .prologue
    .line 174
    return-void
.end method

.method public onIAPEvent(Lcom/adcolony/sdk/AdColonyInterstitial;Ljava/lang/String;I)V
    .locals 0
    .param p1, "ad"    # Lcom/adcolony/sdk/AdColonyInterstitial;
    .param p2, "product_id"    # Ljava/lang/String;
    .param p3, "engagement_type"    # I

    .prologue
    .line 168
    return-void
.end method

.method public onLeftApplication(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 0
    .param p1, "ad"    # Lcom/adcolony/sdk/AdColonyInterstitial;

    .prologue
    .line 179
    return-void
.end method

.method public onOpened(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 2
    .param p1, "ad"    # Lcom/adcolony/sdk/AdColonyInterstitial;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter$Listener;->this$0:Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;

    # getter for: Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->antiFreezeGuardian:Landroid/os/Handler;
    invoke-static {v0}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->access$900(Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 154
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter$Listener;->this$0:Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;

    # invokes: Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->interstitialShown()V
    invoke-static {v0}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->access$1000(Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;)V

    .line 155
    return-void
.end method

.method public onRequestFilled(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 1
    .param p1, "adColonyInterstitial"    # Lcom/adcolony/sdk/AdColonyInterstitial;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter$Listener;->this$0:Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;

    # invokes: Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->setAdAvailable()V
    invoke-static {v0}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->access$600(Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;)V

    .line 140
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter$Listener;->this$0:Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;

    # setter for: Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->mAdColonyInterstitial:Lcom/adcolony/sdk/AdColonyInterstitial;
    invoke-static {v0, p1}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->access$002(Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;Lcom/adcolony/sdk/AdColonyInterstitial;)Lcom/adcolony/sdk/AdColonyInterstitial;

    .line 141
    return-void
.end method

.method public onRequestNotFilled(Lcom/adcolony/sdk/AdColonyZone;)V
    .locals 2
    .param p1, "zone"    # Lcom/adcolony/sdk/AdColonyZone;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter$Listener;->this$0:Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;

    # invokes: Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->setAdNotAvailable()V
    invoke-static {v0}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->access$700(Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;)V

    .line 146
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter$Listener;->this$0:Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;

    const/4 v1, 0x0

    # setter for: Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->mAdColonyInterstitial:Lcom/adcolony/sdk/AdColonyInterstitial;
    invoke-static {v0, v1}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->access$002(Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;Lcom/adcolony/sdk/AdColonyInterstitial;)Lcom/adcolony/sdk/AdColonyInterstitial;

    .line 147
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter$Listener;->this$0:Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;

    # getter for: Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->zoneBlacklist:Ljava/util/List;
    invoke-static {v0}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;->access$800(Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyZone;->getZoneID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    return-void
.end method
