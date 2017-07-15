.class final Lcom/vungle/publisher/ajb$d;
.super Lcom/vungle/publisher/ahu;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ajb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/vungle/publisher/ahu",
        "<",
        "Lcom/vungle/publisher/ahp",
        "<+TT;>;>;"
    }
.end annotation


# static fields
.field static final r:[Lcom/vungle/publisher/ajb$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/vungle/publisher/ajb$b",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field final b:Lcom/vungle/publisher/ahu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/ahu",
            "<-TT;>;"
        }
    .end annotation
.end field

.field final c:Z

.field final d:I

.field e:Lcom/vungle/publisher/ajb$c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/ajb$c",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile f:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field volatile g:Lcom/vungle/publisher/amc;

.field volatile h:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field

.field final i:Lcom/vungle/publisher/aio;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/aio",
            "<TT;>;"
        }
    .end annotation
.end field

.field volatile j:Z

.field k:Z

.field l:Z

.field final m:Ljava/lang/Object;

.field volatile n:[Lcom/vungle/publisher/ajb$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/vungle/publisher/ajb$b",
            "<*>;"
        }
    .end annotation
.end field

.field o:J

.field p:J

.field q:I

.field final s:I

.field t:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/vungle/publisher/ajb$b;

    sput-object v0, Lcom/vungle/publisher/ajb$d;->r:[Lcom/vungle/publisher/ajb$b;

    return-void
.end method

.method public constructor <init>(Lcom/vungle/publisher/ahu;ZI)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/ahu",
            "<-TT;>;ZI)V"
        }
    .end annotation

    .prologue
    const v1, 0x7fffffff

    .line 190
    invoke-direct {p0}, Lcom/vungle/publisher/ahu;-><init>()V

    .line 191
    iput-object p1, p0, Lcom/vungle/publisher/ajb$d;->b:Lcom/vungle/publisher/ahu;

    .line 192
    iput-boolean p2, p0, Lcom/vungle/publisher/ajb$d;->c:Z

    .line 193
    iput p3, p0, Lcom/vungle/publisher/ajb$d;->d:I

    .line 194
    invoke-static {}, Lcom/vungle/publisher/aio;->a()Lcom/vungle/publisher/aio;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/ajb$d;->i:Lcom/vungle/publisher/aio;

    .line 195
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/ajb$d;->m:Ljava/lang/Object;

    .line 196
    sget-object v0, Lcom/vungle/publisher/ajb$d;->r:[Lcom/vungle/publisher/ajb$b;

    iput-object v0, p0, Lcom/vungle/publisher/ajb$d;->n:[Lcom/vungle/publisher/ajb$b;

    .line 197
    if-ne p3, v1, :cond_0

    .line 198
    iput v1, p0, Lcom/vungle/publisher/ajb$d;->s:I

    .line 199
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lcom/vungle/publisher/ajb$d;->a(J)V

    .line 204
    :goto_0
    return-void

    .line 201
    :cond_0
    const/4 v0, 0x1

    shr-int/lit8 v1, p3, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/vungle/publisher/ajb$d;->s:I

    .line 202
    int-to-long v0, p3

    invoke-virtual {p0, v0, v1}, Lcom/vungle/publisher/ajb$d;->a(J)V

    goto :goto_0
.end method

.method static a(Lcom/vungle/publisher/ajb$b;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/ajb$b",
            "<TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 375
    iget-object v0, p0, Lcom/vungle/publisher/ajb$b;->e:Lcom/vungle/publisher/aka;

    .line 376
    if-nez v0, :cond_0

    .line 377
    invoke-static {}, Lcom/vungle/publisher/aka;->a()Lcom/vungle/publisher/aka;

    move-result-object v0

    .line 378
    invoke-virtual {p0, v0}, Lcom/vungle/publisher/ajb$b;->a(Lcom/vungle/publisher/ahv;)V

    .line 379
    iput-object v0, p0, Lcom/vungle/publisher/ajb$b;->e:Lcom/vungle/publisher/aka;

    .line 382
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/vungle/publisher/aio;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/aka;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/vungle/publisher/ahy; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 392
    :cond_1
    :goto_0
    return-void

    .line 383
    :catch_0
    move-exception v0

    .line 384
    iget-object v1, p0, Lcom/vungle/publisher/ahu;->a:Lcom/vungle/publisher/akd;

    invoke-virtual {v1}, Lcom/vungle/publisher/akd;->b()V

    .line 385
    invoke-virtual {p0, v0}, Lcom/vungle/publisher/ajb$b;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 386
    :catch_1
    move-exception v0

    .line 387
    iget-object v1, p0, Lcom/vungle/publisher/ahu;->a:Lcom/vungle/publisher/akd;

    iget-boolean v1, v1, Lcom/vungle/publisher/akd;->b:Z

    if-nez v1, :cond_1

    .line 388
    iget-object v1, p0, Lcom/vungle/publisher/ahu;->a:Lcom/vungle/publisher/akd;

    invoke-virtual {v1}, Lcom/vungle/publisher/akd;->b()V

    .line 389
    invoke-virtual {p0, v0}, Lcom/vungle/publisher/ajb$b;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 486
    iget-object v0, p0, Lcom/vungle/publisher/ajb$d;->f:Ljava/util/Queue;

    .line 487
    if-nez v0, :cond_0

    .line 488
    iget v1, p0, Lcom/vungle/publisher/ajb$d;->d:I

    .line 489
    const v0, 0x7fffffff

    if-ne v1, v0, :cond_2

    .line 490
    new-instance v0, Lcom/vungle/publisher/akj;

    sget v1, Lcom/vungle/publisher/aka;->b:I

    invoke-direct {v0, v1}, Lcom/vungle/publisher/akj;-><init>(I)V

    .line 502
    :goto_0
    iput-object v0, p0, Lcom/vungle/publisher/ajb$d;->f:Ljava/util/Queue;

    .line 504
    :cond_0
    invoke-static {p1}, Lcom/vungle/publisher/aio;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 505
    iget-object v0, p0, Lcom/vungle/publisher/ahu;->a:Lcom/vungle/publisher/akd;

    invoke-virtual {v0}, Lcom/vungle/publisher/akd;->b()V

    .line 506
    new-instance v0, Lcom/vungle/publisher/ahy;

    invoke-direct {v0}, Lcom/vungle/publisher/ahy;-><init>()V

    invoke-static {v0, p1}, Lcom/vungle/publisher/aic;->a(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/ajb$d;->a(Ljava/lang/Throwable;)V

    .line 508
    :cond_1
    return-void

    .line 492
    :cond_2
    add-int/lit8 v0, v1, -0x1

    and-int/2addr v0, v1

    if-nez v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_5

    .line 493
    invoke-static {}, Lcom/vungle/publisher/ali;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 494
    new-instance v0, Lcom/vungle/publisher/alb;

    invoke-direct {v0, v1}, Lcom/vungle/publisher/alb;-><init>(I)V

    goto :goto_0

    .line 492
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 496
    :cond_4
    new-instance v0, Lcom/vungle/publisher/akh;

    invoke-direct {v0, v1}, Lcom/vungle/publisher/akh;-><init>(I)V

    goto :goto_0

    .line 499
    :cond_5
    new-instance v0, Lcom/vungle/publisher/aki;

    invoke-direct {v0, v1}, Lcom/vungle/publisher/aki;-><init>(I)V

    goto :goto_0
.end method

.method private h()Lcom/vungle/publisher/amc;
    .locals 3

    .prologue
    .line 220
    iget-object v0, p0, Lcom/vungle/publisher/ajb$d;->g:Lcom/vungle/publisher/amc;

    .line 221
    if-nez v0, :cond_0

    .line 222
    const/4 v0, 0x0

    .line 223
    monitor-enter p0

    .line 224
    :try_start_0
    iget-object v1, p0, Lcom/vungle/publisher/ajb$d;->g:Lcom/vungle/publisher/amc;

    .line 225
    if-nez v1, :cond_1

    .line 226
    new-instance v1, Lcom/vungle/publisher/amc;

    invoke-direct {v1}, Lcom/vungle/publisher/amc;-><init>()V

    .line 227
    iput-object v1, p0, Lcom/vungle/publisher/ajb$d;->g:Lcom/vungle/publisher/amc;

    .line 228
    const/4 v0, 0x1

    move v2, v0

    move-object v0, v1

    move v1, v2

    .line 230
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    if-eqz v1, :cond_0

    .line 232
    invoke-virtual {p0, v0}, Lcom/vungle/publisher/ajb$d;->a(Lcom/vungle/publisher/ahv;)V

    .line 235
    :cond_0
    return-object v0

    .line 230
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_1
    move v2, v0

    move-object v0, v1

    move v1, v2

    goto :goto_0
.end method

.method private i()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 267
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/vungle/publisher/ajb$d;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 268
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 269
    iget-object v1, p0, Lcom/vungle/publisher/ajb$d;->b:Lcom/vungle/publisher/ahu;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/ahu;->a(Ljava/lang/Throwable;)V

    .line 273
    :goto_0
    return-void

    .line 271
    :cond_0
    iget-object v1, p0, Lcom/vungle/publisher/ajb$d;->b:Lcom/vungle/publisher/ahu;

    new-instance v2, Lcom/vungle/publisher/ahw;

    invoke-direct {v2, v0, v3}, Lcom/vungle/publisher/ahw;-><init>(Ljava/util/Collection;B)V

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/ahu;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private j()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 815
    iget-object v1, p0, Lcom/vungle/publisher/ajb$d;->b:Lcom/vungle/publisher/ahu;

    iget-object v1, v1, Lcom/vungle/publisher/ahu;->a:Lcom/vungle/publisher/akd;

    iget-boolean v1, v1, Lcom/vungle/publisher/akd;->b:Z

    if-eqz v1, :cond_0

    .line 827
    :goto_0
    return v0

    .line 818
    :cond_0
    iget-object v1, p0, Lcom/vungle/publisher/ajb$d;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 819
    iget-boolean v2, p0, Lcom/vungle/publisher/ajb$d;->c:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 821
    :try_start_0
    invoke-direct {p0}, Lcom/vungle/publisher/ajb$d;->i()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 823
    iget-object v1, p0, Lcom/vungle/publisher/ahu;->a:Lcom/vungle/publisher/akd;

    invoke-virtual {v1}, Lcom/vungle/publisher/akd;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/vungle/publisher/ahu;->a:Lcom/vungle/publisher/akd;

    invoke-virtual {v1}, Lcom/vungle/publisher/akd;->b()V

    throw v0

    .line 827
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/publisher/ajb$d;->j:Z

    .line 284
    invoke-virtual {p0}, Lcom/vungle/publisher/ajb$d;->f()V

    .line 285
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 148
    check-cast p1, Lcom/vungle/publisher/ahp;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/vungle/publisher/ain;->a()Lcom/vungle/publisher/ahp;

    move-result-object v0

    if-ne p1, v0, :cond_2

    iget v0, p0, Lcom/vungle/publisher/ajb$d;->t:I

    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Lcom/vungle/publisher/ajb$d;->s:I

    if-ne v0, v2, :cond_1

    iput v1, p0, Lcom/vungle/publisher/ajb$d;->t:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/vungle/publisher/ajb$d;->a(J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput v0, p0, Lcom/vungle/publisher/ajb$d;->t:I

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/vungle/publisher/akc;

    if-eqz v0, :cond_b

    check-cast p1, Lcom/vungle/publisher/akc;

    iget-object v3, p1, Lcom/vungle/publisher/akc;->b:Ljava/lang/Object;

    iget-object v0, p0, Lcom/vungle/publisher/ajb$d;->e:Lcom/vungle/publisher/ajb$c;

    invoke-virtual {v0}, Lcom/vungle/publisher/ajb$c;->get()J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-eqz v0, :cond_d

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/ajb$d;->e:Lcom/vungle/publisher/ajb$c;

    invoke-virtual {v0}, Lcom/vungle/publisher/ajb$c;->get()J

    move-result-wide v4

    iget-boolean v0, p0, Lcom/vungle/publisher/ajb$d;->k:Z

    if-nez v0, :cond_c

    cmp-long v0, v4, v6

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/publisher/ajb$d;->k:Z

    move v0, v2

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :goto_2
    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/vungle/publisher/ajb$d;->f:Ljava/util/Queue;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_3
    :try_start_1
    iget-object v0, p0, Lcom/vungle/publisher/ajb$d;->b:Lcom/vungle/publisher/ahu;

    invoke-virtual {v0, v3}, Lcom/vungle/publisher/ahu;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :goto_3
    const-wide v6, 0x7fffffffffffffffL

    cmp-long v0, v4, v6

    if-eqz v0, :cond_4

    :try_start_2
    iget-object v0, p0, Lcom/vungle/publisher/ajb$d;->e:Lcom/vungle/publisher/ajb$c;

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v4, v5}, Lcom/vungle/publisher/ajb$c;->addAndGet(J)J

    :cond_4
    iget v0, p0, Lcom/vungle/publisher/ajb$d;->t:I

    add-int/lit8 v0, v0, 0x1

    iget v3, p0, Lcom/vungle/publisher/ajb$d;->s:I

    if-ne v0, v3, :cond_7

    const/4 v3, 0x0

    iput v3, p0, Lcom/vungle/publisher/ajb$d;->t:I

    int-to-long v4, v0

    invoke-virtual {p0, v4, v5}, Lcom/vungle/publisher/ajb$d;->a(J)V

    :goto_4
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    iget-boolean v0, p0, Lcom/vungle/publisher/ajb$d;->l:Z

    if-nez v0, :cond_8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vungle/publisher/ajb$d;->k:Z

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move v1, v2

    :goto_5
    if-nez v1, :cond_5

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_5
    iput-boolean v1, p0, Lcom/vungle/publisher/ajb$d;->k:Z

    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :cond_5
    throw v0

    :catchall_2
    move-exception v0

    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    :catch_0
    move-exception v0

    :try_start_7
    iget-boolean v3, p0, Lcom/vungle/publisher/ajb$d;->c:Z

    if-nez v3, :cond_6

    invoke-static {v0}, Lcom/vungle/publisher/ahx;->b(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    iget-object v1, p0, Lcom/vungle/publisher/ahu;->a:Lcom/vungle/publisher/akd;

    invoke-virtual {v1}, Lcom/vungle/publisher/akd;->b()V

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/ajb$d;->a(Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto/16 :goto_0

    :cond_6
    :try_start_9
    invoke-virtual {p0}, Lcom/vungle/publisher/ajb$d;->e()Ljava/util/Queue;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_3

    :catchall_3
    move-exception v0

    goto :goto_5

    :cond_7
    iput v0, p0, Lcom/vungle/publisher/ajb$d;->t:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    :try_start_a
    iput-boolean v0, p0, Lcom/vungle/publisher/ajb$d;->l:Z

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    invoke-virtual {p0}, Lcom/vungle/publisher/ajb$d;->g()V

    goto/16 :goto_0

    :catchall_4
    move-exception v0

    :try_start_b
    monitor-exit p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    throw v0

    :cond_9
    invoke-direct {p0, v3}, Lcom/vungle/publisher/ajb$d;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/vungle/publisher/ajb$d;->g()V

    goto/16 :goto_0

    :cond_a
    invoke-direct {p0, v3}, Lcom/vungle/publisher/ajb$d;->b(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/vungle/publisher/ajb$d;->f()V

    goto/16 :goto_0

    :cond_b
    new-instance v0, Lcom/vungle/publisher/ajb$b;

    iget-wide v2, p0, Lcom/vungle/publisher/ajb$d;->o:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/vungle/publisher/ajb$d;->o:J

    invoke-direct {v0, p0, v2, v3}, Lcom/vungle/publisher/ajb$b;-><init>(Lcom/vungle/publisher/ajb$d;J)V

    invoke-direct {p0}, Lcom/vungle/publisher/ajb$d;->h()Lcom/vungle/publisher/amc;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/amc;->a(Lcom/vungle/publisher/ahv;)V

    iget-object v1, p0, Lcom/vungle/publisher/ajb$d;->m:Ljava/lang/Object;

    monitor-enter v1

    :try_start_c
    iget-object v2, p0, Lcom/vungle/publisher/ajb$d;->n:[Lcom/vungle/publisher/ajb$b;

    array-length v3, v2

    add-int/lit8 v4, v3, 0x1

    new-array v4, v4, [Lcom/vungle/publisher/ajb$b;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v5, v4, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v0, v4, v3

    iput-object v4, p0, Lcom/vungle/publisher/ajb$d;->n:[Lcom/vungle/publisher/ajb$b;

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    invoke-virtual {p1, v0}, Lcom/vungle/publisher/ahp;->a(Lcom/vungle/publisher/ahu;)Lcom/vungle/publisher/ahv;

    invoke-virtual {p0}, Lcom/vungle/publisher/ajb$d;->f()V

    goto/16 :goto_0

    :catchall_5
    move-exception v0

    :try_start_d
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    throw v0

    :cond_c
    move v0, v1

    goto/16 :goto_1

    :cond_d
    move-wide v4, v6

    move v0, v1

    goto/16 :goto_2
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 277
    invoke-virtual {p0}, Lcom/vungle/publisher/ajb$d;->e()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 278
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/publisher/ajb$d;->j:Z

    .line 279
    invoke-virtual {p0}, Lcom/vungle/publisher/ajb$d;->f()V

    .line 280
    return-void
.end method

.method final e()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 207
    iget-object v0, p0, Lcom/vungle/publisher/ajb$d;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 208
    if-nez v0, :cond_1

    .line 209
    monitor-enter p0

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/ajb$d;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 211
    if-nez v0, :cond_0

    .line 212
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    .line 213
    iput-object v0, p0, Lcom/vungle/publisher/ajb$d;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 215
    :cond_0
    monitor-exit p0

    .line 217
    :cond_1
    return-object v0

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method final f()V
    .locals 1

    .prologue
    .line 564
    monitor-enter p0

    .line 565
    :try_start_0
    iget-boolean v0, p0, Lcom/vungle/publisher/ajb$d;->k:Z

    if-eqz v0, :cond_0

    .line 566
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/publisher/ajb$d;->l:Z

    .line 567
    monitor-exit p0

    .line 572
    :goto_0
    return-void

    .line 569
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/publisher/ajb$d;->k:Z

    .line 570
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 571
    invoke-virtual {p0}, Lcom/vungle/publisher/ajb$d;->g()V

    goto :goto_0

    .line 570
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method final g()V
    .locals 23

    .prologue
    .line 577
    const/4 v3, 0x0

    .line 579
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/vungle/publisher/ajb$d;->b:Lcom/vungle/publisher/ahu;

    .line 582
    :cond_0
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/vungle/publisher/ajb$d;->j()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 801
    :cond_1
    :goto_1
    return-void

    .line 586
    :cond_2
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/vungle/publisher/ajb$d;->f:Ljava/util/Queue;

    .line 588
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vungle/publisher/ajb$d;->e:Lcom/vungle/publisher/ajb$c;

    invoke-virtual {v2}, Lcom/vungle/publisher/ajb$c;->get()J

    move-result-wide v4

    .line 589
    const-wide v6, 0x7fffffffffffffffL

    cmp-long v2, v4, v6

    if-nez v2, :cond_4

    const/4 v2, 0x1

    move v11, v2

    .line 592
    :goto_2
    const/4 v2, 0x0

    .line 595
    if-eqz v9, :cond_9

    .line 597
    :cond_3
    const/4 v7, 0x0

    .line 598
    const/4 v6, 0x0

    .line 599
    :goto_3
    const-wide/16 v12, 0x0

    cmp-long v8, v4, v12

    if-lez v8, :cond_7

    .line 600
    invoke-interface {v9}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v6

    .line 602
    invoke-direct/range {p0 .. p0}, Lcom/vungle/publisher/ajb$d;->j()Z

    move-result v8

    if-nez v8, :cond_1

    .line 606
    if-eqz v6, :cond_7

    .line 607
    invoke-static {v6}, Lcom/vungle/publisher/aio;->c(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 612
    :try_start_1
    invoke-virtual {v14, v8}, Lcom/vungle/publisher/ahu;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 623
    :goto_4
    add-int/lit8 v8, v2, 0x1

    .line 624
    add-int/lit8 v2, v7, 0x1

    .line 625
    const-wide/16 v12, 0x1

    sub-long/2addr v4, v12

    move v7, v2

    move v2, v8

    .line 626
    goto :goto_3

    .line 589
    :cond_4
    const/4 v2, 0x0

    move v11, v2

    goto :goto_2

    .line 613
    :catch_0
    move-exception v8

    .line 614
    :try_start_2
    move-object/from16 v0, p0

    iget-boolean v10, v0, Lcom/vungle/publisher/ajb$d;->c:Z

    if-nez v10, :cond_6

    .line 615
    invoke-static {v8}, Lcom/vungle/publisher/ahx;->b(Ljava/lang/Throwable;)V

    .line 616
    const/4 v3, 0x1

    .line 617
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vungle/publisher/ahu;->a:Lcom/vungle/publisher/akd;

    invoke-virtual {v2}, Lcom/vungle/publisher/akd;->b()V

    .line 618
    invoke-virtual {v14, v8}, Lcom/vungle/publisher/ahu;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 799
    :catchall_0
    move-exception v2

    if-nez v3, :cond_5

    .line 802
    monitor-enter p0

    .line 803
    const/4 v3, 0x0

    :try_start_3
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/vungle/publisher/ajb$d;->k:Z

    .line 804
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :cond_5
    throw v2

    .line 621
    :cond_6
    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/vungle/publisher/ajb$d;->e()Ljava/util/Queue;

    move-result-object v10

    invoke-interface {v10, v8}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    goto :goto_4

    .line 627
    :cond_7
    if-lez v7, :cond_8

    .line 628
    if-eqz v11, :cond_c

    .line 629
    const-wide v4, 0x7fffffffffffffffL

    .line 634
    :cond_8
    :goto_5
    const-wide/16 v12, 0x0

    cmp-long v7, v4, v12

    if-eqz v7, :cond_9

    if-nez v6, :cond_3

    :cond_9
    move-wide v6, v4

    move v5, v2

    .line 635
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vungle/publisher/ajb$d;->j:Z

    .line 649
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vungle/publisher/ajb$d;->f:Ljava/util/Queue;

    .line 651
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/vungle/publisher/ajb$d;->n:[Lcom/vungle/publisher/ajb$b;

    .line 652
    array-length v0, v15

    move/from16 v16, v0

    .line 656
    if-eqz v2, :cond_e

    if-eqz v4, :cond_a

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e

    :cond_a
    if-nez v16, :cond_e

    .line 657
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vungle/publisher/ajb$d;->h:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 658
    if-eqz v2, :cond_b

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_d

    .line 659
    :cond_b
    invoke-virtual {v14}, Lcom/vungle/publisher/ahu;->a()V

    goto/16 :goto_1

    .line 631
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vungle/publisher/ajb$d;->e:Lcom/vungle/publisher/ajb$c;

    neg-int v5, v7

    int-to-long v12, v5

    invoke-virtual {v4, v12, v13}, Lcom/vungle/publisher/ajb$c;->addAndGet(J)J

    move-result-wide v4

    goto :goto_5

    .line 661
    :cond_d
    invoke-direct/range {p0 .. p0}, Lcom/vungle/publisher/ajb$d;->i()V

    goto/16 :goto_1

    .line 667
    :cond_e
    const/4 v4, 0x0

    .line 668
    if-lez v16, :cond_24

    .line 670
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/vungle/publisher/ajb$d;->p:J

    .line 671
    move-object/from16 v0, p0

    iget v2, v0, Lcom/vungle/publisher/ajb$d;->q:I

    .line 675
    move/from16 v0, v16

    if-le v0, v2, :cond_f

    aget-object v8, v15, v2

    iget-wide v8, v8, Lcom/vungle/publisher/ajb$b;->c:J

    cmp-long v8, v8, v12

    if-eqz v8, :cond_13

    .line 676
    :cond_f
    move/from16 v0, v16

    if-gt v0, v2, :cond_10

    .line 677
    const/4 v2, 0x0

    .line 681
    :cond_10
    const/4 v8, 0x0

    :goto_6
    move/from16 v0, v16

    if-ge v8, v0, :cond_12

    .line 682
    aget-object v9, v15, v2

    iget-wide v0, v9, Lcom/vungle/publisher/ajb$b;->c:J

    move-wide/from16 v18, v0

    cmp-long v9, v18, v12

    if-eqz v9, :cond_12

    .line 683
    add-int/lit8 v2, v2, 0x1

    .line 687
    move/from16 v0, v16

    if-ne v2, v0, :cond_11

    .line 688
    const/4 v2, 0x0

    .line 681
    :cond_11
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 694
    :cond_12
    move-object/from16 v0, p0

    iput v2, v0, Lcom/vungle/publisher/ajb$d;->q:I

    .line 695
    aget-object v8, v15, v2

    iget-wide v8, v8, Lcom/vungle/publisher/ajb$b;->c:J

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/vungle/publisher/ajb$d;->p:J

    .line 700
    :cond_13
    const/4 v8, 0x0

    move v9, v8

    move v8, v2

    move/from16 v20, v5

    move-wide/from16 v21, v6

    move/from16 v7, v20

    move v6, v4

    move-wide/from16 v4, v21

    :goto_7
    move/from16 v0, v16

    if-ge v9, v0, :cond_20

    .line 702
    invoke-direct/range {p0 .. p0}, Lcom/vungle/publisher/ajb$d;->j()Z

    move-result v2

    if-nez v2, :cond_1

    .line 707
    aget-object v17, v15, v8

    .line 709
    const/4 v2, 0x0

    .line 711
    :cond_14
    const/4 v10, 0x0

    .line 712
    :goto_8
    const-wide/16 v12, 0x0

    cmp-long v12, v4, v12

    if-lez v12, :cond_15

    .line 714
    invoke-direct/range {p0 .. p0}, Lcom/vungle/publisher/ajb$d;->j()Z

    move-result v12

    if-nez v12, :cond_1

    .line 718
    move-object/from16 v0, v17

    iget-object v12, v0, Lcom/vungle/publisher/ajb$b;->e:Lcom/vungle/publisher/aka;

    .line 719
    if-eqz v12, :cond_15

    .line 720
    invoke-virtual {v12}, Lcom/vungle/publisher/aka;->g()Ljava/lang/Object;

    move-result-object v2

    .line 723
    if-eqz v2, :cond_15

    .line 724
    invoke-static {v2}, Lcom/vungle/publisher/aio;->c(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v12

    .line 729
    :try_start_5
    invoke-virtual {v14, v12}, Lcom/vungle/publisher/ahu;->a(Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 801
    const-wide/16 v12, 0x1

    sub-long v12, v4, v12

    .line 741
    add-int/lit8 v4, v10, 0x1

    move v10, v4

    move-wide v4, v12

    .line 742
    goto :goto_8

    .line 730
    :catch_1
    move-exception v2

    .line 731
    const/4 v3, 0x1

    .line 732
    :try_start_6
    invoke-static {v2}, Lcom/vungle/publisher/ahx;->b(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 734
    :try_start_7
    invoke-virtual {v14, v2}, Lcom/vungle/publisher/ahu;->a(Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 736
    :try_start_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vungle/publisher/ahu;->a:Lcom/vungle/publisher/akd;

    invoke-virtual {v2}, Lcom/vungle/publisher/akd;->b()V

    goto/16 :goto_1

    :catchall_1
    move-exception v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vungle/publisher/ahu;->a:Lcom/vungle/publisher/akd;

    invoke-virtual {v4}, Lcom/vungle/publisher/akd;->b()V

    throw v2

    .line 743
    :cond_15
    if-lez v10, :cond_16

    .line 744
    if-nez v11, :cond_1c

    .line 745
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/vungle/publisher/ajb$d;->e:Lcom/vungle/publisher/ajb$c;

    neg-int v5, v10

    int-to-long v12, v5

    invoke-virtual {v4, v12, v13}, Lcom/vungle/publisher/ajb$c;->addAndGet(J)J

    move-result-wide v4

    .line 749
    :goto_9
    int-to-long v12, v10

    move-object/from16 v0, v17

    invoke-virtual {v0, v12, v13}, Lcom/vungle/publisher/ajb$b;->b(J)V

    .line 752
    :cond_16
    const-wide/16 v12, 0x0

    cmp-long v10, v4, v12

    if-eqz v10, :cond_17

    if-nez v2, :cond_14

    .line 753
    :cond_17
    move-object/from16 v0, v17

    iget-boolean v2, v0, Lcom/vungle/publisher/ajb$b;->d:Z

    .line 757
    move-object/from16 v0, v17

    iget-object v10, v0, Lcom/vungle/publisher/ajb$b;->e:Lcom/vungle/publisher/aka;

    .line 758
    if-eqz v2, :cond_1a

    if-eqz v10, :cond_18

    invoke-virtual {v10}, Lcom/vungle/publisher/aka;->f()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 759
    :cond_18
    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/vungle/publisher/ajb$b;->e:Lcom/vungle/publisher/aka;

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Lcom/vungle/publisher/aka;->e()V

    :cond_19
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/vungle/publisher/ajb$d;->g:Lcom/vungle/publisher/amc;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/vungle/publisher/amc;->b(Lcom/vungle/publisher/ahv;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/vungle/publisher/ajb$d;->m:Ljava/lang/Object;

    monitor-enter v10
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/vungle/publisher/ajb$d;->n:[Lcom/vungle/publisher/ajb$b;

    array-length v13, v12

    const/4 v6, -0x1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v13, :cond_23

    aget-object v18, v12, v2

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_1d

    :goto_b
    if-gez v2, :cond_1e

    monitor-exit v10
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 760
    :goto_c
    :try_start_a
    invoke-direct/range {p0 .. p0}, Lcom/vungle/publisher/ajb$d;->j()Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 764
    add-int/lit8 v7, v7, 0x1

    .line 765
    const/4 v6, 0x1

    .line 768
    :cond_1a
    const-wide/16 v12, 0x0

    cmp-long v2, v4, v12

    if-eqz v2, :cond_20

    .line 769
    add-int/lit8 v2, v8, 0x1

    .line 774
    move/from16 v0, v16

    if-ne v2, v0, :cond_1b

    .line 775
    const/4 v2, 0x0

    .line 700
    :cond_1b
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    move v8, v2

    goto/16 :goto_7

    .line 747
    :cond_1c
    const-wide v4, 0x7fffffffffffffffL

    goto :goto_9

    .line 759
    :cond_1d
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_1e
    const/4 v6, 0x1

    if-ne v13, v6, :cond_1f

    :try_start_b
    sget-object v2, Lcom/vungle/publisher/ajb$d;->r:[Lcom/vungle/publisher/ajb$b;

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/vungle/publisher/ajb$d;->n:[Lcom/vungle/publisher/ajb$b;

    monitor-exit v10

    goto :goto_c

    :catchall_2
    move-exception v2

    monitor-exit v10
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v2
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :cond_1f
    add-int/lit8 v6, v13, -0x1

    :try_start_d
    new-array v6, v6, [Lcom/vungle/publisher/ajb$b;

    const/16 v17, 0x0

    const/16 v18, 0x0

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v12, v0, v6, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v17, v2, 0x1

    sub-int/2addr v13, v2

    add-int/lit8 v13, v13, -0x1

    move/from16 v0, v17

    invoke-static {v12, v0, v6, v2, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/vungle/publisher/ajb$d;->n:[Lcom/vungle/publisher/ajb$b;

    monitor-exit v10
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_c

    :cond_20
    move v2, v6

    move v4, v7

    .line 779
    :try_start_e
    move-object/from16 v0, p0

    iput v8, v0, Lcom/vungle/publisher/ajb$d;->q:I

    .line 780
    aget-object v5, v15, v8

    iget-wide v6, v5, Lcom/vungle/publisher/ajb$b;->c:J

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/vungle/publisher/ajb$d;->p:J

    .line 783
    :goto_d
    if-lez v4, :cond_21

    .line 784
    int-to-long v4, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/vungle/publisher/ajb$d;->a(J)V

    .line 787
    :cond_21
    if-nez v2, :cond_0

    .line 788
    monitor-enter p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 792
    :try_start_f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/vungle/publisher/ajb$d;->l:Z

    if-nez v2, :cond_22

    .line 793
    const/4 v3, 0x1

    .line 794
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/vungle/publisher/ajb$d;->k:Z

    .line 795
    monitor-exit p0

    goto/16 :goto_1

    .line 798
    :catchall_3
    move-exception v2

    monitor-exit p0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    :try_start_10
    throw v2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 797
    :cond_22
    const/4 v2, 0x0

    :try_start_11
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/vungle/publisher/ajb$d;->l:Z

    .line 798
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    goto/16 :goto_0

    .line 804
    :catchall_4
    move-exception v2

    :try_start_12
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    throw v2

    :cond_23
    move v2, v6

    goto/16 :goto_b

    :cond_24
    move v2, v4

    move v4, v5

    goto :goto_d
.end method
