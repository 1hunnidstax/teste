.class final Lcom/inmobi/commons/core/d/c$a;
.super Landroid/os/Handler;
.source "TelemetryComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/core/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/commons/core/d/c;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Lcom/inmobi/commons/core/d/f;

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private i:I

.field private j:I

.field private k:Z

.field private l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/commons/core/d/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/inmobi/commons/core/d/c;Landroid/os/Looper;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 402
    iput-object p1, p0, Lcom/inmobi/commons/core/d/c$a;->a:Lcom/inmobi/commons/core/d/c;

    .line 403
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 396
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/inmobi/commons/core/d/c$a;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 397
    iput v1, p0, Lcom/inmobi/commons/core/d/c$a;->i:I

    .line 400
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/core/d/c$a;->l:Ljava/util/List;

    .line 404
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/commons/core/d/c$a;->c:Ljava/lang/String;

    .line 405
    invoke-direct {p0}, Lcom/inmobi/commons/core/d/c$a;->a()V

    .line 406
    return-void
.end method

.method private a(Ljava/util/List;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/commons/core/d/g;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 573
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 575
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 576
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 577
    const-string v4, "eventId"

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/core/d/g;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/d/g;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 578
    const-string v4, "eventType"

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/core/d/g;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/d/g;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 579
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/core/d/g;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/d/g;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 580
    const-string v4, "payload"

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/core/d/g;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/d/g;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 582
    :cond_0
    const-string v4, "component"

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/core/d/g;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/d/g;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 583
    const-string v4, "ts"

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/core/d/g;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/d/g;->e()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 584
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 575
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 586
    :cond_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 588
    :goto_1
    return-object v0

    .line 587
    :catch_0
    move-exception v0

    .line 588
    const-string v0, ""

    goto :goto_1
.end method

.method private a()V
    .locals 1

    .prologue
    .line 409
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->f()Lcom/inmobi/commons/core/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/d/e;->j()I

    move-result v0

    iput v0, p0, Lcom/inmobi/commons/core/d/c$a;->e:I

    .line 410
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->f()Lcom/inmobi/commons/core/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/d/e;->g()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/commons/core/d/c$a;->b:Ljava/lang/String;

    .line 411
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->f()Lcom/inmobi/commons/core/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/d/e;->l()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/inmobi/commons/core/d/c$a;->f:I

    .line 412
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->f()Lcom/inmobi/commons/core/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/d/e;->h()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/inmobi/commons/core/d/c$a;->g:I

    .line 413
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->f()Lcom/inmobi/commons/core/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/d/e;->k()I

    move-result v0

    iput v0, p0, Lcom/inmobi/commons/core/d/c$a;->j:I

    .line 414
    return-void
.end method

.method private b(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 593
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 595
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 596
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 597
    const-string v4, "componentType"

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v5, "componentType"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 598
    const-string v4, "eventType"

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v5, "eventType"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 599
    const-string v4, "payload"

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    const-string v5, "payload"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 600
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 595
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 602
    :cond_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 604
    :goto_1
    return-object v0

    .line 603
    :catch_0
    move-exception v0

    .line 604
    const-string v0, ""

    goto :goto_1
.end method

.method private b()V
    .locals 6

    .prologue
    .line 481
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/commons/core/d/c;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Begin reporting"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    new-instance v0, Lcom/inmobi/commons/core/d/f;

    invoke-direct {v0}, Lcom/inmobi/commons/core/d/f;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/core/d/c$a;->d:Lcom/inmobi/commons/core/d/f;

    .line 485
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->f()Lcom/inmobi/commons/core/d/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/d/e;->e()J

    move-result-wide v0

    .line 486
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/commons/core/d/c;->d()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Telemetry Event TTL = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    iget-object v2, p0, Lcom/inmobi/commons/core/d/c$a;->d:Lcom/inmobi/commons/core/d/f;

    invoke-virtual {v2, v0, v1}, Lcom/inmobi/commons/core/d/f;->a(J)I

    .line 489
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c$a;->d:Lcom/inmobi/commons/core/d/f;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/d/f;->a()Ljava/util/List;

    move-result-object v0

    .line 490
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 491
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/inmobi/commons/core/d/c$a;->k:Z

    .line 492
    invoke-direct {p0, v0}, Lcom/inmobi/commons/core/d/c$a;->b(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/commons/core/d/c$a;->c:Ljava/lang/String;

    .line 510
    :cond_0
    :goto_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/inmobi/commons/core/d/c$a;->sendEmptyMessage(I)Z

    .line 511
    :goto_1
    return-void

    .line 493
    :cond_1
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c$a;->c:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inmobi/commons/core/d/c$a;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 495
    :cond_2
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c$a;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inmobi/commons/core/d/c$a;->c:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 498
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/commons/core/d/c$a;->k:Z

    .line 499
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c$a;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 500
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c$a;->d:Lcom/inmobi/commons/core/d/f;

    iget v1, p0, Lcom/inmobi/commons/core/d/c$a;->e:I

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/d/f;->a(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/commons/core/d/c$a;->l:Ljava/util/List;

    .line 502
    :cond_4
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c$a;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 503
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/commons/core/d/c;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No events to report"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 504
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/inmobi/commons/core/d/c$a;->sendEmptyMessage(I)Z

    goto :goto_1

    .line 507
    :cond_5
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c$a;->l:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/inmobi/commons/core/d/c$a;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/commons/core/d/c$a;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method private c()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 514
    new-instance v0, Lcom/inmobi/commons/core/utilities/uid/d;

    invoke-static {}, Lcom/inmobi/commons/core/d/c;->f()Lcom/inmobi/commons/core/d/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/core/d/e;->r()Lcom/inmobi/commons/core/configs/a$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/a$a;->a()Ljava/util/HashMap;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/inmobi/commons/core/utilities/uid/d;-><init>(Ljava/util/Map;)V

    .line 515
    new-instance v1, Lcom/inmobi/commons/core/network/NetworkRequest;

    sget-object v2, Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;->POST:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    iget-object v3, p0, Lcom/inmobi/commons/core/d/c$a;->b:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v9, v0}, Lcom/inmobi/commons/core/network/NetworkRequest;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;Ljava/lang/String;ZLcom/inmobi/commons/core/utilities/uid/d;)V

    .line 516
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 517
    iget-boolean v2, p0, Lcom/inmobi/commons/core/d/c$a;->k:Z

    if-eqz v2, :cond_0

    .line 518
    const-string v2, "metric"

    iget-object v3, p0, Lcom/inmobi/commons/core/d/c$a;->c:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 522
    :goto_0
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/commons/core/d/c;->d()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Telemetry Payload: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/inmobi/commons/core/d/c$a;->c:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    invoke-virtual {v1, v0}, Lcom/inmobi/commons/core/network/NetworkRequest;->e(Ljava/util/Map;)V

    .line 525
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 526
    new-instance v0, Lcom/inmobi/commons/core/network/d;

    invoke-direct {v0, v1}, Lcom/inmobi/commons/core/network/d;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest;)V

    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/d;->a()Lcom/inmobi/commons/core/network/c;

    move-result-object v0

    .line 528
    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/c;->a()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 529
    iget v1, p0, Lcom/inmobi/commons/core/d/c$a;->i:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/inmobi/commons/core/d/c$a;->i:I

    .line 531
    iget v1, p0, Lcom/inmobi/commons/core/d/c$a;->i:I

    iget v2, p0, Lcom/inmobi/commons/core/d/c$a;->j:I

    if-le v1, v2, :cond_1

    .line 533
    iput v8, p0, Lcom/inmobi/commons/core/d/c$a;->i:I

    .line 534
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/commons/core/d/c;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to send telemetry events to server: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " . And retry count exhausted. Will Discard Events"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c$a;->l:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 536
    iput-object v11, p0, Lcom/inmobi/commons/core/d/c$a;->c:Ljava/lang/String;

    .line 537
    invoke-virtual {p0, v10}, Lcom/inmobi/commons/core/d/c$a;->sendEmptyMessage(I)Z

    .line 570
    :goto_1
    return-void

    .line 520
    :cond_0
    const-string v2, "telemetry"

    iget-object v3, p0, Lcom/inmobi/commons/core/d/c$a;->c:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 541
    :cond_1
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/commons/core/d/c;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to send telemetry events to server: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/c;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ". Will retry"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c$a;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 543
    iget v0, p0, Lcom/inmobi/commons/core/d/c$a;->g:I

    int-to-long v0, v0

    invoke-virtual {p0, v9, v0, v1}, Lcom/inmobi/commons/core/d/c$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    .line 547
    :cond_2
    sget-object v4, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/commons/core/d/c;->d()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Successfully sent events to server: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/c;->b()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    iput-object v11, p0, Lcom/inmobi/commons/core/d/c$a;->c:Ljava/lang/String;

    .line 549
    iget-object v4, p0, Lcom/inmobi/commons/core/d/c$a;->l:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 551
    :try_start_0
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 552
    const-string v5, "url"

    iget-object v6, p0, Lcom/inmobi/commons/core/d/c$a;->b:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    const-string v5, "latency"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    sub-long v2, v6, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    invoke-virtual {v1}, Lcom/inmobi/commons/core/network/NetworkRequest;->t()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/c;->f()J

    move-result-wide v0

    add-long/2addr v0, v2

    .line 555
    const-string v2, "payloadSize"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v4, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 556
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v0

    const-string v1, "root"

    const-string v2, "TelemetryLatency"

    invoke-virtual {v0, v1, v2, v4}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    :goto_2
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c$a;->d:Lcom/inmobi/commons/core/d/f;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/d/f;->c()I

    move-result v0

    iget v1, p0, Lcom/inmobi/commons/core/d/c$a;->e:I

    if-le v0, v1, :cond_3

    .line 564
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c$a;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 565
    invoke-virtual {p0, v9}, Lcom/inmobi/commons/core/d/c$a;->sendEmptyMessage(I)Z

    goto/16 :goto_1

    .line 557
    :catch_0
    move-exception v0

    .line 558
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/commons/core/d/c;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in submitting telemetry event : ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 559
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 558
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 567
    :cond_3
    invoke-virtual {p0, v10}, Lcom/inmobi/commons/core/d/c$a;->sendEmptyMessage(I)Z

    goto/16 :goto_1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 418
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 421
    :pswitch_0
    :try_start_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/inmobi/commons/core/d/g;

    .line 422
    iget-object v1, p0, Lcom/inmobi/commons/core/d/c$a;->a:Lcom/inmobi/commons/core/d/c;

    invoke-static {v1, v0}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/c;Lcom/inmobi/commons/core/d/g;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 423
    :catch_0
    move-exception v0

    .line 424
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/commons/core/d/c;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SDK encountered unexpected error processing a telemetry event"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 431
    :pswitch_1
    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {p0, v0}, Lcom/inmobi/commons/core/d/c$a;->removeMessages(I)V

    .line 432
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c$a;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    invoke-static {}, Lcom/inmobi/commons/a/a;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/inmobi/commons/core/utilities/d;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 436
    :cond_1
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/commons/core/d/c;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "App not in foreground or No Network available "

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c$a;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 442
    :catch_1
    move-exception v0

    .line 443
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/commons/core/d/c;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SDK encountered unexpected error starting the telemetry component"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 440
    :cond_2
    :try_start_2
    invoke-direct {p0}, Lcom/inmobi/commons/core/d/c$a;->a()V

    .line 441
    invoke-direct {p0}, Lcom/inmobi/commons/core/d/c$a;->b()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 450
    :pswitch_2
    :try_start_3
    invoke-direct {p0}, Lcom/inmobi/commons/core/d/c$a;->c()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 451
    :catch_2
    move-exception v0

    .line 452
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/commons/core/d/c;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SDK encountered unexpected error in sending telemetry events to the server"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 460
    :pswitch_3
    :try_start_4
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c$a;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 461
    const/4 v0, 0x1

    iget v1, p0, Lcom/inmobi/commons/core/d/c$a;->f:I

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/inmobi/commons/core/d/c$a;->sendEmptyMessageDelayed(IJ)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_0

    .line 462
    :catch_3
    move-exception v0

    goto :goto_0

    .line 469
    :pswitch_4
    :try_start_5
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/c;)V

    .line 470
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/core/d/c;->b(Lcom/inmobi/commons/core/d/c;)V

    .line 471
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/core/d/c;->c(Lcom/inmobi/commons/core/d/c;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    .line 472
    :catch_4
    move-exception v0

    .line 473
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/commons/core/d/c;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SDK encountered unexpected error de-initializing telemetry"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 418
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
