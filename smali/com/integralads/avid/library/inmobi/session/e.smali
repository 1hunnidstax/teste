.class public Lcom/integralads/avid/library/inmobi/session/e;
.super Lcom/integralads/avid/library/inmobi/session/b;
.source "AvidManagedVideoAdSession.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/integralads/avid/library/inmobi/session/b;-><init>()V

    return-void
.end method


# virtual methods
.method public d()Lcom/integralads/avid/library/inmobi/g/a;
    .locals 2

    .prologue
    .line 10
    invoke-static {}, Lcom/integralads/avid/library/inmobi/d;->b()Lcom/integralads/avid/library/inmobi/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/integralads/avid/library/inmobi/session/e;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/integralads/avid/library/inmobi/d;->a(Ljava/lang/String;)Lcom/integralads/avid/library/inmobi/session/internal/a;

    move-result-object v0

    check-cast v0, Lcom/integralads/avid/library/inmobi/session/internal/g;

    .line 11
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/internal/g;->v()Lcom/integralads/avid/library/inmobi/g/b;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
