.class public Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$CheckForAdsRunnable;
.super Ljava/lang/Object;
.source "InMobiBannerMediationAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CheckForAdsRunnable"
.end annotation


# instance fields
.field final bannerSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fyber/ads/banners/BannerSize;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;


# direct methods
.method public constructor <init>(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fyber/ads/banners/BannerSize;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 167
    .local p2, "bannerSizes":Ljava/util/List;, "Ljava/util/List<Lcom/fyber/ads/banners/BannerSize;>;"
    iput-object p1, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$CheckForAdsRunnable;->this$0:Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p2, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$CheckForAdsRunnable;->bannerSizes:Ljava/util/List;

    .line 169
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 178
    iget-object v2, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$CheckForAdsRunnable;->bannerSizes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 179
    # getter for: Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->access$1000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Banner size list is empty, using default banner size (320x50)"

    invoke-static {v2, v3}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-static {}, Lcom/fyber/ads/banners/BannerSize$Builder;->newBuilder()Lcom/fyber/ads/banners/BannerSize$Builder;

    move-result-object v2

    const/16 v3, 0x140

    invoke-virtual {v2, v3}, Lcom/fyber/ads/banners/BannerSize$Builder;->withWidth(I)Lcom/fyber/ads/banners/BannerSize$Builder;

    move-result-object v2

    const/16 v3, 0x32

    invoke-virtual {v2, v3}, Lcom/fyber/ads/banners/BannerSize$Builder;->withHeight(I)Lcom/fyber/ads/banners/BannerSize$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fyber/ads/banners/BannerSize$Builder;->build()Lcom/fyber/ads/banners/BannerSize;

    move-result-object v0

    .line 186
    .local v0, "bannerSize":Lcom/fyber/ads/banners/BannerSize;
    :goto_0
    iget-object v2, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$CheckForAdsRunnable;->this$0:Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;

    # getter for: Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v2}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->access$200(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;)Landroid/app/Activity;

    move-result-object v2

    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    move-object v1, v2

    check-cast v1, Landroid/view/ViewGroup;

    .line 189
    .local v1, "parentView":Landroid/view/ViewGroup;
    iget-object v2, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$CheckForAdsRunnable;->this$0:Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;

    new-instance v3, Lcom/inmobi/ads/InMobiBanner;

    iget-object v4, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$CheckForAdsRunnable;->this$0:Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;

    # getter for: Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->mActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->access$200(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;)Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$CheckForAdsRunnable;->this$0:Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;

    # getter for: Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->banPlacementId:J
    invoke-static {v5}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->access$1400(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;)J

    move-result-wide v6

    invoke-direct {v3, v4, v6, v7}, Lcom/inmobi/ads/InMobiBanner;-><init>(Landroid/app/Activity;J)V

    # setter for: Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->bannerAd:Lcom/inmobi/ads/InMobiBanner;
    invoke-static {v2, v3}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->access$002(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;Lcom/inmobi/ads/InMobiBanner;)Lcom/inmobi/ads/InMobiBanner;

    .line 190
    iget-object v2, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$CheckForAdsRunnable;->this$0:Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;

    iget-object v3, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$CheckForAdsRunnable;->this$0:Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;

    # getter for: Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->bannerAd:Lcom/inmobi/ads/InMobiBanner;
    invoke-static {v3}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->access$000(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;)Lcom/inmobi/ads/InMobiBanner;

    move-result-object v3

    # invokes: Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->setRefreshRate(Lcom/inmobi/ads/InMobiBanner;)V
    invoke-static {v2, v3}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->access$1500(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;Lcom/inmobi/ads/InMobiBanner;)V

    .line 193
    iget-object v2, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$CheckForAdsRunnable;->this$0:Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;

    iget-object v3, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$CheckForAdsRunnable;->this$0:Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;

    iget-object v4, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$CheckForAdsRunnable;->this$0:Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;

    # getter for: Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->bannerAd:Lcom/inmobi/ads/InMobiBanner;
    invoke-static {v4}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->access$000(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;)Lcom/inmobi/ads/InMobiBanner;

    move-result-object v4

    # invokes: Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->hiddenWrappingFrame(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/widget/FrameLayout;
    invoke-static {v3, v1, v4}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->access$1600(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/widget/FrameLayout;

    move-result-object v3

    # setter for: Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->bannerAdContainer:Landroid/widget/FrameLayout;
    invoke-static {v2, v3}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->access$102(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 194
    iget-object v2, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$CheckForAdsRunnable;->this$0:Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;

    # getter for: Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->bannerAdContainer:Landroid/widget/FrameLayout;
    invoke-static {v2}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->access$100(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;)Landroid/widget/FrameLayout;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 197
    iget-object v2, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$CheckForAdsRunnable;->this$0:Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;

    new-instance v3, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$LocalBannerAdListener;

    iget-object v4, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$CheckForAdsRunnable;->this$0:Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;

    invoke-direct {v3, v4, v1, v0}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$LocalBannerAdListener;-><init>(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;Landroid/view/ViewGroup;Lcom/fyber/ads/banners/BannerSize;)V

    # setter for: Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->adListener:Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$LocalBannerAdListener;
    invoke-static {v2, v3}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->access$1702(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$LocalBannerAdListener;)Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$LocalBannerAdListener;

    .line 198
    iget-object v2, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$CheckForAdsRunnable;->this$0:Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;

    # getter for: Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->bannerAd:Lcom/inmobi/ads/InMobiBanner;
    invoke-static {v2}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->access$000(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;)Lcom/inmobi/ads/InMobiBanner;

    move-result-object v2

    iget-object v3, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$CheckForAdsRunnable;->this$0:Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;

    # getter for: Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->adListener:Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$LocalBannerAdListener;
    invoke-static {v3}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->access$1700(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;)Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$LocalBannerAdListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/inmobi/ads/InMobiBanner;->setListener(Lcom/inmobi/ads/InMobiBanner$BannerAdListener;)V

    .line 200
    iget-object v2, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$CheckForAdsRunnable;->this$0:Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;

    # getter for: Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->bannerAd:Lcom/inmobi/ads/InMobiBanner;
    invoke-static {v2}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->access$000(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;)Lcom/inmobi/ads/InMobiBanner;

    move-result-object v2

    iget-object v3, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$CheckForAdsRunnable;->this$0:Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;

    # invokes: Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->relativeLayoutParamsFor(Lcom/fyber/ads/banners/BannerSize;)Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {v3, v0}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->access$300(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;Lcom/fyber/ads/banners/BannerSize;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/inmobi/ads/InMobiBanner;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 201
    iget-object v2, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$CheckForAdsRunnable;->this$0:Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;

    # getter for: Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->bannerAd:Lcom/inmobi/ads/InMobiBanner;
    invoke-static {v2}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->access$000(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;)Lcom/inmobi/ads/InMobiBanner;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/ads/InMobiBanner;->load()V

    .line 202
    return-void

    .line 182
    .end local v0    # "bannerSize":Lcom/fyber/ads/banners/BannerSize;
    .end local v1    # "parentView":Landroid/view/ViewGroup;
    :cond_0
    iget-object v2, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$CheckForAdsRunnable;->bannerSizes:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/ads/banners/BannerSize;

    .restart local v0    # "bannerSize":Lcom/fyber/ads/banners/BannerSize;
    goto/16 :goto_0
.end method
