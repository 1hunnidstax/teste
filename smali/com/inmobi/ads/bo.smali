.class Lcom/inmobi/ads/bo;
.super Lcom/inmobi/ads/ViewableAd;
.source "ViewableNativeV2DisplayAd.java"


# instance fields
.field private final b:Lcom/inmobi/ads/ai;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private c:Lcom/inmobi/ads/ao;

.field private d:Z


# direct methods
.method constructor <init>(Lcom/inmobi/ads/ai;)V
    .locals 1
    .param p1    # Lcom/inmobi/ads/ai;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/inmobi/ads/ViewableAd;-><init>(Lcom/inmobi/ads/AdContainer;)V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/ads/bo;->d:Z

    .line 22
    iput-object p1, p0, Lcom/inmobi/ads/bo;->b:Lcom/inmobi/ads/ai;

    .line 23
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 28
    iget-boolean v1, p0, Lcom/inmobi/ads/bo;->d:Z

    if-eqz v1, :cond_1

    .line 39
    :cond_0
    :goto_0
    return-object v0

    .line 30
    :cond_1
    iget-object v1, p0, Lcom/inmobi/ads/bo;->b:Lcom/inmobi/ads/ai;

    invoke-virtual {v1}, Lcom/inmobi/ads/ai;->l()Landroid/app/Activity;

    move-result-object v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    new-instance v0, Lcom/inmobi/ads/ao;

    iget-object v2, p0, Lcom/inmobi/ads/bo;->b:Lcom/inmobi/ads/ai;

    iget-object v3, p0, Lcom/inmobi/ads/bo;->b:Lcom/inmobi/ads/ai;

    .line 33
    invoke-virtual {v3}, Lcom/inmobi/ads/ai;->k()Lcom/inmobi/ads/NativeV2DataModel;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/inmobi/ads/ao;-><init>(Landroid/content/Context;Lcom/inmobi/ads/ai;Lcom/inmobi/ads/NativeV2DataModel;)V

    iput-object v0, p0, Lcom/inmobi/ads/bo;->c:Lcom/inmobi/ads/ao;

    .line 34
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v1, "InMobi"

    const-string v2, "Ad markup loaded into the container will be inflated into a View."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/inmobi/ads/bo;->c:Lcom/inmobi/ads/ao;

    invoke-virtual {v0, p1, p2, p3}, Lcom/inmobi/ads/ao;->a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 38
    invoke-virtual {p0, v0}, Lcom/inmobi/ads/bo;->a(Landroid/view/View;)V

    goto :goto_0
.end method

.method public a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V
    .locals 0

    .prologue
    .line 50
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
    .line 44
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 47
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 54
    iget-boolean v0, p0, Lcom/inmobi/ads/bo;->d:Z

    if-eqz v0, :cond_0

    .line 58
    :goto_0
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/bo;->d:Z

    .line 56
    iget-object v0, p0, Lcom/inmobi/ads/bo;->c:Lcom/inmobi/ads/ao;

    invoke-virtual {v0}, Lcom/inmobi/ads/ao;->a()V

    .line 57
    invoke-super {p0}, Lcom/inmobi/ads/ViewableAd;->d()V

    goto :goto_0
.end method
