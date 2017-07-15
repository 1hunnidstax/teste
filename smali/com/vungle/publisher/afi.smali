.class public final Lcom/vungle/publisher/afi;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/aii;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vungle/publisher/aii",
        "<",
        "Lcom/vungle/publisher/dn",
        "<*>;",
        "Lcom/vungle/publisher/ahp",
        "<+",
        "Lcom/vungle/publisher/dn",
        "<*>;>;>;"
    }
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/cq$b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/gm$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/afl;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/vungle/publisher/eo$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/vungle/publisher/dx$b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/vungle/publisher/dn;)Lcom/vungle/publisher/ahp;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/dn",
            "<*>;)",
            "Lcom/vungle/publisher/ahp",
            "<+",
            "Lcom/vungle/publisher/dn",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 55
    if-nez p1, :cond_0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "no ad to prepare "

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    invoke-interface {p1}, Lcom/vungle/publisher/dn;->d()Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-interface {p1}, Lcom/vungle/publisher/dn;->f()Lcom/vungle/publisher/j;

    move-result-object v0

    .line 60
    invoke-interface {p1}, Lcom/vungle/publisher/dn;->g()Lcom/vungle/publisher/cj$c;

    move-result-object v2

    .line 61
    const-string v3, "VunglePrepare"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "run PrepareAdRunnable. adId = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", adType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :try_start_0
    const-string v0, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "local ad not prepared. has status: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    sget-object v0, Lcom/vungle/publisher/afi$6;->a:[I

    invoke-virtual {v2}, Lcom/vungle/publisher/cj$c;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 82
    :goto_0
    iget-object v0, p0, Lcom/vungle/publisher/afi;->a:Lcom/vungle/publisher/cq$b;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/cq$b;->a(Lcom/vungle/publisher/dn;)Lcom/vungle/publisher/ec;

    sget-object v0, Lcom/vungle/publisher/cj$c;->d:Lcom/vungle/publisher/cj$c;

    invoke-interface {p1, v0}, Lcom/vungle/publisher/dn;->a(Lcom/vungle/publisher/cj$c;)V

    invoke-interface {p1}, Lcom/vungle/publisher/dn;->b_()I

    .line 83
    invoke-static {p1}, Lcom/vungle/publisher/afi;->c(Lcom/vungle/publisher/dn;)V

    invoke-interface {p1}, Lcom/vungle/publisher/dn;->f_()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/vungle/publisher/akc;->a(Ljava/lang/Object;)Lcom/vungle/publisher/akc;

    move-result-object v0

    :goto_1
    new-instance v2, Lcom/vungle/publisher/afi$5;

    invoke-direct {v2, p0, p1}, Lcom/vungle/publisher/afi$5;-><init>(Lcom/vungle/publisher/afi;Lcom/vungle/publisher/dn;)V

    invoke-virtual {v0, v2}, Lcom/vungle/publisher/ahp;->b(Lcom/vungle/publisher/aif;)Lcom/vungle/publisher/ahp;

    move-result-object v0

    new-instance v2, Lcom/vungle/publisher/afi$3;

    invoke-direct {v2, p0, p1}, Lcom/vungle/publisher/afi$3;-><init>(Lcom/vungle/publisher/afi;Lcom/vungle/publisher/dn;)V

    invoke-virtual {v0, v2}, Lcom/vungle/publisher/ahp;->a(Lcom/vungle/publisher/aif;)Lcom/vungle/publisher/ahp;

    move-result-object v0

    new-instance v2, Lcom/vungle/publisher/afi$1;

    invoke-direct {v2, p0, p1}, Lcom/vungle/publisher/afi$1;-><init>(Lcom/vungle/publisher/afi;Lcom/vungle/publisher/dn;)V

    invoke-virtual {v0, v2}, Lcom/vungle/publisher/ahp;->a(Lcom/vungle/publisher/aii;)Lcom/vungle/publisher/ahp;

    move-result-object v0

    :goto_2
    return-object v0

    .line 68
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "ad status: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    iget-object v2, p0, Lcom/vungle/publisher/afi;->b:Lcom/vungle/publisher/gm$a;

    const-string v3, "VunglePrepare"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "error processing ad.id: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1, v0}, Lcom/vungle/publisher/gm$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    invoke-static {v0}, Lcom/vungle/publisher/ahx;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    .line 89
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "could not prepare ad"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :pswitch_1
    :try_start_1
    const-string v0, "VunglePrepare"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ad already "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/vungle/publisher/cj$c;->f:Lcom/vungle/publisher/cj$c;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", recycling: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-direct {p0, p1}, Lcom/vungle/publisher/afi;->b(Lcom/vungle/publisher/dn;)V

    .line 74
    :pswitch_2
    const-string v0, "VunglePrepare"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ad already "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lcom/vungle/publisher/cj$c;->e:Lcom/vungle/publisher/cj$c;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {p1}, Lcom/vungle/publisher/akc;->a(Ljava/lang/Object;)Lcom/vungle/publisher/akc;

    move-result-object v0

    goto :goto_2

    .line 77
    :pswitch_3
    invoke-interface {p1}, Lcom/vungle/publisher/dn;->d()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/vungle/publisher/dn;->g()Lcom/vungle/publisher/cj$c;

    move-result-object v2

    sget-object v3, Lcom/vungle/publisher/cj$c;->b:Lcom/vungle/publisher/cj$c;

    if-ne v2, v3, :cond_1

    sget-object v3, Lcom/vungle/publisher/cj$c;->d:Lcom/vungle/publisher/cj$c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-interface {p1}, Lcom/vungle/publisher/dn;->k()J

    move-result-wide v6

    cmp-long v8, v4, v6

    if-gez v8, :cond_2

    const-string v4, "VunglePrepare"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "clock change detected; updating ad.id "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " status from "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v3}, Lcom/vungle/publisher/dn;->a(Lcom/vungle/publisher/cj$c;)V

    :cond_1
    :goto_3
    invoke-interface {p1}, Lcom/vungle/publisher/dn;->b_()I

    sget-object v0, Lcom/vungle/publisher/cj$c;->b:Lcom/vungle/publisher/cj$c;

    goto/16 :goto_0

    :cond_2
    sub-long/2addr v4, v6

    const-wide/32 v6, 0xea60

    div-long/2addr v4, v6

    const-wide/16 v6, 0x5a0

    cmp-long v6, v4, v6

    if-ltz v6, :cond_3

    const-string v6, "VunglePrepare"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "retrying "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v8, Lcom/vungle/publisher/cj$c;->b:Lcom/vungle/publisher/cj$c;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ad.id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " after "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "/1440 minutes; updating status from "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v3}, Lcom/vungle/publisher/dn;->a(Lcom/vungle/publisher/cj$c;)V

    goto :goto_3

    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "could not update failed status"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_4
    new-instance v0, Lcom/vungle/publisher/ais;

    invoke-direct {v0, v2}, Lcom/vungle/publisher/ais;-><init>(Ljava/lang/Iterable;)V

    invoke-static {v0}, Lcom/vungle/publisher/ahp;->a(Lcom/vungle/publisher/ahp$a;)Lcom/vungle/publisher/ahp;

    move-result-object v0

    invoke-static {}, Lcom/vungle/publisher/alw;->c()Lcom/vungle/publisher/ahs;

    move-result-object v3

    sget v4, Lcom/vungle/publisher/aka;->b:I

    instance-of v5, v0, Lcom/vungle/publisher/akc;

    if-eqz v5, :cond_5

    check-cast v0, Lcom/vungle/publisher/akc;

    invoke-virtual {v0, v3}, Lcom/vungle/publisher/akc;->a(Lcom/vungle/publisher/ahs;)Lcom/vungle/publisher/ahp;

    move-result-object v0

    :goto_4
    iget-object v3, p0, Lcom/vungle/publisher/afi;->c:Lcom/vungle/publisher/afl;

    invoke-virtual {v0, v3}, Lcom/vungle/publisher/ahp;->a(Lcom/vungle/publisher/aii;)Lcom/vungle/publisher/ahp;

    move-result-object v0

    new-instance v3, Lcom/vungle/publisher/afi$2;

    invoke-direct {v3, p0}, Lcom/vungle/publisher/afi$2;-><init>(Lcom/vungle/publisher/afi;)V

    invoke-virtual {v0, v3}, Lcom/vungle/publisher/ahp;->a(Lcom/vungle/publisher/aif;)Lcom/vungle/publisher/ahp;

    move-result-object v0

    new-instance v3, Lcom/vungle/publisher/afi$4;

    invoke-direct {v3, p0}, Lcom/vungle/publisher/afi$4;-><init>(Lcom/vungle/publisher/afi;)V

    invoke-virtual {v0, v3}, Lcom/vungle/publisher/ahp;->b(Lcom/vungle/publisher/aif;)Lcom/vungle/publisher/ahp;

    move-result-object v0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-instance v3, Lcom/vungle/publisher/aiz;

    invoke-direct {v3, v2, v2}, Lcom/vungle/publisher/aiz;-><init>(II)V

    invoke-virtual {v0, v3}, Lcom/vungle/publisher/ahp;->a(Lcom/vungle/publisher/ahp$b;)Lcom/vungle/publisher/ahp;

    move-result-object v0

    goto/16 :goto_1

    :cond_5
    new-instance v5, Lcom/vungle/publisher/ajc;

    invoke-direct {v5, v3, v4}, Lcom/vungle/publisher/ajc;-><init>(Lcom/vungle/publisher/ahs;I)V

    invoke-virtual {v0, v5}, Lcom/vungle/publisher/ahp;->a(Lcom/vungle/publisher/ahp$b;)Lcom/vungle/publisher/ahp;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_4

    .line 64
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private b(Lcom/vungle/publisher/dn;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/dn",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 99
    invoke-interface {p1}, Lcom/vungle/publisher/dn;->d()Ljava/lang/String;

    move-result-object v1

    .line 100
    const-string v0, "VunglePrepare"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "re-verify prepare_retry_count "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/vungle/publisher/dn;->i()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for ad "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    invoke-static {p1}, Lcom/vungle/publisher/afi;->c(Lcom/vungle/publisher/dn;)V

    .line 102
    invoke-interface {p1}, Lcom/vungle/publisher/dn;->f_()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/gg;

    .line 103
    invoke-interface {v0}, Lcom/vungle/publisher/gg;->i()Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v0}, Lcom/vungle/publisher/gg;->t()Lcom/vungle/publisher/el$b;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " re-verification failed for ad_id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/vungle/publisher/gg;->l()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 105
    :cond_1
    sget-object v0, Lcom/vungle/publisher/cj$c;->e:Lcom/vungle/publisher/cj$c;

    .line 106
    const-string v2, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "re-verified ad and set to "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/vungle/publisher/afi;->a:Lcom/vungle/publisher/cq$b;

    invoke-virtual {v1, p1}, Lcom/vungle/publisher/cq$b;->a(Lcom/vungle/publisher/dn;)Lcom/vungle/publisher/ec;

    move-result-object v1

    .line 108
    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/vungle/publisher/ec;->a_(Ljava/lang/Long;)V

    .line 109
    invoke-interface {p1, v0}, Lcom/vungle/publisher/dn;->a(Lcom/vungle/publisher/cj$c;)V

    .line 110
    invoke-interface {p1}, Lcom/vungle/publisher/dn;->b_()I

    .line 111
    return-void
.end method

.method private static c(Lcom/vungle/publisher/dn;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/dn",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 114
    invoke-interface {p0}, Lcom/vungle/publisher/dn;->g_()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid ad structure"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    check-cast p1, Lcom/vungle/publisher/dn;

    invoke-direct {p0, p1}, Lcom/vungle/publisher/afi;->a(Lcom/vungle/publisher/dn;)Lcom/vungle/publisher/ahp;

    move-result-object v0

    return-object v0
.end method
