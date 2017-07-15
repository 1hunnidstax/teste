.class public abstract Lcom/integralads/avid/library/inmobi/b/a;
.super Ljava/lang/Object;
.source "AvidBaseListenerImpl.java"


# instance fields
.field private a:Lcom/integralads/avid/library/inmobi/session/internal/a;

.field private b:Lcom/integralads/avid/library/inmobi/session/internal/a/a;


# direct methods
.method public constructor <init>(Lcom/integralads/avid/library/inmobi/session/internal/a;Lcom/integralads/avid/library/inmobi/session/internal/a/a;)V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/integralads/avid/library/inmobi/b/a;->a:Lcom/integralads/avid/library/inmobi/session/internal/a;

    .line 13
    iput-object p2, p0, Lcom/integralads/avid/library/inmobi/b/a;->b:Lcom/integralads/avid/library/inmobi/session/internal/a/a;

    .line 14
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcom/integralads/avid/library/inmobi/b/a;->a:Lcom/integralads/avid/library/inmobi/session/internal/a;

    .line 18
    iput-object v0, p0, Lcom/integralads/avid/library/inmobi/b/a;->b:Lcom/integralads/avid/library/inmobi/session/internal/a/a;

    .line 19
    return-void
.end method

.method protected b()Lcom/integralads/avid/library/inmobi/session/internal/a;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/b/a;->a:Lcom/integralads/avid/library/inmobi/session/internal/a;

    return-object v0
.end method

.method protected c()Lcom/integralads/avid/library/inmobi/session/internal/a/a;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/b/a;->b:Lcom/integralads/avid/library/inmobi/session/internal/a/a;

    return-object v0
.end method

.method protected d()V
    .locals 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/b/a;->a:Lcom/integralads/avid/library/inmobi/session/internal/a;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The AVID ad session is ended. Please ensure you are not recording events after the session has ended."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 34
    :cond_0
    return-void
.end method
