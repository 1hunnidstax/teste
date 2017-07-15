.class public final Lcom/vungle/publisher/aim;
.super Ljava/lang/Object;
.source "vungle"


# direct methods
.method public static a(JJ)J
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 73
    mul-long v0, p0, p2

    .line 74
    or-long v2, p0, p2

    const/16 v4, 0x1f

    ushr-long/2addr v2, v4

    cmp-long v2, v2, v6

    if-eqz v2, :cond_0

    .line 75
    cmp-long v2, p2, v6

    if-eqz v2, :cond_0

    div-long v2, v0, p2

    cmp-long v2, v2, p0

    if-eqz v2, :cond_0

    .line 76
    const-wide v0, 0x7fffffffffffffffL

    .line 79
    :cond_0
    return-wide v0
.end method

.method public static a(Ljava/util/concurrent/atomic/AtomicLong;J)J
    .locals 5

    .prologue
    .line 58
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 59
    invoke-static {v0, v1, p1, p2}, Lcom/vungle/publisher/aim;->b(JJ)J

    move-result-wide v2

    .line 60
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    return-wide v0
.end method

.method public static a(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/Queue;Lcom/vungle/publisher/ahu;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            "Ljava/util/Queue",
            "<TT;>;",
            "Lcom/vungle/publisher/ahu",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v8, 0x0

    const-wide/high16 v6, -0x8000000000000000L

    .line 120
    new-instance v0, Lcom/vungle/publisher/akf$1;

    invoke-direct {v0}, Lcom/vungle/publisher/akf$1;-><init>()V

    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    and-long v4, v2, v6

    cmp-long v1, v4, v8

    if-nez v1, :cond_1

    or-long v4, v2, v6

    invoke-virtual {p0, v2, v3, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v1

    if-eqz v1, :cond_0

    cmp-long v1, v2, v8

    if-eqz v1, :cond_1

    invoke-static {p0, p1, p2, v0}, Lcom/vungle/publisher/aim;->a(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/Queue;Lcom/vungle/publisher/ahu;Lcom/vungle/publisher/aii;)V

    .line 121
    :cond_1
    return-void
.end method

.method static a(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/Queue;Lcom/vungle/publisher/ahu;Lcom/vungle/publisher/aii;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            "Ljava/util/Queue",
            "<TT;>;",
            "Lcom/vungle/publisher/ahu",
            "<-TR;>;",
            "Lcom/vungle/publisher/aii",
            "<-TT;+TR;>;)V"
        }
    .end annotation

    .prologue
    const-wide v8, 0x7fffffffffffffffL

    const-wide/high16 v2, -0x8000000000000000L

    .line 267
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 270
    cmp-long v4, v0, v8

    if-nez v4, :cond_3

    .line 272
    :goto_0
    iget-object v0, p2, Lcom/vungle/publisher/ahu;->a:Lcom/vungle/publisher/akd;

    iget-boolean v0, v0, Lcom/vungle/publisher/akd;->b:Z

    if-eqz v0, :cond_1

    .line 358
    :cond_0
    :goto_1
    return-void

    .line 276
    :cond_1
    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    .line 278
    if-nez v0, :cond_2

    .line 279
    invoke-virtual {p2}, Lcom/vungle/publisher/ahu;->a()V

    goto :goto_1

    .line 283
    :cond_2
    invoke-interface {p3, v0}, Lcom/vungle/publisher/aii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/vungle/publisher/ahu;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    move-wide v4, v0

    move-wide v0, v2

    .line 309
    :cond_4
    :goto_2
    cmp-long v6, v0, v4

    if-eqz v6, :cond_6

    .line 310
    iget-object v6, p2, Lcom/vungle/publisher/ahu;->a:Lcom/vungle/publisher/akd;

    iget-boolean v6, v6, Lcom/vungle/publisher/akd;->b:Z

    if-nez v6, :cond_0

    .line 314
    invoke-interface {p1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v6

    .line 316
    if-nez v6, :cond_5

    .line 317
    invoke-virtual {p2}, Lcom/vungle/publisher/ahu;->a()V

    goto :goto_1

    .line 321
    :cond_5
    invoke-interface {p3, v6}, Lcom/vungle/publisher/aii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/vungle/publisher/ahu;->a(Ljava/lang/Object;)V

    .line 323
    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    .line 324
    goto :goto_2

    .line 332
    :cond_6
    cmp-long v4, v0, v4

    if-nez v4, :cond_7

    .line 333
    iget-object v4, p2, Lcom/vungle/publisher/ahu;->a:Lcom/vungle/publisher/akd;

    iget-boolean v4, v4, Lcom/vungle/publisher/akd;->b:Z

    if-nez v4, :cond_0

    .line 336
    invoke-interface {p1}, Ljava/util/Queue;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 337
    invoke-virtual {p2}, Lcom/vungle/publisher/ahu;->a()V

    goto :goto_1

    .line 346
    :cond_7
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    .line 348
    cmp-long v6, v4, v0

    if-nez v6, :cond_4

    .line 355
    and-long/2addr v0, v8

    neg-long v0, v0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    move-result-wide v0

    .line 357
    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    move-wide v4, v0

    move-wide v0, v2

    .line 361
    goto :goto_2
.end method

.method public static b(JJ)J
    .locals 4

    .prologue
    .line 89
    add-long v0, p0, p2

    .line 90
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    .line 91
    const-wide v0, 0x7fffffffffffffffL

    .line 93
    :cond_0
    return-wide v0
.end method

.method public static b(Ljava/util/concurrent/atomic/AtomicLong;J)J
    .locals 9

    .prologue
    const-wide v0, 0x7fffffffffffffffL

    .line 376
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    .line 377
    cmp-long v2, v4, v0

    if-nez v2, :cond_1

    .line 385
    :goto_0
    return-wide v0

    .line 380
    :cond_1
    sub-long v2, v4, p1

    .line 381
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gez v6, :cond_2

    .line 382
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "More produced than requested: "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 384
    :cond_2
    invoke-virtual {p0, v4, v5, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v4

    if-eqz v4, :cond_0

    move-wide v0, v2

    .line 385
    goto :goto_0
.end method
