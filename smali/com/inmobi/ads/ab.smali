.class final Lcom/inmobi/ads/ab;
.super Ljava/lang/Object;
.source "NativeStrandAdCache.java"

# interfaces
.implements Lcom/inmobi/ads/AdUnit$b;
.implements Lcom/inmobi/commons/core/utilities/a$b;
.implements Lcom/inmobi/commons/core/utilities/f$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/ab$a;,
        Lcom/inmobi/ads/ab$b;,
        Lcom/inmobi/ads/ab$c;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/app/Activity;",
            "Lcom/inmobi/ads/ab;",
            ">;"
        }
    .end annotation
.end field

.field private static j:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private final b:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/inmobi/ads/ab$c;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private d:Z

.field private e:Z

.field private final f:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final g:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/inmobi/ads/ab$b;",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/NativeV2DataModel;",
            ">;>;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/inmobi/ads/ab$b;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/ads/ab$a;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/inmobi/ads/ab;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/ab;->a:Ljava/lang/String;

    .line 484
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/inmobi/ads/ab;->i:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;)V
    .locals 3
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x1

    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 480
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/ab;->g:Ljava/util/Map;

    .line 481
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/ab;->h:Ljava/util/Map;

    .line 527
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/ab;->b:Ljava/lang/ref/WeakReference;

    .line 528
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/inmobi/ads/ab;->f:Landroid/os/Handler;

    .line 529
    invoke-static {}, Lcom/inmobi/commons/core/utilities/d;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/ads/ab;->d:Z

    .line 530
    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/ab;->j:Ljava/util/concurrent/ExecutorService;

    .line 531
    iput-boolean v2, p0, Lcom/inmobi/ads/ab;->e:Z

    .line 532
    iget-boolean v0, p0, Lcom/inmobi/ads/ab;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/inmobi/ads/ab;->e:Z

    if-eqz v0, :cond_0

    .line 533
    sget-object v0, Lcom/inmobi/ads/ab$c;->c:Lcom/inmobi/ads/ab$c;

    iput-object v0, p0, Lcom/inmobi/ads/ab;->c:Lcom/inmobi/ads/ab$c;

    .line 537
    :goto_0
    iget-object v0, p0, Lcom/inmobi/ads/ab;->c:Lcom/inmobi/ads/ab$c;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/inmobi/ads/ab$c;->a(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;)V

    .line 538
    invoke-direct {p0}, Lcom/inmobi/ads/ab;->k()V

    .line 539
    return-void

    .line 535
    :cond_0
    sget-object v0, Lcom/inmobi/ads/ab$c;->b:Lcom/inmobi/ads/ab$c;

    iput-object v0, p0, Lcom/inmobi/ads/ab;->c:Lcom/inmobi/ads/ab$c;

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 511
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 478
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 480
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/ab;->g:Ljava/util/Map;

    .line 481
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/ab;->h:Ljava/util/Map;

    .line 512
    new-instance v1, Ljava/lang/ref/WeakReference;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/inmobi/ads/ab;->b:Ljava/lang/ref/WeakReference;

    .line 513
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/inmobi/ads/ab;->f:Landroid/os/Handler;

    .line 514
    invoke-static {}, Lcom/inmobi/commons/core/utilities/d;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/ads/ab;->d:Z

    .line 515
    invoke-static {v2}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/ab;->j:Ljava/util/concurrent/ExecutorService;

    .line 516
    iput-boolean v2, p0, Lcom/inmobi/ads/ab;->e:Z

    .line 517
    iget-boolean v0, p0, Lcom/inmobi/ads/ab;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/inmobi/ads/ab;->e:Z

    if-eqz v0, :cond_0

    .line 518
    sget-object v0, Lcom/inmobi/ads/ab$c;->c:Lcom/inmobi/ads/ab$c;

    iput-object v0, p0, Lcom/inmobi/ads/ab;->c:Lcom/inmobi/ads/ab$c;

    .line 522
    :goto_0
    iget-object v0, p0, Lcom/inmobi/ads/ab;->c:Lcom/inmobi/ads/ab$c;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/inmobi/ads/ab$c;->a(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;)V

    .line 523
    invoke-direct {p0}, Lcom/inmobi/ads/ab;->k()V

    .line 524
    return-void

    .line 520
    :cond_0
    sget-object v0, Lcom/inmobi/ads/ab$c;->b:Lcom/inmobi/ads/ab$c;

    iput-object v0, p0, Lcom/inmobi/ads/ab;->c:Lcom/inmobi/ads/ab$c;

    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$c;)Lcom/inmobi/ads/ab$c;
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/inmobi/ads/ab;->c:Lcom/inmobi/ads/ab$c;

    return-object p1
.end method

.method public static a(Landroid/app/Activity;)Lcom/inmobi/ads/ab;
    .locals 2
    .param p0    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 551
    sget-object v0, Lcom/inmobi/ads/ab;->i:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/ab;

    .line 552
    if-nez v0, :cond_0

    .line 553
    new-instance v0, Lcom/inmobi/ads/ab;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/ab;-><init>(Landroid/app/Activity;)V

    .line 554
    sget-object v1, Lcom/inmobi/ads/ab;->i:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    :cond_0
    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/inmobi/ads/ab;
    .locals 2
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 542
    sget-object v0, Lcom/inmobi/ads/ab;->i:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/ab;

    .line 543
    if-nez v0, :cond_0

    .line 544
    new-instance v0, Lcom/inmobi/ads/ab;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/ab;-><init>(Landroid/content/Context;)V

    .line 545
    sget-object v1, Lcom/inmobi/ads/ab;->i:Ljava/util/Map;

    check-cast p0, Landroid/app/Activity;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 0

    .prologue
    .line 42
    invoke-static {p0, p1, p2}, Lcom/inmobi/ads/ab;->c(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/ab;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/inmobi/ads/ab;->d:Z

    return v0
.end method

.method static synthetic b(Lcom/inmobi/ads/ab;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/inmobi/ads/ab;->g:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic b(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 0

    .prologue
    .line 42
    invoke-static {p0, p1, p2}, Lcom/inmobi/ads/ab;->d(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    return-void
.end method

.method static synthetic c(Lcom/inmobi/ads/ab;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/inmobi/ads/ab;->h:Ljava/util/Map;

    return-object v0
.end method

.method private static c(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 2

    .prologue
    .line 783
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/inmobi/ads/ab$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/inmobi/ads/ab$2;-><init>(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 795
    return-void
.end method

.method private static d(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 2

    .prologue
    .line 798
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/inmobi/ads/ab$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/inmobi/ads/ab$3;-><init>(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 810
    return-void
.end method

.method static synthetic d(Lcom/inmobi/ads/ab;)Z
    .locals 1

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/inmobi/ads/ab;->e:Z

    return v0
.end method

.method static synthetic e(Lcom/inmobi/ads/ab;)V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/inmobi/ads/ab;->l()V

    return-void
.end method

.method static synthetic f(Lcom/inmobi/ads/ab;)Lcom/inmobi/ads/ab$c;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/inmobi/ads/ab;->c:Lcom/inmobi/ads/ab$c;

    return-object v0
.end method

.method static synthetic g(Lcom/inmobi/ads/ab;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/inmobi/ads/ab;->f:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/inmobi/ads/ab;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic j()Ljava/util/concurrent/ExecutorService;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/inmobi/ads/ab;->j:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 814
    invoke-static {}, Lcom/inmobi/commons/core/utilities/a;->a()Lcom/inmobi/commons/core/utilities/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/commons/core/utilities/a;->a(Lcom/inmobi/commons/core/utilities/a$b;)V

    .line 816
    invoke-static {}, Lcom/inmobi/commons/core/utilities/f;->a()Lcom/inmobi/commons/core/utilities/f;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/utilities/f;->a(Ljava/lang/String;Lcom/inmobi/commons/core/utilities/f$b;)V

    .line 817
    return-void
.end method

.method private l()V
    .locals 2

    .prologue
    .line 821
    invoke-static {}, Lcom/inmobi/commons/core/utilities/a;->a()Lcom/inmobi/commons/core/utilities/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/inmobi/commons/core/utilities/a;->b(Lcom/inmobi/commons/core/utilities/a$b;)V

    .line 823
    invoke-static {}, Lcom/inmobi/commons/core/utilities/f;->a()Lcom/inmobi/commons/core/utilities/f;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, p0, v1}, Lcom/inmobi/commons/core/utilities/f;->a(Lcom/inmobi/commons/core/utilities/f$b;Ljava/lang/String;)V

    .line 824
    return-void
.end method


# virtual methods
.method public a(IJLcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;Lcom/inmobi/ads/ab$a;)Lcom/inmobi/ads/ab$b;
    .locals 6
    .param p4    # Lcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/inmobi/ads/ab$a;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 567
    invoke-virtual {p4}, Lcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;->getFixedPositions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 569
    if-nez v0, :cond_1

    .line 570
    const/4 v0, 0x0

    new-array v4, v0, [Ljava/lang/Integer;

    .line 575
    :goto_0
    new-instance v0, Lcom/inmobi/ads/ac;

    iget-object v1, p0, Lcom/inmobi/ads/ab;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    move-wide v2, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/ads/ac;-><init>(Landroid/app/Activity;J[Ljava/lang/Integer;Lcom/inmobi/ads/AdUnit$b;)V

    .line 576
    new-instance v1, Lcom/inmobi/ads/ab$b;

    invoke-direct {v1, p1, p2, p3, v0}, Lcom/inmobi/ads/ab$b;-><init>(IJLcom/inmobi/ads/ac;)V

    .line 577
    if-eqz p5, :cond_0

    .line 578
    iget-object v0, p0, Lcom/inmobi/ads/ab;->h:Ljava/util/Map;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 580
    :cond_0
    return-object v1

    .line 572
    :cond_1
    new-array v4, v0, [Ljava/lang/Integer;

    .line 573
    invoke-virtual {p4}, Lcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;->getFixedPositions()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 677
    return-void
.end method

.method public a(Lcom/inmobi/ads/AdUnit;)V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 681
    const-string v1, "inlban"

    invoke-virtual {p1}, Lcom/inmobi/ads/AdUnit;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 683
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/inmobi/ads/ac;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/inmobi/ads/ac;->N()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 703
    :cond_0
    :goto_0
    return-void

    .line 685
    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/inmobi/ads/AdUnit;->j()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 687
    iget-object v1, p0, Lcom/inmobi/ads/ab;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/ab$b;

    .line 688
    iget-object v5, v1, Lcom/inmobi/ads/ab$b;->c:Lcom/inmobi/ads/ac;

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 693
    :goto_1
    if-eqz v1, :cond_0

    .line 694
    iget-object v4, p0, Lcom/inmobi/ads/ab;->c:Lcom/inmobi/ads/ab$c;

    invoke-virtual {v4, p0, v1, p1, v3}, Lcom/inmobi/ads/ab$c;->a(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;Lcom/inmobi/ads/AdUnit;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 696
    :catch_0
    move-exception v1

    .line 697
    iget-object v3, p0, Lcom/inmobi/ads/ab;->c:Lcom/inmobi/ads/ab$c;

    invoke-virtual {v3, v2, v2, v2, v2}, Lcom/inmobi/ads/ab$c;->a(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;Lcom/inmobi/ads/AdUnit;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 698
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v1}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0

    .line 701
    :cond_3
    iget-object v1, p0, Lcom/inmobi/ads/ab;->c:Lcom/inmobi/ads/ab$c;

    invoke-virtual {v1, v2, v2, v2, v2}, Lcom/inmobi/ads/ab$c;->a(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;Lcom/inmobi/ads/AdUnit;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    goto :goto_0

    :cond_4
    move-object v1, v2

    goto :goto_1
.end method

.method public a(Lcom/inmobi/ads/AdUnit;Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 6

    .prologue
    .line 707
    const-string v1, "inlban"

    invoke-virtual {p1}, Lcom/inmobi/ads/AdUnit;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 709
    :try_start_0
    move-object v0, p1

    check-cast v0, Lcom/inmobi/ads/ac;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/inmobi/ads/ac;->N()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 728
    :cond_0
    :goto_0
    return-void

    .line 711
    :cond_1
    const/4 v2, 0x0

    .line 712
    iget-object v1, p0, Lcom/inmobi/ads/ab;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/ab$b;

    .line 713
    iget-object v4, v1, Lcom/inmobi/ads/ab$b;->c:Lcom/inmobi/ads/ac;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 718
    :goto_1
    if-eqz v1, :cond_0

    .line 719
    iget-object v2, p0, Lcom/inmobi/ads/ab;->c:Lcom/inmobi/ads/ab$c;

    invoke-virtual {v2, p0, v1, p1, p2}, Lcom/inmobi/ads/ab$c;->a(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;Lcom/inmobi/ads/AdUnit;Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 721
    :catch_0
    move-exception v1

    .line 722
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/ab;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SDK encountered unexpected error in handling the onAdLoadFailed event; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 724
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 722
    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 725
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v1}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0

    :cond_3
    move-object v1, v2

    goto :goto_1
.end method

.method public a(Lcom/inmobi/ads/AdUnit;Z)V
    .locals 0

    .prologue
    .line 673
    return-void
.end method

.method public a(Lcom/inmobi/ads/ab$b;)V
    .locals 2

    .prologue
    .line 584
    iget-object v0, p0, Lcom/inmobi/ads/ab;->g:Ljava/util/Map;

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    iget-object v0, p0, Lcom/inmobi/ads/ab;->c:Lcom/inmobi/ads/ab$c;

    invoke-virtual {v0, p0, p1}, Lcom/inmobi/ads/ab$c;->b(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;)V

    .line 586
    return-void
.end method

.method public a(Lcom/inmobi/ads/ab$b;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 664
    iget-object v0, p1, Lcom/inmobi/ads/ab$b;->c:Lcom/inmobi/ads/ac;

    invoke-virtual {v0, p2}, Lcom/inmobi/ads/ac;->a(Ljava/lang/String;)V

    .line 665
    return-void
.end method

.method public a(Lcom/inmobi/ads/ab$b;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/ab$b;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 660
    iget-object v0, p1, Lcom/inmobi/ads/ab$b;->c:Lcom/inmobi/ads/ac;

    invoke-virtual {v0, p2}, Lcom/inmobi/ads/ac;->a(Ljava/util/Map;)V

    .line 661
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 748
    return-void
.end method

.method public a(Z)V
    .locals 5

    .prologue
    .line 764
    iput-boolean p1, p0, Lcom/inmobi/ads/ab;->e:Z

    .line 766
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/ab;->c:Lcom/inmobi/ads/ab$c;

    invoke-virtual {v0, p0, p1}, Lcom/inmobi/ads/ab$c;->a(Lcom/inmobi/ads/ab;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 774
    :goto_0
    return-void

    .line 767
    :catch_0
    move-exception v0

    .line 768
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/ab;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encountered unexpected error in the onFocusChanged handler: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 769
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 768
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 770
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "InMobi Native Strands"

    const-string v3, "SDK encountered an unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method

.method public b(Lcom/inmobi/ads/ab$b;)Lcom/inmobi/ads/ai;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 594
    iget-object v0, p0, Lcom/inmobi/ads/ab;->c:Lcom/inmobi/ads/ab$c;

    invoke-virtual {v0, p0, p1}, Lcom/inmobi/ads/ab$c;->e(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;)Lcom/inmobi/ads/ai;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 732
    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 756
    return-void
.end method

.method public b(Z)V
    .locals 1

    .prologue
    .line 778
    iput-boolean p1, p0, Lcom/inmobi/ads/ab;->d:Z

    .line 779
    iget-object v0, p0, Lcom/inmobi/ads/ab;->c:Lcom/inmobi/ads/ab$c;

    invoke-virtual {v0, p0, p1}, Lcom/inmobi/ads/ab$c;->b(Lcom/inmobi/ads/ab;Z)V

    .line 780
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 736
    return-void
.end method

.method public c(Lcom/inmobi/ads/ab$b;)V
    .locals 13

    .prologue
    .line 598
    iget-object v10, p1, Lcom/inmobi/ads/ab$b;->c:Lcom/inmobi/ads/ac;

    .line 599
    iget-object v2, p0, Lcom/inmobi/ads/ab;->g:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 600
    iget-object v3, p0, Lcom/inmobi/ads/ab;->h:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 602
    monitor-enter v2

    .line 603
    :try_start_0
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 604
    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 605
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/inmobi/ads/NativeV2DataModel;

    move-object v4, v0

    .line 606
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 608
    :try_start_1
    const-string v5, "markupType"

    const-string v6, "json"

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 609
    const-string v5, "pubContent"

    .line 610
    invoke-virtual {v4}, Lcom/inmobi/ads/NativeV2DataModel;->a()Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 609
    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 613
    invoke-virtual {v10}, Lcom/inmobi/ads/ac;->b()J

    move-result-wide v4

    .line 614
    invoke-virtual {v10}, Lcom/inmobi/ads/ac;->d()Ljava/lang/String;

    move-result-object v6

    .line 615
    invoke-virtual {v10}, Lcom/inmobi/ads/ac;->f()Ljava/lang/String;

    move-result-object v7

    .line 616
    invoke-virtual {v10}, Lcom/inmobi/ads/ac;->m()Ljava/lang/String;

    move-result-object v8

    .line 617
    invoke-virtual {v10}, Lcom/inmobi/ads/ac;->n()Ljava/lang/String;

    move-result-object v9

    .line 612
    invoke-static/range {v3 .. v9}, Lcom/inmobi/ads/a$a;->a(Lorg/json/JSONObject;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/inmobi/ads/a;

    move-result-object v3

    .line 618
    if-eqz v3, :cond_0

    .line 619
    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 621
    :catch_0
    move-exception v3

    .line 622
    :try_start_2
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v4

    new-instance v5, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v5, v3}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0

    .line 625
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :cond_1
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 627
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 628
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/inmobi/ads/ab$1;

    invoke-direct {v3, p0, v11, v10}, Lcom/inmobi/ads/ab$1;-><init>(Lcom/inmobi/ads/ab;Ljava/util/List;Lcom/inmobi/ads/ac;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 652
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 654
    iget-object v2, p0, Lcom/inmobi/ads/ab;->h:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 655
    iget-object v2, p0, Lcom/inmobi/ads/ab;->c:Lcom/inmobi/ads/ab$c;

    invoke-virtual {v2, p0, p1}, Lcom/inmobi/ads/ab$c;->c(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;)V

    .line 657
    :cond_2
    return-void
.end method

.method public d(Lcom/inmobi/ads/ab$b;)Lcom/inmobi/ads/c$h;
    .locals 1

    .prologue
    .line 668
    iget-object v0, p1, Lcom/inmobi/ads/ab$b;->c:Lcom/inmobi/ads/ac;

    invoke-virtual {v0}, Lcom/inmobi/ads/ac;->p()Lcom/inmobi/ads/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/c;->m()Lcom/inmobi/ads/c$h;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 0

    .prologue
    .line 740
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 744
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 752
    return-void
.end method

.method public g()V
    .locals 0

    .prologue
    .line 760
    return-void
.end method

.method h()V
    .locals 2

    .prologue
    .line 831
    iget-object v0, p0, Lcom/inmobi/ads/ab;->f:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 832
    return-void
.end method
