.class Lcom/inmobi/signals/j$1;
.super Ljava/lang/Object;
.source "IceNetworkClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/signals/j;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/signals/j;


# direct methods
.method constructor <init>(Lcom/inmobi/signals/j;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/inmobi/signals/j$1;->a:Lcom/inmobi/signals/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 34
    const/4 v0, 0x0

    .line 35
    const-wide/16 v2, 0x0

    .line 36
    :goto_0
    iget-object v1, p0, Lcom/inmobi/signals/j$1;->a:Lcom/inmobi/signals/j;

    invoke-static {v1}, Lcom/inmobi/signals/j;->a(Lcom/inmobi/signals/j;)Lcom/inmobi/signals/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/signals/k;->b()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 37
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/signals/j;->b()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Attempting to send samples to server."

    invoke-static {v1, v4, v5}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 40
    new-instance v1, Lcom/inmobi/commons/core/network/d;

    iget-object v6, p0, Lcom/inmobi/signals/j$1;->a:Lcom/inmobi/signals/j;

    invoke-static {v6}, Lcom/inmobi/signals/j;->a(Lcom/inmobi/signals/j;)Lcom/inmobi/signals/k;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/inmobi/commons/core/network/d;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest;)V

    .line 41
    invoke-virtual {v1}, Lcom/inmobi/commons/core/network/d;->a()Lcom/inmobi/commons/core/network/c;

    move-result-object v6

    .line 44
    :try_start_0
    invoke-static {}, Lcom/inmobi/signals/n;->a()Lcom/inmobi/signals/n;

    move-result-object v1

    iget-object v7, p0, Lcom/inmobi/signals/j$1;->a:Lcom/inmobi/signals/j;

    invoke-static {v7}, Lcom/inmobi/signals/j;->a(Lcom/inmobi/signals/j;)Lcom/inmobi/signals/k;

    move-result-object v7

    invoke-virtual {v7}, Lcom/inmobi/signals/k;->t()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lcom/inmobi/signals/n;->a(J)V

    .line 45
    invoke-static {}, Lcom/inmobi/signals/n;->a()Lcom/inmobi/signals/n;

    move-result-object v1

    invoke-virtual {v6}, Lcom/inmobi/commons/core/network/c;->f()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lcom/inmobi/signals/n;->b(J)V

    .line 46
    invoke-static {}, Lcom/inmobi/signals/n;->a()Lcom/inmobi/signals/n;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v4, v8, v4

    invoke-virtual {v1, v4, v5}, Lcom/inmobi/signals/n;->g(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_1
    invoke-virtual {v6}, Lcom/inmobi/commons/core/network/c;->a()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 53
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/signals/j;->b()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Sending samples to server failed."

    invoke-static {v1, v4, v5}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    add-int/lit8 v0, v0, 0x1

    .line 56
    iget-object v1, p0, Lcom/inmobi/signals/j$1;->a:Lcom/inmobi/signals/j;

    invoke-static {v1}, Lcom/inmobi/signals/j;->a(Lcom/inmobi/signals/j;)Lcom/inmobi/signals/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/signals/k;->b()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 58
    :try_start_1
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/core/d/g;

    const-string v2, "signals"

    const-string v3, "RetryCountExceeded"

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/core/d/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 94
    :cond_0
    :goto_2
    return-void

    .line 47
    :catch_0
    move-exception v1

    .line 48
    sget-object v4, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/signals/j;->b()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Error in setting request-response data size. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v5, v1}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 59
    :catch_1
    move-exception v0

    .line 60
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/signals/j;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in submitting telemetry event : ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 61
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 66
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/inmobi/signals/j$1;->a:Lcom/inmobi/signals/j;

    invoke-static {v1}, Lcom/inmobi/signals/j;->a(Lcom/inmobi/signals/j;)Lcom/inmobi/signals/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/signals/k;->c()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto/16 :goto_0

    .line 67
    :catch_2
    move-exception v1

    .line 68
    sget-object v4, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/signals/j;->b()Ljava/lang/String;

    move-result-object v5

    const-string v6, "User data network client interrupted while sleeping."

    invoke-static {v4, v5, v6, v1}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 71
    :cond_2
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/signals/j;->b()Ljava/lang/String;

    move-result-object v1

    const-string v4, "Sending samples to server succeeded."

    invoke-static {v0, v1, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :try_start_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 75
    const-string v1, "url"

    iget-object v4, p0, Lcom/inmobi/signals/j$1;->a:Lcom/inmobi/signals/j;

    invoke-static {v4}, Lcom/inmobi/signals/j;->a(Lcom/inmobi/signals/j;)Lcom/inmobi/signals/k;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inmobi/signals/k;->i()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    const-string v1, "latency"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    iget-object v1, p0, Lcom/inmobi/signals/j$1;->a:Lcom/inmobi/signals/j;

    invoke-static {v1}, Lcom/inmobi/signals/j;->a(Lcom/inmobi/signals/j;)Lcom/inmobi/signals/k;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/signals/k;->t()J

    move-result-wide v2

    invoke-virtual {v6}, Lcom/inmobi/commons/core/network/c;->f()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 78
    const-string v1, "payloadSize"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    const-string v2, "signals"

    const-string v3, "NICElatency"

    invoke-virtual {v1, v2, v3, v0}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 82
    const-string v1, "sessionId"

    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/f;->a()Lcom/inmobi/commons/core/utilities/info/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/commons/core/utilities/info/f;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-static {}, Lcom/inmobi/signals/n;->a()Lcom/inmobi/signals/n;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inmobi/signals/n;->a(Ljava/util/Map;)Ljava/util/Map;

    .line 84
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    const-string v2, "signals"

    const-string v3, "SDKNetworkStats"

    invoke-virtual {v1, v2, v3, v0}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_2

    .line 85
    :catch_3
    move-exception v0

    .line 86
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/signals/j;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in submitting telemetry event : ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 87
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method
