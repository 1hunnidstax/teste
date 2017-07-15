.class public abstract Lcom/fyber/requesters/a/b;
.super Ljava/lang/Object;
.source "DispatchableCallback.java"

# interfaces
.implements Lcom/fyber/requesters/Callback;


# instance fields
.field protected final a:Lcom/fyber/requesters/Callback;

.field protected final b:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/fyber/requesters/Callback;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/fyber/requesters/a/b;->a:Lcom/fyber/requesters/Callback;

    .line 22
    iput-object p2, p0, Lcom/fyber/requesters/a/b;->b:Landroid/os/Handler;

    .line 23
    return-void
.end method


# virtual methods
.method protected final a(Lcom/fyber/utils/d;)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fyber/requesters/a/b;->b:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/fyber/requesters/a/b;->b:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 42
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    invoke-static {p1}, Lcom/fyber/Fyber$a;->a(Lcom/fyber/utils/d;)V

    goto :goto_0
.end method

.method public onRequestError(Lcom/fyber/requesters/RequestError;)V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/fyber/requesters/a/b$1;

    invoke-direct {v0, p0, p1}, Lcom/fyber/requesters/a/b$1;-><init>(Lcom/fyber/requesters/a/b;Lcom/fyber/requesters/RequestError;)V

    invoke-virtual {p0, v0}, Lcom/fyber/requesters/a/b;->a(Lcom/fyber/utils/d;)V

    .line 33
    return-void
.end method
