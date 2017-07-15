.class public final Lcom/fyber/b/a/c;
.super Lcom/fyber/b/b;
.source "BannerFetchOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/b/a/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/b/b",
        "<",
        "Lcom/fyber/ads/banners/a/d;",
        "Lcom/fyber/ads/banners/BannerAd;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fyber/ads/banners/NetworkBannerSize;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/fyber/b/a/c$a;)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/fyber/b/b;-><init>(Lcom/fyber/b/b$a;)V

    .line 34
    invoke-static {p1}, Lcom/fyber/b/a/c$a;->a(Lcom/fyber/b/a/c$a;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/b/a/c;->e:Ljava/util/List;

    .line 35
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/b/a/c;->d:Z

    .line 36
    return-void
.end method


# virtual methods
.method protected final a()I
    .locals 1

    .prologue
    .line 51
    const/16 v0, 0xf

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
            "Lcom/fyber/b/a/b;",
            "Lcom/fyber/b/a/b$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Lcom/fyber/b/a/b$a;

    invoke-direct {v0, p1}, Lcom/fyber/b/a/b$a;-><init>(Lcom/fyber/ads/internal/a;)V

    return-object v0
.end method

.method protected final a(Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/fyber/ads/a",
            "<",
            "Lcom/fyber/ads/banners/a/d;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fyber/b/a/c;->b:Lcom/fyber/utils/u;

    invoke-static {v0, p1}, Lcom/fyber/b/a/d;->a(Lcom/fyber/utils/u;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Ljava/util/List;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fyber/ads/banners/a/d;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/fyber/ads/banners/BannerAd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 45
    new-instance v0, Lcom/fyber/b/a/a$a;

    iget-object v1, p0, Lcom/fyber/b/a/c;->e:Ljava/util/List;

    invoke-direct {v0, p1, v1}, Lcom/fyber/b/a/a$a;-><init>(Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v0}, Lcom/fyber/b/a/a$a;->a()Lcom/fyber/b/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/b/a/c;->c:Ljava/lang/ref/WeakReference;

    .line 46
    invoke-virtual {v0, v1}, Lcom/fyber/b/a/a;->a(Ljava/lang/ref/WeakReference;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic a(Lcom/fyber/ads/Ad;)V
    .locals 1

    .prologue
    .line 24
    check-cast p1, Lcom/fyber/ads/banners/BannerAd;

    .line 1066
    iget-object v0, p0, Lcom/fyber/b/a/c;->a:Lcom/fyber/requesters/Callback;

    check-cast v0, Lcom/fyber/requesters/AdRequestCallback;

    invoke-interface {v0, p1}, Lcom/fyber/requesters/AdRequestCallback;->onAdAvailable(Lcom/fyber/ads/Ad;)V

    .line 24
    return-void
.end method

.method protected final a(Lcom/fyber/ads/internal/c;)V
    .locals 0

    .prologue
    .line 61
    invoke-static {p1}, Lcom/fyber/ads/banners/a/a;->a(Lcom/fyber/ads/internal/c;)Z

    .line 62
    return-void
.end method

.method protected final b()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/fyber/b/a/c;->a:Lcom/fyber/requesters/Callback;

    check-cast v0, Lcom/fyber/requesters/AdRequestCallback;

    sget-object v1, Lcom/fyber/ads/AdFormat;->BANNER:Lcom/fyber/ads/AdFormat;

    invoke-interface {v0, v1}, Lcom/fyber/requesters/AdRequestCallback;->onAdNotAvailable(Lcom/fyber/ads/AdFormat;)V

    .line 72
    return-void
.end method
