.class final Lcom/fyber/ads/banners/a/d$4;
.super Lcom/fyber/utils/d;
.source "InternalBannerAd.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/ads/banners/a/d;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fyber/ads/banners/a/d;


# direct methods
.method constructor <init>(Lcom/fyber/ads/banners/a/d;)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/fyber/ads/banners/a/d$4;->a:Lcom/fyber/ads/banners/a/d;

    invoke-direct {p0}, Lcom/fyber/utils/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 158
    iget-object v0, p0, Lcom/fyber/ads/banners/a/d$4;->a:Lcom/fyber/ads/banners/a/d;

    invoke-static {v0}, Lcom/fyber/ads/banners/a/d;->c(Lcom/fyber/ads/banners/a/d;)Lcom/fyber/ads/banners/mediation/BannerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/ads/banners/mediation/BannerWrapper;->getView()Landroid/view/View;

    move-result-object v1

    .line 160
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 162
    if-eqz v0, :cond_0

    .line 164
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/fyber/ads/banners/a/d$4;->a:Lcom/fyber/ads/banners/a/d;

    invoke-static {v0}, Lcom/fyber/ads/banners/a/d;->b(Lcom/fyber/ads/banners/a/d;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 169
    iget-object v0, p0, Lcom/fyber/ads/banners/a/d$4;->a:Lcom/fyber/ads/banners/a/d;

    invoke-static {v0}, Lcom/fyber/ads/banners/a/d;->b(Lcom/fyber/ads/banners/a/d;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 170
    if-eqz v0, :cond_1

    .line 171
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/fyber/ads/banners/a/d$4;->a:Lcom/fyber/ads/banners/a/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fyber/ads/banners/a/d;->a(Lcom/fyber/ads/banners/a/d;Landroid/widget/FrameLayout;)Landroid/widget/FrameLayout;

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/fyber/ads/banners/a/d$4;->a:Lcom/fyber/ads/banners/a/d;

    invoke-static {v0}, Lcom/fyber/ads/banners/a/d;->c(Lcom/fyber/ads/banners/a/d;)Lcom/fyber/ads/banners/mediation/BannerWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/ads/banners/mediation/BannerWrapper;->destroy()V

    .line 178
    iget-object v0, p0, Lcom/fyber/ads/banners/a/d$4;->a:Lcom/fyber/ads/banners/a/d;

    invoke-static {v0}, Lcom/fyber/ads/banners/a/d;->e(Lcom/fyber/ads/banners/a/d;)Lcom/fyber/ads/banners/mediation/BannerWrapper;

    .line 180
    sget-object v0, Lcom/fyber/ads/internal/c;->a:Lcom/fyber/ads/internal/c;

    invoke-static {v0}, Lcom/fyber/ads/banners/a/a;->a(Lcom/fyber/ads/internal/c;)Z

    .line 181
    return-void
.end method
