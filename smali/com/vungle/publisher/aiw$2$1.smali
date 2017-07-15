.class final Lcom/vungle/publisher/aiw$2$1;
.super Lcom/vungle/publisher/ahu;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/aiw$2;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/ahu",
        "<TT;>;"
    }
.end annotation


# instance fields
.field b:Z

.field final synthetic c:Lcom/vungle/publisher/aiw$2;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/aiw$2;)V
    .locals 0

    .prologue
    .line 220
    iput-object p1, p0, Lcom/vungle/publisher/aiw$2$1;->c:Lcom/vungle/publisher/aiw$2;

    invoke-direct {p0}, Lcom/vungle/publisher/ahu;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/vungle/publisher/aiw$2$1;->b:Z

    if-nez v0, :cond_0

    .line 226
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/publisher/aiw$2$1;->b:Z

    .line 227
    iget-object v0, p0, Lcom/vungle/publisher/ahu;->a:Lcom/vungle/publisher/akd;

    invoke-virtual {v0}, Lcom/vungle/publisher/akd;->b()V

    .line 228
    iget-object v0, p0, Lcom/vungle/publisher/aiw$2$1;->c:Lcom/vungle/publisher/aiw$2;

    iget-object v0, v0, Lcom/vungle/publisher/aiw$2;->b:Lcom/vungle/publisher/alz;

    invoke-static {}, Lcom/vungle/publisher/aho;->b()Lcom/vungle/publisher/aho;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/alz;->a(Ljava/lang/Object;)V

    .line 230
    :cond_0
    return-void
.end method

.method public final a(Lcom/vungle/publisher/ahr;)V
    .locals 4

    .prologue
    .line 267
    iget-object v0, p0, Lcom/vungle/publisher/aiw$2$1;->c:Lcom/vungle/publisher/aiw$2;

    iget-object v1, v0, Lcom/vungle/publisher/aiw$2;->c:Lcom/vungle/publisher/ajf;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, v1, Lcom/vungle/publisher/ajf;->c:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    sget-object p1, Lcom/vungle/publisher/ajf;->g:Lcom/vungle/publisher/ahr;

    :cond_0
    iput-object p1, v1, Lcom/vungle/publisher/ajf;->f:Lcom/vungle/publisher/ahr;

    monitor-exit v1

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/vungle/publisher/ajf;->c:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iput-object p1, v1, Lcom/vungle/publisher/ajf;->b:Lcom/vungle/publisher/ahr;

    if-eqz p1, :cond_2

    iget-wide v2, v1, Lcom/vungle/publisher/ajf;->a:J

    invoke-interface {p1, v2, v3}, Lcom/vungle/publisher/ahr;->a(J)V

    :cond_2
    invoke-virtual {v1}, Lcom/vungle/publisher/ajf;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, v1, Lcom/vungle/publisher/ajf;->c:Z

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const-wide v10, 0x7fffffffffffffffL

    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x1

    .line 243
    iget-boolean v0, p0, Lcom/vungle/publisher/aiw$2$1;->b:Z

    if-nez v0, :cond_3

    .line 244
    iget-object v0, p0, Lcom/vungle/publisher/aiw$2$1;->c:Lcom/vungle/publisher/aiw$2;

    iget-object v0, v0, Lcom/vungle/publisher/aiw$2;->a:Lcom/vungle/publisher/ahu;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/ahu;->a(Ljava/lang/Object;)V

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/aiw$2$1;->c:Lcom/vungle/publisher/aiw$2;

    iget-object v0, v0, Lcom/vungle/publisher/aiw$2;->d:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    cmp-long v2, v0, v10

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/vungle/publisher/aiw$2$1;->c:Lcom/vungle/publisher/aiw$2;

    iget-object v2, v2, Lcom/vungle/publisher/aiw$2;->d:Ljava/util/concurrent/atomic/AtomicLong;

    sub-long v4, v0, v6

    invoke-virtual {v2, v0, v1, v4, v5}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    :cond_1
    iget-object v0, p0, Lcom/vungle/publisher/aiw$2$1;->c:Lcom/vungle/publisher/aiw$2;

    iget-object v1, v0, Lcom/vungle/publisher/aiw$2;->c:Lcom/vungle/publisher/ajf;

    cmp-long v0, v6, v8

    if-gtz v0, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "n > 0 required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    monitor-enter v1

    :try_start_0
    iget-boolean v0, v1, Lcom/vungle/publisher/ajf;->c:Z

    if-eqz v0, :cond_4

    iget-wide v2, v1, Lcom/vungle/publisher/ajf;->e:J

    add-long/2addr v2, v6

    iput-wide v2, v1, Lcom/vungle/publisher/ajf;->e:J

    monitor-exit v1

    .line 248
    :cond_3
    :goto_0
    return-void

    .line 246
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/vungle/publisher/ajf;->c:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-wide v2, v1, Lcom/vungle/publisher/ajf;->a:J

    cmp-long v0, v2, v10

    if-eqz v0, :cond_6

    sub-long/2addr v2, v6

    cmp-long v0, v2, v8

    if-gez v0, :cond_5

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "more items arrived than were requested"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-enter v1

    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, v1, Lcom/vungle/publisher/ajf;->c:Z

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_5
    :try_start_4
    iput-wide v2, v1, Lcom/vungle/publisher/ajf;->a:J

    :cond_6
    invoke-virtual {v1}, Lcom/vungle/publisher/ajf;->a()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/vungle/publisher/aiw$2$1;->b:Z

    if-nez v0, :cond_0

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/publisher/aiw$2$1;->b:Z

    .line 236
    iget-object v0, p0, Lcom/vungle/publisher/ahu;->a:Lcom/vungle/publisher/akd;

    invoke-virtual {v0}, Lcom/vungle/publisher/akd;->b()V

    .line 237
    iget-object v0, p0, Lcom/vungle/publisher/aiw$2$1;->c:Lcom/vungle/publisher/aiw$2;

    iget-object v0, v0, Lcom/vungle/publisher/aiw$2;->b:Lcom/vungle/publisher/alz;

    invoke-static {p1}, Lcom/vungle/publisher/aho;->a(Ljava/lang/Throwable;)Lcom/vungle/publisher/aho;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/alz;->a(Ljava/lang/Object;)V

    .line 239
    :cond_0
    return-void
.end method
