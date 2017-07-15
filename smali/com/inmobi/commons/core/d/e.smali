.class Lcom/inmobi/commons/core/d/e;
.super Lcom/inmobi/commons/core/configs/a;
.source "TelemetryConfig.java"


# instance fields
.field private a:Lcom/inmobi/commons/core/d/d;

.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/inmobi/commons/core/configs/a;-><init>()V

    .line 25
    const-string v0, "https://sdkm.w.inmobi.com/metrics/e.asm?v=1&"

    iput-object v0, p0, Lcom/inmobi/commons/core/d/e;->b:Ljava/lang/String;

    .line 26
    const/16 v0, 0x12c

    iput v0, p0, Lcom/inmobi/commons/core/d/e;->c:I

    .line 27
    const/16 v0, 0x3c

    iput v0, p0, Lcom/inmobi/commons/core/d/e;->d:I

    .line 28
    const/16 v0, 0x32

    iput v0, p0, Lcom/inmobi/commons/core/d/e;->e:I

    .line 29
    const/4 v0, 0x3

    iput v0, p0, Lcom/inmobi/commons/core/d/e;->f:I

    .line 30
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/inmobi/commons/core/d/e;->g:I

    .line 31
    const/16 v0, 0xa

    iput v0, p0, Lcom/inmobi/commons/core/d/e;->h:I

    .line 32
    const-wide/32 v0, 0x3f480

    iput-wide v0, p0, Lcom/inmobi/commons/core/d/e;->i:J

    .line 35
    new-instance v0, Lcom/inmobi/commons/core/d/d;

    invoke-direct {v0}, Lcom/inmobi/commons/core/d/d;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/core/d/e;->a:Lcom/inmobi/commons/core/d/d;

    .line 36
    return-void
.end method

.method private a(I)V
    .locals 0

    .prologue
    .line 120
    iput p1, p0, Lcom/inmobi/commons/core/d/e;->c:I

    .line 121
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/inmobi/commons/core/d/e;->b:Ljava/lang/String;

    .line 113
    return-void
.end method

.method private b(I)V
    .locals 0

    .prologue
    .line 124
    iput p1, p0, Lcom/inmobi/commons/core/d/e;->f:I

    .line 125
    return-void
.end method

.method private c(I)V
    .locals 0

    .prologue
    .line 128
    iput p1, p0, Lcom/inmobi/commons/core/d/e;->e:I

    .line 129
    return-void
.end method

.method private d(I)V
    .locals 0

    .prologue
    .line 132
    iput p1, p0, Lcom/inmobi/commons/core/d/e;->g:I

    .line 133
    return-void
.end method

.method private e(I)V
    .locals 0

    .prologue
    .line 136
    iput p1, p0, Lcom/inmobi/commons/core/d/e;->h:I

    .line 137
    return-void
.end method

.method private f(I)V
    .locals 0

    .prologue
    .line 140
    iput p1, p0, Lcom/inmobi/commons/core/d/e;->d:I

    .line 141
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string v0, "telemetry"

    return-object v0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 104
    iput-wide p1, p0, Lcom/inmobi/commons/core/d/e;->i:J

    .line 105
    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/inmobi/commons/core/configs/a;->a(Lorg/json/JSONObject;)V

    .line 63
    const-string v0, "base"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 64
    iget-object v1, p0, Lcom/inmobi/commons/core/d/e;->a:Lcom/inmobi/commons/core/d/d;

    const-string v2, "enabled"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/d;->b(Z)V

    .line 65
    iget-object v1, p0, Lcom/inmobi/commons/core/d/e;->a:Lcom/inmobi/commons/core/d/d;

    const-string v2, "samplingFactor"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/d;->a(I)V

    .line 66
    iget-object v1, p0, Lcom/inmobi/commons/core/d/e;->a:Lcom/inmobi/commons/core/d/d;

    const-string v2, "metricEnabled"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/inmobi/commons/core/d/d;->a(Z)V

    .line 68
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inmobi/commons/core/d/e;->a(Ljava/lang/String;)V

    .line 69
    const-string v0, "processingInterval"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/inmobi/commons/core/d/e;->a(I)V

    .line 70
    const-string v0, "retryInterval"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/inmobi/commons/core/d/e;->f(I)V

    .line 71
    const-string v0, "maxBatchSize"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/inmobi/commons/core/d/e;->c(I)V

    .line 72
    const-string v0, "maxRetryCount"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/inmobi/commons/core/d/e;->b(I)V

    .line 73
    const-string v0, "maxEventsToPersist"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/inmobi/commons/core/d/e;->d(I)V

    .line 74
    const-string v0, "memoryThreshold"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/inmobi/commons/core/d/e;->e(I)V

    .line 75
    const-string v0, "eventTTL"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/commons/core/d/e;->a(J)V

    .line 76
    return-void
.end method

.method public b()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-super {p0}, Lcom/inmobi/commons/core/configs/a;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 82
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 83
    const-string v2, "enabled"

    iget-object v3, p0, Lcom/inmobi/commons/core/d/e;->a:Lcom/inmobi/commons/core/d/d;

    invoke-virtual {v3}, Lcom/inmobi/commons/core/d/d;->b()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 84
    const-string v2, "samplingFactor"

    iget-object v3, p0, Lcom/inmobi/commons/core/d/e;->a:Lcom/inmobi/commons/core/d/d;

    invoke-virtual {v3}, Lcom/inmobi/commons/core/d/d;->c()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 85
    const-string v2, "metricEnabled"

    iget-object v3, p0, Lcom/inmobi/commons/core/d/e;->a:Lcom/inmobi/commons/core/d/d;

    invoke-virtual {v3}, Lcom/inmobi/commons/core/d/d;->d()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 86
    const-string v2, "base"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 88
    const-string v1, "url"

    invoke-virtual {p0}, Lcom/inmobi/commons/core/d/e;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 89
    const-string v1, "processingInterval"

    invoke-virtual {p0}, Lcom/inmobi/commons/core/d/e;->l()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 90
    const-string v1, "retryInterval"

    invoke-virtual {p0}, Lcom/inmobi/commons/core/d/e;->h()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 91
    const-string v1, "maxBatchSize"

    invoke-virtual {p0}, Lcom/inmobi/commons/core/d/e;->j()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 92
    const-string v1, "maxRetryCount"

    invoke-virtual {p0}, Lcom/inmobi/commons/core/d/e;->k()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 93
    const-string v1, "maxEventsToPersist"

    invoke-virtual {p0}, Lcom/inmobi/commons/core/d/e;->m()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 94
    const-string v1, "memoryThreshold"

    invoke-virtual {p0}, Lcom/inmobi/commons/core/d/e;->i()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 95
    const-string v1, "eventTTL"

    invoke-virtual {p0}, Lcom/inmobi/commons/core/d/e;->e()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 96
    return-object v0
.end method

.method public c()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 45
    iget-object v1, p0, Lcom/inmobi/commons/core/d/e;->a:Lcom/inmobi/commons/core/d/d;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/commons/core/d/e;->a:Lcom/inmobi/commons/core/d/d;

    invoke-virtual {v1}, Lcom/inmobi/commons/core/d/d;->c()I

    move-result v1

    if-gez v1, :cond_1

    .line 57
    :cond_0
    :goto_0
    return v0

    .line 49
    :cond_1
    iget-object v1, p0, Lcom/inmobi/commons/core/d/e;->b:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/commons/core/d/e;->b:Ljava/lang/String;

    const-string v2, "http://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/inmobi/commons/core/d/e;->b:Ljava/lang/String;

    const-string v2, "https://"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    :cond_2
    iget v1, p0, Lcom/inmobi/commons/core/d/e;->d:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/inmobi/commons/core/d/e;->c:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/inmobi/commons/core/d/e;->f:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/inmobi/commons/core/d/e;->h:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/inmobi/commons/core/d/e;->e:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/inmobi/commons/core/d/e;->g:I

    if-lez v1, :cond_0

    .line 57
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public d()Lcom/inmobi/commons/core/configs/a;
    .locals 1

    .prologue
    .line 169
    new-instance v0, Lcom/inmobi/commons/core/d/e;

    invoke-direct {v0}, Lcom/inmobi/commons/core/d/e;-><init>()V

    return-object v0
.end method

.method public e()J
    .locals 2

    .prologue
    .line 100
    iget-wide v0, p0, Lcom/inmobi/commons/core/d/e;->i:J

    return-wide v0
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/inmobi/commons/core/d/e;->a:Lcom/inmobi/commons/core/d/d;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/d/d;->b()Z

    move-result v0

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/inmobi/commons/core/d/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/inmobi/commons/core/d/e;->d:I

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/inmobi/commons/core/d/e;->h:I

    return v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 152
    iget v0, p0, Lcom/inmobi/commons/core/d/e;->e:I

    return v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 156
    iget v0, p0, Lcom/inmobi/commons/core/d/e;->f:I

    return v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 160
    iget v0, p0, Lcom/inmobi/commons/core/d/e;->c:I

    return v0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/inmobi/commons/core/d/e;->g:I

    return v0
.end method

.method public n()Lcom/inmobi/commons/core/d/d;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/inmobi/commons/core/d/e;->a:Lcom/inmobi/commons/core/d/d;

    return-object v0
.end method
