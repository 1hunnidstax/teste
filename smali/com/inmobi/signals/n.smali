.class public Lcom/inmobi/signals/n;
.super Ljava/lang/Object;
.source "SessionManager.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/inmobi/signals/n;

.field private static c:Ljava/lang/Object;


# instance fields
.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/inmobi/signals/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/signals/n;->a:Ljava/lang/String;

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/inmobi/signals/n;->c:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-wide v0, p0, Lcom/inmobi/signals/n;->d:J

    .line 25
    iput-wide v0, p0, Lcom/inmobi/signals/n;->e:J

    .line 26
    iput-wide v0, p0, Lcom/inmobi/signals/n;->f:J

    .line 27
    iput-wide v0, p0, Lcom/inmobi/signals/n;->g:J

    .line 28
    iput-wide v0, p0, Lcom/inmobi/signals/n;->h:J

    .line 29
    iput-wide v0, p0, Lcom/inmobi/signals/n;->i:J

    .line 47
    return-void
.end method

.method public static a()Lcom/inmobi/signals/n;
    .locals 2

    .prologue
    .line 32
    sget-object v0, Lcom/inmobi/signals/n;->b:Lcom/inmobi/signals/n;

    .line 33
    if-nez v0, :cond_1

    .line 34
    sget-object v1, Lcom/inmobi/signals/n;->c:Ljava/lang/Object;

    monitor-enter v1

    .line 35
    :try_start_0
    sget-object v0, Lcom/inmobi/signals/n;->b:Lcom/inmobi/signals/n;

    .line 36
    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/inmobi/signals/n;

    invoke-direct {v0}, Lcom/inmobi/signals/n;-><init>()V

    sput-object v0, Lcom/inmobi/signals/n;->b:Lcom/inmobi/signals/n;

    .line 38
    sget-object v0, Lcom/inmobi/signals/n;->b:Lcom/inmobi/signals/n;

    .line 40
    :cond_0
    monitor-exit v1

    .line 42
    :cond_1
    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 148
    const-string v0, "totalWifiSentBytes"

    iget-wide v2, p0, Lcom/inmobi/signals/n;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v0, "totalWifiReceivedBytes"

    iget-wide v2, p0, Lcom/inmobi/signals/n;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v0, "totalCarrierSentBytes"

    iget-wide v2, p0, Lcom/inmobi/signals/n;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v0, "totalCarrierReceivedBytes"

    iget-wide v2, p0, Lcom/inmobi/signals/n;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v0, "totalNetworkTime"

    iget-wide v2, p0, Lcom/inmobi/signals/n;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    return-object p1
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 103
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/b;->b()I

    move-result v0

    .line 104
    packed-switch v0, :pswitch_data_0

    .line 113
    :goto_0
    return-void

    .line 106
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/inmobi/signals/n;->e(J)V

    goto :goto_0

    .line 109
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/inmobi/signals/n;->c(J)V

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method b()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 50
    invoke-static {}, Lcom/inmobi/signals/o;->a()Lcom/inmobi/signals/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/signals/o;->e()Lcom/inmobi/signals/p$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/signals/p$b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/f;->a()Lcom/inmobi/commons/core/utilities/info/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inmobi/commons/core/utilities/info/f;->a(Ljava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/f;->a()Lcom/inmobi/commons/core/utilities/info/f;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/info/f;->a(J)V

    .line 54
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/f;->a()Lcom/inmobi/commons/core/utilities/info/f;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Lcom/inmobi/commons/core/utilities/info/f;->b(J)V

    .line 55
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/signals/n;->a:Ljava/lang/String;

    const-string v3, "Session tracking started."

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/inmobi/signals/n;->i:J

    .line 60
    iput-wide v4, p0, Lcom/inmobi/signals/n;->d:J

    .line 61
    iput-wide v4, p0, Lcom/inmobi/signals/n;->e:J

    .line 62
    iput-wide v4, p0, Lcom/inmobi/signals/n;->f:J

    .line 63
    iput-wide v4, p0, Lcom/inmobi/signals/n;->g:J

    .line 64
    iput-wide v4, p0, Lcom/inmobi/signals/n;->h:J

    .line 65
    iput-wide v4, p0, Lcom/inmobi/signals/n;->i:J

    .line 67
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 68
    const-string v2, "sessionId"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v0

    const-string v2, "signals"

    const-string v3, "SDKSessionStarted"

    invoke-virtual {v0, v2, v3, v1}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/signals/n;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in submitting telemetry event : ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 73
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 72
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(J)V
    .locals 1

    .prologue
    .line 116
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/b;->b()I

    move-result v0

    .line 117
    packed-switch v0, :pswitch_data_0

    .line 125
    :goto_0
    return-void

    .line 119
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/inmobi/signals/n;->f(J)V

    goto :goto_0

    .line 122
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/inmobi/signals/n;->d(J)V

    goto :goto_0

    .line 117
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method c()V
    .locals 6

    .prologue
    .line 79
    invoke-static {}, Lcom/inmobi/signals/o;->a()Lcom/inmobi/signals/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/signals/o;->e()Lcom/inmobi/signals/p$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/signals/p$b;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/f;->a()Lcom/inmobi/commons/core/utilities/info/f;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/commons/core/utilities/info/f;->b(J)V

    .line 81
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/signals/n;->a:Ljava/lang/String;

    const-string v2, "Session tracking stopped."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 84
    const-string v1, "sessionId"

    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/f;->a()Lcom/inmobi/commons/core/utilities/info/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/commons/core/utilities/info/f;->c()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    const-string v1, "totalNetworkTime"

    iget-wide v2, p0, Lcom/inmobi/signals/n;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    const-string v1, "sessionDuration"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/inmobi/signals/n;->i:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    const-string v2, "signals"

    const-string v3, "SDKSessionEnded"

    invoke-virtual {v1, v2, v3, v0}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 88
    :catch_0
    move-exception v0

    .line 89
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/signals/n;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in submitting telemetry event : ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 90
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c(J)V
    .locals 3

    .prologue
    .line 128
    iget-wide v0, p0, Lcom/inmobi/signals/n;->d:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/inmobi/signals/n;->d:J

    .line 129
    return-void
.end method

.method d()Lcom/inmobi/commons/core/utilities/info/f;
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Lcom/inmobi/signals/o;->a()Lcom/inmobi/signals/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/signals/o;->e()Lcom/inmobi/signals/p$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/signals/p$b;->i()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    const/4 v0, 0x0

    .line 99
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/f;->a()Lcom/inmobi/commons/core/utilities/info/f;

    move-result-object v0

    goto :goto_0
.end method

.method public d(J)V
    .locals 3

    .prologue
    .line 132
    iget-wide v0, p0, Lcom/inmobi/signals/n;->e:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/inmobi/signals/n;->e:J

    .line 133
    return-void
.end method

.method public e(J)V
    .locals 3

    .prologue
    .line 136
    iget-wide v0, p0, Lcom/inmobi/signals/n;->f:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/inmobi/signals/n;->f:J

    .line 137
    return-void
.end method

.method public f(J)V
    .locals 3

    .prologue
    .line 140
    iget-wide v0, p0, Lcom/inmobi/signals/n;->g:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/inmobi/signals/n;->g:J

    .line 141
    return-void
.end method

.method public g(J)V
    .locals 3

    .prologue
    .line 144
    iget-wide v0, p0, Lcom/inmobi/signals/n;->h:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/inmobi/signals/n;->h:J

    .line 145
    return-void
.end method
