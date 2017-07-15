.class Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter$1;
.super Ljava/lang/Object;
.source "TapjoyMediationAdapter.java"

# interfaces
.implements Lcom/tapjoy/TJConnectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter;->startAdapter(Landroid/app/Activity;Ljava/util/Map;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter;


# direct methods
.method constructor <init>(Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter$1;->this$0:Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectFailure()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public onConnectSuccess()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter$1;->this$0:Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter;

    # getter for: Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter;->rewardedVideoAdapter:Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;
    invoke-static {v0}, Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter;->access$000(Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter;)Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter$1;->this$0:Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter;

    # getter for: Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter;->rewardedVideoAdapter:Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;
    invoke-static {v0}, Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter;->access$000(Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter;)Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;->connectDidFinish()V

    .line 89
    :cond_0
    return-void
.end method
