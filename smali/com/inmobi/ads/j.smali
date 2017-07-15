.class public final Lcom/inmobi/ads/j;
.super Ljava/lang/Object;
.source "AdUnitCache.java"

# interfaces
.implements Lcom/inmobi/commons/core/configs/b$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/j$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/Object;

.field private static volatile c:Lcom/inmobi/ads/j;

.field private static d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Lcom/inmobi/ads/ax;",
            "Lcom/inmobi/ads/AdUnit;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Lcom/inmobi/ads/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/inmobi/ads/j;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/j;->a:Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/inmobi/ads/j;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lcom/inmobi/ads/j;->d:Ljava/util/concurrent/ConcurrentHashMap;

    .line 56
    new-instance v0, Lcom/inmobi/ads/c;

    invoke-direct {v0}, Lcom/inmobi/ads/c;-><init>()V

    sput-object v0, Lcom/inmobi/ads/j;->e:Lcom/inmobi/ads/c;

    .line 57
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->a()Lcom/inmobi/commons/core/configs/b;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/j;->e:Lcom/inmobi/ads/c;

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/configs/b;->a(Lcom/inmobi/commons/core/configs/a;Lcom/inmobi/commons/core/configs/b$b;)V

    .line 58
    invoke-direct {p0}, Lcom/inmobi/ads/j;->g()V

    .line 59
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/j;->e:Lcom/inmobi/ads/c;

    invoke-virtual {v1}, Lcom/inmobi/ads/c;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/inmobi/ads/j;->e:Lcom/inmobi/ads/c;

    invoke-virtual {v2}, Lcom/inmobi/ads/c;->n()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 60
    return-void
.end method

.method public static a()Lcom/inmobi/ads/j;
    .locals 2

    .prologue
    .line 38
    sget-object v0, Lcom/inmobi/ads/j;->c:Lcom/inmobi/ads/j;

    .line 40
    if-nez v0, :cond_1

    .line 41
    sget-object v1, Lcom/inmobi/ads/j;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-object v0, Lcom/inmobi/ads/j;->c:Lcom/inmobi/ads/j;

    .line 43
    if-nez v0, :cond_0

    .line 44
    new-instance v0, Lcom/inmobi/ads/j;

    invoke-direct {v0}, Lcom/inmobi/ads/j;-><init>()V

    .line 45
    sput-object v0, Lcom/inmobi/ads/j;->c:Lcom/inmobi/ads/j;

    .line 47
    :cond_0
    monitor-exit v1

    .line 49
    :cond_1
    return-object v0

    .line 47
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 359
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "tp"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private a(Lcom/inmobi/ads/AdUnit;)V
    .locals 4

    .prologue
    .line 187
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 188
    const-string v1, "type"

    invoke-virtual {p1}, Lcom/inmobi/ads/AdUnit;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v1, "plId"

    invoke-virtual {p1}, Lcom/inmobi/ads/AdUnit;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v1, "clientRequestId"

    invoke-virtual {p1}, Lcom/inmobi/ads/AdUnit;->n()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/j;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/inmobi/ads/j;->h()V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/inmobi/ads/AdUnit;)V
    .locals 4

    .prologue
    .line 195
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 196
    const-string v1, "errorCode"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    const-string v1, "type"

    invoke-virtual {p2}, Lcom/inmobi/ads/AdUnit;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    const-string v1, "plId"

    invoke-virtual {p2}, Lcom/inmobi/ads/AdUnit;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    const-string v1, "clientRequestId"

    invoke-virtual {p2}, Lcom/inmobi/ads/AdUnit;->n()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    return-void
.end method

.method static synthetic b(Lcom/inmobi/ads/j;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/inmobi/ads/j;->l()V

    return-void
.end method

.method private b(Lcom/inmobi/ads/AdUnit;)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    const-wide/16 v6, 0x3e8

    .line 279
    invoke-virtual {p1}, Lcom/inmobi/ads/AdUnit;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v1

    sget-object v2, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADING:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v1, v2, :cond_1

    .line 280
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/j;->a:Ljava/lang/String;

    const-string v3, "hasAdUnitExpired. Ad unit in loading state."

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    :cond_0
    :goto_0
    return v0

    .line 284
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/inmobi/ads/AdUnit;->l()J

    move-result-wide v4

    sub-long/2addr v2, v4

    sget-object v1, Lcom/inmobi/ads/j;->e:Lcom/inmobi/ads/c;

    invoke-virtual {p1}, Lcom/inmobi/ads/AdUnit;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/inmobi/ads/c;->a(Ljava/lang/String;)Lcom/inmobi/ads/c$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/c$b;->e()J

    move-result-wide v4

    mul-long/2addr v4, v6

    mul-long/2addr v4, v6

    mul-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 285
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private c(Lcom/inmobi/ads/ax;)V
    .locals 4

    .prologue
    .line 204
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 205
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    invoke-static {}, Lcom/inmobi/ads/ay;->a()Lcom/inmobi/ads/ay;

    move-result-object v1

    sget-object v2, Lcom/inmobi/ads/j;->e:Lcom/inmobi/ads/c;

    .line 208
    invoke-virtual {v2}, Lcom/inmobi/ads/c;->o()Lcom/inmobi/ads/c$e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/ads/c$e;->c()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/inmobi/ads/ay;->a(Ljava/util/List;I)I

    move-result v1

    .line 210
    sget-object v0, Lcom/inmobi/ads/j;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/AdUnit;

    .line 211
    if-lez v1, :cond_0

    .line 212
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 213
    const-string v3, "count"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    const-string v1, "ads"

    const-string v3, "PreLoadPidOverflow"

    invoke-virtual {v0, v1, v3, v2}, Lcom/inmobi/ads/AdUnit;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 216
    :cond_0
    return-void
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/inmobi/ads/j;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/inmobi/ads/j;->d:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic f()Lcom/inmobi/ads/c;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/inmobi/ads/j;->e:Lcom/inmobi/ads/c;

    return-object v0
.end method

.method private g()V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 64
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 65
    if-nez v0, :cond_0

    .line 99
    :goto_0
    return-void

    .line 67
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_1

    .line 68
    new-instance v1, Lcom/inmobi/ads/j$1;

    invoke-direct {v1, p0}, Lcom/inmobi/ads/j$1;-><init>(Lcom/inmobi/ads/j;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    goto :goto_0

    .line 87
    :cond_1
    new-instance v1, Lcom/inmobi/ads/j$2;

    invoke-direct {v1, p0}, Lcom/inmobi/ads/j$2;-><init>(Lcom/inmobi/ads/j;)V

    invoke-virtual {v0, v1}, Landroid/app/Application;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    goto :goto_0
.end method

.method private h()V
    .locals 2

    .prologue
    .line 104
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    .line 105
    if-nez v0, :cond_0

    .line 125
    :goto_0
    return-void

    .line 106
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/inmobi/ads/j$3;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/j$3;-><init>(Lcom/inmobi/ads/j;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private i()V
    .locals 5

    .prologue
    .line 219
    sget-object v0, Lcom/inmobi/ads/j;->e:Lcom/inmobi/ads/c;

    invoke-virtual {v0}, Lcom/inmobi/ads/c;->o()Lcom/inmobi/ads/c$e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/c$e;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 235
    :cond_0
    :goto_0
    return-void

    .line 223
    :cond_1
    invoke-static {}, Lcom/inmobi/ads/ay;->a()Lcom/inmobi/ads/ay;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/j;->e:Lcom/inmobi/ads/c;

    invoke-virtual {v1}, Lcom/inmobi/ads/c;->o()Lcom/inmobi/ads/c$e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/c$e;->a()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/ads/ay;->a(J)I

    move-result v0

    .line 224
    if-lez v0, :cond_0

    .line 226
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 227
    const-string v2, "type"

    const-string v3, "int"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 228
    const-string v2, "count"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v0

    const-string v2, "ads"

    const-string v3, "PreLoadPidExpiry"

    invoke-virtual {v0, v2, v3, v1}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/j;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in submitting telemetry event : ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 232
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 231
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private j()V
    .locals 10

    .prologue
    .line 238
    sget-object v0, Lcom/inmobi/ads/j;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 241
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 242
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 243
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/AdUnit;

    .line 245
    invoke-direct {p0, v1}, Lcom/inmobi/ads/j;->b(Lcom/inmobi/ads/AdUnit;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    sget-object v4, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v5, Lcom/inmobi/ads/j;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cleanUpExpiredCachedAdUnits. pid:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 248
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/ads/ax;

    invoke-virtual {v2}, Lcom/inmobi/ads/ax;->c()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " tp:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 249
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/ax;

    invoke-virtual {v0}, Lcom/inmobi/ads/ax;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 246
    invoke-static {v4, v5, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/inmobi/ads/j$4;

    invoke-direct {v2, p0, v1}, Lcom/inmobi/ads/j$4;-><init>(Lcom/inmobi/ads/j;Lcom/inmobi/ads/AdUnit;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 265
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 268
    :catch_0
    move-exception v0

    .line 269
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/j;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDK encountered an unexpected error in expiring ad units; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 271
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 269
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 274
    :cond_1
    return-void
.end method

.method private k()V
    .locals 3

    .prologue
    .line 291
    sget-object v0, Lcom/inmobi/ads/j;->e:Lcom/inmobi/ads/c;

    invoke-virtual {v0}, Lcom/inmobi/ads/c;->o()Lcom/inmobi/ads/c$e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/c$e;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 300
    :cond_0
    return-void

    .line 295
    :cond_1
    invoke-direct {p0}, Lcom/inmobi/ads/j;->m()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 297
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 298
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/ax;

    invoke-virtual {p0, v1}, Lcom/inmobi/ads/j;->b(Lcom/inmobi/ads/ax;)V

    .line 297
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0
.end method

.method private l()V
    .locals 10

    .prologue
    .line 342
    sget-object v0, Lcom/inmobi/ads/j;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    sget-object v1, Lcom/inmobi/ads/j;->e:Lcom/inmobi/ads/c;

    invoke-virtual {v1}, Lcom/inmobi/ads/c;->o()Lcom/inmobi/ads/c$e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/c$e;->c()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 343
    invoke-static {}, Lcom/inmobi/ads/ay;->a()Lcom/inmobi/ads/ay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/ay;->b()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 344
    sget-object v1, Lcom/inmobi/ads/j;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 346
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 347
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 349
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 350
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/ads/AdUnit;

    invoke-virtual {v2}, Lcom/inmobi/ads/AdUnit;->F()V

    .line 351
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 352
    sget-object v4, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v5, Lcom/inmobi/ads/j;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Removing extra ad unit from ad unit cache. Pid:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/ads/ax;

    invoke-virtual {v2}, Lcom/inmobi/ads/ax;->c()J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " tp:"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/ax;

    invoke-virtual {v1}, Lcom/inmobi/ads/ax;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5, v1}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 356
    :cond_1
    return-void
.end method

.method private m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/ax;",
            ">;"
        }
    .end annotation

    .prologue
    .line 363
    invoke-static {}, Lcom/inmobi/ads/ay;->a()Lcom/inmobi/ads/ay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/ay;->b()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method a(Lcom/inmobi/ads/ax;)Lcom/inmobi/ads/AdUnit;
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 146
    sget-object v0, Lcom/inmobi/ads/j;->e:Lcom/inmobi/ads/c;

    invoke-virtual {v0}, Lcom/inmobi/ads/c;->o()Lcom/inmobi/ads/c$e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/c$e;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 147
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/j;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No cached ad unit found as config is disabled. pid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 149
    invoke-virtual {p1}, Lcom/inmobi/ads/ax;->c()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 150
    invoke-virtual {p1}, Lcom/inmobi/ads/ax;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 147
    invoke-static {v0, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 182
    :goto_0
    return-object v0

    .line 154
    :cond_0
    invoke-direct {p0, p1}, Lcom/inmobi/ads/j;->c(Lcom/inmobi/ads/ax;)V

    .line 155
    sget-object v0, Lcom/inmobi/ads/j;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/AdUnit;

    .line 156
    if-nez v0, :cond_1

    .line 157
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/j;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No cached ad unit found for pid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 159
    invoke-virtual {p1}, Lcom/inmobi/ads/ax;->c()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 160
    invoke-virtual {p1}, Lcom/inmobi/ads/ax;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 157
    invoke-static {v0, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 162
    goto :goto_0

    .line 165
    :cond_1
    invoke-direct {p0, v0}, Lcom/inmobi/ads/j;->b(Lcom/inmobi/ads/AdUnit;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 166
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/j;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Expired cached ad unit found for pid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 168
    invoke-virtual {p1}, Lcom/inmobi/ads/ax;->c()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " tp:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 169
    invoke-virtual {p1}, Lcom/inmobi/ads/ax;->d()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 166
    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {v0}, Lcom/inmobi/ads/AdUnit;->F()V

    .line 171
    sget-object v2, Lcom/inmobi/ads/j;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    const-string v2, "AdUnitExpired"

    invoke-direct {p0, v2, v0}, Lcom/inmobi/ads/j;->a(Ljava/lang/String;Lcom/inmobi/ads/AdUnit;)V

    move-object v0, v1

    .line 173
    goto :goto_0

    .line 175
    :cond_2
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/j;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cached ad unit found for pid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 177
    invoke-virtual {p1}, Lcom/inmobi/ads/ax;->c()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " tp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 178
    invoke-virtual {p1}, Lcom/inmobi/ads/ax;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 175
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    sget-object v1, Lcom/inmobi/ads/j;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/AdUnit;

    .line 180
    sget-object v2, Lcom/inmobi/ads/j;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-direct {p0, v1}, Lcom/inmobi/ads/j;->a(Lcom/inmobi/ads/AdUnit;)V

    goto/16 :goto_0
.end method

.method public a(Lcom/inmobi/commons/core/configs/a;)V
    .locals 3

    .prologue
    .line 129
    check-cast p1, Lcom/inmobi/ads/c;

    sput-object p1, Lcom/inmobi/ads/j;->e:Lcom/inmobi/ads/c;

    .line 130
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/j;->e:Lcom/inmobi/ads/c;

    invoke-virtual {v1}, Lcom/inmobi/ads/c;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/inmobi/ads/j;->e:Lcom/inmobi/ads/c;

    .line 131
    invoke-virtual {v2}, Lcom/inmobi/ads/c;->n()Lorg/json/JSONObject;

    move-result-object v2

    .line 130
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 132
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/inmobi/ads/j;->i()V

    .line 136
    invoke-direct {p0}, Lcom/inmobi/ads/j;->j()V

    .line 137
    invoke-direct {p0}, Lcom/inmobi/ads/j;->k()V

    .line 138
    return-void
.end method

.method public b(Lcom/inmobi/ads/ax;)V
    .locals 2

    .prologue
    .line 304
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/inmobi/ads/j$5;

    invoke-direct {v1, p0, p1}, Lcom/inmobi/ads/j$5;-><init>(Lcom/inmobi/ads/j;Lcom/inmobi/ads/ax;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 339
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/inmobi/ads/j;->i()V

    .line 142
    invoke-direct {p0}, Lcom/inmobi/ads/j;->j()V

    .line 143
    return-void
.end method
