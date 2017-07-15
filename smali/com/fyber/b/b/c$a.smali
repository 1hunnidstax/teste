.class public final Lcom/fyber/b/b/c$a;
.super Lcom/fyber/b/b$a;
.source "InterstitialFetchOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/b/b/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/b/b$a",
        "<",
        "Lcom/fyber/b/b/c;",
        "Lcom/fyber/b/b/c$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/fyber/b/b$a;-><init>()V

    .line 96
    return-void
.end method


# virtual methods
.method protected final bridge synthetic a()Lcom/fyber/b/b$a;
    .locals 0

    .prologue
    .line 90
    return-object p0
.end method

.method protected final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const-string v0, "interstitial"

    return-object v0
.end method
