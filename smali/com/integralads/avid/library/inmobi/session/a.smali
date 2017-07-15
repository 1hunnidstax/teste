.class public abstract Lcom/integralads/avid/library/inmobi/session/a;
.super Ljava/lang/Object;
.source "AbstractAvidAdSession.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/integralads/avid/library/inmobi/session/a;->a:Ljava/lang/String;

    .line 18
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-static {}, Lcom/integralads/avid/library/inmobi/d;->b()Lcom/integralads/avid/library/inmobi/d;

    move-result-object v0

    iget-object v1, p0, Lcom/integralads/avid/library/inmobi/session/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/integralads/avid/library/inmobi/d;->a(Ljava/lang/String;)Lcom/integralads/avid/library/inmobi/session/internal/a;

    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0, p1}, Lcom/integralads/avid/library/inmobi/session/internal/a;->b(Landroid/view/View;)V

    .line 37
    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Landroid/app/Activity;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-static {}, Lcom/integralads/avid/library/inmobi/d;->b()Lcom/integralads/avid/library/inmobi/d;

    move-result-object v0

    iget-object v1, p0, Lcom/integralads/avid/library/inmobi/session/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/integralads/avid/library/inmobi/d;->a(Ljava/lang/String;)Lcom/integralads/avid/library/inmobi/session/internal/a;

    move-result-object v0

    .line 26
    if-eqz v0, :cond_0

    .line 27
    invoke-virtual {v0, p1}, Lcom/integralads/avid/library/inmobi/session/internal/a;->a(Landroid/view/View;)V

    .line 29
    :cond_0
    invoke-static {}, Lcom/integralads/avid/library/inmobi/d;->b()Lcom/integralads/avid/library/inmobi/d;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/integralads/avid/library/inmobi/d;->a(Landroid/app/Activity;)V

    .line 30
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 40
    invoke-static {}, Lcom/integralads/avid/library/inmobi/d;->b()Lcom/integralads/avid/library/inmobi/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/integralads/avid/library/inmobi/session/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/integralads/avid/library/inmobi/d;->a(Ljava/lang/String;)Lcom/integralads/avid/library/inmobi/session/internal/a;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/internal/a;->l()V

    .line 44
    :cond_0
    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 58
    invoke-static {}, Lcom/integralads/avid/library/inmobi/d;->b()Lcom/integralads/avid/library/inmobi/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/integralads/avid/library/inmobi/session/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/integralads/avid/library/inmobi/d;->a(Ljava/lang/String;)Lcom/integralads/avid/library/inmobi/session/internal/a;

    move-result-object v0

    .line 59
    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/internal/a;->j()Lcom/integralads/avid/library/inmobi/session/internal/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/integralads/avid/library/inmobi/session/internal/i;->a(Landroid/view/View;)V

    .line 62
    :cond_0
    return-void
.end method

.method public c()Lcom/integralads/avid/library/inmobi/c/a;
    .locals 2

    .prologue
    .line 47
    invoke-static {}, Lcom/integralads/avid/library/inmobi/d;->b()Lcom/integralads/avid/library/inmobi/d;

    move-result-object v0

    invoke-virtual {p0}, Lcom/integralads/avid/library/inmobi/session/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/integralads/avid/library/inmobi/d;->a(Ljava/lang/String;)Lcom/integralads/avid/library/inmobi/session/internal/a;

    move-result-object v0

    .line 48
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/internal/a;->e()Lcom/integralads/avid/library/inmobi/c/a;

    move-result-object v0

    .line 49
    :goto_0
    if-nez v0, :cond_1

    .line 50
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "The AVID ad session is not deferred. Please ensure you are only using AvidDeferredAdSessionListener for deferred AVID ad session."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 54
    :cond_1
    return-object v0
.end method
