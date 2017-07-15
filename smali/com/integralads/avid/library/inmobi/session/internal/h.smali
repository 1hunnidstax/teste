.class public Lcom/integralads/avid/library/inmobi/session/internal/h;
.super Lcom/integralads/avid/library/inmobi/session/internal/e;
.source "InternalAvidVideoAdSession.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/integralads/avid/library/inmobi/session/g;)V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/integralads/avid/library/inmobi/session/internal/e;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/integralads/avid/library/inmobi/session/g;)V

    .line 11
    return-void
.end method


# virtual methods
.method public a()Lcom/integralads/avid/library/inmobi/session/internal/SessionType;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/integralads/avid/library/inmobi/session/internal/SessionType;->VIDEO:Lcom/integralads/avid/library/inmobi/session/internal/SessionType;

    return-object v0
.end method

.method public b()Lcom/integralads/avid/library/inmobi/session/internal/MediaType;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/integralads/avid/library/inmobi/session/internal/MediaType;->VIDEO:Lcom/integralads/avid/library/inmobi/session/internal/MediaType;

    return-object v0
.end method
