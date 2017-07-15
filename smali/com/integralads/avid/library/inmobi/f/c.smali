.class public Lcom/integralads/avid/library/inmobi/f/c;
.super Ljava/lang/Object;
.source "AvidViewObstructionValidator.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/integralads/avid/library/inmobi/f/c;->a:Z

    .line 19
    return-void
.end method

.method public a(Landroid/view/View;Lorg/json/JSONObject;Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lorg/json/JSONObject;",
            "Ljava/util/Collection",
            "<",
            "Lcom/integralads/avid/library/inmobi/session/internal/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/integralads/avid/library/inmobi/f/c;->a:Z

    if-nez v0, :cond_0

    .line 36
    :goto_0
    return-void

    .line 29
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/integralads/avid/library/inmobi/session/internal/a;

    .line 31
    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/internal/a;->g()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/internal/a;->j()Lcom/integralads/avid/library/inmobi/session/internal/i;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/integralads/avid/library/inmobi/session/internal/i;->b(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 32
    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/internal/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 35
    :cond_2
    invoke-static {p2, v1}, Lcom/integralads/avid/library/inmobi/f/d;->a(Lorg/json/JSONObject;Ljava/util/List;)V

    goto :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/integralads/avid/library/inmobi/f/c;->a:Z

    .line 23
    return-void
.end method
