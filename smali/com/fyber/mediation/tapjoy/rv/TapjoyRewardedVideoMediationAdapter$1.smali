.class Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter$1;
.super Ljava/lang/Object;
.source "TapjoyRewardedVideoMediationAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;->videosAvailable(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter$1;->this$0:Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;

    iput-object p2, p0, Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 83
    iget-object v1, p0, Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter$1;->this$0:Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;

    new-instance v2, Lcom/tapjoy/TJPlacement;

    iget-object v3, p0, Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter$1;->val$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter$1;->this$0:Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;

    # getter for: Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;->mAdapter:Lcom/fyber/mediation/MediationAdapter;
    invoke-static {v0}, Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;->access$100(Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;)Lcom/fyber/mediation/MediationAdapter;

    move-result-object v0

    check-cast v0, Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter;

    invoke-virtual {v0}, Lcom/fyber/mediation/tapjoy/TapjoyMediationAdapter;->getVideoPlacementName()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter$1;->this$0:Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;

    invoke-direct {v2, v3, v0, v4}, Lcom/tapjoy/TJPlacement;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/tapjoy/TJPlacementListener;)V

    # setter for: Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;->tjPlacement:Lcom/tapjoy/TJPlacement;
    invoke-static {v1, v2}, Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;->access$002(Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;Lcom/tapjoy/TJPlacement;)Lcom/tapjoy/TJPlacement;

    .line 84
    iget-object v0, p0, Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter$1;->this$0:Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;

    # getter for: Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;->tjPlacement:Lcom/tapjoy/TJPlacement;
    invoke-static {v0}, Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;->access$000(Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;)Lcom/tapjoy/TJPlacement;

    move-result-object v0

    const-string v1, "fyber"

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJPlacement;->setMediationName(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter$1;->this$0:Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;

    # getter for: Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;->tjPlacement:Lcom/tapjoy/TJPlacement;
    invoke-static {v0}, Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;->access$000(Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;)Lcom/tapjoy/TJPlacement;

    move-result-object v0

    const-string v1, "4.0.0"

    invoke-virtual {v0, v1}, Lcom/tapjoy/TJPlacement;->setAdapterVersion(Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter$1;->this$0:Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;

    # getter for: Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;->tjPlacement:Lcom/tapjoy/TJPlacement;
    invoke-static {v0}, Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;->access$000(Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;)Lcom/tapjoy/TJPlacement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tapjoy/TJPlacement;->requestContent()V

    .line 87
    iget-object v0, p0, Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter$1;->this$0:Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;

    const/4 v1, 0x1

    # setter for: Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;->isRequesting:Z
    invoke-static {v0, v1}, Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;->access$202(Lcom/fyber/mediation/tapjoy/rv/TapjoyRewardedVideoMediationAdapter;Z)Z

    .line 88
    return-void
.end method
