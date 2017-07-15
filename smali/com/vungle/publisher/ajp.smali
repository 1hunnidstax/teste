.class public final Lcom/vungle/publisher/ajp;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ahv;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/ajp$c;,
        Lcom/vungle/publisher/ajp$b;,
        Lcom/vungle/publisher/ajp$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Ljava/lang/Thread;",
        ">;",
        "Lcom/vungle/publisher/ahv;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field final a:Lcom/vungle/publisher/akd;

.field final b:Lcom/vungle/publisher/aie;


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/aie;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/vungle/publisher/ajp;->b:Lcom/vungle/publisher/aie;

    .line 40
    new-instance v0, Lcom/vungle/publisher/akd;

    invoke-direct {v0}, Lcom/vungle/publisher/akd;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/ajp;->a:Lcom/vungle/publisher/akd;

    .line 41
    return-void
.end method

.method public constructor <init>(Lcom/vungle/publisher/aie;Lcom/vungle/publisher/akd;)V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/vungle/publisher/ajp;->b:Lcom/vungle/publisher/aie;

    .line 48
    new-instance v0, Lcom/vungle/publisher/akd;

    new-instance v1, Lcom/vungle/publisher/ajp$c;

    invoke-direct {v1, p0, p2}, Lcom/vungle/publisher/ajp$c;-><init>(Lcom/vungle/publisher/ajp;Lcom/vungle/publisher/akd;)V

    invoke-direct {v0, v1}, Lcom/vungle/publisher/akd;-><init>(Lcom/vungle/publisher/ahv;)V

    iput-object v0, p0, Lcom/vungle/publisher/ajp;->a:Lcom/vungle/publisher/akd;

    .line 49
    return-void
.end method

.method public constructor <init>(Lcom/vungle/publisher/aie;Lcom/vungle/publisher/amc;)V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/vungle/publisher/ajp;->b:Lcom/vungle/publisher/aie;

    .line 44
    new-instance v0, Lcom/vungle/publisher/akd;

    new-instance v1, Lcom/vungle/publisher/ajp$b;

    invoke-direct {v1, p0, p2}, Lcom/vungle/publisher/ajp$b;-><init>(Lcom/vungle/publisher/ajp;Lcom/vungle/publisher/amc;)V

    invoke-direct {v0, v1}, Lcom/vungle/publisher/akd;-><init>(Lcom/vungle/publisher/ahv;)V

    iput-object v0, p0, Lcom/vungle/publisher/ajp;->a:Lcom/vungle/publisher/akd;

    .line 45
    return-void
.end method

.method private static a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 66
    invoke-static {p0}, Lcom/vungle/publisher/alp;->a(Ljava/lang/Throwable;)V

    .line 67
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    invoke-interface {v1, v0, p0}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 69
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Future;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/vungle/publisher/ajp;->a:Lcom/vungle/publisher/akd;

    new-instance v1, Lcom/vungle/publisher/ajp$a;

    invoke-direct {v1, p0, p1}, Lcom/vungle/publisher/ajp$a;-><init>(Lcom/vungle/publisher/ajp;Ljava/util/concurrent/Future;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/akd;->a(Lcom/vungle/publisher/ahv;)V

    .line 100
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/vungle/publisher/ajp;->a:Lcom/vungle/publisher/akd;

    iget-boolean v0, v0, Lcom/vungle/publisher/akd;->b:Z

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/vungle/publisher/ajp;->a:Lcom/vungle/publisher/akd;

    invoke-virtual {v0}, Lcom/vungle/publisher/akd;->b()V

    .line 81
    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/vungle/publisher/ajp;->a:Lcom/vungle/publisher/akd;

    iget-boolean v0, v0, Lcom/vungle/publisher/akd;->b:Z

    return v0
.end method

.method public final run()V
    .locals 3

    .prologue
    .line 54
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/ajp;->lazySet(Ljava/lang/Object;)V

    .line 55
    iget-object v0, p0, Lcom/vungle/publisher/ajp;->b:Lcom/vungle/publisher/aie;

    invoke-interface {v0}, Lcom/vungle/publisher/aie;->d()V
    :try_end_0
    .catch Lcom/vungle/publisher/aib; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    invoke-virtual {p0}, Lcom/vungle/publisher/ajp;->b()V

    .line 62
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Exception thrown on Scheduler.Worker thread. Add `onError` handling."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/vungle/publisher/ajp;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 61
    invoke-virtual {p0}, Lcom/vungle/publisher/ajp;->b()V

    goto :goto_0

    .line 58
    :catch_1
    move-exception v0

    .line 59
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Fatal Exception thrown on Scheduler.Worker thread."

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/vungle/publisher/ajp;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 61
    invoke-virtual {p0}, Lcom/vungle/publisher/ajp;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/vungle/publisher/ajp;->b()V

    throw v0
.end method
