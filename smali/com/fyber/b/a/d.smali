.class public final Lcom/fyber/b/a/d;
.super Lcom/fyber/b/c;
.source "BannerRequesterNetworkOperation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/b/c",
        "<",
        "Lcom/fyber/ads/banners/a/d;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/fyber/utils/u;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Lcom/fyber/b/c;-><init>(Lcom/fyber/utils/u;Ljava/lang/String;)V

    .line 33
    return-void
.end method

.method public static a(Lcom/fyber/utils/u;Ljava/lang/String;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/utils/u;",
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
    .line 28
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    new-instance v1, Lcom/fyber/b/a/d;

    invoke-direct {v1, p0, p1}, Lcom/fyber/b/a/d;-><init>(Lcom/fyber/utils/u;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/fyber/Fyber$a;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/ads/internal/InternalAd;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 22
    .line 1043
    new-instance v0, Lcom/fyber/ads/banners/a/d;

    iget-object v1, p0, Lcom/fyber/b/a/d;->b:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1}, Lcom/fyber/ads/banners/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    return-object v0
.end method

.method protected final a_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    const-string v0, "BannerRequesterNetworkOperation"

    return-object v0
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 37
    const/16 v0, 0x14

    return v0
.end method

.method protected final bridge synthetic b(Ljava/io/IOException;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    return-object v0
.end method
