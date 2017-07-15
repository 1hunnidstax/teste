.class public Lcom/integralads/avid/library/inmobi/session/c;
.super Ljava/lang/Object;
.source "AvidAdSessionManager.java"


# direct methods
.method public static a(Landroid/content/Context;Lcom/integralads/avid/library/inmobi/session/g;)Lcom/integralads/avid/library/inmobi/session/d;
    .locals 3

    .prologue
    .line 28
    invoke-static {}, Lcom/integralads/avid/library/inmobi/d;->b()Lcom/integralads/avid/library/inmobi/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/integralads/avid/library/inmobi/d;->a(Landroid/content/Context;)V

    .line 29
    new-instance v0, Lcom/integralads/avid/library/inmobi/session/d;

    invoke-direct {v0}, Lcom/integralads/avid/library/inmobi/session/d;-><init>()V

    .line 30
    new-instance v1, Lcom/integralads/avid/library/inmobi/session/internal/d;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/d;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/integralads/avid/library/inmobi/session/internal/d;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/integralads/avid/library/inmobi/session/g;)V

    .line 31
    invoke-virtual {v1}, Lcom/integralads/avid/library/inmobi/session/internal/d;->k()V

    .line 32
    invoke-static {}, Lcom/integralads/avid/library/inmobi/d;->b()Lcom/integralads/avid/library/inmobi/d;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/integralads/avid/library/inmobi/d;->a(Lcom/integralads/avid/library/inmobi/session/a;Lcom/integralads/avid/library/inmobi/session/internal/a;)V

    .line 33
    return-object v0
.end method

.method public static b(Landroid/content/Context;Lcom/integralads/avid/library/inmobi/session/g;)Lcom/integralads/avid/library/inmobi/session/f;
    .locals 3

    .prologue
    .line 37
    invoke-static {}, Lcom/integralads/avid/library/inmobi/d;->b()Lcom/integralads/avid/library/inmobi/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/integralads/avid/library/inmobi/d;->a(Landroid/content/Context;)V

    .line 38
    new-instance v0, Lcom/integralads/avid/library/inmobi/session/f;

    invoke-direct {v0}, Lcom/integralads/avid/library/inmobi/session/f;-><init>()V

    .line 39
    new-instance v1, Lcom/integralads/avid/library/inmobi/session/internal/h;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/f;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/integralads/avid/library/inmobi/session/internal/h;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/integralads/avid/library/inmobi/session/g;)V

    .line 40
    invoke-virtual {v1}, Lcom/integralads/avid/library/inmobi/session/internal/h;->k()V

    .line 41
    invoke-static {}, Lcom/integralads/avid/library/inmobi/d;->b()Lcom/integralads/avid/library/inmobi/d;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/integralads/avid/library/inmobi/d;->a(Lcom/integralads/avid/library/inmobi/session/a;Lcom/integralads/avid/library/inmobi/session/internal/a;)V

    .line 42
    return-object v0
.end method

.method public static c(Landroid/content/Context;Lcom/integralads/avid/library/inmobi/session/g;)Lcom/integralads/avid/library/inmobi/session/e;
    .locals 3

    .prologue
    .line 46
    invoke-static {}, Lcom/integralads/avid/library/inmobi/d;->b()Lcom/integralads/avid/library/inmobi/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/integralads/avid/library/inmobi/d;->a(Landroid/content/Context;)V

    .line 47
    new-instance v0, Lcom/integralads/avid/library/inmobi/session/e;

    invoke-direct {v0}, Lcom/integralads/avid/library/inmobi/session/e;-><init>()V

    .line 48
    new-instance v1, Lcom/integralads/avid/library/inmobi/session/internal/g;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/e;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1}, Lcom/integralads/avid/library/inmobi/session/internal/g;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/integralads/avid/library/inmobi/session/g;)V

    .line 49
    invoke-virtual {v1}, Lcom/integralads/avid/library/inmobi/session/internal/g;->k()V

    .line 50
    invoke-static {}, Lcom/integralads/avid/library/inmobi/d;->b()Lcom/integralads/avid/library/inmobi/d;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/integralads/avid/library/inmobi/d;->a(Lcom/integralads/avid/library/inmobi/session/a;Lcom/integralads/avid/library/inmobi/session/internal/a;)V

    .line 51
    return-object v0
.end method
