.class public Lcom/inmobi/rendering/a/c;
.super Ljava/lang/Object;
.source "ClickManager.java"

# interfaces
.implements Lcom/inmobi/commons/core/configs/b$b;


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/rendering/a/c$a;,
        Lcom/inmobi/rendering/a/c$b;,
        Lcom/inmobi/rendering/a/c$c;,
        Lcom/inmobi/rendering/a/c$d;
    }
.end annotation


# static fields
.field public static a:Lcom/inmobi/ads/c$c;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final b:Ljava/lang/String;

.field private static c:Lcom/inmobi/rendering/a/c;

.field private static final d:Ljava/lang/Object;

.field private static e:Ljava/util/concurrent/ExecutorService;

.field private static f:Lcom/inmobi/rendering/a/c$a;

.field private static g:Landroid/os/HandlerThread;

.field private static h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/rendering/a/a;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Lcom/inmobi/rendering/a/b;

.field private static j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final k:Ljava/lang/Object;


# instance fields
.field private l:Z

.field private m:Landroid/os/PowerManager;

.field private n:J

.field private final o:Lcom/inmobi/rendering/a/c$d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    const-class v0, Lcom/inmobi/rendering/a/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/rendering/a/c;->b:Ljava/lang/String;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/inmobi/rendering/a/c;->d:Ljava/lang/Object;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/inmobi/rendering/a/c;->h:Ljava/util/List;

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/inmobi/rendering/a/c;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/inmobi/rendering/a/c;->k:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 264
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/rendering/a/c;->l:Z

    .line 79
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/rendering/a/c;->n:J

    .line 321
    new-instance v0, Lcom/inmobi/rendering/a/c$7;

    invoke-direct {v0, p0}, Lcom/inmobi/rendering/a/c$7;-><init>(Lcom/inmobi/rendering/a/c;)V

    iput-object v0, p0, Lcom/inmobi/rendering/a/c;->o:Lcom/inmobi/rendering/a/c$d;

    .line 265
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/a/c;->b:Ljava/lang/String;

    const-string v2, "Creating a new instance ..."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Lcom/inmobi/rendering/a/c;->d()V

    .line 267
    return-void
.end method

.method static synthetic a(Lcom/inmobi/rendering/a/c;J)J
    .locals 1

    .prologue
    .line 53
    iput-wide p1, p0, Lcom/inmobi/rendering/a/c;->n:J

    return-wide p1
.end method

.method static synthetic a(Lcom/inmobi/rendering/a/c;)Lcom/inmobi/rendering/a/c$d;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/inmobi/rendering/a/c;->o:Lcom/inmobi/rendering/a/c$d;

    return-object v0
.end method

.method public static a()Lcom/inmobi/rendering/a/c;
    .locals 2

    .prologue
    .line 82
    sget-object v0, Lcom/inmobi/rendering/a/c;->c:Lcom/inmobi/rendering/a/c;

    .line 84
    if-nez v0, :cond_1

    .line 85
    sget-object v1, Lcom/inmobi/rendering/a/c;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 86
    :try_start_0
    sget-object v0, Lcom/inmobi/rendering/a/c;->c:Lcom/inmobi/rendering/a/c;

    .line 87
    if-nez v0, :cond_0

    .line 88
    new-instance v0, Lcom/inmobi/rendering/a/c;

    invoke-direct {v0}, Lcom/inmobi/rendering/a/c;-><init>()V

    .line 89
    sput-object v0, Lcom/inmobi/rendering/a/c;->c:Lcom/inmobi/rendering/a/c;

    .line 91
    :cond_0
    monitor-exit v1

    .line 94
    :cond_1
    return-object v0

    .line 91
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Ljava/util/List;)Ljava/util/List;
    .locals 0

    .prologue
    .line 53
    sput-object p0, Lcom/inmobi/rendering/a/c;->h:Ljava/util/List;

    return-object p0
.end method

.method static synthetic a(Lcom/inmobi/rendering/a/c;Lcom/inmobi/rendering/a/a;)V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/inmobi/rendering/a/c;->c(Lcom/inmobi/rendering/a/a;)V

    return-void
.end method

.method static synthetic b(Lcom/inmobi/rendering/a/c;)J
    .locals 2

    .prologue
    .line 53
    iget-wide v0, p0, Lcom/inmobi/rendering/a/c;->n:J

    return-wide v0
.end method

.method static synthetic b(Lcom/inmobi/rendering/a/a;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 53
    invoke-static {p0}, Lcom/inmobi/rendering/a/c;->d(Lcom/inmobi/rendering/a/a;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method

.method private c(Lcom/inmobi/rendering/a/a;)V
    .locals 2

    .prologue
    .line 229
    iget v0, p1, Lcom/inmobi/rendering/a/a;->f:I

    if-lez v0, :cond_0

    .line 230
    iget v0, p1, Lcom/inmobi/rendering/a/a;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/inmobi/rendering/a/a;->f:I

    .line 231
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/inmobi/rendering/a/a;->d:J

    .line 232
    sget-object v0, Lcom/inmobi/rendering/a/c;->i:Lcom/inmobi/rendering/a/b;

    invoke-virtual {v0, p1}, Lcom/inmobi/rendering/a/b;->a(Lcom/inmobi/rendering/a/a;)V

    .line 234
    :cond_0
    return-void
.end method

.method private static d(Lcom/inmobi/rendering/a/a;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/rendering/a/a;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 406
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 409
    :try_start_0
    sget-object v1, Lcom/inmobi/rendering/a/c;->a:Lcom/inmobi/ads/c$c;

    invoke-virtual {v1}, Lcom/inmobi/ads/c$c;->a()I

    move-result v1

    iget v2, p0, Lcom/inmobi/rendering/a/a;->f:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 410
    if-lez v1, :cond_0

    .line 412
    const-string v2, "X-im-retry-count"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    :cond_0
    :goto_0
    return-object v0

    .line 414
    :catch_0
    move-exception v1

    .line 415
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/a/c;->b:Ljava/lang/String;

    const-string v3, "Error in fetching retry count header."

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/inmobi/rendering/a/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic f()Lcom/inmobi/rendering/a/b;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/inmobi/rendering/a/c;->i:Lcom/inmobi/rendering/a/b;

    return-object v0
.end method

.method static synthetic g()Ljava/util/List;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/inmobi/rendering/a/c;->h:Ljava/util/List;

    return-object v0
.end method

.method static synthetic h()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/inmobi/rendering/a/c;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private i()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .prologue
    .line 293
    invoke-static {}, Lcom/inmobi/commons/core/utilities/f;->a()Lcom/inmobi/commons/core/utilities/f;

    move-result-object v0

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    new-instance v2, Lcom/inmobi/rendering/a/c$5;

    invoke-direct {v2, p0}, Lcom/inmobi/rendering/a/c$5;-><init>(Lcom/inmobi/rendering/a/c;)V

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/f;->a(Ljava/lang/String;Lcom/inmobi/commons/core/utilities/f$b;)V

    .line 301
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 302
    invoke-static {}, Lcom/inmobi/commons/core/utilities/f;->a()Lcom/inmobi/commons/core/utilities/f;

    move-result-object v0

    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    new-instance v2, Lcom/inmobi/rendering/a/c$6;

    invoke-direct {v2, p0}, Lcom/inmobi/rendering/a/c$6;-><init>(Lcom/inmobi/rendering/a/c;)V

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/f;->a(Ljava/lang/String;Lcom/inmobi/commons/core/utilities/f$b;)V

    .line 313
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/inmobi/commons/core/configs/a;)V
    .locals 1

    .prologue
    .line 99
    check-cast p1, Lcom/inmobi/ads/c;

    invoke-virtual {p1}, Lcom/inmobi/ads/c;->j()Lcom/inmobi/ads/c$c;

    move-result-object v0

    sput-object v0, Lcom/inmobi/rendering/a/c;->a:Lcom/inmobi/ads/c$c;

    .line 100
    return-void
.end method

.method protected a(Lcom/inmobi/rendering/a/a;)V
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 238
    sget-object v0, Lcom/inmobi/rendering/a/c;->i:Lcom/inmobi/rendering/a/b;

    sget-object v1, Lcom/inmobi/rendering/a/c;->a:Lcom/inmobi/ads/c$c;

    invoke-virtual {v1}, Lcom/inmobi/ads/c$c;->d()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/inmobi/rendering/a/b;->a(Lcom/inmobi/rendering/a/a;I)Z

    .line 239
    invoke-static {}, Lcom/inmobi/commons/core/utilities/d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 240
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/a/c;->b:Ljava/lang/String;

    const-string v2, "No network available. Saving click for later processing ..."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    sget-object v0, Lcom/inmobi/rendering/a/c;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 246
    invoke-virtual {p0}, Lcom/inmobi/rendering/a/c;->c()V

    .line 261
    :goto_0
    return-void

    .line 248
    :cond_0
    sget-object v0, Lcom/inmobi/rendering/a/c;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/inmobi/rendering/a/c$4;

    invoke-direct {v1, p0, p1}, Lcom/inmobi/rendering/a/c$4;-><init>(Lcom/inmobi/rendering/a/c;Lcom/inmobi/rendering/a/a;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 166
    new-instance v0, Lcom/inmobi/rendering/a/c$2;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/inmobi/rendering/a/c$2;-><init>(Lcom/inmobi/rendering/a/c;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 183
    invoke-virtual {v0}, Lcom/inmobi/rendering/a/c$2;->start()V

    .line 184
    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 146
    new-instance v0, Lcom/inmobi/rendering/a/c$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/inmobi/rendering/a/c$1;-><init>(Lcom/inmobi/rendering/a/c;Ljava/lang/String;Z)V

    .line 162
    invoke-virtual {v0}, Lcom/inmobi/rendering/a/c$1;->start()V

    .line 163
    return-void
.end method

.method public b()V
    .locals 5

    .prologue
    .line 111
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/core/utilities/d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 115
    :cond_0
    sget-object v1, Lcom/inmobi/rendering/a/c;->k:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :try_start_1
    sget-object v0, Lcom/inmobi/rendering/a/c;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 117
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/a/c;->b:Ljava/lang/String;

    const-string v3, "Resume processing clicks ..."

    invoke-static {v0, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    sget-object v0, Lcom/inmobi/rendering/a/c;->g:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    .line 119
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "pingHandlerThread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/inmobi/rendering/a/c;->g:Landroid/os/HandlerThread;

    .line 120
    sget-object v0, Lcom/inmobi/rendering/a/c;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 123
    :cond_1
    sget-object v0, Lcom/inmobi/rendering/a/c;->f:Lcom/inmobi/rendering/a/c$a;

    if-nez v0, :cond_2

    .line 124
    new-instance v0, Lcom/inmobi/rendering/a/c$a;

    sget-object v2, Lcom/inmobi/rendering/a/c;->g:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/inmobi/rendering/a/c$a;-><init>(Lcom/inmobi/rendering/a/c;Landroid/os/Looper;)V

    sput-object v0, Lcom/inmobi/rendering/a/c;->f:Lcom/inmobi/rendering/a/c$a;

    .line 127
    :cond_2
    sget-object v0, Lcom/inmobi/rendering/a/c;->i:Lcom/inmobi/rendering/a/b;

    invoke-virtual {v0}, Lcom/inmobi/rendering/a/b;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 128
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/a/c;->b:Ljava/lang/String;

    const-string v3, "Done processing all clicks!"

    invoke-static {v0, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    sget-object v0, Lcom/inmobi/rendering/a/c;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 130
    invoke-virtual {p0}, Lcom/inmobi/rendering/a/c;->c()V

    .line 137
    :cond_3
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 138
    :catch_0
    move-exception v0

    .line 139
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/a/c;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDK encountered unexpected error in starting the ping component; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 141
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 132
    :cond_4
    :try_start_3
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 133
    const/4 v2, 0x1

    iput v2, v0, Landroid/os/Message;->what:I

    .line 134
    sget-object v2, Lcom/inmobi/rendering/a/c;->f:Lcom/inmobi/rendering/a/c$a;

    invoke-virtual {v2, v0}, Lcom/inmobi/rendering/a/c$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public b(Ljava/lang/String;Z)V
    .locals 1

    .prologue
    .line 187
    new-instance v0, Lcom/inmobi/rendering/a/c$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/inmobi/rendering/a/c$3;-><init>(Lcom/inmobi/rendering/a/c;Ljava/lang/String;Z)V

    .line 203
    invoke-virtual {v0}, Lcom/inmobi/rendering/a/c$3;->start()V

    .line 204
    return-void
.end method

.method public c()V
    .locals 5

    .prologue
    .line 208
    :try_start_0
    sget-object v0, Lcom/inmobi/rendering/a/c;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 209
    sget-object v1, Lcom/inmobi/rendering/a/c;->k:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :try_start_1
    sget-object v0, Lcom/inmobi/rendering/a/c;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 211
    sget-object v0, Lcom/inmobi/rendering/a/c;->g:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 212
    sget-object v0, Lcom/inmobi/rendering/a/c;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 213
    sget-object v0, Lcom/inmobi/rendering/a/c;->g:Landroid/os/HandlerThread;

    .line 214
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 215
    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/rendering/a/c;->g:Landroid/os/HandlerThread;

    .line 216
    const/4 v0, 0x0

    sput-object v0, Lcom/inmobi/rendering/a/c;->f:Lcom/inmobi/rendering/a/c$a;

    .line 218
    :cond_0
    sget-object v0, Lcom/inmobi/rendering/a/c;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 220
    :cond_1
    monitor-exit v1

    .line 226
    :goto_0
    return-void

    .line 220
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 221
    :catch_0
    move-exception v0

    .line 222
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/a/c;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDK encountered unexpected error in stopping the ping component; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 224
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 222
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public d()V
    .locals 5
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 272
    const/4 v0, 0x5

    :try_start_0
    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/inmobi/rendering/a/c;->e:Ljava/util/concurrent/ExecutorService;

    .line 273
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "pingHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/inmobi/rendering/a/c;->g:Landroid/os/HandlerThread;

    .line 274
    sget-object v0, Lcom/inmobi/rendering/a/c;->g:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 275
    new-instance v0, Lcom/inmobi/rendering/a/c$a;

    sget-object v1, Lcom/inmobi/rendering/a/c;->g:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/inmobi/rendering/a/c$a;-><init>(Lcom/inmobi/rendering/a/c;Landroid/os/Looper;)V

    sput-object v0, Lcom/inmobi/rendering/a/c;->f:Lcom/inmobi/rendering/a/c$a;

    .line 277
    new-instance v0, Lcom/inmobi/ads/c;

    invoke-direct {v0}, Lcom/inmobi/ads/c;-><init>()V

    .line 278
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->a()Lcom/inmobi/commons/core/configs/b;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/inmobi/commons/core/configs/b;->a(Lcom/inmobi/commons/core/configs/a;Lcom/inmobi/commons/core/configs/b$b;)V

    .line 279
    invoke-virtual {v0}, Lcom/inmobi/ads/c;->j()Lcom/inmobi/ads/c$c;

    move-result-object v0

    sput-object v0, Lcom/inmobi/rendering/a/c;->a:Lcom/inmobi/ads/c$c;

    .line 280
    new-instance v0, Lcom/inmobi/rendering/a/b;

    invoke-direct {v0}, Lcom/inmobi/rendering/a/b;-><init>()V

    sput-object v0, Lcom/inmobi/rendering/a/c;->i:Lcom/inmobi/rendering/a/b;

    .line 281
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/inmobi/rendering/a/c;->m:Landroid/os/PowerManager;

    .line 283
    invoke-direct {p0}, Lcom/inmobi/rendering/a/c;->i()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :goto_0
    return-void

    .line 284
    :catch_0
    move-exception v0

    .line 285
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/a/c;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDK encountered unexpected error in initializing the ping component; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 287
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 285
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
