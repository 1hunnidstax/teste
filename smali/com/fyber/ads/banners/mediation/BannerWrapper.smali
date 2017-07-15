.class public abstract Lcom/fyber/ads/banners/mediation/BannerWrapper;
.super Ljava/lang/Object;
.source "BannerWrapper.java"


# instance fields
.field private bannerEventListener:Lcom/fyber/ads/banners/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getView()Landroid/view/View;
.end method

.method public onBannerClick()V
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/fyber/ads/banners/mediation/BannerWrapper;->bannerEventListener:Lcom/fyber/ads/banners/a/b;

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/fyber/ads/banners/mediation/BannerWrapper;->bannerEventListener:Lcom/fyber/ads/banners/a/b;

    invoke-virtual {p0}, Lcom/fyber/ads/banners/mediation/BannerWrapper;->getView()Landroid/view/View;

    invoke-interface {v0}, Lcom/fyber/ads/banners/a/b;->b()V

    .line 41
    :cond_0
    return-void
.end method

.method public onBannerError(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fyber/ads/banners/mediation/BannerWrapper;->bannerEventListener:Lcom/fyber/ads/banners/a/b;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/fyber/ads/banners/mediation/BannerWrapper;->bannerEventListener:Lcom/fyber/ads/banners/a/b;

    invoke-virtual {p0}, Lcom/fyber/ads/banners/mediation/BannerWrapper;->getView()Landroid/view/View;

    invoke-interface {v0, p1}, Lcom/fyber/ads/banners/a/b;->a(Ljava/lang/String;)V

    .line 47
    :cond_0
    return-void
.end method

.method public onBannerLeftApplication()V
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fyber/ads/banners/mediation/BannerWrapper;->bannerEventListener:Lcom/fyber/ads/banners/a/b;

    if-eqz v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/fyber/ads/banners/mediation/BannerWrapper;->bannerEventListener:Lcom/fyber/ads/banners/a/b;

    invoke-virtual {p0}, Lcom/fyber/ads/banners/mediation/BannerWrapper;->getView()Landroid/view/View;

    invoke-interface {v0}, Lcom/fyber/ads/banners/a/b;->c()V

    .line 53
    :cond_0
    return-void
.end method

.method public onBannerLoaded()V
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fyber/ads/banners/mediation/BannerWrapper;->bannerEventListener:Lcom/fyber/ads/banners/a/b;

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/fyber/ads/banners/mediation/BannerWrapper;->bannerEventListener:Lcom/fyber/ads/banners/a/b;

    invoke-virtual {p0}, Lcom/fyber/ads/banners/mediation/BannerWrapper;->getView()Landroid/view/View;

    invoke-interface {v0}, Lcom/fyber/ads/banners/a/b;->a()V

    .line 35
    :cond_0
    return-void
.end method

.method public setBannerEventListener(Lcom/fyber/ads/banners/a/b;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/fyber/ads/banners/mediation/BannerWrapper;->bannerEventListener:Lcom/fyber/ads/banners/a/b;

    .line 57
    return-void
.end method
