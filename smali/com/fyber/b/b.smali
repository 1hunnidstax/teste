.class public abstract Lcom/fyber/b/b;
.super Ljava/lang/Object;
.source "AdFetchOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/b/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Lcom/fyber/ads/internal/InternalAd;",
        "U:",
        "Lcom/fyber/ads/Ad;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/fyber/requesters/Callback;

.field protected final b:Lcom/fyber/utils/u;

.field protected c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Z


# direct methods
.method public constructor <init>(Lcom/fyber/b/b$a;)V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/b/b;->d:Z

    .line 46
    iget-object v0, p1, Lcom/fyber/b/b$a;->b:Lcom/fyber/requesters/Callback;

    iput-object v0, p0, Lcom/fyber/b/b;->a:Lcom/fyber/requesters/Callback;

    .line 47
    iget-object v0, p1, Lcom/fyber/b/b$a;->a:Lcom/fyber/utils/u;

    iput-object v0, p0, Lcom/fyber/b/b;->b:Lcom/fyber/utils/u;

    .line 48
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/fyber/ads/internal/a;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/fyber/b/b;->a(Ljava/lang/String;Lcom/fyber/ads/internal/a;Ljava/lang/String;Ljava/util/Map;)V

    .line 173
    return-void
.end method

.method private a(Ljava/lang/String;Lcom/fyber/ads/internal/a;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
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
    .line 176
    invoke-virtual {p0, p2}, Lcom/fyber/b/b;->a(Lcom/fyber/ads/internal/a;)Lcom/fyber/b/a$a;

    move-result-object v0

    .line 177
    invoke-virtual {v0, p4}, Lcom/fyber/b/a$a;->a(Ljava/util/Map;)Lcom/fyber/b/e$a;

    move-result-object v0

    check-cast v0, Lcom/fyber/b/a$a;

    .line 178
    invoke-virtual {v0, p3}, Lcom/fyber/b/a$a;->b(Ljava/lang/String;)Lcom/fyber/b/e$a;

    move-result-object v0

    check-cast v0, Lcom/fyber/b/a$a;

    .line 179
    invoke-virtual {v0, p1}, Lcom/fyber/b/a$a;->a(Ljava/lang/String;)Lcom/fyber/b/e;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Lcom/fyber/b/e;->b()V

    .line 181
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 160
    const-string v0, "AdFetchOperation"

    const-string v1, "A timeout occurred while retrieving an ad"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    const-string v0, "timeout_value"

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 162
    sget-object v1, Lcom/fyber/ads/internal/a;->e:Lcom/fyber/ads/internal/a;

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/fyber/b/b;->a(Ljava/lang/String;Lcom/fyber/ads/internal/a;Ljava/lang/String;Ljava/util/Map;)V

    .line 163
    iget-object v0, p0, Lcom/fyber/b/b;->a:Lcom/fyber/requesters/Callback;

    sget-object v1, Lcom/fyber/requesters/RequestError;->ERROR_REQUESTING_ADS:Lcom/fyber/requesters/RequestError;

    invoke-interface {v0, v1}, Lcom/fyber/requesters/Callback;->onRequestError(Lcom/fyber/requesters/RequestError;)V

    .line 164
    sget-object v0, Lcom/fyber/ads/internal/c;->a:Lcom/fyber/ads/internal/c;

    invoke-virtual {p0, v0}, Lcom/fyber/b/b;->a(Lcom/fyber/ads/internal/c;)V

    .line 165
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 153
    const-string v0, "AdFetchOperation"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "An error occurred while retrieving an ad "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    sget-object v0, Lcom/fyber/ads/internal/a;->d:Lcom/fyber/ads/internal/a;

    invoke-direct {p0, p1, v0, p3}, Lcom/fyber/b/b;->a(Ljava/lang/String;Lcom/fyber/ads/internal/a;Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/fyber/b/b;->a:Lcom/fyber/requesters/Callback;

    sget-object v1, Lcom/fyber/requesters/RequestError;->UNKNOWN_ERROR:Lcom/fyber/requesters/RequestError;

    invoke-interface {v0, v1}, Lcom/fyber/requesters/Callback;->onRequestError(Lcom/fyber/requesters/RequestError;)V

    .line 156
    sget-object v0, Lcom/fyber/ads/internal/c;->a:Lcom/fyber/ads/internal/c;

    invoke-virtual {p0, v0}, Lcom/fyber/b/b;->a(Lcom/fyber/ads/internal/c;)V

    .line 157
    return-void
.end method


# virtual methods
.method protected abstract a()I
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

.method protected abstract a(Ljava/lang/String;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/concurrent/Future",
            "<",
            "Lcom/fyber/ads/a",
            "<TV;>;>;"
        }
    .end annotation
.end method

.method protected abstract a(Ljava/util/List;)Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TV;>;)",
            "Ljava/util/concurrent/Future",
            "<TU;>;"
        }
    .end annotation
.end method

.method public final a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fyber/b/b;->c:Ljava/lang/ref/WeakReference;

    .line 72
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    .line 73
    invoke-virtual {v0, p0}, Lcom/fyber/Fyber$a;->a(Ljava/lang/Runnable;)V

    .line 74
    return-void
.end method

.method protected abstract a(Lcom/fyber/ads/Ad;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation
.end method

.method protected abstract a(Lcom/fyber/ads/internal/c;)V
.end method

.method protected abstract b()V
.end method

.method public run()V
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x1

    .line 79
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    .line 81
    iget-object v0, p0, Lcom/fyber/b/b;->b:Lcom/fyber/utils/u;

    invoke-virtual {v0, v2}, Lcom/fyber/utils/u;->a(Ljava/lang/String;)Lcom/fyber/utils/u;

    .line 83
    iget-boolean v0, p0, Lcom/fyber/b/b;->d:Z

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lcom/fyber/mediation/b;->a:Lcom/fyber/mediation/b;

    invoke-virtual {v0}, Lcom/fyber/mediation/b;->a()Ljava/util/concurrent/Future;

    move-result-object v0

    .line 85
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v3

    if-nez v3, :cond_0

    .line 87
    const-wide/16 v4, 0x3c

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v4, v5, v3}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_8

    .line 95
    :cond_0
    invoke-virtual {p0, v2}, Lcom/fyber/b/b;->a(Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v3

    .line 97
    invoke-virtual {p0}, Lcom/fyber/b/b;->a()I

    move-result v4

    .line 100
    int-to-long v6, v4

    :try_start_1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v6, v7, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/ads/a;

    .line 101
    invoke-virtual {v0}, Lcom/fyber/ads/a;->b()Ljava/util/List;

    move-result-object v5

    .line 102
    invoke-virtual {v0}, Lcom/fyber/ads/a;->a()I
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    .line 108
    if-eqz v5, :cond_8

    :try_start_2
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 109
    invoke-virtual {p0, v5}, Lcom/fyber/b/b;->a(Ljava/util/List;)Ljava/util/concurrent/Future;

    move-result-object v1

    .line 110
    int-to-long v8, v6

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v8, v9, v0}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/ads/Ad;

    .line 113
    :goto_0
    if-eqz v0, :cond_3

    .line 115
    sget-object v5, Lcom/fyber/ads/internal/a;->b:Lcom/fyber/ads/internal/a;

    .line 1168
    const/4 v7, 0x0

    invoke-direct {p0, v2, v5, v7}, Lcom/fyber/b/b;->a(Ljava/lang/String;Lcom/fyber/ads/internal/a;Ljava/lang/String;)V

    .line 116
    sget-object v5, Lcom/fyber/ads/internal/c;->c:Lcom/fyber/ads/internal/c;

    invoke-virtual {p0, v5}, Lcom/fyber/b/b;->a(Lcom/fyber/ads/internal/c;)V

    .line 117
    invoke-virtual {p0, v0}, Lcom/fyber/b/b;->a(Lcom/fyber/ads/Ad;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 133
    :goto_1
    if-eqz v1, :cond_1

    :try_start_3
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 146
    :cond_1
    :goto_2
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v3}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 147
    invoke-interface {v3, v10}, Ljava/util/concurrent/Future;->cancel(Z)Z

    .line 150
    :cond_2
    :goto_3
    return-void

    .line 89
    :catch_0
    move-exception v0

    :goto_4
    const-string v0, "Adapter start timeout"

    const-string v1, "adapter_start_timeout"

    invoke-direct {p0, v2, v0, v1}, Lcom/fyber/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 120
    :cond_3
    :try_start_4
    sget-object v0, Lcom/fyber/ads/internal/a;->c:Lcom/fyber/ads/internal/a;

    .line 2168
    const/4 v5, 0x0

    invoke-direct {p0, v2, v0, v5}, Lcom/fyber/b/b;->a(Ljava/lang/String;Lcom/fyber/ads/internal/a;Ljava/lang/String;)V

    .line 121
    sget-object v0, Lcom/fyber/ads/internal/c;->a:Lcom/fyber/ads/internal/c;

    invoke-virtual {p0, v0}, Lcom/fyber/b/b;->a(Lcom/fyber/ads/internal/c;)V

    .line 122
    invoke-virtual {p0}, Lcom/fyber/b/b;->b()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 124
    :catch_1
    move-exception v0

    .line 125
    :goto_5
    :try_start_5
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    instance-of v5, v5, Lcom/fyber/exceptions/a;

    if-eqz v5, :cond_4

    .line 126
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/fyber/exceptions/a;

    invoke-virtual {v0}, Lcom/fyber/exceptions/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v5, v0}, Lcom/fyber/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 133
    :goto_6
    if-eqz v1, :cond_1

    :try_start_6
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_6
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    .line 137
    :catch_2
    move-exception v0

    .line 138
    :goto_7
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lcom/fyber/exceptions/a;

    if-eqz v1, :cond_6

    .line 139
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/fyber/exceptions/a;

    invoke-virtual {v0}, Lcom/fyber/exceptions/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v1, v0}, Lcom/fyber/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 146
    :goto_8
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v3}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 147
    invoke-interface {v3, v10}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto :goto_3

    .line 128
    :cond_4
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v5, 0x0

    invoke-direct {p0, v2, v0, v5}, Lcom/fyber/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_6

    .line 133
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_5

    :try_start_9
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v5

    if-nez v5, :cond_5

    .line 134
    const/4 v5, 0x1

    invoke-interface {v1, v5}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_5
    throw v0
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 137
    :catch_3
    move-exception v0

    goto :goto_7

    .line 131
    :catch_4
    move-exception v0

    :try_start_a
    const-string v0, "validation"

    invoke-direct {p0, v2, v0, v6}, Lcom/fyber/b/b;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 133
    if-eqz v1, :cond_1

    :try_start_b
    invoke-interface {v1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v1}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    const/4 v0, 0x1

    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z
    :try_end_b
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_b} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_2

    .line 144
    :catch_5
    move-exception v0

    :try_start_c
    const-string v0, "backend"

    invoke-direct {p0, v2, v0, v4}, Lcom/fyber/b/b;->a(Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 146
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {v3}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_2

    .line 147
    invoke-interface {v3, v10}, Ljava/util/concurrent/Future;->cancel(Z)Z

    goto/16 :goto_3

    .line 141
    :cond_6
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/fyber/b/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto :goto_8

    .line 146
    :catchall_1
    move-exception v0

    if-eqz v3, :cond_7

    invoke-interface {v3}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-interface {v3}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_7

    .line 147
    invoke-interface {v3, v10}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_7
    throw v0

    .line 124
    :catch_6
    move-exception v0

    goto/16 :goto_5

    .line 89
    :catch_7
    move-exception v0

    goto/16 :goto_4

    :catch_8
    move-exception v0

    goto/16 :goto_4

    :cond_8
    move-object v0, v1

    goto/16 :goto_0
.end method
