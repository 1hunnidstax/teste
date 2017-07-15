.class final Lcom/vungle/publisher/aiz$b$a;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ahr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/aiz$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/aiz$b;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/aiz$b;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/vungle/publisher/aiz$b$a;->a:Lcom/vungle/publisher/aiz$b;

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 13

    .prologue
    .line 318
    iget-object v1, p0, Lcom/vungle/publisher/aiz$b$a;->a:Lcom/vungle/publisher/aiz$b;

    .line 319
    iget-object v0, v1, Lcom/vungle/publisher/aiz$b;->g:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v2, v1, Lcom/vungle/publisher/aiz$b;->f:Ljava/util/ArrayDeque;

    iget-object v3, v1, Lcom/vungle/publisher/aiz$b;->b:Lcom/vungle/publisher/ahu;

    new-instance v4, Lcom/vungle/publisher/akf$1;

    invoke-direct {v4}, Lcom/vungle/publisher/akf$1;-><init>()V

    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-gez v5, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "n >= 0 required but it was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const-wide/16 v6, 0x0

    cmp-long v5, p1, v6

    if-nez v5, :cond_3

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    const-wide/high16 v4, -0x8000000000000000L

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 320
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-eqz v0, :cond_1

    .line 321
    invoke-virtual {p0}, Lcom/vungle/publisher/aiz$b$a;->get()Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/vungle/publisher/aiz$b$a;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 322
    iget v0, v1, Lcom/vungle/publisher/aiz$b;->d:I

    int-to-long v2, v0

    const-wide/16 v4, 0x1

    sub-long v4, p1, v4

    invoke-static {v2, v3, v4, v5}, Lcom/vungle/publisher/aim;->a(JJ)J

    move-result-wide v2

    .line 323
    iget v0, v1, Lcom/vungle/publisher/aiz$b;->c:I

    int-to-long v4, v0

    invoke-static {v2, v3, v4, v5}, Lcom/vungle/publisher/aim;->b(JJ)J

    move-result-wide v2

    .line 325
    invoke-virtual {v1, v2, v3}, Lcom/vungle/publisher/aiz$b;->a(J)V

    .line 332
    :cond_1
    :goto_1
    return-void

    .line 319
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v6

    const-wide/high16 v8, -0x8000000000000000L

    and-long/2addr v8, v6

    const-wide v10, 0x7fffffffffffffffL

    and-long/2addr v10, v6

    invoke-static {v10, v11, p1, p2}, Lcom/vungle/publisher/aim;->b(JJ)J

    move-result-wide v10

    or-long/2addr v10, v8

    invoke-virtual {v0, v6, v7, v10, v11}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v5

    if-eqz v5, :cond_3

    const-wide/high16 v10, -0x8000000000000000L

    cmp-long v5, v6, v10

    if-nez v5, :cond_4

    invoke-static {v0, v2, v3, v4}, Lcom/vungle/publisher/aim;->a(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/Queue;Lcom/vungle/publisher/ahu;Lcom/vungle/publisher/aii;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const-wide/16 v2, 0x0

    cmp-long v0, v8, v2

    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 327
    :cond_6
    iget v0, v1, Lcom/vungle/publisher/aiz$b;->d:I

    int-to-long v2, v0

    invoke-static {v2, v3, p1, p2}, Lcom/vungle/publisher/aim;->a(JJ)J

    move-result-wide v2

    .line 328
    invoke-virtual {v1, v2, v3}, Lcom/vungle/publisher/aiz$b;->a(J)V

    goto :goto_1
.end method
