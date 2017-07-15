.class public final Lcom/fyber/b/b/d;
.super Lcom/fyber/b/c;
.source "InterstitialRequesterNetworkOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/b/b/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/b/c",
        "<",
        "Lcom/fyber/ads/interstitials/b/a;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/fyber/utils/u;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Lcom/fyber/b/c;-><init>(Lcom/fyber/utils/u;Ljava/lang/String;)V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/b/b/d;->a:Z

    .line 28
    return-void
.end method


# virtual methods
.method protected final synthetic a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/ads/internal/InternalAd;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 20
    .line 1038
    new-instance v0, Lcom/fyber/ads/interstitials/b/a;

    iget-object v1, p0, Lcom/fyber/b/b/d;->b:Ljava/lang/String;

    invoke-direct {v0, p1, p2, v1}, Lcom/fyber/ads/interstitials/b/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-object v0
.end method

.method protected final a_()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string v0, "InterstitialRequesterNetworkOperation"

    return-object v0
.end method

.method protected final b()I
    .locals 1

    .prologue
    .line 32
    const/16 v0, 0xa

    return v0
.end method

.method protected final bridge synthetic b(Ljava/io/IOException;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    return-object v0
.end method
