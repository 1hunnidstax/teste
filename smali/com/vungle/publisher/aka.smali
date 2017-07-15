.class public final Lcom/vungle/publisher/aka;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ahv;


# static fields
.field public static final b:I

.field public static final c:Lcom/vungle/publisher/ajx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/ajx",
            "<",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final d:Lcom/vungle/publisher/ajx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/ajx",
            "<",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final e:Lcom/vungle/publisher/aio;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/aio",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public volatile a:Ljava/lang/Object;

.field private f:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final g:I

.field private final h:Lcom/vungle/publisher/ajx;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/ajx",
            "<",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 128
    invoke-static {}, Lcom/vungle/publisher/aio;->a()Lcom/vungle/publisher/aio;

    move-result-object v0

    sput-object v0, Lcom/vungle/publisher/aka;->e:Lcom/vungle/publisher/aio;

    .line 245
    const/16 v0, 0x80

    .line 248
    invoke-static {}, Lcom/vungle/publisher/ajz;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    const/16 v0, 0x10

    .line 253
    :cond_0
    const-string v1, "rx.ring-buffer.size"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 254
    if-eqz v1, :cond_1

    .line 256
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 262
    :cond_1
    :goto_0
    sput v0, Lcom/vungle/publisher/aka;->b:I

    .line 267
    new-instance v0, Lcom/vungle/publisher/aka$1;

    invoke-direct {v0}, Lcom/vungle/publisher/aka$1;-><init>()V

    sput-object v0, Lcom/vungle/publisher/aka;->c:Lcom/vungle/publisher/ajx;

    .line 277
    new-instance v0, Lcom/vungle/publisher/aka$2;

    invoke-direct {v0}, Lcom/vungle/publisher/aka$2;-><init>()V

    sput-object v0, Lcom/vungle/publisher/aka;->d:Lcom/vungle/publisher/ajx;

    return-void

    .line 257
    :catch_0
    move-exception v2

    .line 258
    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to set \'rx.buffer.size\' with value "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " => "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 330
    new-instance v0, Lcom/vungle/publisher/ake;

    sget v1, Lcom/vungle/publisher/aka;->b:I

    invoke-direct {v0, v1}, Lcom/vungle/publisher/ake;-><init>(I)V

    sget v1, Lcom/vungle/publisher/aka;->b:I

    invoke-direct {p0, v0, v1}, Lcom/vungle/publisher/aka;-><init>(Ljava/util/Queue;I)V

    .line 331
    return-void
.end method

.method private constructor <init>(Lcom/vungle/publisher/ajx;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/ajx",
            "<",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;>;I)V"
        }
    .end annotation

    .prologue
    .line 308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 309
    iput-object p1, p0, Lcom/vungle/publisher/aka;->h:Lcom/vungle/publisher/ajx;

    .line 310
    invoke-virtual {p1}, Lcom/vungle/publisher/ajx;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    iput-object v0, p0, Lcom/vungle/publisher/aka;->f:Ljava/util/Queue;

    .line 311
    iput p2, p0, Lcom/vungle/publisher/aka;->g:I

    .line 312
    return-void
.end method

.method private constructor <init>(Ljava/util/Queue;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 302
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    iput-object p1, p0, Lcom/vungle/publisher/aka;->f:Ljava/util/Queue;

    .line 304
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vungle/publisher/aka;->h:Lcom/vungle/publisher/ajx;

    .line 305
    iput p2, p0, Lcom/vungle/publisher/aka;->g:I

    .line 306
    return-void
.end method

.method public static a()Lcom/vungle/publisher/aka;
    .locals 3

    .prologue
    .line 287
    invoke-static {}, Lcom/vungle/publisher/ali;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 288
    new-instance v0, Lcom/vungle/publisher/aka;

    sget-object v1, Lcom/vungle/publisher/aka;->c:Lcom/vungle/publisher/ajx;

    sget v2, Lcom/vungle/publisher/aka;->b:I

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/aka;-><init>(Lcom/vungle/publisher/ajx;I)V

    .line 290
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/vungle/publisher/aka;

    invoke-direct {v0}, Lcom/vungle/publisher/aka;-><init>()V

    goto :goto_0
.end method

.method public static b(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 432
    invoke-static {p0}, Lcom/vungle/publisher/aio;->b(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 440
    invoke-static {p0}, Lcom/vungle/publisher/aio;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static d()Lcom/vungle/publisher/aka;
    .locals 3

    .prologue
    .line 295
    invoke-static {}, Lcom/vungle/publisher/ali;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    new-instance v0, Lcom/vungle/publisher/aka;

    sget-object v1, Lcom/vungle/publisher/aka;->d:Lcom/vungle/publisher/ajx;

    sget v2, Lcom/vungle/publisher/aka;->b:I

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/aka;-><init>(Lcom/vungle/publisher/ajx;I)V

    .line 298
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/vungle/publisher/aka;

    invoke-direct {v0}, Lcom/vungle/publisher/aka;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/vungle/publisher/ahy;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 340
    .line 342
    monitor-enter p0

    .line 343
    :try_start_0
    iget-object v2, p0, Lcom/vungle/publisher/aka;->f:Ljava/util/Queue;

    .line 344
    if-eqz v2, :cond_1

    .line 345
    invoke-static {p1}, Lcom/vungle/publisher/aio;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 349
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    if-eqz v1, :cond_2

    .line 352
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This instance has been unsubscribed and the queue is no longer usable."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    move v0, v1

    .line 345
    goto :goto_0

    :cond_1
    move v4, v1

    move v1, v0

    move v0, v4

    .line 347
    goto :goto_0

    .line 349
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 354
    :cond_2
    if-eqz v0, :cond_3

    .line 355
    new-instance v0, Lcom/vungle/publisher/ahy;

    invoke-direct {v0}, Lcom/vungle/publisher/ahy;-><init>()V

    throw v0

    .line 357
    :cond_3
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 326
    invoke-virtual {p0}, Lcom/vungle/publisher/aka;->e()V

    .line 327
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/vungle/publisher/aka;->f:Ljava/util/Queue;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final declared-synchronized e()V
    .locals 3

    .prologue
    .line 315
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/aka;->f:Ljava/util/Queue;

    .line 316
    iget-object v1, p0, Lcom/vungle/publisher/aka;->h:Lcom/vungle/publisher/ajx;

    .line 317
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 318
    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 319
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vungle/publisher/aka;->f:Ljava/util/Queue;

    .line 320
    if-eqz v0, :cond_0

    iget-object v1, v1, Lcom/vungle/publisher/ajx;->a:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    :cond_0
    monitor-exit p0

    return-void

    .line 315
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/vungle/publisher/aka;->f:Ljava/util/Queue;

    .line 391
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()Ljava/lang/Object;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 396
    monitor-enter p0

    .line 397
    :try_start_0
    iget-object v2, p0, Lcom/vungle/publisher/aka;->f:Ljava/util/Queue;

    .line 398
    if-nez v2, :cond_0

    .line 400
    monitor-exit p0

    .line 411
    :goto_0
    return-object v0

    .line 402
    :cond_0
    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    .line 404
    iget-object v0, p0, Lcom/vungle/publisher/aka;->a:Ljava/lang/Object;

    .line 405
    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 408
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/vungle/publisher/aka;->a:Ljava/lang/Object;

    .line 410
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method

.method public final h()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 416
    monitor-enter p0

    .line 417
    :try_start_0
    iget-object v2, p0, Lcom/vungle/publisher/aka;->f:Ljava/util/Queue;

    .line 418
    if-nez v2, :cond_0

    .line 420
    const/4 v0, 0x0

    monitor-exit p0

    .line 428
    :goto_0
    return-object v0

    .line 422
    :cond_0
    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v1

    .line 423
    iget-object v0, p0, Lcom/vungle/publisher/aka;->a:Ljava/lang/Object;

    .line 424
    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1

    .line 427
    :goto_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move-object v0, v1

    goto :goto_1
.end method
