.class Lcom/inmobi/ads/bp;
.super Lcom/inmobi/ads/ViewableAd;
.source "ViewableNativeV2VideoAd.java"


# instance fields
.field private final b:Lcom/inmobi/ads/at;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private c:Lcom/inmobi/ads/ao;

.field private d:Z


# direct methods
.method constructor <init>(Lcom/inmobi/ads/at;)V
    .locals 1
    .param p1    # Lcom/inmobi/ads/at;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/inmobi/ads/ViewableAd;-><init>(Lcom/inmobi/ads/AdContainer;)V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/ads/bp;->d:Z

    .line 18
    iput-object p1, p0, Lcom/inmobi/ads/bp;->b:Lcom/inmobi/ads/at;

    .line 19
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 24
    iget-boolean v1, p0, Lcom/inmobi/ads/bp;->d:Z

    if-eqz v1, :cond_1

    .line 34
    :cond_0
    :goto_0
    return-object v0

    .line 26
    :cond_1
    iget-object v1, p0, Lcom/inmobi/ads/bp;->b:Lcom/inmobi/ads/at;

    invoke-virtual {v1}, Lcom/inmobi/ads/at;->l()Landroid/app/Activity;

    move-result-object v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    new-instance v0, Lcom/inmobi/ads/ao;

    iget-object v2, p0, Lcom/inmobi/ads/bp;->b:Lcom/inmobi/ads/at;

    iget-object v3, p0, Lcom/inmobi/ads/bp;->b:Lcom/inmobi/ads/at;

    .line 29
    invoke-virtual {v3}, Lcom/inmobi/ads/at;->k()Lcom/inmobi/ads/NativeV2DataModel;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/inmobi/ads/ao;-><init>(Landroid/content/Context;Lcom/inmobi/ads/ai;Lcom/inmobi/ads/NativeV2DataModel;)V

    iput-object v0, p0, Lcom/inmobi/ads/bp;->c:Lcom/inmobi/ads/ao;

    .line 31
    iget-object v0, p0, Lcom/inmobi/ads/bp;->c:Lcom/inmobi/ads/ao;

    invoke-virtual {v0, p1, p2, p3}, Lcom/inmobi/ads/ao;->a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 32
    invoke-virtual {p0, v0}, Lcom/inmobi/ads/bp;->a(Landroid/view/View;)V

    .line 33
    iget-object v1, p0, Lcom/inmobi/ads/bp;->b:Lcom/inmobi/ads/at;

    invoke-virtual {v1}, Lcom/inmobi/ads/at;->y()V

    goto :goto_0
.end method

.method public a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V
    .locals 0

    .prologue
    .line 45
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
    .line 39
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/inmobi/ads/bp;->d:Z

    if-eqz v0, :cond_0

    .line 53
    :goto_0
    return-void

    .line 50
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/bp;->d:Z

    .line 51
    iget-object v0, p0, Lcom/inmobi/ads/bp;->c:Lcom/inmobi/ads/ao;

    invoke-virtual {v0}, Lcom/inmobi/ads/ao;->a()V

    .line 52
    invoke-super {p0}, Lcom/inmobi/ads/ViewableAd;->d()V

    goto :goto_0
.end method
