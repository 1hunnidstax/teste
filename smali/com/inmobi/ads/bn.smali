.class public Lcom/inmobi/ads/bn;
.super Lcom/inmobi/ads/ViewableAd;
.source "ViewableHtmlAd.java"


# instance fields
.field private final b:Lcom/inmobi/rendering/RenderView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/inmobi/rendering/RenderView;)V
    .locals 0
    .param p1    # Lcom/inmobi/rendering/RenderView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/inmobi/ads/ViewableAd;-><init>(Lcom/inmobi/ads/AdContainer;)V

    .line 17
    iput-object p1, p0, Lcom/inmobi/ads/bn;->b:Lcom/inmobi/rendering/RenderView;

    .line 18
    return-void
.end method


# virtual methods
.method public a()Landroid/view/View;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/inmobi/ads/bn;->b:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/bn;->a(Landroid/view/View;)V

    .line 23
    iget-object v0, p0, Lcom/inmobi/ads/bn;->b:Lcom/inmobi/rendering/RenderView;

    return-object v0
.end method

.method public a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/inmobi/ads/bn;->a()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public varargs a(Lcom/inmobi/ads/c$h;[Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/inmobi/ads/c$h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 33
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public d()V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/inmobi/ads/bn;->b:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/inmobi/ads/bn;->b:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/bn;->b:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->removeAllViews()V

    .line 48
    invoke-super {p0}, Lcom/inmobi/ads/ViewableAd;->d()V

    .line 49
    return-void
.end method
