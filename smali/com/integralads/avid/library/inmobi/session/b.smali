.class public abstract Lcom/integralads/avid/library/inmobi/session/b;
.super Lcom/integralads/avid/library/inmobi/session/a;
.source "AbstractAvidManagedAdSession.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/integralads/avid/library/inmobi/session/a",
        "<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/integralads/avid/library/inmobi/session/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 11
    invoke-static {}, Lcom/integralads/avid/library/inmobi/d;->b()Lcom/integralads/avid/library/inmobi/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/integralads/avid/library/inmobi/session/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/integralads/avid/library/inmobi/d;->a(Ljava/lang/String;)Lcom/integralads/avid/library/inmobi/session/internal/a;

    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/internal/a;->i()Lcom/integralads/avid/library/inmobi/session/internal/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/integralads/avid/library/inmobi/session/internal/a/a;->c(Ljava/lang/String;)V

    .line 15
    :cond_0
    return-void
.end method
