.class public Lcom/integralads/avid/library/inmobi/session/internal/g;
.super Lcom/integralads/avid/library/inmobi/session/internal/f;
.source "InternalAvidManagedVideoAdSession.java"


# instance fields
.field private a:Lcom/integralads/avid/library/inmobi/g/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/integralads/avid/library/inmobi/session/g;)V
    .locals 2

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/integralads/avid/library/inmobi/session/internal/f;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/integralads/avid/library/inmobi/session/g;)V

    .line 14
    new-instance v0, Lcom/integralads/avid/library/inmobi/g/b;

    invoke-virtual {p0}, Lcom/integralads/avid/library/inmobi/session/internal/g;->i()Lcom/integralads/avid/library/inmobi/session/internal/a/a;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/integralads/avid/library/inmobi/g/b;-><init>(Lcom/integralads/avid/library/inmobi/session/internal/a;Lcom/integralads/avid/library/inmobi/session/internal/a/a;)V

    iput-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/g;->a:Lcom/integralads/avid/library/inmobi/g/b;

    .line 15
    return-void
.end method


# virtual methods
.method public a()Lcom/integralads/avid/library/inmobi/session/internal/SessionType;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/integralads/avid/library/inmobi/session/internal/SessionType;->MANAGED_VIDEO:Lcom/integralads/avid/library/inmobi/session/internal/SessionType;

    return-object v0
.end method

.method public b()Lcom/integralads/avid/library/inmobi/session/internal/MediaType;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/integralads/avid/library/inmobi/session/internal/MediaType;->VIDEO:Lcom/integralads/avid/library/inmobi/session/internal/MediaType;

    return-object v0
.end method

.method public l()V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/g;->a:Lcom/integralads/avid/library/inmobi/g/b;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/g/b;->a()V

    .line 34
    invoke-super {p0}, Lcom/integralads/avid/library/inmobi/session/internal/f;->l()V

    .line 35
    return-void
.end method

.method public v()Lcom/integralads/avid/library/inmobi/g/b;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/g;->a:Lcom/integralads/avid/library/inmobi/g/b;

    return-object v0
.end method
