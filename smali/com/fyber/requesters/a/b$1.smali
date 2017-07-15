.class final Lcom/fyber/requesters/a/b$1;
.super Lcom/fyber/utils/d;
.source "DispatchableCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fyber/requesters/a/b;->onRequestError(Lcom/fyber/requesters/RequestError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/fyber/requesters/RequestError;

.field final synthetic b:Lcom/fyber/requesters/a/b;


# direct methods
.method constructor <init>(Lcom/fyber/requesters/a/b;Lcom/fyber/requesters/RequestError;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/fyber/requesters/a/b$1;->b:Lcom/fyber/requesters/a/b;

    iput-object p2, p0, Lcom/fyber/requesters/a/b$1;->a:Lcom/fyber/requesters/RequestError;

    invoke-direct {p0}, Lcom/fyber/utils/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/fyber/requesters/a/b$1;->b:Lcom/fyber/requesters/a/b;

    iget-object v0, v0, Lcom/fyber/requesters/a/b;->a:Lcom/fyber/requesters/Callback;

    iget-object v1, p0, Lcom/fyber/requesters/a/b$1;->a:Lcom/fyber/requesters/RequestError;

    invoke-interface {v0, v1}, Lcom/fyber/requesters/Callback;->onRequestError(Lcom/fyber/requesters/RequestError;)V

    .line 31
    return-void
.end method
