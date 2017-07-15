.class public final Lcom/vungle/publisher/alw;
.super Ljava/lang/Object;
.source "vungle"


# static fields
.field private static final d:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/vungle/publisher/alw;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/vungle/publisher/ahs;

.field private final b:Lcom/vungle/publisher/ahs;

.field private final c:Lcom/vungle/publisher/ahs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/vungle/publisher/alw;->d:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-static {}, Lcom/vungle/publisher/als;->a()Lcom/vungle/publisher/als;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/als;->f()Lcom/vungle/publisher/alt;

    .line 59
    invoke-static {}, Lcom/vungle/publisher/alt;->d()Lcom/vungle/publisher/ahs;

    .line 60
    invoke-static {}, Lcom/vungle/publisher/alt;->a()Lcom/vungle/publisher/ahs;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/alw;->a:Lcom/vungle/publisher/ahs;

    .line 66
    invoke-static {}, Lcom/vungle/publisher/alt;->e()Lcom/vungle/publisher/ahs;

    .line 67
    invoke-static {}, Lcom/vungle/publisher/alt;->b()Lcom/vungle/publisher/ahs;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/alw;->b:Lcom/vungle/publisher/ahs;

    .line 73
    invoke-static {}, Lcom/vungle/publisher/alt;->f()Lcom/vungle/publisher/ahs;

    .line 74
    invoke-static {}, Lcom/vungle/publisher/alt;->c()Lcom/vungle/publisher/ahs;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/alw;->c:Lcom/vungle/publisher/ahs;

    .line 79
    return-void
.end method

.method public static a()Lcom/vungle/publisher/ahs;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/vungle/publisher/ajs;->b:Lcom/vungle/publisher/ajs;

    return-object v0
.end method

.method public static b()Lcom/vungle/publisher/ahs;
    .locals 1

    .prologue
    .line 123
    invoke-static {}, Lcom/vungle/publisher/alw;->d()Lcom/vungle/publisher/alw;

    move-result-object v0

    iget-object v0, v0, Lcom/vungle/publisher/alw;->a:Lcom/vungle/publisher/ahs;

    invoke-static {v0}, Lcom/vungle/publisher/alp;->a(Lcom/vungle/publisher/ahs;)Lcom/vungle/publisher/ahs;

    move-result-object v0

    return-object v0
.end method

.method public static c()Lcom/vungle/publisher/ahs;
    .locals 1

    .prologue
    .line 140
    invoke-static {}, Lcom/vungle/publisher/alw;->d()Lcom/vungle/publisher/alw;

    move-result-object v0

    iget-object v0, v0, Lcom/vungle/publisher/alw;->b:Lcom/vungle/publisher/ahs;

    invoke-static {v0}, Lcom/vungle/publisher/alp;->b(Lcom/vungle/publisher/ahs;)Lcom/vungle/publisher/ahs;

    move-result-object v0

    return-object v0
.end method

.method private static d()Lcom/vungle/publisher/alw;
    .locals 3

    .prologue
    .line 42
    :goto_0
    sget-object v0, Lcom/vungle/publisher/alw;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/alw;

    .line 43
    if-eqz v0, :cond_1

    .line 48
    :cond_0
    return-object v0

    .line 46
    :cond_1
    new-instance v0, Lcom/vungle/publisher/alw;

    invoke-direct {v0}, Lcom/vungle/publisher/alw;-><init>()V

    .line 47
    sget-object v1, Lcom/vungle/publisher/alw;->d:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    invoke-direct {v0}, Lcom/vungle/publisher/alw;->e()V

    goto :goto_0
.end method

.method private declared-synchronized e()V
    .locals 1

    .prologue
    .line 230
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/alw;->a:Lcom/vungle/publisher/ahs;

    instance-of v0, v0, Lcom/vungle/publisher/ajq;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/vungle/publisher/alw;->a:Lcom/vungle/publisher/ahs;

    check-cast v0, Lcom/vungle/publisher/ajq;

    invoke-interface {v0}, Lcom/vungle/publisher/ajq;->c()V

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/alw;->b:Lcom/vungle/publisher/ahs;

    instance-of v0, v0, Lcom/vungle/publisher/ajq;

    if-eqz v0, :cond_1

    .line 234
    iget-object v0, p0, Lcom/vungle/publisher/alw;->b:Lcom/vungle/publisher/ahs;

    check-cast v0, Lcom/vungle/publisher/ajq;

    invoke-interface {v0}, Lcom/vungle/publisher/ajq;->c()V

    .line 236
    :cond_1
    iget-object v0, p0, Lcom/vungle/publisher/alw;->c:Lcom/vungle/publisher/ahs;

    instance-of v0, v0, Lcom/vungle/publisher/ajq;

    if-eqz v0, :cond_2

    .line 237
    iget-object v0, p0, Lcom/vungle/publisher/alw;->c:Lcom/vungle/publisher/ahs;

    check-cast v0, Lcom/vungle/publisher/ajq;

    invoke-interface {v0}, Lcom/vungle/publisher/ajq;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 239
    :cond_2
    monitor-exit p0

    return-void

    .line 230
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
