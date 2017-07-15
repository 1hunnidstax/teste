.class public final Lcom/fyber/b/b/d$a;
.super Lcom/fyber/b/c$a;
.source "InterstitialRequesterNetworkOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/b/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/b/c$a",
        "<",
        "Lcom/fyber/b/b/d;",
        "Lcom/fyber/b/b/d$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/fyber/utils/u;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Lcom/fyber/b/c$a;-><init>(Lcom/fyber/utils/u;Ljava/lang/String;)V

    .line 56
    return-void
.end method


# virtual methods
.method public final a()Lcom/fyber/b/b/d;
    .locals 3

    .prologue
    .line 65
    new-instance v0, Lcom/fyber/b/b/d;

    iget-object v1, p0, Lcom/fyber/b/b/d$a;->a:Lcom/fyber/utils/u;

    iget-object v2, p0, Lcom/fyber/b/b/d$a;->b:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/fyber/b/b/d;-><init>(Lcom/fyber/utils/u;Ljava/lang/String;)V

    return-object v0
.end method
