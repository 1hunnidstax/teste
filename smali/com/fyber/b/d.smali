.class public abstract Lcom/fyber/b/d;
.super Ljava/lang/Object;
.source "AdsProcessorOperation.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "U:",
        "Lcom/fyber/ads/Ad;",
        "V:",
        "Lcom/fyber/ads/internal/InternalAd",
        "<TV;TU;>;>",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TU;>;"
    }
.end annotation


# instance fields
.field protected a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TV;>;"
        }
    .end annotation
.end field

.field protected b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/fyber/b/d;->a:Ljava/util/List;

    .line 44
    return-void
.end method

.method private a(Lcom/fyber/ads/internal/InternalAd;Lcom/fyber/ads/internal/a;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;",
            "Lcom/fyber/ads/internal/a;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/fyber/b/d;->a(Lcom/fyber/ads/internal/InternalAd;Lcom/fyber/ads/internal/a;Ljava/lang/String;Ljava/util/Map;)V

    .line 125
    return-void
.end method

.method private a(Lcom/fyber/ads/internal/InternalAd;Lcom/fyber/ads/internal/a;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/ads/internal/InternalAd;",
            "Lcom/fyber/ads/internal/a;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    invoke-virtual {p0, p2}, Lcom/fyber/b/d;->a(Lcom/fyber/ads/internal/a;)Lcom/fyber/b/a$a;

    move-result-object v0

    .line 129
    invoke-virtual {v0, p4}, Lcom/fyber/b/a$a;->a(Ljava/util/Map;)Lcom/fyber/b/e$a;

    move-result-object v0

    check-cast v0, Lcom/fyber/b/a$a;

    .line 130
    invoke-virtual {v0, p3}, Lcom/fyber/b/a$a;->b(Ljava/lang/String;)Lcom/fyber/b/e$a;

    move-result-object v0

    check-cast v0, Lcom/fyber/b/a$a;

    .line 131
    invoke-virtual {v0, p1}, Lcom/fyber/b/a$a;->a(Lcom/fyber/ads/internal/InternalAd;)Lcom/fyber/b/e;

    move-result-object v0

    .line 132
    invoke-virtual {v0}, Lcom/fyber/b/e;->b()V

    .line 133
    return-void
.end method

.method private d()Lcom/fyber/ads/Ad;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TU;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 51
    iget-object v0, p0, Lcom/fyber/b/d;->a:Ljava/util/List;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/fyber/b/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 52
    iget-object v0, p0, Lcom/fyber/b/d;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/ads/internal/InternalAd;

    .line 53
    invoke-virtual {p0}, Lcom/fyber/b/d;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Processing ad from "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fyber/ads/internal/InternalAd;->getProviderType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    sget-object v1, Lcom/fyber/mediation/b;->a:Lcom/fyber/mediation/b;

    invoke-virtual {v0}, Lcom/fyber/ads/internal/InternalAd;->getProviderType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/fyber/b/d;->b()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/fyber/mediation/b;->a(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 55
    invoke-virtual {p0}, Lcom/fyber/b/d;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/fyber/ads/internal/InternalAd;->getProviderType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is available, proceeding..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    sget-object v1, Lcom/fyber/ads/internal/a;->a:Lcom/fyber/ads/internal/a;

    .line 1120
    invoke-direct {p0, v0, v1, v2}, Lcom/fyber/b/d;->a(Lcom/fyber/ads/internal/InternalAd;Lcom/fyber/ads/internal/a;Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0, v0}, Lcom/fyber/b/d;->a(Lcom/fyber/ads/internal/InternalAd;)Ljava/util/concurrent/Future;

    move-result-object v7

    .line 1138
    const-string v1, "timeout"

    const-class v3, Ljava/lang/Integer;

    invoke-virtual {v0, v1, v3}, Lcom/fyber/ads/internal/InternalAd;->getRawContextDataValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 1139
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xb4

    if-gt v3, v4, :cond_1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gtz v3, :cond_3

    .line 1140
    :cond_1
    invoke-virtual {p0}, Lcom/fyber/b/d;->c()I

    move-result v1

    .line 63
    :goto_1
    if-eqz v7, :cond_a

    .line 65
    int-to-long v4, v1

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v7, v4, v5, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v3

    .line 67
    :goto_2
    if-eqz v3, :cond_4

    .line 69
    invoke-virtual {p0}, Lcom/fyber/b/d;->a()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v8, "Ad is available from "

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fyber/ads/internal/InternalAd;->getProviderType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    sget-object v4, Lcom/fyber/ads/internal/a;->b:Lcom/fyber/ads/internal/a;

    .line 2120
    const/4 v5, 0x0

    invoke-direct {p0, v0, v4, v5}, Lcom/fyber/b/d;->a(Lcom/fyber/ads/internal/InternalAd;Lcom/fyber/ads/internal/a;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0, v3, v0}, Lcom/fyber/b/d;->a(Ljava/lang/Object;Lcom/fyber/ads/internal/InternalAd;)Lcom/fyber/ads/Ad;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 91
    if-eqz v7, :cond_2

    invoke-interface {v7}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v7}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 92
    invoke-interface {v7, v10}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 105
    :cond_2
    :goto_3
    return-object v0

    .line 1142
    :cond_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    .line 75
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Lcom/fyber/b/d;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "No ad available from "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fyber/ads/internal/InternalAd;->getProviderType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    sget-object v3, Lcom/fyber/ads/internal/a;->c:Lcom/fyber/ads/internal/a;

    .line 3120
    const/4 v4, 0x0

    invoke-direct {p0, v0, v3, v4}, Lcom/fyber/b/d;->a(Lcom/fyber/ads/internal/InternalAd;Lcom/fyber/ads/internal/a;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v7}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    invoke-interface {v7, v10}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto/16 :goto_0

    .line 81
    :catch_0
    move-exception v3

    :try_start_2
    const-string v3, "timeout_value"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 82
    sget-object v3, Lcom/fyber/ads/internal/a;->e:Lcom/fyber/ads/internal/a;

    const-string v4, "network"

    invoke-direct {p0, v0, v3, v4, v1}, Lcom/fyber/b/d;->a(Lcom/fyber/ads/internal/InternalAd;Lcom/fyber/ads/internal/a;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v7}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    invoke-interface {v7, v10}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto/16 :goto_0

    .line 91
    :catch_1
    move-exception v0

    if-eqz v7, :cond_5

    invoke-interface {v7}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-interface {v7}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 92
    invoke-interface {v7, v10}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_5
    move-object v0, v2

    goto :goto_3

    .line 86
    :catch_2
    move-exception v1

    .line 3153
    :try_start_3
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    .line 3154
    const-string v5, ""

    .line 3155
    const-string v4, ""

    .line 3156
    sget-object v3, Lcom/fyber/ads/internal/a;->d:Lcom/fyber/ads/internal/a;

    .line 3157
    if-eqz v1, :cond_9

    .line 3158
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    .line 3159
    instance-of v8, v1, Lcom/fyber/exceptions/a;

    if-eqz v8, :cond_9

    .line 3161
    check-cast v1, Lcom/fyber/exceptions/a;

    invoke-virtual {v1}, Lcom/fyber/exceptions/a;->a()Ljava/lang/String;

    move-result-object v4

    .line 3163
    const-string v1, "no_placement_id"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3164
    sget-object v1, Lcom/fyber/ads/internal/a;->k:Lcom/fyber/ads/internal/a;

    move-object v3, v4

    move-object v4, v5

    .line 3168
    :goto_4
    invoke-virtual {p0}, Lcom/fyber/b/d;->a()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Error requesting ads - "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3169
    invoke-direct {p0, v0, v1, v3}, Lcom/fyber/b/d;->a(Lcom/fyber/ads/internal/InternalAd;Lcom/fyber/ads/internal/a;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 91
    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v7}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    invoke-interface {v7, v10}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto/16 :goto_0

    .line 91
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_6

    invoke-interface {v7}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_6

    invoke-interface {v7}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_6

    .line 92
    invoke-interface {v7, v10}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_6
    throw v0

    .line 97
    :cond_7
    invoke-virtual {p0}, Lcom/fyber/b/d;->a()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/fyber/ads/internal/InternalAd;->getProviderType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not integrated"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    sget-object v1, Lcom/fyber/ads/internal/a;->k:Lcom/fyber/ads/internal/a;

    .line 4120
    invoke-direct {p0, v0, v1, v2}, Lcom/fyber/b/d;->a(Lcom/fyber/ads/internal/InternalAd;Lcom/fyber/ads/internal/a;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 103
    :cond_8
    invoke-virtual {p0}, Lcom/fyber/b/d;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "There are no ads available currently."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v2

    .line 105
    goto/16 :goto_3

    :cond_9
    move-object v1, v3

    move-object v3, v4

    move-object v4, v5

    goto :goto_4

    :cond_a
    move-object v3, v2

    goto/16 :goto_2
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Object;Lcom/fyber/ads/internal/InternalAd;)Lcom/fyber/ads/Ad;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TV;)TU;"
        }
    .end annotation
.end method

.method protected abstract a(Lcom/fyber/ads/internal/a;)Lcom/fyber/b/a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/ads/internal/a;",
            ")",
            "Lcom/fyber/b/a$a",
            "<+",
            "Lcom/fyber/b/e;",
            "+",
            "Lcom/fyber/b/a$a",
            "<**>;>;"
        }
    .end annotation
.end method

.method protected abstract a()Ljava/lang/String;
.end method

.method protected abstract a(Lcom/fyber/ads/internal/InternalAd;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)",
            "Ljava/util/concurrent/Future",
            "<TT;>;"
        }
    .end annotation
.end method

.method public final a(Ljava/lang/ref/WeakReference;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;)",
            "Ljava/util/concurrent/Future",
            "<TU;>;"
        }
    .end annotation

    .prologue
    .line 114
    iput-object p1, p0, Lcom/fyber/b/d;->b:Ljava/lang/ref/WeakReference;

    .line 115
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    .line 116
    invoke-virtual {v0, p0}, Lcom/fyber/Fyber$a;->a(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method

.method protected abstract b()I
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method protected abstract c()I
.end method

.method public synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/fyber/b/d;->d()Lcom/fyber/ads/Ad;

    move-result-object v0

    return-object v0
.end method
