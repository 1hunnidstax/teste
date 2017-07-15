.class public Lcom/adjust/sdk/AttributionHandler;
.super Ljava/lang/Object;
.source "AttributionHandler.java"

# interfaces
.implements Lcom/adjust/sdk/IAttributionHandler;


# instance fields
.field private activityHandler:Lcom/adjust/sdk/IActivityHandler;

.field private attributionPackage:Lcom/adjust/sdk/ActivityPackage;

.field private hasListener:Z

.field private logger:Lcom/adjust/sdk/ILogger;

.field private paused:Z

.field private scheduler:Ljava/util/concurrent/ScheduledExecutorService;

.field private timer:Lcom/adjust/sdk/TimerOnce;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/IActivityHandler;Lcom/adjust/sdk/ActivityPackage;ZZ)V
    .locals 3
    .param p1, "activityHandler"    # Lcom/adjust/sdk/IActivityHandler;
    .param p2, "attributionPackage"    # Lcom/adjust/sdk/ActivityPackage;
    .param p3, "startPaused"    # Z
    .param p4, "hasListener"    # Z

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    .line 31
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->logger:Lcom/adjust/sdk/ILogger;

    .line 33
    iget-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 34
    new-instance v0, Lcom/adjust/sdk/TimerOnce;

    iget-object v1, p0, Lcom/adjust/sdk/AttributionHandler;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lcom/adjust/sdk/AttributionHandler$1;

    invoke-direct {v2, p0}, Lcom/adjust/sdk/AttributionHandler$1;-><init>(Lcom/adjust/sdk/AttributionHandler;)V

    invoke-direct {v0, v1, v2}, Lcom/adjust/sdk/TimerOnce;-><init>(Ljava/util/concurrent/ScheduledExecutorService;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->timer:Lcom/adjust/sdk/TimerOnce;

    .line 44
    :goto_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/adjust/sdk/AttributionHandler;->init(Lcom/adjust/sdk/IActivityHandler;Lcom/adjust/sdk/ActivityPackage;ZZ)V

    .line 45
    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v1, "Timer not initialized, attribution handler is disabled"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/adjust/sdk/AttributionHandler;)V
    .locals 0
    .param p0, "x0"    # Lcom/adjust/sdk/AttributionHandler;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/adjust/sdk/AttributionHandler;->getAttributionInternal()V

    return-void
.end method

.method static synthetic access$100(Lcom/adjust/sdk/AttributionHandler;Lorg/json/JSONObject;)V
    .locals 0
    .param p0, "x0"    # Lcom/adjust/sdk/AttributionHandler;
    .param p1, "x1"    # Lorg/json/JSONObject;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/adjust/sdk/AttributionHandler;->checkAttributionInternal(Lorg/json/JSONObject;)V

    return-void
.end method

.method private buildUri(Ljava/lang/String;Ljava/util/Map;)Landroid/net/Uri;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/net/Uri;"
        }
    .end annotation

    .prologue
    .line 147
    .local p2, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    .line 149
    .local v1, "uriBuilder":Landroid/net/Uri$Builder;
    const-string v2, "https"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 150
    const-string v2, "app.adjust.com"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 151
    invoke-virtual {v1, p1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 153
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 154
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 157
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    return-object v2
.end method

.method private checkAttributionInternal(Lorg/json/JSONObject;)V
    .locals 8
    .param p1, "jsonResponse"    # Lorg/json/JSONObject;

    .prologue
    .line 98
    if-nez p1, :cond_0

    .line 117
    :goto_0
    return-void

    .line 100
    :cond_0
    const-string v4, "attribution"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 101
    .local v1, "attributionJson":Lorg/json/JSONObject;
    invoke-static {v1}, Lcom/adjust/sdk/AdjustAttribution;->fromJson(Lorg/json/JSONObject;)Lcom/adjust/sdk/AdjustAttribution;

    move-result-object v0

    .line 103
    .local v0, "attribution":Lcom/adjust/sdk/AdjustAttribution;
    const-string v4, "ask_in"

    const-wide/16 v6, -0x1

    invoke-virtual {p1, v4, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 106
    .local v2, "timerMilliseconds":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    .line 107
    iget-object v4, p0, Lcom/adjust/sdk/AttributionHandler;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    invoke-interface {v4, v0}, Lcom/adjust/sdk/IActivityHandler;->tryUpdateAttribution(Lcom/adjust/sdk/AdjustAttribution;)Z

    .line 109
    iget-object v4, p0, Lcom/adjust/sdk/AttributionHandler;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/adjust/sdk/IActivityHandler;->setAskingAttribution(Z)V

    goto :goto_0

    .line 114
    :cond_1
    iget-object v4, p0, Lcom/adjust/sdk/AttributionHandler;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    const/4 v5, 0x1

    invoke-interface {v4, v5}, Lcom/adjust/sdk/IActivityHandler;->setAskingAttribution(Z)V

    .line 116
    invoke-direct {p0, v2, v3}, Lcom/adjust/sdk/AttributionHandler;->getAttribution(J)V

    goto :goto_0
.end method

.method private getAttribution(J)V
    .locals 5
    .param p1, "delayInMilliseconds"    # J

    .prologue
    .line 85
    iget-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->timer:Lcom/adjust/sdk/TimerOnce;

    invoke-virtual {v0}, Lcom/adjust/sdk/TimerOnce;->getFireIn()J

    move-result-wide v0

    cmp-long v0, v0, p1

    if-lez v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 89
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v1, "Waiting to query attribution in %d milliseconds"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    :cond_1
    iget-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->timer:Lcom/adjust/sdk/TimerOnce;

    invoke-virtual {v0, p1, p2}, Lcom/adjust/sdk/TimerOnce;->startIn(J)V

    goto :goto_0
.end method

.method private getAttributionInternal()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 120
    iget-boolean v3, p0, Lcom/adjust/sdk/AttributionHandler;->hasListener:Z

    if-nez v3, :cond_0

    .line 144
    :goto_0
    return-void

    .line 124
    :cond_0
    iget-boolean v3, p0, Lcom/adjust/sdk/AttributionHandler;->paused:Z

    if-eqz v3, :cond_1

    .line 125
    iget-object v3, p0, Lcom/adjust/sdk/AttributionHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v4, "Attribution handler is paused"

    new-array v5, v7, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/adjust/sdk/ILogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 129
    :cond_1
    iget-object v3, p0, Lcom/adjust/sdk/AttributionHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v4, "%s"

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/adjust/sdk/AttributionHandler;->attributionPackage:Lcom/adjust/sdk/ActivityPackage;

    invoke-virtual {v6}, Lcom/adjust/sdk/ActivityPackage;->getExtendedString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-interface {v3, v4, v5}, Lcom/adjust/sdk/ILogger;->verbose(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    const/4 v2, 0x0

    .line 133
    .local v2, "jsonResponse":Lorg/json/JSONObject;
    :try_start_0
    iget-object v3, p0, Lcom/adjust/sdk/AttributionHandler;->attributionPackage:Lcom/adjust/sdk/ActivityPackage;

    .line 134
    invoke-virtual {v3}, Lcom/adjust/sdk/ActivityPackage;->getPath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/adjust/sdk/AttributionHandler;->attributionPackage:Lcom/adjust/sdk/ActivityPackage;

    invoke-virtual {v4}, Lcom/adjust/sdk/ActivityPackage;->getParameters()Ljava/util/Map;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/adjust/sdk/AttributionHandler;->buildUri(Ljava/lang/String;Ljava/util/Map;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/adjust/sdk/AttributionHandler;->attributionPackage:Lcom/adjust/sdk/ActivityPackage;

    .line 135
    invoke-virtual {v4}, Lcom/adjust/sdk/ActivityPackage;->getClientSdk()Ljava/lang/String;

    move-result-object v4

    .line 133
    invoke-static {v3, v4}, Lcom/adjust/sdk/Util;->createGETHttpsURLConnection(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    .line 137
    .local v0, "connection":Ljavax/net/ssl/HttpsURLConnection;
    invoke-static {v0}, Lcom/adjust/sdk/Util;->readHttpResponse(Ljavax/net/ssl/HttpsURLConnection;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 143
    invoke-direct {p0, v2}, Lcom/adjust/sdk/AttributionHandler;->checkAttributionInternal(Lorg/json/JSONObject;)V

    goto :goto_0

    .line 138
    .end local v0    # "connection":Ljavax/net/ssl/HttpsURLConnection;
    :catch_0
    move-exception v1

    .line 139
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/adjust/sdk/AttributionHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v4, "Failed to get attribution (%s)"

    new-array v5, v8, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-interface {v3, v4, v5}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public checkAttribution(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "jsonResponse"    # Lorg/json/JSONObject;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/adjust/sdk/AttributionHandler;->scheduler:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcom/adjust/sdk/AttributionHandler$2;

    invoke-direct {v1, p0, p1}, Lcom/adjust/sdk/AttributionHandler$2;-><init>(Lcom/adjust/sdk/AttributionHandler;Lorg/json/JSONObject;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 71
    return-void
.end method

.method public getAttribution()V
    .locals 2

    .prologue
    .line 60
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/adjust/sdk/AttributionHandler;->getAttribution(J)V

    .line 61
    return-void
.end method

.method public init(Lcom/adjust/sdk/IActivityHandler;Lcom/adjust/sdk/ActivityPackage;ZZ)V
    .locals 0
    .param p1, "activityHandler"    # Lcom/adjust/sdk/IActivityHandler;
    .param p2, "attributionPackage"    # Lcom/adjust/sdk/ActivityPackage;
    .param p3, "startPaused"    # Z
    .param p4, "hasListener"    # Z

    .prologue
    .line 52
    iput-object p1, p0, Lcom/adjust/sdk/AttributionHandler;->activityHandler:Lcom/adjust/sdk/IActivityHandler;

    .line 53
    iput-object p2, p0, Lcom/adjust/sdk/AttributionHandler;->attributionPackage:Lcom/adjust/sdk/ActivityPackage;

    .line 54
    iput-boolean p3, p0, Lcom/adjust/sdk/AttributionHandler;->paused:Z

    .line 55
    iput-boolean p4, p0, Lcom/adjust/sdk/AttributionHandler;->hasListener:Z

    .line 56
    return-void
.end method

.method public pauseSending()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/adjust/sdk/AttributionHandler;->paused:Z

    .line 76
    return-void
.end method

.method public resumeSending()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/adjust/sdk/AttributionHandler;->paused:Z

    .line 81
    return-void
.end method
