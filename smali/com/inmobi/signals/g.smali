.class public Lcom/inmobi/signals/g;
.super Ljava/lang/Object;
.source "CarbWorker.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/inmobi/signals/p$a;

.field private c:Z

.field private d:Lcom/inmobi/signals/a;

.field private e:Lcom/inmobi/signals/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/inmobi/signals/g;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/signals/g;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/signals/g;->c:Z

    .line 25
    new-instance v0, Lcom/inmobi/signals/a;

    invoke-direct {v0}, Lcom/inmobi/signals/a;-><init>()V

    iput-object v0, p0, Lcom/inmobi/signals/g;->d:Lcom/inmobi/signals/a;

    .line 26
    new-instance v0, Lcom/inmobi/signals/e;

    invoke-direct {v0}, Lcom/inmobi/signals/e;-><init>()V

    iput-object v0, p0, Lcom/inmobi/signals/g;->e:Lcom/inmobi/signals/e;

    .line 27
    return-void
.end method

.method static synthetic a(Lcom/inmobi/signals/g;)Lcom/inmobi/signals/c;
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/inmobi/signals/g;->c()Lcom/inmobi/signals/c;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/inmobi/signals/g;Ljava/util/List;)Ljava/util/List;
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcom/inmobi/signals/g;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/signals/d;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/signals/d;",
            ">;"
        }
    .end annotation

    .prologue
    .line 83
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 85
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 86
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/signals/d;

    invoke-virtual {v0}, Lcom/inmobi/signals/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inmobi/signals/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 90
    :cond_1
    return-object v2
.end method

.method private a(Lcom/inmobi/signals/c;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/signals/c;",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/signals/d;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    new-instance v0, Lcom/inmobi/signals/f;

    iget-object v1, p0, Lcom/inmobi/signals/g;->b:Lcom/inmobi/signals/p$a;

    invoke-virtual {v1}, Lcom/inmobi/signals/p$a;->c()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/signals/g;->b:Lcom/inmobi/signals/p$a;

    invoke-virtual {v2}, Lcom/inmobi/signals/p$a;->e()I

    move-result v2

    iget-object v3, p0, Lcom/inmobi/signals/g;->b:Lcom/inmobi/signals/p$a;

    invoke-virtual {v3}, Lcom/inmobi/signals/p$a;->f()I

    move-result v3

    invoke-static {}, Lcom/inmobi/signals/o;->a()Lcom/inmobi/signals/o;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inmobi/signals/o;->d()Lcom/inmobi/commons/core/utilities/uid/d;

    move-result-object v4

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/inmobi/signals/f;-><init>(Ljava/lang/String;IILcom/inmobi/commons/core/utilities/uid/d;Ljava/util/List;Lcom/inmobi/signals/c;)V

    .line 111
    iget-object v1, p0, Lcom/inmobi/signals/g;->b:Lcom/inmobi/signals/p$a;

    invoke-virtual {v1}, Lcom/inmobi/signals/p$a;->g()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/inmobi/signals/f;->b(I)V

    .line 112
    iget-object v1, p0, Lcom/inmobi/signals/g;->b:Lcom/inmobi/signals/p$a;

    invoke-virtual {v1}, Lcom/inmobi/signals/p$a;->g()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/inmobi/signals/f;->c(I)V

    .line 113
    iget-object v1, p0, Lcom/inmobi/signals/g;->e:Lcom/inmobi/signals/e;

    invoke-virtual {v1, v0}, Lcom/inmobi/signals/e;->a(Lcom/inmobi/signals/f;)Z

    .line 114
    return-void
.end method

.method static synthetic a(Lcom/inmobi/signals/g;Lcom/inmobi/signals/c;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/inmobi/signals/g;->a(Lcom/inmobi/signals/c;Ljava/util/List;)V

    return-void
.end method

.method private a()Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 42
    iget-object v1, p0, Lcom/inmobi/signals/g;->d:Lcom/inmobi/signals/a;

    invoke-virtual {v1}, Lcom/inmobi/signals/a;->b()J

    move-result-wide v2

    .line 44
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 52
    :cond_0
    :goto_0
    return v0

    .line 47
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long v2, v4, v2

    .line 48
    iget-object v1, p0, Lcom/inmobi/signals/g;->b:Lcom/inmobi/signals/p$a;

    invoke-virtual {v1}, Lcom/inmobi/signals/p$a;->d()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 52
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/signals/g;Z)Z
    .locals 0

    .prologue
    .line 15
    iput-boolean p1, p0, Lcom/inmobi/signals/g;->c:Z

    return p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 94
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v1

    .line 95
    if-nez v1, :cond_0

    .line 105
    :goto_0
    return v0

    .line 96
    :cond_0
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 100
    const/16 v2, 0x100

    :try_start_0
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    const/4 v0, 0x1

    goto :goto_0

    .line 102
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method static synthetic b(Lcom/inmobi/signals/g;)Lcom/inmobi/signals/a;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lcom/inmobi/signals/g;->d:Lcom/inmobi/signals/a;

    return-object v0
.end method

.method private b()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/inmobi/signals/g$1;

    invoke-direct {v1, p0}, Lcom/inmobi/signals/g$1;-><init>(Lcom/inmobi/signals/g;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 71
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 72
    return-void
.end method

.method private c()Lcom/inmobi/signals/c;
    .locals 5

    .prologue
    .line 75
    new-instance v0, Lcom/inmobi/signals/b;

    iget-object v1, p0, Lcom/inmobi/signals/g;->b:Lcom/inmobi/signals/p$a;

    invoke-virtual {v1}, Lcom/inmobi/signals/p$a;->b()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/signals/g;->b:Lcom/inmobi/signals/p$a;

    invoke-virtual {v2}, Lcom/inmobi/signals/p$a;->e()I

    move-result v2

    iget-object v3, p0, Lcom/inmobi/signals/g;->b:Lcom/inmobi/signals/p$a;

    invoke-virtual {v3}, Lcom/inmobi/signals/p$a;->f()I

    move-result v3

    invoke-static {}, Lcom/inmobi/signals/o;->a()Lcom/inmobi/signals/o;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inmobi/signals/o;->d()Lcom/inmobi/commons/core/utilities/uid/d;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/inmobi/signals/b;-><init>(Ljava/lang/String;IILcom/inmobi/commons/core/utilities/uid/d;)V

    .line 76
    iget-object v1, p0, Lcom/inmobi/signals/g;->b:Lcom/inmobi/signals/p$a;

    invoke-virtual {v1}, Lcom/inmobi/signals/p$a;->h()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/signals/b;->a(J)V

    .line 77
    iget-object v1, p0, Lcom/inmobi/signals/g;->b:Lcom/inmobi/signals/p$a;

    invoke-virtual {v1}, Lcom/inmobi/signals/p$a;->g()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/inmobi/signals/b;->b(I)V

    .line 78
    iget-object v1, p0, Lcom/inmobi/signals/g;->b:Lcom/inmobi/signals/p$a;

    invoke-virtual {v1}, Lcom/inmobi/signals/p$a;->g()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/inmobi/signals/b;->c(I)V

    .line 79
    iget-object v1, p0, Lcom/inmobi/signals/g;->e:Lcom/inmobi/signals/e;

    invoke-virtual {v1, v0}, Lcom/inmobi/signals/e;->a(Lcom/inmobi/signals/b;)Lcom/inmobi/signals/c;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Lcom/inmobi/signals/p$a;)V
    .locals 3

    .prologue
    .line 30
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/inmobi/signals/g;->b:Lcom/inmobi/signals/p$a;

    .line 32
    iget-boolean v0, p0, Lcom/inmobi/signals/g;->c:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/inmobi/signals/g;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/signals/g;->a:Ljava/lang/String;

    const-string v2, "Starting Carb worker"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/signals/g;->c:Z

    .line 35
    invoke-direct {p0}, Lcom/inmobi/signals/g;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    :goto_0
    monitor-exit p0

    return-void

    .line 37
    :cond_0
    :try_start_1
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/signals/g;->a:Ljava/lang/String;

    const-string v2, "Carb worker did not admit Carb start request."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 30
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
