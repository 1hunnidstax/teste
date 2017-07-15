.class public final Lcom/fyber/b/a/c$a;
.super Lcom/fyber/b/b$a;
.source "BannerFetchOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/b/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/b/b$a",
        "<",
        "Lcom/fyber/b/a/c;",
        "Lcom/fyber/b/a/c$a;",
        ">;"
    }
.end annotation


# instance fields
.field private d:Ljava/util/List;
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
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Lcom/fyber/b/b$a;-><init>()V

    .line 84
    return-void
.end method

.method static synthetic a(Lcom/fyber/b/a/c$a;)Ljava/util/List;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/fyber/b/a/c$a;->d:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)Lcom/fyber/b/a/c$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fyber/ads/banners/NetworkBannerSize;",
            ">;)",
            "Lcom/fyber/b/a/c$a;"
        }
    .end annotation

    .prologue
    .line 97
    iput-object p1, p0, Lcom/fyber/b/a/c$a;->d:Ljava/util/List;

    .line 98
    return-object p0
.end method

.method protected final bridge synthetic a()Lcom/fyber/b/b$a;
    .locals 0

    .prologue
    .line 74
    return-object p0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    const-string v0, "banner"

    return-object v0
.end method
