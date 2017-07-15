.class public Lcom/vungle/publisher/ajo;
.super Lcom/vungle/publisher/ahs$a;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ahv;


# static fields
.field private static final a:Z

.field public static final d:I

.field private static final e:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/util/concurrent/ScheduledThreadPoolExecutor;",
            "Ljava/util/concurrent/ScheduledThreadPoolExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Ljava/util/concurrent/ScheduledExecutorService;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile g:Ljava/lang/Object;

.field private static final h:Ljava/lang/Object;


# instance fields
.field final b:Ljava/util/concurrent/ScheduledExecutorService;

.field volatile c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/vungle/publisher/ajo;->h:Ljava/lang/Object;

    .line 61
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/vungle/publisher/ajo;->e:Ljava/util/concurrent/ConcurrentHashMap;

    .line 62
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/vungle/publisher/ajo;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 63
    const-string v0, "rx.scheduler.jdk6.purge-frequency-millis"

    const/16 v1, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/vungle/publisher/ajo;->d:I

    .line 66
    const-string v0, "rx.scheduler.jdk6.purge-force"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 68
    invoke-static {}, Lcom/vungle/publisher/ajz;->b()I

    move-result v1

    .line 72
    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    const/16 v0, 0x15

    if-lt v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/vungle/publisher/ajo;->a:Z

    .line 74
    return-void

    .line 72
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 2

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/vungle/publisher/ahs$a;-><init>()V

    .line 209
    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    .line 211
    invoke-static {v1}, Lcom/vungle/publisher/ajo;->b(Ljava/util/concurrent/ScheduledExecutorService;)Z

    move-result v0

    .line 212
    if-nez v0, :cond_0

    instance-of v0, v1, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 213
    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    invoke-static {v0}, Lcom/vungle/publisher/ajo;->a(Ljava/util/concurrent/ScheduledThreadPoolExecutor;)V

    .line 215
    :cond_0
    iput-object v1, p0, Lcom/vungle/publisher/ajo;->b:Ljava/util/concurrent/ScheduledExecutorService;

    .line 216
    return-void
.end method

.method static a()V
    .locals 3

    .prologue
    .line 116
    :try_start_0
    sget-object v0, Lcom/vungle/publisher/ajo;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 117
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 119
    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->isShutdown()Z

    move-result v2

    if-nez v2, :cond_1

    .line 120
    invoke-virtual {v0}, Ljava/util/concurrent/ScheduledThreadPoolExecutor;->purge()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    invoke-static {v0}, Lcom/vungle/publisher/ahx;->b(Ljava/lang/Throwable;)V

    .line 127
    invoke-static {v0}, Lcom/vungle/publisher/alp;->a(Ljava/lang/Throwable;)V

    .line 129
    :cond_0
    return-void

    .line 122
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static a(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    .prologue
    .line 109
    sget-object v0, Lcom/vungle/publisher/ajo;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    return-void
.end method

.method public static a(Ljava/util/concurrent/ScheduledThreadPoolExecutor;)V
    .locals 7

    .prologue
    .line 82
    :goto_0
    sget-object v0, Lcom/vungle/publisher/ajo;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ScheduledExecutorService;

    .line 83
    if-nez v0, :cond_0

    .line 84
    const/4 v0, 0x1

    new-instance v1, Lcom/vungle/publisher/akb;

    const-string v2, "RxSchedulerPurge-"

    invoke-direct {v1, v2}, Lcom/vungle/publisher/akb;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/util/concurrent/Executors;->newScheduledThreadPool(ILjava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    .line 87
    sget-object v1, Lcom/vungle/publisher/ajo;->f:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    new-instance v1, Lcom/vungle/publisher/ajo$1;

    invoke-direct {v1}, Lcom/vungle/publisher/ajo$1;-><init>()V

    sget v2, Lcom/vungle/publisher/ajo;->d:I

    int-to-long v2, v2

    sget v4, Lcom/vungle/publisher/ajo;->d:I

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 101
    :cond_0
    sget-object v0, Lcom/vungle/publisher/ajo;->e:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    return-void

    .line 97
    :cond_1
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    goto :goto_0
.end method

.method public static b(Ljava/util/concurrent/ScheduledExecutorService;)Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 140
    sget-boolean v0, Lcom/vungle/publisher/ajo;->a:Z

    if-eqz v0, :cond_4

    .line 141
    instance-of v0, p0, Ljava/util/concurrent/ScheduledThreadPoolExecutor;

    .line 145
    if-eqz v0, :cond_3

    .line 146
    sget-object v0, Lcom/vungle/publisher/ajo;->g:Ljava/lang/Object;

    .line 148
    sget-object v1, Lcom/vungle/publisher/ajo;->h:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    move v0, v2

    .line 181
    :goto_0
    return v0

    .line 152
    :cond_0
    if-nez v0, :cond_2

    .line 153
    invoke-static {p0}, Lcom/vungle/publisher/ajo;->c(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 155
    if-eqz v1, :cond_1

    move-object v0, v1

    :goto_1
    sput-object v0, Lcom/vungle/publisher/ajo;->g:Ljava/lang/Object;

    .line 167
    :goto_2
    if-eqz v1, :cond_4

    .line 169
    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v0, v4

    invoke-virtual {v1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    move v0, v3

    .line 170
    goto :goto_0

    .line 155
    :cond_1
    sget-object v0, Lcom/vungle/publisher/ajo;->h:Ljava/lang/Object;

    goto :goto_1

    .line 161
    :cond_2
    check-cast v0, Ljava/lang/reflect/Method;

    move-object v1, v0

    .line 163
    goto :goto_2

    .line 164
    :cond_3
    invoke-static {p0}, Lcom/vungle/publisher/ajo;->c(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/lang/reflect/Method;

    move-result-object v1

    goto :goto_2

    .line 171
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/vungle/publisher/alp;->a(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    move v0, v2

    .line 181
    goto :goto_0

    .line 173
    :catch_1
    move-exception v0

    invoke-static {v0}, Lcom/vungle/publisher/alp;->a(Ljava/lang/Throwable;)V

    goto :goto_3

    .line 175
    :catch_2
    move-exception v0

    invoke-static {v0}, Lcom/vungle/publisher/alp;->a(Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method private static c(Ljava/util/concurrent/ScheduledExecutorService;)Ljava/lang/reflect/Method;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 194
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    .line 195
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "setRemoveOnCancelPolicy"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 196
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 198
    array-length v6, v5

    const/4 v7, 0x1

    if-ne v6, v7, :cond_0

    aget-object v5, v5, v2

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v5, v6, :cond_0

    .line 204
    :goto_1
    return-object v0

    .line 194
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 204
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/vungle/publisher/aie;)Lcom/vungle/publisher/ahv;
    .locals 3

    .prologue
    .line 220
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/vungle/publisher/ajo;->a(Lcom/vungle/publisher/aie;JLjava/util/concurrent/TimeUnit;)Lcom/vungle/publisher/ahv;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/vungle/publisher/aie;JLjava/util/concurrent/TimeUnit;)Lcom/vungle/publisher/ahv;
    .locals 2

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/vungle/publisher/ajo;->c:Z

    if-eqz v0, :cond_0

    .line 226
    invoke-static {}, Lcom/vungle/publisher/ame;->a()Lcom/vungle/publisher/ahv;

    move-result-object v0

    .line 228
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/vungle/publisher/ajo;->b(Lcom/vungle/publisher/aie;JLjava/util/concurrent/TimeUnit;)Lcom/vungle/publisher/ajp;

    move-result-object v0

    goto :goto_0
.end method

.method public final b(Lcom/vungle/publisher/aie;JLjava/util/concurrent/TimeUnit;)Lcom/vungle/publisher/ajp;
    .locals 4

    .prologue
    .line 240
    invoke-static {p1}, Lcom/vungle/publisher/alp;->a(Lcom/vungle/publisher/aie;)Lcom/vungle/publisher/aie;

    move-result-object v0

    .line 241
    new-instance v1, Lcom/vungle/publisher/ajp;

    invoke-direct {v1, v0}, Lcom/vungle/publisher/ajp;-><init>(Lcom/vungle/publisher/aie;)V

    .line 243
    const-wide/16 v2, 0x0

    cmp-long v0, p2, v2

    if-gtz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/vungle/publisher/ajo;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    .line 248
    :goto_0
    invoke-virtual {v1, v0}, Lcom/vungle/publisher/ajp;->a(Ljava/util/concurrent/Future;)V

    .line 250
    return-object v1

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/ajo;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, v1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 286
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/publisher/ajo;->c:Z

    .line 287
    iget-object v0, p0, Lcom/vungle/publisher/ajo;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 288
    iget-object v0, p0, Lcom/vungle/publisher/ajo;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0}, Lcom/vungle/publisher/ajo;->a(Ljava/util/concurrent/ScheduledExecutorService;)V

    .line 289
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 293
    iget-boolean v0, p0, Lcom/vungle/publisher/ajo;->c:Z

    return v0
.end method
