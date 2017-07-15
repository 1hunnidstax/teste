.class public final Lcom/fyber/b/b/c;
.super Lcom/fyber/b/b;
.source "InterstitialFetchOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/b/b/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/b/b",
        "<",
        "Lcom/fyber/ads/interstitials/b/a;",
        "Lcom/fyber/ads/interstitials/InterstitialAd;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/fyber/b/b/c$a;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/fyber/b/b;-><init>(Lcom/fyber/b/b$a;)V

    .line 37
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 53
    const/16 v0, 0xa

    return v0
.end method

.method protected final a(Lcom/fyber/ads/internal/a;)Lcom/fyber/b/a$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/ads/internal/a;",
            ")",
            "Lcom/fyber/b/a$a",
            "<",
            "Lcom/fyber/b/b/b;",
            "Lcom/fyber/b/b/b$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Lcom/fyber/b/b/b$a;

    invoke-direct {v0, p1}, Lcom/fyber/b/b/b$a;-><init>(Lcom/fyber/ads/internal/a;)V

    return-object v0
.end method

.method protected final a(Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/fyber/ads/a",
            "<",
            "Lcom/fyber/ads/interstitials/b/a;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Lcom/fyber/b/b/d$a;

    iget-object v1, p0, Lcom/fyber/b/b/c;->b:Lcom/fyber/utils/u;

    invoke-direct {v0, v1, p1}, Lcom/fyber/b/b/d$a;-><init>(Lcom/fyber/utils/u;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fyber/b/b/d$a;->a()Lcom/fyber/b/b/d;

    move-result-object v0

    .line 1047
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/fyber/Fyber$a;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 42
    return-object v0
.end method

.method protected final a(Ljava/util/List;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fyber/ads/interstitials/b/a;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/fyber/ads/interstitials/InterstitialAd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 47
    new-instance v0, Lcom/fyber/b/b/a$a;

    invoke-direct {v0, p1}, Lcom/fyber/b/b/a$a;-><init>(Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/fyber/b/b/a$a;->a()Lcom/fyber/b/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/b/b/c;->c:Ljava/lang/ref/WeakReference;

    .line 48
    invoke-virtual {v0, v1}, Lcom/fyber/b/b/a;->a(Ljava/lang/ref/WeakReference;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic a(Lcom/fyber/ads/Ad;)V
    .locals 3

    .prologue
    .line 29
    check-cast p1, Lcom/fyber/ads/interstitials/InterstitialAd;

    .line 1068
    iget-object v0, p0, Lcom/fyber/b/b/c;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 1070
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/fyber/b/b/c;->a:Lcom/fyber/requesters/Callback;

    if-eqz v1, :cond_0

    .line 1071
    iget-object v1, p0, Lcom/fyber/b/b/c;->a:Lcom/fyber/requesters/Callback;

    instance-of v1, v1, Lcom/fyber/requesters/RequestCallback;

    if-eqz v1, :cond_1

    .line 1072
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/fyber/ads/interstitials/InterstitialActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1073
    const-string v0, "EXTRA_AD_FORMAT"

    sget-object v2, Lcom/fyber/ads/AdFormat;->INTERSTITIAL:Lcom/fyber/ads/AdFormat;

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1074
    iget-object v0, p0, Lcom/fyber/b/b/c;->a:Lcom/fyber/requesters/Callback;

    check-cast v0, Lcom/fyber/requesters/RequestCallback;

    invoke-interface {v0, v1}, Lcom/fyber/requesters/RequestCallback;->onAdAvailable(Landroid/content/Intent;)V

    .line 1075
    :cond_0
    :goto_0
    return-void

    .line 1076
    :cond_1
    iget-object v0, p0, Lcom/fyber/b/b/c;->a:Lcom/fyber/requesters/Callback;

    check-cast v0, Lcom/fyber/requesters/AdRequestCallback;

    invoke-interface {v0, p1}, Lcom/fyber/requesters/AdRequestCallback;->onAdAvailable(Lcom/fyber/ads/Ad;)V

    goto :goto_0
.end method

.method protected final a(Lcom/fyber/ads/internal/c;)V
    .locals 0

    .prologue
    .line 63
    invoke-static {p1}, Lcom/fyber/ads/interstitials/b/b;->a(Lcom/fyber/ads/internal/c;)Z

    .line 64
    return-void
.end method

.method protected final b()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/fyber/b/b/c;->a:Lcom/fyber/requesters/Callback;

    instance-of v0, v0, Lcom/fyber/requesters/RequestCallback;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/fyber/b/b/c;->a:Lcom/fyber/requesters/Callback;

    check-cast v0, Lcom/fyber/requesters/RequestCallback;

    sget-object v1, Lcom/fyber/ads/AdFormat;->INTERSTITIAL:Lcom/fyber/ads/AdFormat;

    invoke-interface {v0, v1}, Lcom/fyber/requesters/RequestCallback;->onAdNotAvailable(Lcom/fyber/ads/AdFormat;)V

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/fyber/b/b/c;->a:Lcom/fyber/requesters/Callback;

    check-cast v0, Lcom/fyber/requesters/AdRequestCallback;

    sget-object v1, Lcom/fyber/ads/AdFormat;->INTERSTITIAL:Lcom/fyber/ads/AdFormat;

    invoke-interface {v0, v1}, Lcom/fyber/requesters/AdRequestCallback;->onAdNotAvailable(Lcom/fyber/ads/AdFormat;)V

    goto :goto_0
.end method
