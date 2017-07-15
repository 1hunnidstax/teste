.class public final Lcom/fyber/b/c/a$a;
.super Lcom/fyber/b/a$a;
.source "VideoEventNetworkOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/b/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/b/a$a",
        "<",
        "Lcom/fyber/b/c/a;",
        "Lcom/fyber/b/c/a$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/fyber/ads/internal/a;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/fyber/b/a$a;-><init>(Lcom/fyber/ads/internal/a;)V

    .line 33
    return-void
.end method


# virtual methods
.method protected final a()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 38
    const-string v0, "1"

    return-object v0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 44
    const-string v0, "video"

    return-object v0
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    const-string v0, "rewarded_video_tracking"

    return-object v0
.end method

.method protected final synthetic d()Lcom/fyber/b/e;
    .locals 1

    .prologue
    .line 27
    .line 2054
    new-instance v0, Lcom/fyber/b/c/a;

    invoke-direct {v0, p0}, Lcom/fyber/b/c/a;-><init>(Lcom/fyber/b/c/a$a;)V

    .line 27
    return-object v0
.end method

.method protected final bridge synthetic e()Lcom/fyber/b/e$a;
    .locals 0

    .prologue
    .line 27
    return-object p0
.end method
