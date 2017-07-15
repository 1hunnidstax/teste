.class Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;
.super Lcom/fyber/ads/banners/mediation/BannerWrapper;
.source "InMobiBannerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper$InMobiBannerWithAttachListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final activity:Landroid/app/Activity;

.field private bannerLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

.field private bannerView:Lcom/inmobi/ads/InMobiBanner;

.field private wrappedBannerView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/inmobi/ads/InMobiBanner;Landroid/app/Activity;Landroid/widget/RelativeLayout$LayoutParams;)V
    .locals 1
    .param p1, "bannerView"    # Lcom/inmobi/ads/InMobiBanner;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "bannerLayoutParams"    # Landroid/widget/RelativeLayout$LayoutParams;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/fyber/ads/banners/mediation/BannerWrapper;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;->bannerView:Lcom/inmobi/ads/InMobiBanner;

    .line 31
    iput-object p2, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;->activity:Landroid/app/Activity;

    .line 32
    iput-object p3, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;->bannerLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    .line 33
    new-instance v0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper$InMobiBannerWithAttachListener;

    invoke-direct {v0, p0}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper$InMobiBannerWithAttachListener;-><init>(Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;)V

    iput-object v0, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;->wrappedBannerView:Landroid/view/View;

    .line 35
    new-instance v0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper$1;

    invoke-direct {v0, p0}, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper$1;-><init>(Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;)V

    invoke-virtual {p1, v0}, Lcom/inmobi/ads/InMobiBanner;->setListener(Lcom/inmobi/ads/InMobiBanner$BannerAdListener;)V

    .line 104
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;->bannerLayoutParams:Landroid/widget/RelativeLayout$LayoutParams;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;)Lcom/inmobi/ads/InMobiBanner;
    .locals 1
    .param p0, "x0"    # Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;->bannerView:Lcom/inmobi/ads/InMobiBanner;

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 135
    iget-object v1, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;->bannerView:Lcom/inmobi/ads/InMobiBanner;

    invoke-virtual {v1}, Lcom/inmobi/ads/InMobiBanner;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 136
    .local v0, "parentView":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 137
    iget-object v1, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;->bannerView:Lcom/inmobi/ads/InMobiBanner;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 139
    :cond_0
    iput-object v2, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;->bannerView:Lcom/inmobi/ads/InMobiBanner;

    .line 140
    iput-object v2, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;->wrappedBannerView:Landroid/view/View;

    .line 141
    return-void
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/fyber/mediation/inmobi/banner/InMobiBannerWrapper;->wrappedBannerView:Landroid/view/View;

    return-object v0
.end method
