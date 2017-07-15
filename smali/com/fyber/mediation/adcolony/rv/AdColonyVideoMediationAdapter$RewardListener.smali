.class Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter$RewardListener;
.super Ljava/lang/Object;
.source "AdColonyVideoMediationAdapter.java"

# interfaces
.implements Lcom/adcolony/sdk/AdColonyRewardListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "RewardListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;


# direct methods
.method constructor <init>(Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;

    .prologue
    .line 115
    iput-object p1, p0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter$RewardListener;->this$0:Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReward(Lcom/adcolony/sdk/AdColonyReward;)V
    .locals 3
    .param p1, "adColonyReward"    # Lcom/adcolony/sdk/AdColonyReward;

    .prologue
    .line 118
    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyReward;->success()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter$RewardListener;->this$0:Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;

    # invokes: Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->setVideoPlayed()V
    invoke-static {v0}, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->access$000(Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;)V

    .line 121
    :cond_0
    # getter for: Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/fyber/mediation/adcolony/rv/AdColonyVideoMediationAdapter;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reward callback from AdColony:\nsuccess: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyReward;->success()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " amount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 122
    invoke-virtual {p1}, Lcom/adcolony/sdk/AdColonyReward;->getRewardAmount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    return-void
.end method
