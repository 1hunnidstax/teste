.class Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter$1;
.super Ljava/lang/Object;
.source "AdColonyMediationAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->startAdapter(Landroid/app/Activity;Ljava/util/Map;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$clientOptions:Ljava/lang/String;

.field final synthetic val$tUsedZones:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter$1;->this$0:Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;

    iput-object p2, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter$1;->val$clientOptions:Ljava/lang/String;

    iput-object p4, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter$1;->val$appId:Ljava/lang/String;

    iput-object p5, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter$1;->val$tUsedZones:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 90
    iget-object v1, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter$1;->val$activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter$1;->this$0:Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;

    iget-object v2, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter$1;->val$clientOptions:Ljava/lang/String;

    # invokes: Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->getAdColonyOptionsFromString(Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;
    invoke-static {v0, v2}, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->access$000(Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;Ljava/lang/String;)Lcom/adcolony/sdk/AdColonyAppOptions;

    move-result-object v2

    iget-object v3, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter$1;->val$appId:Ljava/lang/String;

    iget-object v0, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter$1;->val$tUsedZones:Ljava/util/List;

    iget-object v4, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter$1;->val$tUsedZones:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/adcolony/sdk/AdColony;->configure(Landroid/app/Activity;Lcom/adcolony/sdk/AdColonyAppOptions;Ljava/lang/String;[Ljava/lang/String;)Z

    .line 93
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter$1;->this$0:Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;

    # getter for: Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->mZoneIdInterstitialList:Ljava/util/List;
    invoke-static {v0}, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->access$100(Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter$1;->this$0:Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;

    new-instance v1, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;

    iget-object v2, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter$1;->this$0:Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;

    iget-object v3, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter$1;->this$0:Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;

    .line 95
    # getter for: Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->mZoneIdInterstitialList:Ljava/util/List;
    invoke-static {v3}, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->access$100(Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;-><init>(Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;Ljava/util/List;)V

    .line 94
    # setter for: Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->mInterstitialMediationAdapter:Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;
    invoke-static {v0, v1}, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->access$202(Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;)Lcom/fyber/mediation/adcolony/interstitial/AdColonyInterstitialMediationAdapter;

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter$1;->this$0:Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;

    # getter for: Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->mZoneIdRewardedVideoList:Ljava/util/List;
    invoke-static {v0}, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->access$300(Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter$1;->this$0:Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;

    new-instance v1, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;

    iget-object v2, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter$1;->this$0:Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;

    iget-object v3, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter$1;->this$0:Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;

    .line 100
    # getter for: Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->mZoneIdRewardedVideoList:Ljava/util/List;
    invoke-static {v3}, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->access$300(Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter$1;->this$0:Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;

    .line 101
    # invokes: Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->shouldShowConfirmationDialog()Z
    invoke-static {v4}, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->access$500(Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;)Z

    move-result v4

    invoke-direct {v1, v2, v3, v4}, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;-><init>(Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;Ljava/util/List;Z)V

    .line 99
    # setter for: Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->mVideoMediationAdapter:Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;
    invoke-static {v0, v1}, Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;->access$402(Lcom/fyber/mediation/adcolony/AdColonyMediationAdapter;Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;)Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;

    .line 103
    :cond_1
    return-void
.end method
