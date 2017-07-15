.class final Lcom/inmobi/rendering/a/c$a;
.super Landroid/os/Handler;
.source "ClickManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/rendering/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/rendering/a/c;


# direct methods
.method public constructor <init>(Lcom/inmobi/rendering/a/c;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 550
    iput-object p1, p0, Lcom/inmobi/rendering/a/c$a;->a:Lcom/inmobi/rendering/a/c;

    .line 551
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 552
    return-void
.end method

.method private a(Lcom/inmobi/rendering/a/a;)V
    .locals 2

    .prologue
    .line 724
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    .line 725
    iget-boolean v0, p1, Lcom/inmobi/rendering/a/a;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    iput v0, v1, Landroid/os/Message;->what:I

    .line 726
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 727
    invoke-virtual {p0, v1}, Lcom/inmobi/rendering/a/c$a;->sendMessage(Landroid/os/Message;)Z

    .line 728
    return-void

    .line 725
    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method private a(Lcom/inmobi/rendering/a/a;I)V
    .locals 2

    .prologue
    .line 731
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 732
    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    .line 733
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 734
    iput p2, v0, Landroid/os/Message;->arg1:I

    .line 736
    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/a/c$a;->sendMessage(Landroid/os/Message;)Z

    .line 737
    return-void
.end method

.method static synthetic a(Lcom/inmobi/rendering/a/c$a;Lcom/inmobi/rendering/a/a;)V
    .locals 0

    .prologue
    .line 541
    invoke-direct {p0, p1}, Lcom/inmobi/rendering/a/c$a;->b(Lcom/inmobi/rendering/a/a;)V

    return-void
.end method

.method private b(Lcom/inmobi/rendering/a/a;)V
    .locals 2

    .prologue
    .line 740
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 741
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 742
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 743
    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/a/c$a;->sendMessage(Landroid/os/Message;)Z

    .line 744
    return-void
.end method

.method static synthetic b(Lcom/inmobi/rendering/a/c$a;Lcom/inmobi/rendering/a/a;)V
    .locals 0

    .prologue
    .line 541
    invoke-direct {p0, p1}, Lcom/inmobi/rendering/a/c$a;->c(Lcom/inmobi/rendering/a/a;)V

    return-void
.end method

.method private c(Lcom/inmobi/rendering/a/a;)V
    .locals 6

    .prologue
    .line 747
    invoke-static {}, Lcom/inmobi/rendering/a/c;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 748
    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    .line 749
    invoke-static {}, Lcom/inmobi/rendering/a/c;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    .line 750
    :goto_0
    invoke-static {}, Lcom/inmobi/rendering/a/c;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/rendering/a/a;

    .line 752
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 753
    iget-boolean v1, v0, Lcom/inmobi/rendering/a/a;->h:Z

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    :goto_1
    iput v1, v2, Landroid/os/Message;->what:I

    .line 754
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 755
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v0, v0, Lcom/inmobi/rendering/a/a;->d:J

    sub-long v0, v4, v0

    sget-object v3, Lcom/inmobi/rendering/a/c;->a:Lcom/inmobi/ads/c$c;

    invoke-virtual {v3}, Lcom/inmobi/ads/c$c;->b()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    cmp-long v0, v0, v4

    if-gez v0, :cond_3

    .line 756
    sget-object v0, Lcom/inmobi/rendering/a/c;->a:Lcom/inmobi/ads/c$c;

    invoke-virtual {v0}, Lcom/inmobi/ads/c$c;->b()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/inmobi/rendering/a/c$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 761
    :cond_0
    :goto_2
    return-void

    .line 749
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 753
    :cond_2
    const/4 v1, 0x2

    goto :goto_1

    .line 758
    :cond_3
    invoke-virtual {p0, v2}, Lcom/inmobi/rendering/a/c$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    const/4 v1, 0x2

    .line 557
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 721
    :cond_0
    :goto_0
    return-void

    .line 560
    :pswitch_0
    new-instance v0, Lcom/inmobi/commons/core/configs/g;

    invoke-direct {v0}, Lcom/inmobi/commons/core/configs/g;-><init>()V

    .line 561
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->a()Lcom/inmobi/commons/core/configs/b;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Lcom/inmobi/commons/core/configs/b;->a(Lcom/inmobi/commons/core/configs/a;Lcom/inmobi/commons/core/configs/b$b;)V

    .line 562
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/g;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 566
    invoke-static {}, Lcom/inmobi/rendering/a/c;->f()Lcom/inmobi/rendering/a/b;

    move-result-object v0

    sget-object v2, Lcom/inmobi/rendering/a/c;->a:Lcom/inmobi/ads/c$c;

    invoke-virtual {v2}, Lcom/inmobi/ads/c$c;->e()I

    move-result v2

    sget-object v3, Lcom/inmobi/rendering/a/c;->a:Lcom/inmobi/ads/c$c;

    .line 567
    invoke-virtual {v3}, Lcom/inmobi/ads/c$c;->b()I

    move-result v3

    .line 566
    invoke-virtual {v0, v2, v3}, Lcom/inmobi/rendering/a/b;->a(II)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/rendering/a/c;->a(Ljava/util/List;)Ljava/util/List;

    .line 568
    invoke-static {}, Lcom/inmobi/rendering/a/c;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 569
    invoke-static {}, Lcom/inmobi/rendering/a/c;->f()Lcom/inmobi/rendering/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/rendering/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 570
    invoke-static {}, Lcom/inmobi/rendering/a/c;->h()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 717
    :catch_0
    move-exception v0

    .line 718
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/rendering/a/c;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDK encountered unexpected error in processing ping; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 719
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 718
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 572
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 573
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 574
    sget-object v1, Lcom/inmobi/rendering/a/c;->a:Lcom/inmobi/ads/c$c;

    invoke-virtual {v1}, Lcom/inmobi/ads/c$c;->b()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/inmobi/rendering/a/c$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 577
    :cond_2
    invoke-static {}, Lcom/inmobi/rendering/a/c;->g()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/rendering/a/a;

    .line 578
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v2

    .line 579
    iget-boolean v3, v0, Lcom/inmobi/rendering/a/a;->h:Z

    if-eqz v3, :cond_3

    const/4 v1, 0x3

    :cond_3
    iput v1, v2, Landroid/os/Message;->what:I

    .line 580
    iput-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 581
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v0, v0, Lcom/inmobi/rendering/a/a;->d:J

    sub-long v0, v4, v0

    .line 582
    sget-object v3, Lcom/inmobi/rendering/a/c;->a:Lcom/inmobi/ads/c$c;

    invoke-virtual {v3}, Lcom/inmobi/ads/c$c;->b()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    cmp-long v3, v0, v4

    if-gez v3, :cond_4

    .line 583
    sget-object v3, Lcom/inmobi/rendering/a/c;->a:Lcom/inmobi/ads/c$c;

    invoke-virtual {v3}, Lcom/inmobi/ads/c$c;->b()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    sub-long v0, v4, v0

    invoke-virtual {p0, v2, v0, v1}, Lcom/inmobi/rendering/a/c$a;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 585
    :cond_4
    invoke-virtual {p0, v2}, Lcom/inmobi/rendering/a/c$a;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 591
    :pswitch_1
    invoke-static {}, Lcom/inmobi/commons/core/utilities/d;->a()Z

    move-result v0

    if-nez v0, :cond_5

    .line 592
    invoke-static {}, Lcom/inmobi/rendering/a/c;->h()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 593
    iget-object v0, p0, Lcom/inmobi/rendering/a/c$a;->a:Lcom/inmobi/rendering/a/c;

    invoke-virtual {v0}, Lcom/inmobi/rendering/a/c;->c()V

    goto/16 :goto_0

    .line 597
    :cond_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/inmobi/rendering/a/a;

    .line 598
    iget v1, v0, Lcom/inmobi/rendering/a/a;->f:I

    if-nez v1, :cond_6

    .line 599
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/inmobi/rendering/a/c$a;->a(Lcom/inmobi/rendering/a/a;I)V

    goto/16 :goto_0

    .line 601
    :cond_6
    sget-object v1, Lcom/inmobi/rendering/a/c;->a:Lcom/inmobi/ads/c$c;

    invoke-virtual {v1}, Lcom/inmobi/ads/c$c;->f()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/rendering/a/a;->a(J)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 602
    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/inmobi/rendering/a/c$a;->a(Lcom/inmobi/rendering/a/a;I)V

    goto/16 :goto_0

    .line 606
    :cond_7
    sget-object v1, Lcom/inmobi/rendering/a/c;->a:Lcom/inmobi/ads/c$c;

    invoke-virtual {v1}, Lcom/inmobi/ads/c$c;->a()I

    move-result v1

    iget v2, v0, Lcom/inmobi/rendering/a/a;->f:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 607
    if-nez v1, :cond_8

    .line 611
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/rendering/a/c;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pinging click ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/inmobi/rendering/a/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") over HTTP"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    :goto_1
    new-instance v1, Lcom/inmobi/rendering/a/c$c;

    new-instance v2, Lcom/inmobi/rendering/a/c$a$1;

    invoke-direct {v2, p0}, Lcom/inmobi/rendering/a/c$a$1;-><init>(Lcom/inmobi/rendering/a/c$a;)V

    invoke-direct {v1, v2}, Lcom/inmobi/rendering/a/c$c;-><init>(Lcom/inmobi/rendering/a/c$d;)V

    .line 627
    invoke-virtual {v1, v0}, Lcom/inmobi/rendering/a/c$c;->a(Lcom/inmobi/rendering/a/a;)V

    goto/16 :goto_0

    .line 613
    :cond_8
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/rendering/a/c;->e()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retry attempt #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " for click ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Lcom/inmobi/rendering/a/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ") over HTTP"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 632
    :pswitch_2
    invoke-static {}, Lcom/inmobi/commons/core/utilities/d;->a()Z

    move-result v0

    if-nez v0, :cond_9

    .line 633
    invoke-static {}, Lcom/inmobi/rendering/a/c;->h()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 634
    iget-object v0, p0, Lcom/inmobi/rendering/a/c$a;->a:Lcom/inmobi/rendering/a/c;

    invoke-virtual {v0}, Lcom/inmobi/rendering/a/c;->c()V

    goto/16 :goto_0

    .line 639
    :cond_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/inmobi/rendering/a/a;

    .line 640
    iget v1, v0, Lcom/inmobi/rendering/a/a;->f:I

    if-nez v1, :cond_a

    .line 641
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/inmobi/rendering/a/c$a;->a(Lcom/inmobi/rendering/a/a;I)V

    goto/16 :goto_0

    .line 643
    :cond_a
    sget-object v1, Lcom/inmobi/rendering/a/c;->a:Lcom/inmobi/ads/c$c;

    invoke-virtual {v1}, Lcom/inmobi/ads/c$c;->f()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/rendering/a/a;->a(J)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 644
    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/inmobi/rendering/a/c$a;->a(Lcom/inmobi/rendering/a/a;I)V

    goto/16 :goto_0

    .line 648
    :cond_b
    sget-object v1, Lcom/inmobi/rendering/a/c;->a:Lcom/inmobi/ads/c$c;

    invoke-virtual {v1}, Lcom/inmobi/ads/c$c;->a()I

    move-result v1

    iget v2, v0, Lcom/inmobi/rendering/a/a;->f:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 649
    if-nez v1, :cond_c

    .line 653
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/rendering/a/c;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pinging click ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/inmobi/rendering/a/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") in WebView"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    :goto_2
    new-instance v1, Lcom/inmobi/rendering/a/c$b;

    new-instance v2, Lcom/inmobi/rendering/a/c$a$2;

    invoke-direct {v2, p0}, Lcom/inmobi/rendering/a/c$a$2;-><init>(Lcom/inmobi/rendering/a/c$a;)V

    invoke-direct {v1, v2}, Lcom/inmobi/rendering/a/c$b;-><init>(Lcom/inmobi/rendering/a/c$d;)V

    .line 669
    invoke-virtual {v1, v0}, Lcom/inmobi/rendering/a/c$b;->a(Lcom/inmobi/rendering/a/a;)V

    goto/16 :goto_0

    .line 655
    :cond_c
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/rendering/a/c;->e()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Retry attempt #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " for click ("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Lcom/inmobi/rendering/a/a;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ") using WebView"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 674
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/inmobi/rendering/a/a;

    .line 675
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 676
    const-string v2, "pingUrl"

    iget-object v0, v0, Lcom/inmobi/rendering/a/a;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 678
    iget v0, p1, Landroid/os/Message;->arg1:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    packed-switch v0, :pswitch_data_1

    .line 690
    :goto_3
    :try_start_2
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v0

    const-string v2, "ads"

    const-string v3, "PingDiscarded"

    invoke-virtual {v0, v2, v3, v1}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 697
    :goto_4
    :pswitch_4
    :try_start_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/inmobi/rendering/a/a;

    .line 698
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/rendering/a/c;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Processing click ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/inmobi/rendering/a/a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") completed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    invoke-static {}, Lcom/inmobi/rendering/a/c;->f()Lcom/inmobi/rendering/a/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inmobi/rendering/a/b;->b(Lcom/inmobi/rendering/a/a;)V

    .line 700
    invoke-static {}, Lcom/inmobi/rendering/a/c;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 702
    invoke-static {}, Lcom/inmobi/rendering/a/c;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 703
    invoke-static {}, Lcom/inmobi/rendering/a/c;->f()Lcom/inmobi/rendering/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/rendering/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 704
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/rendering/a/c;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Done processing all clicks!"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    invoke-static {}, Lcom/inmobi/rendering/a/c;->h()Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/16 :goto_0

    .line 680
    :pswitch_5
    const-string v0, "errorCode"

    const-string v2, "MaxRetryCountReached"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 683
    :pswitch_6
    const-string v0, "errorCode"

    const-string v2, "ExpiredClick"

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 691
    :catch_1
    move-exception v0

    .line 692
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/rendering/a/c;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in submitting telemetry event : ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 693
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 692
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 707
    :cond_d
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 708
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 709
    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/a/c$a;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 712
    :cond_e
    invoke-static {}, Lcom/inmobi/rendering/a/c;->g()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/rendering/a/a;

    invoke-direct {p0, v0}, Lcom/inmobi/rendering/a/c$a;->a(Lcom/inmobi/rendering/a/a;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 557
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
    .end packed-switch

    .line 678
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
