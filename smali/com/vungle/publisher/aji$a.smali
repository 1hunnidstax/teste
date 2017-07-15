.class final Lcom/vungle/publisher/aji$a;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/aji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:J

.field final b:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/vungle/publisher/aji$c;",
            ">;"
        }
    .end annotation
.end field

.field final c:Lcom/vungle/publisher/amc;

.field private final d:Ljava/util/concurrent/ThreadFactory;

.field private final e:Ljava/util/concurrent/ScheduledExecutorService;

.field private final f:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/vungle/publisher/aji$a;->d:Ljava/util/concurrent/ThreadFactory;

    .line 56
    if-eqz p4, :cond_0

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/vungle/publisher/aji$a;->a:J

    .line 57
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/aji$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 58
    new-instance v0, Lcom/vungle/publisher/amc;

    invoke-direct {v0}, Lcom/vungle/publisher/amc;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/aji$a;->c:Lcom/vungle/publisher/amc;

    .line 62
    if-eqz p4, :cond_1

    .line 63
    const/4 v0, 0x1

    new-instance v1, Lcom/vungle/publisher/aji$a$1;

    invoke-direct {v1, p0, p1}, Lcom/vungle/publisher/aji$a$1;-><init>(Lcom/vungle/publisher/aji$a;Ljava/util/concurrent/ThreadFactory;)V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 70
    invoke-static {v0}, Lcom/vungle/publisher/ajo;->b(Ljava/util/concurrent/ScheduledExecutorService;)Z

    .line 71
    new-instance v1, Lcom/vungle/publisher/aji$a$2;

    invoke-direct {v1, p0}, Lcom/vungle/publisher/aji$a$2;-><init>(Lcom/vungle/publisher/aji$a;)V

    iget-wide v2, p0, Lcom/vungle/publisher/aji$a;->a:J

    iget-wide v4, p0, Lcom/vungle/publisher/aji$a;->a:J

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1

    move-object v2, v0

    move-object v0, v1

    .line 80
    :goto_1
    iput-object v2, p0, Lcom/vungle/publisher/aji$a;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 81
    iput-object v0, p0, Lcom/vungle/publisher/aji$a;->f:Ljava/util/concurrent/Future;

    .line 82
    return-void

    .line 56
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    move-object v0, v2

    goto :goto_1
.end method


# virtual methods
.method final a()Lcom/vungle/publisher/aji$c;
    .locals 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/vungle/publisher/aji$a;->c:Lcom/vungle/publisher/amc;

    iget-boolean v0, v0, Lcom/vungle/publisher/amc;->a:Z

    if-eqz v0, :cond_0

    .line 86
    sget-object v0, Lcom/vungle/publisher/aji;->b:Lcom/vungle/publisher/aji$c;

    .line 98
    :goto_0
    return-object v0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/aji$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/vungle/publisher/aji$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/aji$c;

    .line 90
    if-eqz v0, :cond_0

    goto :goto_0

    .line 96
    :cond_1
    new-instance v0, Lcom/vungle/publisher/aji$c;

    iget-object v1, p0, Lcom/vungle/publisher/aji$a;->d:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1}, Lcom/vungle/publisher/aji$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 97
    iget-object v1, p0, Lcom/vungle/publisher/aji$a;->c:Lcom/vungle/publisher/amc;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/amc;->a(Lcom/vungle/publisher/ahv;)V

    goto :goto_0
.end method

.method final b()V
    .locals 2

    .prologue
    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/aji$a;->f:Ljava/util/concurrent/Future;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/vungle/publisher/aji$a;->f:Ljava/util/concurrent/Future;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/aji$a;->e:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/vungle/publisher/aji$a;->e:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/vungle/publisher/aji$a;->c:Lcom/vungle/publisher/amc;

    invoke-virtual {v0}, Lcom/vungle/publisher/amc;->b()V

    .line 140
    return-void

    .line 139
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/vungle/publisher/aji$a;->c:Lcom/vungle/publisher/amc;

    invoke-virtual {v1}, Lcom/vungle/publisher/amc;->b()V

    throw v0
.end method
