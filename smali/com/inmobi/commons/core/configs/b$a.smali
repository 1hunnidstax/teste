.class final Lcom/inmobi/commons/core/configs/b$a;
.super Landroid/os/Handler;
.source "ConfigComponent.java"

# interfaces
.implements Lcom/inmobi/commons/core/configs/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/commons/core/configs/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/commons/core/configs/a;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/inmobi/commons/core/configs/a;",
            ">;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/inmobi/commons/core/configs/a;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/concurrent/ExecutorService;


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 1

    .prologue
    .line 223
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 217
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/core/configs/b$a;->a:Ljava/util/List;

    .line 218
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/core/configs/b$a;->b:Ljava/util/Map;

    .line 219
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/core/configs/b$a;->c:Ljava/util/Map;

    .line 224
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/inmobi/commons/core/configs/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 306
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->f()Lcom/inmobi/commons/core/configs/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/g;->f()I

    move-result v5

    .line 307
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->f()Lcom/inmobi/commons/core/configs/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/g;->e()I

    move-result v4

    .line 308
    new-instance v2, Lcom/inmobi/commons/core/utilities/uid/d;

    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->f()Lcom/inmobi/commons/core/configs/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/g;->r()Lcom/inmobi/commons/core/configs/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/a$a;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/utilities/uid/d;-><init>(Ljava/util/Map;)V

    .line 309
    new-instance v0, Lcom/inmobi/commons/core/configs/e;

    move-object v1, p2

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/commons/core/configs/e;-><init>(Ljava/util/Map;Lcom/inmobi/commons/core/utilities/uid/d;Ljava/lang/String;II)V

    .line 311
    new-instance v1, Lcom/inmobi/commons/core/configs/d;

    invoke-direct {v1, p0, v0}, Lcom/inmobi/commons/core/configs/d;-><init>(Lcom/inmobi/commons/core/configs/d$a;Lcom/inmobi/commons/core/configs/e;)V

    .line 312
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/b$a;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 313
    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/commons/core/configs/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 316
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 317
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/core/configs/a;

    .line 318
    iget-object v1, p0, Lcom/inmobi/commons/core/configs/b$a;->b:Ljava/util/Map;

    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->f()Lcom/inmobi/commons/core/configs/g;

    move-result-object v3

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/inmobi/commons/core/configs/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 320
    if-nez v1, :cond_0

    .line 321
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 323
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 324
    iget-object v3, p0, Lcom/inmobi/commons/core/configs/b$a;->b:Ljava/util/Map;

    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->f()Lcom/inmobi/commons/core/configs/g;

    move-result-object v4

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/inmobi/commons/core/configs/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 316
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 326
    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 291
    const/4 v2, 0x0

    .line 293
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/b$a;->b:Ljava/util/Map;

    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->f()Lcom/inmobi/commons/core/configs/g;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/inmobi/commons/core/configs/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/commons/core/configs/b$a;->b:Ljava/util/Map;

    .line 294
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->f()Lcom/inmobi/commons/core/configs/g;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/inmobi/commons/core/configs/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 298
    :goto_0
    iget-object v2, p0, Lcom/inmobi/commons/core/configs/b$a;->c:Ljava/util/Map;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/inmobi/commons/core/configs/b$a;->c:Ljava/util/Map;

    .line 299
    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 302
    :cond_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 282
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/b$a;->d:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/commons/core/configs/b$a;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 283
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/commons/core/configs/b$a;->c:Ljava/util/Map;

    .line 284
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/b$a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 285
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/inmobi/commons/core/configs/b$a;->removeMessages(I)V

    .line 286
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/b$a;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 288
    :cond_0
    return-void
.end method

.method public a(Lcom/inmobi/commons/core/configs/ConfigNetworkResponse$ConfigResponse;)V
    .locals 5

    .prologue
    .line 330
    new-instance v0, Lcom/inmobi/commons/core/configs/c;

    invoke-direct {v0}, Lcom/inmobi/commons/core/configs/c;-><init>()V

    .line 332
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse$ConfigResponse;->d()Z

    move-result v1

    if-nez v1, :cond_1

    .line 333
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse$ConfigResponse;->b()Lcom/inmobi/commons/core/configs/ConfigNetworkResponse$ConfigResponse$ConfigResponseStatus;

    move-result-object v1

    sget-object v2, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse$ConfigResponse$ConfigResponseStatus;->NOT_MODIFIED:Lcom/inmobi/commons/core/configs/ConfigNetworkResponse$ConfigResponse$ConfigResponseStatus;

    if-ne v1, v2, :cond_0

    .line 334
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Config not modified status from server:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse$ConfigResponse;->a()Lcom/inmobi/commons/core/configs/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inmobi/commons/core/configs/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse$ConfigResponse;->a()Lcom/inmobi/commons/core/configs/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/commons/core/configs/c;->a(Ljava/lang/String;J)V

    .line 361
    :goto_0
    return-void

    .line 339
    :cond_0
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse$ConfigResponse;->a()Lcom/inmobi/commons/core/configs/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/configs/c;->a(Lcom/inmobi/commons/core/configs/a;)V

    .line 342
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 343
    const-string v1, "configName"

    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse$ConfigResponse;->a()Lcom/inmobi/commons/core/configs/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/a;->a()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    const-string v1, "latency"

    const v2, 0x7fffffff

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    const-string v2, "root"

    const-string v3, "ConfigFetched"

    invoke-virtual {v1, v2, v3, v0}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 352
    :goto_1
    :try_start_1
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Config cached successfully:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse$ConfigResponse;->a()Lcom/inmobi/commons/core/configs/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Config cached successfully:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse$ConfigResponse;->a()Lcom/inmobi/commons/core/configs/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/a;->b()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse$ConfigResponse;->a()Lcom/inmobi/commons/core/configs/a;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/commons/core/configs/b;->a(Lcom/inmobi/commons/core/configs/a;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 355
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 346
    :catch_1
    move-exception v0

    .line 347
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in submitting telemetry event : ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 348
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 347
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 359
    :cond_1
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->e()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Config fetching failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse$ConfigResponse;->a()Lcom/inmobi/commons/core/configs/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", Error code:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/inmobi/commons/core/configs/ConfigNetworkResponse$ConfigResponse;->c()Lcom/inmobi/commons/core/configs/ConfigError;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/commons/core/configs/ConfigError;->a()Lcom/inmobi/commons/core/configs/ConfigError$ErrorCode;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 365
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/inmobi/commons/core/configs/b$a;->sendEmptyMessage(I)Z

    .line 366
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    .line 228
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 230
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/inmobi/commons/core/configs/a;

    .line 231
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fetch requested for config:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". IsAlreadyScheduled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/a;->a()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/inmobi/commons/core/configs/b$a;->a(Ljava/lang/String;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/inmobi/commons/core/configs/b$a;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 234
    iget-object v1, p0, Lcom/inmobi/commons/core/configs/b$a;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    invoke-virtual {p0, v5}, Lcom/inmobi/commons/core/configs/b$a;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 237
    invoke-virtual {p0, v5}, Lcom/inmobi/commons/core/configs/b$a;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 240
    :cond_1
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Config fetching already in progress:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 245
    :pswitch_1
    const/4 v0, 0x3

    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->f()Lcom/inmobi/commons/core/configs/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/commons/core/configs/g;->g()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-virtual {p0, v0, v2, v3}, Lcom/inmobi/commons/core/configs/b$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 249
    :pswitch_2
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/b$a;->a:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/inmobi/commons/core/configs/b$a;->a(Ljava/util/List;)V

    .line 250
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/b$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 252
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/b$a;->d:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/inmobi/commons/core/configs/b$a;->d:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    :cond_2
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/commons/core/configs/b$a;->d:Ljava/util/concurrent/ExecutorService;

    .line 254
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/inmobi/commons/core/configs/b$a;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 259
    :pswitch_3
    const/4 v0, 0x0

    .line 261
    iget-object v1, p0, Lcom/inmobi/commons/core/configs/b$a;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 262
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/b$a;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    move-object v1, v0

    .line 265
    :goto_1
    if-eqz v1, :cond_3

    .line 266
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iput-object v0, p0, Lcom/inmobi/commons/core/configs/b$a;->c:Ljava/util/Map;

    .line 267
    iget-object v0, p0, Lcom/inmobi/commons/core/configs/b$a;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/inmobi/commons/core/configs/b$a;->c:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/inmobi/commons/core/configs/b$a;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 270
    :cond_3
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Config fetching stopping as no more configs left to fetch."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/inmobi/commons/core/configs/b$a;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 276
    :pswitch_4
    invoke-virtual {p0}, Lcom/inmobi/commons/core/configs/b$a;->a()V

    goto/16 :goto_0

    :cond_4
    move-object v1, v0

    goto :goto_1

    .line 228
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
