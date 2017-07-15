.class public Lcom/integralads/avid/library/inmobi/c/b;
.super Lcom/integralads/avid/library/inmobi/b/a;
.source "AvidDeferredAdSessionListenerImpl.java"

# interfaces
.implements Lcom/integralads/avid/library/inmobi/c/a;


# direct methods
.method public constructor <init>(Lcom/integralads/avid/library/inmobi/session/internal/a;Lcom/integralads/avid/library/inmobi/session/internal/a/a;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Lcom/integralads/avid/library/inmobi/b/a;-><init>(Lcom/integralads/avid/library/inmobi/session/internal/a;Lcom/integralads/avid/library/inmobi/session/internal/a/a;)V

    .line 11
    return-void
.end method


# virtual methods
.method public a_()V
    .locals 2

    .prologue
    .line 15
    invoke-virtual {p0}, Lcom/integralads/avid/library/inmobi/c/b;->d()V

    .line 16
    invoke-virtual {p0}, Lcom/integralads/avid/library/inmobi/c/b;->b()Lcom/integralads/avid/library/inmobi/session/internal/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/internal/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The AVID ad session is already ready. Please ensure you are only calling recordReadyEvent once for the deferred AVID ad session."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/integralads/avid/library/inmobi/c/b;->c()Lcom/integralads/avid/library/inmobi/session/internal/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/internal/a/a;->d()V

    .line 22
    invoke-virtual {p0}, Lcom/integralads/avid/library/inmobi/c/b;->b()Lcom/integralads/avid/library/inmobi/session/internal/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/internal/a;->m()V

    .line 23
    return-void
.end method
