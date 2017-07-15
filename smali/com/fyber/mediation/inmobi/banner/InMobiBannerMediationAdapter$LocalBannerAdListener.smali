.class public Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$LocalBannerAdListener;
.super Ljava/lang/Object;
.source "InMobiBannerMediationAdapter.java"

# interfaces
.implements Lcom/inmobi/ads/InMobiBanner$BannerAdListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBannerAdListener"
.end annotation


# instance fields
.field private final bannerSize:Lcom/fyber/ads/banners/BannerSize;

.field private final parentView:Landroid/view/ViewGroup;

.field final synthetic this$0:Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;


# direct methods
.method constructor <init>(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;Landroid/view/ViewGroup;Lcom/fyber/ads/banners/BannerSize;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;
    .param p2, "parentView"    # Landroid/view/ViewGroup;
    .param p3, "bannerSize"    # Lcom/fyber/ads/banners/BannerSize;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$LocalBannerAdListener;->this$0:Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p2, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$LocalBannerAdListener;->parentView:Landroid/view/ViewGroup;

    .line 85
    iput-object p3, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$LocalBannerAdListener;->bannerSize:Lcom/fyber/ads/banners/BannerSize;

    .line 86
    return-void
.end method


# virtual methods
.method public onAdDismissed(Lcom/inmobi/ads/InMobiBanner;)V
    .locals 0
    .param p1, "inMobiBanner"    # Lcom/inmobi/ads/InMobiBanner;

    .prologue
    .line 145
    return-void
.end method

.method public onAdDisplayed(Lcom/inmobi/ads/InMobiBanner;)V
    .locals 0
    .param p1, "inMobiBanner"    # Lcom/inmobi/ads/InMobiBanner;

    .prologue
    .line 140
    return-void
.end method

.method public onAdInteraction(Lcom/inmobi/ads/InMobiBanner;Ljava/util/Map;)V
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
    .line 150
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    return-void
.end method

.method public onAdLoadFailed(Lcom/inmobi/ads/InMobiBanner;Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 2
    .param p1, "inMobiBanner"    # Lcom/inmobi/ads/InMobiBanner;
    .param p2, "inMobiAdRequestStatus"    # Lcom/inmobi/ads/InMobiAdRequestStatus;

    .prologue
    .line 103
    sget-object v0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$1;->$SwitchMap$com$inmobi$ads$InMobiAdRequestStatus$StatusCode:[I

    invoke-virtual {p2}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 132
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$LocalBannerAdListener;->this$0:Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;

    const-string v1, "Error: Unknown error"

    # invokes: Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->setAdError(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->access$1300(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;Ljava/lang/String;)V

    .line 135
    :goto_0
    return-void

    .line 105
    :pswitch_0
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$LocalBannerAdListener;->this$0:Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;

    # invokes: Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->setAdNotAvailable()V
    invoke-static {v0}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->access$500(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;)V

    goto :goto_0

    .line 108
    :pswitch_1
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$LocalBannerAdListener;->this$0:Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;

    const-string v1, "Error: Internal error"

    # invokes: Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->setAdError(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->access$600(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :pswitch_2
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$LocalBannerAdListener;->this$0:Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;

    const-string v1, "Error: Ad no longer available"

    # invokes: Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->setAdError(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->access$700(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;Ljava/lang/String;)V

    goto :goto_0

    .line 114
    :pswitch_3
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$LocalBannerAdListener;->this$0:Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;

    const-string v1, "Error: Request invalid"

    # invokes: Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->setAdError(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->access$800(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;Ljava/lang/String;)V

    goto :goto_0

    .line 117
    :pswitch_4
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$LocalBannerAdListener;->this$0:Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;

    const-string v1, "Error: Early refresh request"

    # invokes: Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->setAdError(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->access$900(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;Ljava/lang/String;)V

    goto :goto_0

    .line 123
    :pswitch_5
    # getter for: Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->access$1000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Banner request timed out."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 126
    :pswitch_6
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$LocalBannerAdListener;->this$0:Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;

    const-string v1, "Error: Server error"

    # invokes: Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->setAdError(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->access$1100(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :pswitch_7
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$LocalBannerAdListener;->this$0:Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;

    const-string v1, "Error: Network unreachable"

    # invokes: Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->setAdError(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->access$1200(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;Ljava/lang/String;)V

    goto :goto_0

    .line 103
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
    .locals 5
    .param p1, "inMobiBanner"    # Lcom/inmobi/ads/InMobiBanner;

    .prologue
    .line 92
    iget-object v1, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$LocalBannerAdListener;->this$0:Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;

    # getter for: Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->bannerAdContainer:Landroid/widget/FrameLayout;
    invoke-static {v1}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->access$100(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;)Landroid/widget/FrameLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$LocalBannerAdListener;->this$0:Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;

    # getter for: Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->bannerAd:Lcom/inmobi/ads/InMobiBanner;
    invoke-static {v2}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->access$000(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;)Lcom/inmobi/ads/InMobiBanner;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 93
    iget-object v1, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$LocalBannerAdListener;->parentView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$LocalBannerAdListener;->this$0:Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;

    # getter for: Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->bannerAdContainer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->access$100(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 94
    iget-object v1, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$LocalBannerAdListener;->this$0:Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;

    const/4 v2, 0x0

    # setter for: Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->bannerAdContainer:Landroid/widget/FrameLayout;
    invoke-static {v1, v2}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->access$102(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 96
    new-instance v0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;

    iget-object v1, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$LocalBannerAdListener;->this$0:Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;

    # getter for: Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->bannerAd:Lcom/inmobi/ads/InMobiBanner;
    invoke-static {v1}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->access$000(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;)Lcom/inmobi/ads/InMobiBanner;

    move-result-object v1

    iget-object v2, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$LocalBannerAdListener;->this$0:Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;

    # getter for: Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->access$200(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;)Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$LocalBannerAdListener;->this$0:Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;

    iget-object v4, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$LocalBannerAdListener;->bannerSize:Lcom/fyber/ads/banners/BannerSize;

    .line 97
    # invokes: Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->relativeLayoutParamsFor(Lcom/fyber/ads/banners/BannerSize;)Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v3, v4}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->access$300(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;Lcom/fyber/ads/banners/BannerSize;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;-><init>(Lcom/inmobi/ads/InMobiBanner;Landroid/app/Activity;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 98
    .local v0, "inMobiBannerWrapper":Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;
    iget-object v1, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$LocalBannerAdListener;->this$0:Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;

    # invokes: Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->setAdAvailable(Lcom/fyber/ads/banners/mediation/BannerWrapper;)V
    invoke-static {v1, v0}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->access$400(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;Lcom/fyber/ads/banners/mediation/BannerWrapper;)V

    .line 99
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
    .line 160
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    return-void
.end method

.method public onUserLeftApplication(Lcom/inmobi/ads/InMobiBanner;)V
    .locals 0
    .param p1, "inMobiBanner"    # Lcom/inmobi/ads/InMobiBanner;

    .prologue
    .line 155
    return-void
.end method
