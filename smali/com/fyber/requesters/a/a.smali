.class public final Lcom/fyber/requesters/a/a;
.super Lcom/fyber/requesters/a/b;
.source "DispatchableAdCallback.java"

# interfaces
.implements Lcom/fyber/requesters/AdRequestCallback;


# direct methods
.method public constructor <init>(Lcom/fyber/requesters/AdRequestCallback;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/fyber/requesters/a/b;-><init>(Lcom/fyber/requesters/Callback;Landroid/os/Handler;)V

    .line 19
    return-void
.end method


# virtual methods
.method public final onAdAvailable(Lcom/fyber/ads/Ad;)V
    .locals 1

    .prologue
    .line 23
    new-instance v0, Lcom/fyber/requesters/a/a$1;

    invoke-direct {v0, p0, p1}, Lcom/fyber/requesters/a/a$1;-><init>(Lcom/fyber/requesters/a/a;Lcom/fyber/ads/Ad;)V

    invoke-virtual {p0, v0}, Lcom/fyber/requesters/a/a;->a(Lcom/fyber/utils/d;)V

    .line 29
    return-void
.end method

.method public final onAdNotAvailable(Lcom/fyber/ads/AdFormat;)V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/fyber/requesters/a/a$2;

    invoke-direct {v0, p0, p1}, Lcom/fyber/requesters/a/a$2;-><init>(Lcom/fyber/requesters/a/a;Lcom/fyber/ads/AdFormat;)V

    invoke-virtual {p0, v0}, Lcom/fyber/requesters/a/a;->a(Lcom/fyber/utils/d;)V

    .line 39
    return-void
.end method
