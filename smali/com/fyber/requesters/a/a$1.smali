.class final Lcom/fyber/requesters/a/a$1;
.super Lcom/fyber/utils/d;
.source "DispatchableAdCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/requesters/a/a;->onAdAvailable(Lcom/fyber/ads/Ad;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fyber/ads/Ad;

.field final synthetic b:Lcom/fyber/requesters/a/a;


# direct methods
.method constructor <init>(Lcom/fyber/requesters/a/a;Lcom/fyber/ads/Ad;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/fyber/requesters/a/a$1;->b:Lcom/fyber/requesters/a/a;

    iput-object p2, p0, Lcom/fyber/requesters/a/a$1;->a:Lcom/fyber/ads/Ad;

    invoke-direct {p0}, Lcom/fyber/utils/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fyber/requesters/a/a$1;->b:Lcom/fyber/requesters/a/a;

    iget-object v0, v0, Lcom/fyber/requesters/a/a;->a:Lcom/fyber/requesters/Callback;

    check-cast v0, Lcom/fyber/requesters/AdRequestCallback;

    iget-object v1, p0, Lcom/fyber/requesters/a/a$1;->a:Lcom/fyber/ads/Ad;

    invoke-interface {v0, v1}, Lcom/fyber/requesters/AdRequestCallback;->onAdAvailable(Lcom/fyber/ads/Ad;)V

    .line 27
    return-void
.end method
