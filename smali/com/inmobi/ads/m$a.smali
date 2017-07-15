.class final Lcom/inmobi/ads/m$a;
.super Landroid/os/Handler;
.source "AssetStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/ads/m;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/b;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/inmobi/ads/a/a$a;

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/inmobi/ads/m;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/os/Looper;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/inmobi/ads/m;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 370
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 359
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/m$a;->b:Ljava/util/List;

    .line 371
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/m$a;->a:Ljava/lang/ref/WeakReference;

    .line 372
    iput-object p3, p0, Lcom/inmobi/ads/m$a;->d:Ljava/lang/String;

    .line 373
    new-instance v0, Lcom/inmobi/ads/m$a$1;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/m$a$1;-><init>(Lcom/inmobi/ads/m$a;)V

    iput-object v0, p0, Lcom/inmobi/ads/m$a;->c:Lcom/inmobi/ads/a/a$a;

    .line 417
    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/m$a;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/inmobi/ads/m$a;->a:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private a()V
    .locals 3

    .prologue
    .line 544
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 545
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 546
    iget-object v1, p0, Lcom/inmobi/ads/m$a;->b:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 547
    invoke-virtual {p0, v0}, Lcom/inmobi/ads/m$a;->sendMessage(Landroid/os/Message;)Z

    .line 548
    return-void
.end method

.method private a(Lcom/inmobi/ads/b;)V
    .locals 2

    .prologue
    .line 530
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 531
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 532
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 533
    invoke-virtual {p0, v0}, Lcom/inmobi/ads/m$a;->sendMessage(Landroid/os/Message;)Z

    .line 534
    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/m$a;Lcom/inmobi/ads/b;)V
    .locals 0

    .prologue
    .line 356
    invoke-direct {p0, p1}, Lcom/inmobi/ads/m$a;->b(Lcom/inmobi/ads/b;)V

    return-void
.end method

.method private b(Lcom/inmobi/ads/b;)V
    .locals 2

    .prologue
    .line 537
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 538
    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    .line 539
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 540
    invoke-virtual {p0, v0}, Lcom/inmobi/ads/m$a;->sendMessage(Landroid/os/Message;)Z

    .line 541
    return-void
.end method

.method static synthetic b(Lcom/inmobi/ads/m$a;Lcom/inmobi/ads/b;)V
    .locals 0

    .prologue
    .line 356
    invoke-direct {p0, p1}, Lcom/inmobi/ads/m$a;->c(Lcom/inmobi/ads/b;)V

    return-void
.end method

.method private c(Lcom/inmobi/ads/b;)V
    .locals 8

    .prologue
    .line 551
    iget-object v0, p0, Lcom/inmobi/ads/m$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 552
    const/4 v0, -0x1

    if-eq v0, v1, :cond_0

    .line 553
    iget-object v0, p0, Lcom/inmobi/ads/m$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/m;

    .line 554
    if-eqz v0, :cond_0

    .line 555
    iget-object v2, p0, Lcom/inmobi/ads/m$a;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    .line 556
    :goto_0
    iget-object v2, p0, Lcom/inmobi/ads/m$a;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/b;

    .line 557
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 558
    const/4 v3, 0x2

    iput v3, v2, Landroid/os/Message;->what:I

    .line 559
    iput-object v1, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 560
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p1, Lcom/inmobi/ads/b;->e:J

    sub-long/2addr v4, v6

    invoke-virtual {v0}, Lcom/inmobi/ads/m;->e()Lcom/inmobi/ads/c$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/c$a;->b()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v6, v1

    cmp-long v1, v4, v6

    if-gez v1, :cond_2

    .line 561
    invoke-virtual {v0}, Lcom/inmobi/ads/m;->e()Lcom/inmobi/ads/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/c$a;->b()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/inmobi/ads/m$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 567
    :cond_0
    :goto_1
    return-void

    .line 555
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 563
    :cond_2
    invoke-virtual {p0, v2}, Lcom/inmobi/ads/m$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .prologue
    .line 421
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 526
    :cond_0
    :goto_0
    return-void

    .line 425
    :pswitch_0
    iget-object v0, p0, Lcom/inmobi/ads/m$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/inmobi/ads/m$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/m;

    .line 427
    invoke-virtual {v0}, Lcom/inmobi/ads/m;->e()Lcom/inmobi/ads/c$a;

    move-result-object v1

    .line 428
    if-nez v1, :cond_b

    .line 429
    new-instance v1, Lcom/inmobi/ads/c;

    invoke-direct {v1}, Lcom/inmobi/ads/c;-><init>()V

    .line 430
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->a()Lcom/inmobi/commons/core/configs/b;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/inmobi/commons/core/configs/b;->a(Lcom/inmobi/commons/core/configs/a;Lcom/inmobi/commons/core/configs/b$b;)V

    .line 431
    invoke-virtual {v1}, Lcom/inmobi/ads/c;->q()Lcom/inmobi/ads/c$a;

    move-result-object v1

    move-object v2, v1

    .line 434
    :goto_1
    invoke-virtual {v0}, Lcom/inmobi/ads/m;->f()Lcom/inmobi/ads/l;

    move-result-object v1

    .line 435
    invoke-virtual {v2}, Lcom/inmobi/ads/c$a;->b()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/inmobi/ads/l;->b(I)Ljava/util/List;

    move-result-object v1

    .line 436
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/b;

    .line 437
    iget-object v4, p0, Lcom/inmobi/ads/m$a;->b:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    invoke-virtual {v1}, Lcom/inmobi/ads/b;->d()Z

    move-result v4

    if-nez v4, :cond_1

    .line 438
    iget-object v4, p0, Lcom/inmobi/ads/m$a;->b:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 521
    :catch_0
    move-exception v0

    .line 522
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/m;->h()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Encountered unexpected error in Asset fetch handler"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0

    .line 441
    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/inmobi/ads/m$a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 442
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/m;->h()Ljava/lang/String;

    move-result-object v2

    const-string v3, "No assets to cache now ..."

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    invoke-virtual {v0}, Lcom/inmobi/ads/m;->g()V

    goto/16 :goto_0

    .line 446
    :cond_3
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/m;->h()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/inmobi/ads/m$a;->b:Ljava/util/List;

    .line 447
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " assets that should be cached"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 446
    invoke-static {v0, v1, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/m;->h()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Scheduling asset fetch ..."

    invoke-static {v0, v1, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lcom/inmobi/ads/m$a;->b:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/b;

    .line 451
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 452
    const/4 v3, 0x2

    iput v3, v1, Landroid/os/Message;->what:I

    .line 453
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 454
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, v0, Lcom/inmobi/ads/b;->e:J

    sub-long/2addr v4, v6

    .line 455
    invoke-virtual {v2}, Lcom/inmobi/ads/c$a;->b()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-gez v0, :cond_4

    .line 457
    invoke-virtual {v2}, Lcom/inmobi/ads/c$a;->b()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v2, v0

    sub-long/2addr v2, v4

    .line 456
    invoke-virtual {p0, v1, v2, v3}, Lcom/inmobi/ads/m$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 459
    :cond_4
    invoke-virtual {p0, v1}, Lcom/inmobi/ads/m$a;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 466
    :pswitch_1
    iget-object v0, p0, Lcom/inmobi/ads/m$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/inmobi/ads/m$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/m;

    .line 468
    invoke-static {}, Lcom/inmobi/commons/core/utilities/d;->a()Z

    move-result v1

    if-nez v1, :cond_5

    .line 469
    invoke-virtual {v0}, Lcom/inmobi/ads/m;->g()V

    .line 470
    invoke-virtual {v0}, Lcom/inmobi/ads/m;->c()V

    goto/16 :goto_0

    .line 474
    :cond_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/inmobi/ads/b;

    .line 475
    iget v2, v1, Lcom/inmobi/ads/b;->c:I

    if-nez v2, :cond_6

    .line 476
    iget-object v2, p0, Lcom/inmobi/ads/m$a;->d:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/inmobi/ads/m;->a(Lcom/inmobi/ads/m;Lcom/inmobi/ads/b;Ljava/lang/String;)V

    .line 477
    invoke-direct {p0, v1}, Lcom/inmobi/ads/m$a;->a(Lcom/inmobi/ads/b;)V

    goto/16 :goto_0

    .line 480
    :cond_6
    invoke-virtual {v1}, Lcom/inmobi/ads/b;->d()Z

    move-result v2

    if-nez v2, :cond_8

    .line 481
    invoke-virtual {v0}, Lcom/inmobi/ads/m;->e()Lcom/inmobi/ads/c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/c$a;->a()I

    move-result v0

    iget v2, v1, Lcom/inmobi/ads/b;->c:I

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    .line 483
    if-nez v0, :cond_7

    .line 484
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/m;->h()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Caching asset ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 485
    invoke-virtual {v1}, Lcom/inmobi/ads/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 484
    invoke-static {v0, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    :goto_3
    new-instance v0, Lcom/inmobi/ads/a/a;

    iget-object v2, p0, Lcom/inmobi/ads/m$a;->c:Lcom/inmobi/ads/a/a$a;

    iget-object v3, p0, Lcom/inmobi/ads/m$a;->d:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Lcom/inmobi/ads/a/a;-><init>(Lcom/inmobi/ads/a/a$a;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/a/a;->a(Lcom/inmobi/ads/b;)V

    goto/16 :goto_0

    .line 487
    :cond_7
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/m;->h()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retry attempt #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " to cache asset ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 489
    invoke-virtual {v1}, Lcom/inmobi/ads/b;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 487
    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 493
    :cond_8
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/m;->h()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Asset is already cached, signaling asset fetch success"

    invoke-static {v0, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    invoke-direct {p0, v1}, Lcom/inmobi/ads/m$a;->b(Lcom/inmobi/ads/b;)V

    goto/16 :goto_0

    .line 501
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/inmobi/ads/b;

    .line 502
    iget-object v1, p0, Lcom/inmobi/ads/m$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/m;

    .line 503
    if-eqz v1, :cond_9

    .line 504
    invoke-virtual {v1}, Lcom/inmobi/ads/m;->f()Lcom/inmobi/ads/l;

    move-result-object v1

    .line 505
    invoke-virtual {v1, v0}, Lcom/inmobi/ads/l;->c(Lcom/inmobi/ads/b;)V

    .line 509
    :cond_9
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/inmobi/ads/b;

    .line 511
    iget-object v1, p0, Lcom/inmobi/ads/m$a;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 512
    iget-object v0, p0, Lcom/inmobi/ads/m$a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 513
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/m;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "All assets fetched; scheduling another run to check for fresh assets"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/m$a;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 517
    :cond_a
    invoke-direct {p0}, Lcom/inmobi/ads/m$a;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_b
    move-object v2, v1

    goto/16 :goto_1

    .line 421
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
