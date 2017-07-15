.class public final Lcom/fyber/ads/a;
.super Ljava/lang/Object;
.source "AdRequestResponse.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/fyber/ads/internal/InternalAd;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p1, p0, Lcom/fyber/ads/a;->a:I

    .line 24
    iput-object p2, p0, Lcom/fyber/ads/a;->b:Ljava/util/List;

    .line 25
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/fyber/ads/a;->a:I

    return v0
.end method

.method public final b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fyber/ads/a;->b:Ljava/util/List;

    return-object v0
.end method
