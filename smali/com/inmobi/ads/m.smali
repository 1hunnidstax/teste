.class public final Lcom/inmobi/ads/m;
.super Ljava/lang/Object;
.source "AssetStore.java"

# interfaces
.implements Lcom/inmobi/commons/core/configs/b$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/m$a;,
        Lcom/inmobi/ads/m$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static h:Lcom/inmobi/ads/m;

.field private static final i:Ljava/lang/Object;

.field private static final j:Ljava/lang/Object;

.field private static final k:Ljava/lang/Object;


# instance fields
.field private b:Lcom/inmobi/ads/l;

.field private c:Lcom/inmobi/ads/c$a;

.field private d:Ljava/util/concurrent/ExecutorService;

.field private e:Lcom/inmobi/ads/m$a;

.field private f:Landroid/os/HandlerThread;

.field private g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private l:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/m$b;",
            ">;>;"
        }
    .end annotation
.end field

.field private final m:Lcom/inmobi/ads/a/a$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/inmobi/ads/m;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/m;->a:Ljava/lang/String;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/inmobi/ads/m;->i:Ljava/lang/Object;

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/inmobi/ads/m;->j:Ljava/lang/Object;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/inmobi/ads/m;->k:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/ads/m;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/m;->l:Ljava/util/HashMap;

    .line 58
    new-instance v0, Lcom/inmobi/ads/m$1;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/m$1;-><init>(Lcom/inmobi/ads/m;)V

    iput-object v0, p0, Lcom/inmobi/ads/m;->m:Lcom/inmobi/ads/a/a$a;

    .line 103
    new-instance v0, Lcom/inmobi/ads/c;

    invoke-direct {v0}, Lcom/inmobi/ads/c;-><init>()V

    .line 104
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->a()Lcom/inmobi/commons/core/configs/b;

    move-result-object v1

    invoke-virtual {v1, v0, p0}, Lcom/inmobi/commons/core/configs/b;->a(Lcom/inmobi/commons/core/configs/a;Lcom/inmobi/commons/core/configs/b$b;)V

    .line 105
    invoke-virtual {v0}, Lcom/inmobi/ads/c;->q()Lcom/inmobi/ads/c$a;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/m;->c:Lcom/inmobi/ads/c$a;

    .line 106
    invoke-static {}, Lcom/inmobi/ads/l;->a()Lcom/inmobi/ads/l;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/m;->b:Lcom/inmobi/ads/l;

    .line 107
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/m;->d:Ljava/util/concurrent/ExecutorService;

    .line 108
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "assetFetcher"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/inmobi/ads/m;->f:Landroid/os/HandlerThread;

    .line 109
    iget-object v0, p0, Lcom/inmobi/ads/m;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 110
    new-instance v0, Lcom/inmobi/ads/m$a;

    iget-object v1, p0, Lcom/inmobi/ads/m;->f:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const-string v2, "AssetPrefetch"

    invoke-direct {v0, v1, p0, v2}, Lcom/inmobi/ads/m$a;-><init>(Landroid/os/Looper;Lcom/inmobi/ads/m;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/inmobi/ads/m;->e:Lcom/inmobi/ads/m$a;

    .line 111
    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/m;)Lcom/inmobi/ads/c$a;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/inmobi/ads/m;->c:Lcom/inmobi/ads/c$a;

    return-object v0
.end method

.method public static a()Lcom/inmobi/ads/m;
    .locals 2

    .prologue
    .line 114
    sget-object v0, Lcom/inmobi/ads/m;->h:Lcom/inmobi/ads/m;

    .line 115
    if-nez v0, :cond_1

    .line 116
    sget-object v1, Lcom/inmobi/ads/m;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 117
    :try_start_0
    sget-object v0, Lcom/inmobi/ads/m;->h:Lcom/inmobi/ads/m;

    .line 118
    if-nez v0, :cond_0

    .line 119
    new-instance v0, Lcom/inmobi/ads/m;

    invoke-direct {v0}, Lcom/inmobi/ads/m;-><init>()V

    .line 120
    sput-object v0, Lcom/inmobi/ads/m;->h:Lcom/inmobi/ads/m;

    .line 122
    :cond_0
    monitor-exit v1

    .line 125
    :cond_1
    return-object v0

    .line 122
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Lcom/inmobi/ads/b;)V
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/inmobi/ads/m;->b:Lcom/inmobi/ads/l;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/l;->c(Lcom/inmobi/ads/b;)V

    .line 294
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/inmobi/ads/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 295
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 297
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 299
    :cond_0
    return-void
.end method

.method private a(Lcom/inmobi/ads/b;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 191
    sget-object v2, Lcom/inmobi/ads/m;->k:Ljava/lang/Object;

    monitor-enter v2

    .line 194
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/m;->l:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/inmobi/ads/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 195
    if-eqz v0, :cond_0

    .line 196
    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 197
    :goto_0
    if-eqz v1, :cond_0

    .line 199
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/m$b;

    invoke-interface {v1, p1, p2}, Lcom/inmobi/ads/m$b;->a(Lcom/inmobi/ads/b;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    :goto_1
    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    .line 200
    :catch_0
    move-exception v1

    .line 201
    sget-object v3, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v4, Lcom/inmobi/ads/m;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Encountered unexpected error in onAssetFetchFailed handler: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 202
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 201
    invoke-static {v3, v4, v5}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v3

    new-instance v4, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v4, v1}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_1

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 209
    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/m;Lcom/inmobi/ads/b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lcom/inmobi/ads/m;->a(Lcom/inmobi/ads/b;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/m;ZLcom/inmobi/ads/b;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/inmobi/ads/m;->a(ZLcom/inmobi/ads/b;Ljava/lang/String;)V

    return-void
.end method

.method private a(ZLcom/inmobi/ads/b;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 167
    sget-object v2, Lcom/inmobi/ads/m;->k:Ljava/lang/Object;

    monitor-enter v2

    .line 170
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/m;->l:Ljava/util/HashMap;

    invoke-virtual {p2}, Lcom/inmobi/ads/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 171
    if-eqz v0, :cond_0

    .line 172
    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 173
    :goto_0
    if-eqz v1, :cond_0

    .line 175
    const/4 v1, 0x0

    :try_start_1
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/m$b;

    invoke-interface {v1, p2, p1, p3}, Lcom/inmobi/ads/m$b;->a(Lcom/inmobi/ads/b;ZLjava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    :goto_1
    :try_start_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    .line 176
    :catch_0
    move-exception v1

    .line 177
    sget-object v3, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v4, Lcom/inmobi/ads/m;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Encountered unexpected error in onAssetFetchSucceeded handler: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 178
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 177
    invoke-static {v3, v4, v5}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v3

    new-instance v4, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v4, v1}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_1

    .line 184
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 185
    return-void
.end method

.method static synthetic b(Lcom/inmobi/ads/m;)Lcom/inmobi/ads/l;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/inmobi/ads/m;->b:Lcom/inmobi/ads/l;

    return-object v0
.end method

.method static synthetic c(Lcom/inmobi/ads/m;)Lcom/inmobi/ads/a/a$a;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/inmobi/ads/m;->m:Lcom/inmobi/ads/a/a$a;

    return-object v0
.end method

.method static synthetic h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/inmobi/ads/m;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/inmobi/commons/core/configs/a;)V
    .locals 1

    .prologue
    .line 130
    check-cast p1, Lcom/inmobi/ads/c;

    invoke-virtual {p1}, Lcom/inmobi/ads/c;->q()Lcom/inmobi/ads/c$a;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/m;->c:Lcom/inmobi/ads/c$a;

    .line 131
    return-void
.end method

.method public a(Ljava/lang/String;Lcom/inmobi/ads/m$b;)V
    .locals 3

    .prologue
    .line 135
    sget-object v1, Lcom/inmobi/ads/m;->k:Ljava/lang/Object;

    monitor-enter v1

    .line 136
    if-eqz p2, :cond_1

    .line 137
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/m;->l:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 138
    if-nez v0, :cond_0

    .line 139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 141
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    iget-object v2, p0, Lcom/inmobi/ads/m;->l:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    :cond_1
    monitor-exit v1

    .line 145
    return-void

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 302
    iget-object v0, p0, Lcom/inmobi/ads/m;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/inmobi/ads/m$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/inmobi/ads/m$2;-><init>(Lcom/inmobi/ads/m;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 341
    return-void
.end method

.method public b()V
    .locals 6

    .prologue
    .line 212
    invoke-static {}, Lcom/inmobi/commons/core/utilities/d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    :goto_0
    return-void

    .line 215
    :cond_0
    sget-object v1, Lcom/inmobi/ads/m;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/m;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 217
    iget-object v0, p0, Lcom/inmobi/ads/m;->f:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    .line 218
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "assetFetcher"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/inmobi/ads/m;->f:Landroid/os/HandlerThread;

    .line 219
    iget-object v0, p0, Lcom/inmobi/ads/m;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/m;->e:Lcom/inmobi/ads/m$a;

    if-nez v0, :cond_2

    .line 222
    new-instance v0, Lcom/inmobi/ads/m$a;

    iget-object v2, p0, Lcom/inmobi/ads/m;->f:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const-string v3, "AssetPrefetch"

    invoke-direct {v0, v2, p0, v3}, Lcom/inmobi/ads/m$a;-><init>(Landroid/os/Looper;Lcom/inmobi/ads/m;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/inmobi/ads/m;->e:Lcom/inmobi/ads/m$a;

    .line 225
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 226
    iget-object v0, p0, Lcom/inmobi/ads/m;->b:Lcom/inmobi/ads/l;

    iget-object v3, p0, Lcom/inmobi/ads/m;->c:Lcom/inmobi/ads/c$a;

    invoke-virtual {v3}, Lcom/inmobi/ads/c$a;->b()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/inmobi/ads/l;->b(I)Ljava/util/List;

    move-result-object v0

    .line 227
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 228
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/m;->a:Ljava/lang/String;

    const-string v3, "No assets to cache. Returning ..."

    invoke-static {v0, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    monitor-exit v1

    goto :goto_0

    .line 248
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 232
    :cond_3
    :try_start_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/b;

    .line 233
    invoke-interface {v2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_4

    invoke-virtual {v0}, Lcom/inmobi/ads/b;->d()Z

    move-result v4

    if-nez v4, :cond_4

    .line 234
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 238
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 239
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/m;->a:Ljava/lang/String;

    const-string v3, "All assets are cached. Nothing to do here ..."

    invoke-static {v0, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/inmobi/ads/m;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 241
    invoke-virtual {p0}, Lcom/inmobi/ads/m;->c()V

    .line 248
    :cond_6
    :goto_2
    monitor-exit v1

    goto/16 :goto_0

    .line 243
    :cond_7
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/m;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scheduling asset fetch for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 244
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " assets"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 243
    invoke-static {v0, v3, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    iget-object v0, p0, Lcom/inmobi/ads/m;->e:Lcom/inmobi/ads/m$a;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/inmobi/ads/m$a;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2
.end method

.method public b(Ljava/lang/String;Lcom/inmobi/ads/m$b;)V
    .locals 2

    .prologue
    .line 152
    if-eqz p2, :cond_0

    .line 153
    iget-object v0, p0, Lcom/inmobi/ads/m;->l:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 154
    invoke-interface {v0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 155
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 156
    iget-object v0, p0, Lcom/inmobi/ads/m;->l:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 159
    :cond_1
    iget-object v1, p0, Lcom/inmobi/ads/m;->l:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public c()V
    .locals 2

    .prologue
    .line 252
    iget-object v0, p0, Lcom/inmobi/ads/m;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 253
    sget-object v1, Lcom/inmobi/ads/m;->j:Ljava/lang/Object;

    monitor-enter v1

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/m;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/inmobi/ads/m;->f:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/inmobi/ads/m;->f:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 257
    iget-object v0, p0, Lcom/inmobi/ads/m;->f:Landroid/os/HandlerThread;

    .line 258
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 259
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/ads/m;->f:Landroid/os/HandlerThread;

    .line 260
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/ads/m;->e:Lcom/inmobi/ads/m$a;

    .line 263
    :cond_0
    monitor-exit v1

    .line 264
    return-void

    .line 263
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()V
    .locals 4

    .prologue
    .line 272
    sget-object v2, Lcom/inmobi/ads/m;->j:Ljava/lang/Object;

    monitor-enter v2

    .line 273
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/m;->b:Lcom/inmobi/ads/l;

    invoke-virtual {v0}, Lcom/inmobi/ads/l;->b()Ljava/util/List;

    move-result-object v0

    .line 274
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    monitor-exit v2

    .line 290
    :goto_0
    return-void

    .line 277
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/b;

    .line 278
    invoke-virtual {v0}, Lcom/inmobi/ads/b;->c()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 279
    invoke-direct {p0, v0}, Lcom/inmobi/ads/m;->a(Lcom/inmobi/ads/b;)V

    goto :goto_1

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 282
    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/inmobi/ads/m;->b:Lcom/inmobi/ads/l;

    iget-object v1, p0, Lcom/inmobi/ads/m;->c:Lcom/inmobi/ads/c$a;

    invoke-virtual {v1}, Lcom/inmobi/ads/c$a;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/l;->a(I)Ljava/util/List;

    move-result-object v3

    .line 283
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 284
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 285
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/b;

    invoke-direct {p0, v0}, Lcom/inmobi/ads/m;->a(Lcom/inmobi/ads/b;)V

    .line 284
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 289
    :cond_3
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method e()Lcom/inmobi/ads/c$a;
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/inmobi/ads/m;->c:Lcom/inmobi/ads/c$a;

    return-object v0
.end method

.method f()Lcom/inmobi/ads/l;
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/inmobi/ads/m;->b:Lcom/inmobi/ads/l;

    return-object v0
.end method

.method g()V
    .locals 2

    .prologue
    .line 352
    iget-object v0, p0, Lcom/inmobi/ads/m;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 353
    return-void
.end method
