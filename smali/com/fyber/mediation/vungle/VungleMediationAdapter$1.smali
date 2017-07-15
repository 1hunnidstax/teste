.class Lcom/fyber/mediation/vungle/VungleMediationAdapter$1;
.super Ljava/lang/Object;
.source "VungleMediationAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/mediation/vungle/VungleMediationAdapter;->startAdapter(Landroid/app/Activity;Ljava/util/Map;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fyber/mediation/vungle/VungleMediationAdapter;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$appId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/fyber/mediation/vungle/VungleMediationAdapter;Landroid/app/Activity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fyber/mediation/vungle/VungleMediationAdapter;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/fyber/mediation/vungle/VungleMediationAdapter$1;->this$0:Lcom/fyber/mediation/vungle/VungleMediationAdapter;

    iput-object p2, p0, Lcom/fyber/mediation/vungle/VungleMediationAdapter$1;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/fyber/mediation/vungle/VungleMediationAdapter$1;->val$appId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 78
    invoke-static {}, Lcom/vungle/publisher/VunglePub;->getInstance()Lcom/vungle/publisher/VunglePub;

    move-result-object v0

    .line 79
    .local v0, "vunglePub":Lcom/vungle/publisher/VunglePub;
    iget-object v1, p0, Lcom/fyber/mediation/vungle/VungleMediationAdapter$1;->val$activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/fyber/mediation/vungle/VungleMediationAdapter$1;->val$appId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/VunglePub;->init(Landroid/content/Context;Ljava/lang/String;)Z

    .line 81
    iget-object v1, p0, Lcom/fyber/mediation/vungle/VungleMediationAdapter$1;->this$0:Lcom/fyber/mediation/vungle/VungleMediationAdapter;

    new-instance v2, Lcom/fyber/mediation/vungle/rv/VungleVideoMediationAdapter;

    iget-object v3, p0, Lcom/fyber/mediation/vungle/VungleMediationAdapter$1;->this$0:Lcom/fyber/mediation/vungle/VungleMediationAdapter;

    # getter for: Lcom/fyber/mediation/vungle/VungleMediationAdapter;->mMediationAdapter:Lcom/fyber/mediation/vungle/VungleMediationAdapter;
    invoke-static {v3}, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->access$100(Lcom/fyber/mediation/vungle/VungleMediationAdapter;)Lcom/fyber/mediation/vungle/VungleMediationAdapter;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/fyber/mediation/vungle/rv/VungleVideoMediationAdapter;-><init>(Lcom/fyber/mediation/vungle/VungleMediationAdapter;)V

    # setter for: Lcom/fyber/mediation/vungle/VungleMediationAdapter;->mVideoMediationAdapter:Lcom/fyber/mediation/vungle/rv/VungleVideoMediationAdapter;
    invoke-static {v1, v2}, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->access$002(Lcom/fyber/mediation/vungle/VungleMediationAdapter;Lcom/fyber/mediation/vungle/rv/VungleVideoMediationAdapter;)Lcom/fyber/mediation/vungle/rv/VungleVideoMediationAdapter;

    .line 82
    iget-object v1, p0, Lcom/fyber/mediation/vungle/VungleMediationAdapter$1;->this$0:Lcom/fyber/mediation/vungle/VungleMediationAdapter;

    new-instance v2, Lcom/fyber/mediation/vungle/interstitial/VungleInterstitialMediationAdapter;

    iget-object v3, p0, Lcom/fyber/mediation/vungle/VungleMediationAdapter$1;->this$0:Lcom/fyber/mediation/vungle/VungleMediationAdapter;

    # getter for: Lcom/fyber/mediation/vungle/VungleMediationAdapter;->mMediationAdapter:Lcom/fyber/mediation/vungle/VungleMediationAdapter;
    invoke-static {v3}, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->access$100(Lcom/fyber/mediation/vungle/VungleMediationAdapter;)Lcom/fyber/mediation/vungle/VungleMediationAdapter;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/fyber/mediation/vungle/interstitial/VungleInterstitialMediationAdapter;-><init>(Lcom/fyber/mediation/vungle/VungleMediationAdapter;)V

    # setter for: Lcom/fyber/mediation/vungle/VungleMediationAdapter;->mInterstitialMediationAdapter:Lcom/fyber/mediation/vungle/interstitial/VungleInterstitialMediationAdapter;
    invoke-static {v1, v2}, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->access$202(Lcom/fyber/mediation/vungle/VungleMediationAdapter;Lcom/fyber/mediation/vungle/interstitial/VungleInterstitialMediationAdapter;)Lcom/fyber/mediation/vungle/interstitial/VungleInterstitialMediationAdapter;

    .line 84
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/vungle/publisher/EventListener;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fyber/mediation/vungle/VungleMediationAdapter$1;->this$0:Lcom/fyber/mediation/vungle/VungleMediationAdapter;

    # getter for: Lcom/fyber/mediation/vungle/VungleMediationAdapter;->mVideoMediationAdapter:Lcom/fyber/mediation/vungle/rv/VungleVideoMediationAdapter;
    invoke-static {v3}, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->access$000(Lcom/fyber/mediation/vungle/VungleMediationAdapter;)Lcom/fyber/mediation/vungle/rv/VungleVideoMediationAdapter;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/fyber/mediation/vungle/VungleMediationAdapter$1;->this$0:Lcom/fyber/mediation/vungle/VungleMediationAdapter;

    # getter for: Lcom/fyber/mediation/vungle/VungleMediationAdapter;->mInterstitialMediationAdapter:Lcom/fyber/mediation/vungle/interstitial/VungleInterstitialMediationAdapter;
    invoke-static {v3}, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->access$200(Lcom/fyber/mediation/vungle/VungleMediationAdapter;)Lcom/fyber/mediation/vungle/interstitial/VungleInterstitialMediationAdapter;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/VunglePub;->setEventListeners([Lcom/vungle/publisher/EventListener;)V

    .line 96
    invoke-virtual {v0}, Lcom/vungle/publisher/VunglePub;->onResume()V

    .line 97
    iget-object v1, p0, Lcom/fyber/mediation/vungle/VungleMediationAdapter$1;->this$0:Lcom/fyber/mediation/vungle/VungleMediationAdapter;

    iget-object v2, p0, Lcom/fyber/mediation/vungle/VungleMediationAdapter$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    # invokes: Lcom/fyber/mediation/vungle/VungleMediationAdapter;->setAndRegisterActivityCallbacks(Landroid/app/Application;)V
    invoke-static {v1, v2}, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->access$300(Lcom/fyber/mediation/vungle/VungleMediationAdapter;Landroid/app/Application;)V

    .line 98
    return-void
.end method
