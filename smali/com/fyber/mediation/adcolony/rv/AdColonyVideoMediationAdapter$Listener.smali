.class Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter$Listener;
.super Lcom/adcolony/sdk/AdColonyInterstitialListener;
.source "AdColonyVideoMediationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Listener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;


# direct methods
.method constructor <init>(Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter$Listener;->this$0:Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;

    invoke-direct {p0}, Lcom/adcolony/sdk/AdColonyInterstitialListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onClicked(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 0
    .param p1, "ad"    # Lcom/adcolony/sdk/AdColonyInterstitial;

    .prologue
    .line 175
    return-void
.end method

.method public onClosed(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 2
    .param p1, "ad"    # Lcom/adcolony/sdk/AdColonyInterstitial;

    .prologue
    .line 151
    # getter for: Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VIDEO CLOSED"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter$Listener;->this$0:Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;

    # invokes: Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->notifyCloseEngagement()V
    invoke-static {v0}, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->access$700(Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;)V

    .line 153
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter$Listener;->this$0:Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;

    const/4 v1, 0x0

    # setter for: Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->mAdColonyVideoInterstitial:Lcom/adcolony/sdk/AdColonyInterstitial;
    invoke-static {v0, v1}, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->access$302(Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;Lcom/adcolony/sdk/AdColonyInterstitial;)Lcom/adcolony/sdk/AdColonyInterstitial;

    .line 154
    return-void
.end method

.method public onExpiring(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 0
    .param p1, "ad"    # Lcom/adcolony/sdk/AdColonyInterstitial;

    .prologue
    .line 165
    return-void
.end method

.method public onIAPEvent(Lcom/adcolony/sdk/AdColonyInterstitial;Ljava/lang/String;I)V
    .locals 0
    .param p1, "ad"    # Lcom/adcolony/sdk/AdColonyInterstitial;
    .param p2, "product_id"    # Ljava/lang/String;
    .param p3, "engagement_type"    # I

    .prologue
    .line 159
    return-void
.end method

.method public onLeftApplication(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 0
    .param p1, "ad"    # Lcom/adcolony/sdk/AdColonyInterstitial;

    .prologue
    .line 170
    return-void
.end method

.method public onOpened(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 2
    .param p1, "ad"    # Lcom/adcolony/sdk/AdColonyInterstitial;

    .prologue
    .line 144
    # getter for: Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VIDEO STARTED"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter$Listener;->this$0:Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;

    # invokes: Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->notifyVideoStarted()V
    invoke-static {v0}, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->access$600(Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;)V

    .line 146
    return-void
.end method

.method public onRequestFilled(Lcom/adcolony/sdk/AdColonyInterstitial;)V
    .locals 2
    .param p1, "adColonyInterstitial"    # Lcom/adcolony/sdk/AdColonyInterstitial;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter$Listener;->this$0:Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;

    sget-object v1, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;->Success:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    # invokes: Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->sendValidationEvent(Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;)V
    invoke-static {v0, v1}, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->access$200(Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;)V

    .line 132
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter$Listener;->this$0:Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;

    # setter for: Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->mAdColonyVideoInterstitial:Lcom/adcolony/sdk/AdColonyInterstitial;
    invoke-static {v0, p1}, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->access$302(Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;Lcom/adcolony/sdk/AdColonyInterstitial;)Lcom/adcolony/sdk/AdColonyInterstitial;

    .line 133
    return-void
.end method

.method public onRequestNotFilled(Lcom/adcolony/sdk/AdColonyZone;)V
    .locals 2
    .param p1, "zone"    # Lcom/adcolony/sdk/AdColonyZone;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter$Listener;->this$0:Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;

    sget-object v1, Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;->NoVideoAvailable:Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;

    # invokes: Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->sendValidationEvent(Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;)V
    invoke-static {v0, v1}, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->access$400(Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;Lcom/fyber/ads/videos/mediation/TPNVideoValidationResult;)V

    .line 138
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter$Listener;->this$0:Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;

    const/4 v1, 0x0

    # setter for: Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->mAdColonyVideoInterstitial:Lcom/adcolony/sdk/AdColonyInterstitial;
    invoke-static {v0, v1}, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->access$302(Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;Lcom/adcolony/sdk/AdColonyInterstitial;)Lcom/adcolony/sdk/AdColonyInterstitial;

    .line 139
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter$Listener;->this$0:Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;

    # getter for: Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->mZoneBlacklist:Ljava/util/List;
    invoke-static {v0}, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->access$500(Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyZone;->getZoneID()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    return-void
.end method
