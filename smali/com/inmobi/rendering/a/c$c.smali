.class final Lcom/inmobi/rendering/a/c$c;
.super Ljava/lang/Object;
.source "ClickManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/rendering/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field private a:Lcom/inmobi/rendering/a/c$d;


# direct methods
.method public constructor <init>(Lcom/inmobi/rendering/a/c$d;)V
    .locals 0

    .prologue
    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    iput-object p1, p0, Lcom/inmobi/rendering/a/c$c;->a:Lcom/inmobi/rendering/a/c$d;

    .line 355
    return-void
.end method


# virtual methods
.method public a(Lcom/inmobi/rendering/a/a;)V
    .locals 8

    .prologue
    .line 359
    :try_start_0
    new-instance v0, Lcom/inmobi/commons/core/network/NetworkRequest;

    sget-object v1, Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;->GET:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    iget-object v2, p1, Lcom/inmobi/rendering/a/a;->b:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/inmobi/commons/core/network/NetworkRequest;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;Ljava/lang/String;ZLcom/inmobi/commons/core/utilities/uid/d;)V

    .line 361
    invoke-static {p1}, Lcom/inmobi/rendering/a/c;->b(Lcom/inmobi/rendering/a/a;)Ljava/util/HashMap;

    move-result-object v1

    .line 362
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 363
    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/network/NetworkRequest;->c(Ljava/util/Map;)V

    .line 366
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/network/NetworkRequest;->a(Z)V

    .line 367
    iget-object v1, p1, Lcom/inmobi/rendering/a/a;->c:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/network/NetworkRequest;->d(Ljava/util/Map;)V

    .line 368
    iget-boolean v1, p1, Lcom/inmobi/rendering/a/a;->i:Z

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/network/NetworkRequest;->b(Z)V

    .line 369
    sget-object v1, Lcom/inmobi/rendering/a/c;->a:Lcom/inmobi/ads/c$c;

    invoke-virtual {v1}, Lcom/inmobi/ads/c$c;->c()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/network/NetworkRequest;->b(I)V

    .line 370
    sget-object v1, Lcom/inmobi/rendering/a/c;->a:Lcom/inmobi/ads/c$c;

    invoke-virtual {v1}, Lcom/inmobi/ads/c$c;->c()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/network/NetworkRequest;->c(I)V

    .line 372
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 373
    new-instance v1, Lcom/inmobi/commons/core/network/d;

    invoke-direct {v1, v0}, Lcom/inmobi/commons/core/network/d;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest;)V

    invoke-virtual {v1}, Lcom/inmobi/commons/core/network/d;->a()Lcom/inmobi/commons/core/network/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 376
    :try_start_1
    invoke-static {}, Lcom/inmobi/signals/n;->a()Lcom/inmobi/signals/n;

    move-result-object v4

    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/NetworkRequest;->t()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/inmobi/signals/n;->a(J)V

    .line 377
    invoke-static {}, Lcom/inmobi/signals/n;->a()Lcom/inmobi/signals/n;

    move-result-object v0

    invoke-virtual {v1}, Lcom/inmobi/commons/core/network/c;->f()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Lcom/inmobi/signals/n;->b(J)V

    .line 378
    invoke-static {}, Lcom/inmobi/signals/n;->a()Lcom/inmobi/signals/n;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/signals/n;->g(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 384
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Lcom/inmobi/commons/core/network/c;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 385
    invoke-virtual {v1}, Lcom/inmobi/commons/core/network/c;->e()Lcom/inmobi/commons/core/network/NetworkError;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/NetworkError;->a()Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    move-result-object v0

    .line 386
    iget-boolean v2, p1, Lcom/inmobi/rendering/a/a;->i:Z

    if-nez v2, :cond_2

    sget-object v2, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->HTTP_SEE_OTHER:Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    if-eq v2, v0, :cond_1

    sget-object v2, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->HTTP_MOVED_TEMP:Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    if-ne v2, v0, :cond_2

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/inmobi/rendering/a/c$c;->a:Lcom/inmobi/rendering/a/c$d;

    invoke-interface {v0, p1}, Lcom/inmobi/rendering/a/c$d;->a(Lcom/inmobi/rendering/a/a;)V

    .line 402
    :goto_1
    return-void

    .line 379
    :catch_0
    move-exception v0

    .line 380
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/rendering/a/c;->e()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in setting request-response data size. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 396
    :catch_1
    move-exception v0

    .line 397
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/rendering/a/c;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDK encountered unexpected error in executing ping over HTTP; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 398
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 397
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    iget-object v0, p0, Lcom/inmobi/rendering/a/c$c;->a:Lcom/inmobi/rendering/a/c$d;

    new-instance v1, Lcom/inmobi/commons/core/network/NetworkError;

    sget-object v2, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->UNKNOWN_ERROR:Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    const-string v3, "Unknown error"

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/core/network/NetworkError;-><init>(Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;Ljava/lang/String;)V

    .line 400
    invoke-virtual {v1}, Lcom/inmobi/commons/core/network/NetworkError;->a()Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    move-result-object v1

    .line 399
    invoke-interface {v0, p1, v1}, Lcom/inmobi/rendering/a/c$d;->a(Lcom/inmobi/rendering/a/a;Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;)V

    goto :goto_1

    .line 391
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/inmobi/rendering/a/c$c;->a:Lcom/inmobi/rendering/a/c$d;

    invoke-virtual {v1}, Lcom/inmobi/commons/core/network/c;->e()Lcom/inmobi/commons/core/network/NetworkError;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/core/network/NetworkError;->a()Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/inmobi/rendering/a/c$d;->a(Lcom/inmobi/rendering/a/a;Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;)V

    goto :goto_1

    .line 394
    :cond_3
    iget-object v0, p0, Lcom/inmobi/rendering/a/c$c;->a:Lcom/inmobi/rendering/a/c$d;

    invoke-interface {v0, p1}, Lcom/inmobi/rendering/a/c$d;->a(Lcom/inmobi/rendering/a/a;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method
