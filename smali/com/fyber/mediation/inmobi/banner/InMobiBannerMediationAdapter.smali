.class public Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;
.super Lcom/fyber/ads/banners/mediation/BannerMediationAdapter;
.source "InMobiBannerMediationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$CheckForAdsRunnable;,
        Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$LocalBannerAdListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/ads/banners/mediation/BannerMediationAdapter",
        "<",
        "Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private adListener:Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$LocalBannerAdListener;

.field private final banPlacementId:J

.field private bannerAd:Lcom/inmobi/ads/InMobiBanner;

.field private bannerAdContainer:Landroid/widget/FrameLayout;

.field private mActivity:Landroid/app/Activity;

.field private final refreshInterval:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;Landroid/app/Activity;JLjava/lang/Integer;)V
    .locals 1
    .param p1, "adapter"    # Lcom/fyber/mediation/inmobi/InMobiMediationAdapter;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "banPlacementId"    # J
    .param p5, "refreshInterval"    # Ljava/lang/Integer;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/fyber/ads/banners/mediation/BannerMediationAdapter;-><init>(Lcom/fyber/mediation/MediationAdapter;)V

    .line 40
    iput-object p2, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->mActivity:Landroid/app/Activity;

    .line 41
    iput-wide p3, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->banPlacementId:J

    .line 42
    iput-object p5, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->refreshInterval:Ljava/lang/Integer;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;)Lcom/inmobi/ads/InMobiBanner;
    .locals 1
    .param p0, "x0"    # Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->bannerAd:Lcom/inmobi/ads/InMobiBanner;

    return-object v0
.end method

.method static synthetic access$002(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;Lcom/inmobi/ads/InMobiBanner;)Lcom/inmobi/ads/InMobiBanner;
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;
    .param p1, "x1"    # Lcom/inmobi/ads/InMobiBanner;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->bannerAd:Lcom/inmobi/ads/InMobiBanner;

    return-object p1
.end method

.method static synthetic access$100(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->bannerAdContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;
    .param p1, "x1"    # Landroid/widget/FrameLayout;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->bannerAdContainer:Landroid/widget/FrameLayout;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->setAdError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->setAdError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->setAdError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;)J
    .locals 2
    .param p0, "x0"    # Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->banPlacementId:J

    return-wide v0
.end method

.method static synthetic access$1500(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;Lcom/inmobi/ads/InMobiBanner;)V
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;
    .param p1, "x1"    # Lcom/inmobi/ads/InMobiBanner;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->setRefreshRate(Lcom/inmobi/ads/InMobiBanner;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/widget/FrameLayout;
    .locals 1
    .param p0, "x0"    # Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;
    .param p1, "x1"    # Landroid/view/ViewGroup;
    .param p2, "x2"    # Landroid/view/View;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->hiddenWrappingFrame(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;)Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$LocalBannerAdListener;
    .locals 1
    .param p0, "x0"    # Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->adListener:Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$LocalBannerAdListener;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$LocalBannerAdListener;)Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$LocalBannerAdListener;
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;
    .param p1, "x1"    # Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$LocalBannerAdListener;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->adListener:Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$LocalBannerAdListener;

    return-object p1
.end method

.method static synthetic access$200(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;Lcom/fyber/ads/banners/BannerSize;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;
    .param p1, "x1"    # Lcom/fyber/ads/banners/BannerSize;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->relativeLayoutParamsFor(Lcom/fyber/ads/banners/BannerSize;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;Lcom/fyber/ads/banners/mediation/BannerWrapper;)V
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;
    .param p1, "x1"    # Lcom/fyber/ads/banners/mediation/BannerWrapper;

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->setAdAvailable(Lcom/fyber/ads/banners/mediation/BannerWrapper;)V

    return-void
.end method

.method static synthetic access$500(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;)V
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->setAdNotAvailable()V

    return-void
.end method

.method static synthetic access$600(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->setAdError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->setAdError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->setAdError(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-virtual {p0, p1}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->setAdError(Ljava/lang/String;)V

    return-void
.end method

.method private dpToPx(I)I
    .locals 2
    .param p1, "dp"    # I

    .prologue
    .line 75
    iget-object v1, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 76
    .local v0, "density":F
    int-to-float v1, p1

    mul-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    return v1
.end method

.method private hiddenWrappingFrame(Landroid/view/ViewGroup;Landroid/view/View;)Landroid/widget/FrameLayout;
    .locals 2
    .param p1, "parentView"    # Landroid/view/ViewGroup;
    .param p2, "bannerView"    # Landroid/view/View;

    .prologue
    .line 61
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 62
    .local v0, "container":Landroid/widget/FrameLayout;
    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 63
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 64
    return-object v0
.end method

.method private relativeLayoutParamsFor(Lcom/fyber/ads/banners/BannerSize;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3
    .param p1, "bannerSize"    # Lcom/fyber/ads/banners/BannerSize;

    .prologue
    .line 69
    invoke-virtual {p1}, Lcom/fyber/ads/banners/BannerSize;->getWidth()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->dpToPx(I)I

    move-result v1

    .line 70
    .local v1, "widthPx":I
    invoke-virtual {p1}, Lcom/fyber/ads/banners/BannerSize;->getHeight()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->dpToPx(I)I

    move-result v0

    .line 71
    .local v0, "heightPx":I
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    return-object v2
.end method

.method private setRefreshRate(Lcom/inmobi/ads/InMobiBanner;)V
    .locals 1
    .param p1, "bannerAd"    # Lcom/inmobi/ads/InMobiBanner;

    .prologue
    .line 53
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->refreshInterval:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->refreshInterval:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_1

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->refreshInterval:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/inmobi/ads/InMobiBanner;->setRefreshInterval(I)V

    goto :goto_0
.end method


# virtual methods
.method protected checkForAds(Landroid/content/Context;Ljava/util/List;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/fyber/ads/banners/BannerSize;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 48
    .local p2, "bannerSizes":Ljava/util/List;, "Ljava/util/List<Lcom/fyber/ads/banners/BannerSize;>;"
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$CheckForAdsRunnable;

    invoke-direct {v1, p0, p2}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter$CheckForAdsRunnable;-><init>(Lcom/fyber/mediation/inmobi/banner/InMobiBannerMediationAdapter;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 49
    const/4 v0, 0x1

    return v0
.end method
