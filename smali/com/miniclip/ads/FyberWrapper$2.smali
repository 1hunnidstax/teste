.class final Lcom/miniclip/ads/FyberWrapper$2;
.super Ljava/lang/Object;
.source "FyberWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/ads/FyberWrapper;->requestRewardedVideo(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$customParameters:Ljava/util/Map;

.field final synthetic val$placementId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/miniclip/ads/FyberWrapper$2;->val$placementId:Ljava/lang/String;

    iput-object p2, p0, Lcom/miniclip/ads/FyberWrapper$2;->val$customParameters:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 140
    # getter for: Lcom/miniclip/ads/FyberWrapper;->listenerProxy:Lcom/miniclip/ads/FyberListenerProxy;
    invoke-static {}, Lcom/miniclip/ads/FyberWrapper;->access$200()Lcom/miniclip/ads/FyberListenerProxy;

    move-result-object v1

    invoke-static {v1}, Lcom/fyber/requesters/RewardedVideoRequester;->create(Lcom/fyber/requesters/RequestCallback;)Lcom/fyber/requesters/RewardedVideoRequester;

    move-result-object v0

    .line 142
    .local v0, "requester":Lcom/fyber/requesters/RewardedVideoRequester;
    iget-object v1, p0, Lcom/miniclip/ads/FyberWrapper$2;->val$placementId:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miniclip/ads/FyberWrapper$2;->val$placementId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/miniclip/ads/FyberWrapper$2;->val$placementId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/fyber/requesters/RewardedVideoRequester;->withPlacementId(Ljava/lang/String;)Ljava/lang/Object;

    .line 146
    :cond_0
    iget-object v1, p0, Lcom/miniclip/ads/FyberWrapper$2;->val$customParameters:Ljava/util/Map;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miniclip/ads/FyberWrapper$2;->val$customParameters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 147
    iget-object v1, p0, Lcom/miniclip/ads/FyberWrapper$2;->val$customParameters:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/fyber/requesters/RewardedVideoRequester;->addParameters(Ljava/util/Map;)Ljava/lang/Object;

    .line 150
    :cond_1
    invoke-static {}, Lcom/miniclip/framework/Miniclip;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fyber/requesters/RewardedVideoRequester;->request(Landroid/content/Context;)V

    .line 151
    return-void
.end method
