.class Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper$1;
.super Ljava/lang/Object;
.source "InMobiBannerWrapper.java"

# interfaces
.implements Lcom/inmobi/ads/InMobiBanner$BannerAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;-><init>(Lcom/inmobi/ads/InMobiBanner;Landroid/app/Activity;Landroid/widget/RelativeLayout$LayoutParams;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;


# direct methods
.method constructor <init>(Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper$1;->this$0:Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAdDismissed(Lcom/inmobi/ads/InMobiBanner;)V
    .locals 0
    .param p1, "inMobiBanner"    # Lcom/inmobi/ads/InMobiBanner;

    .prologue
    .line 87
    return-void
.end method

.method public onAdDisplayed(Lcom/inmobi/ads/InMobiBanner;)V
    .locals 0
    .param p1, "inMobiBanner"    # Lcom/inmobi/ads/InMobiBanner;

    .prologue
    .line 82
    return-void
.end method

.method public onAdInteraction(Lcom/inmobi/ads/InMobiBanner;Ljava/util/Map;)V
    .locals 1
    .param p1, "inMobiBanner"    # Lcom/inmobi/ads/InMobiBanner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/InMobiBanner;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 91
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper$1;->this$0:Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;

    invoke-virtual {v0}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;->onBannerClick()V

    .line 92
    return-void
.end method

.method public onAdLoadFailed(Lcom/inmobi/ads/InMobiBanner;Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 2
    .param p1, "inMobiBanner"    # Lcom/inmobi/ads/InMobiBanner;
    .param p2, "inMobiAdRequestStatus"    # Lcom/inmobi/ads/InMobiAdRequestStatus;

    .prologue
    .line 44
    sget-object v0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper$2;->$SwitchMap$com$inmobi$ads$InMobiAdRequestStatus$StatusCode:[I

    invoke-virtual {p2}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 74
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper$1;->this$0:Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;

    const-string v1, "Error: Unknown error"

    invoke-virtual {v0, v1}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;->onBannerError(Ljava/lang/String;)V

    .line 77
    :goto_0
    return-void

    .line 47
    :pswitch_0
    # getter for: Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ad load failed: NO_FILL"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 50
    :pswitch_1
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper$1;->this$0:Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;

    const-string v1, "Error: Internal error"

    invoke-virtual {v0, v1}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;->onBannerError(Ljava/lang/String;)V

    goto :goto_0

    .line 53
    :pswitch_2
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper$1;->this$0:Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;

    const-string v1, "Error: Ad no longer available"

    invoke-virtual {v0, v1}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;->onBannerError(Ljava/lang/String;)V

    goto :goto_0

    .line 56
    :pswitch_3
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper$1;->this$0:Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;

    const-string v1, "Error: Request invalid"

    invoke-virtual {v0, v1}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;->onBannerError(Ljava/lang/String;)V

    goto :goto_0

    .line 59
    :pswitch_4
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper$1;->this$0:Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;

    const-string v1, "Error: Early refresh request"

    invoke-virtual {v0, v1}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;->onBannerError(Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :pswitch_5
    # getter for: Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Banner request timed out."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :pswitch_6
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper$1;->this$0:Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;

    const-string v1, "Error: Server error"

    invoke-virtual {v0, v1}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;->onBannerError(Ljava/lang/String;)V

    goto :goto_0

    .line 71
    :pswitch_7
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper$1;->this$0:Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;

    const-string v1, "Error: Network unreachable"

    invoke-virtual {v0, v1}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;->onBannerError(Ljava/lang/String;)V

    goto :goto_0

    .line 44
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public onAdLoadSucceeded(Lcom/inmobi/ads/InMobiBanner;)V
    .locals 1
    .param p1, "inMobiBanner"    # Lcom/inmobi/ads/InMobiBanner;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper$1;->this$0:Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;

    invoke-virtual {v0}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;->onBannerLoaded()V

    .line 39
    return-void
.end method

.method public onAdRewardActionCompleted(Lcom/inmobi/ads/InMobiBanner;Ljava/util/Map;)V
    .locals 0
    .param p1, "inMobiBanner"    # Lcom/inmobi/ads/InMobiBanner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/InMobiBanner;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 102
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    return-void
.end method

.method public onUserLeftApplication(Lcom/inmobi/ads/InMobiBanner;)V
    .locals 1
    .param p1, "inMobiBanner"    # Lcom/inmobi/ads/InMobiBanner;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper$1;->this$0:Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;

    invoke-virtual {v0}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;->onBannerLeftApplication()V

    .line 97
    return-void
.end method
