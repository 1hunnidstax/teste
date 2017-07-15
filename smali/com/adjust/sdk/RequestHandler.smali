.class public Lcom/adjust/sdk/RequestHandler;
.super Landroid/os/HandlerThread;
.source "RequestHandler.java"

# interfaces
.implements Lcom/adjust/sdk/IRequestHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/adjust/sdk/RequestHandler$InternalHandler;
    }
.end annotation


# instance fields
.field private internalHandler:Lcom/adjust/sdk/RequestHandler$InternalHandler;

.field private logger:Lcom/adjust/sdk/ILogger;

.field private packageHandler:Lcom/adjust/sdk/IPackageHandler;


# direct methods
.method public constructor <init>(Lcom/adjust/sdk/IPackageHandler;)V
    .locals 2
    .param p1, "packageHandler"    # Lcom/adjust/sdk/IPackageHandler;

    .prologue
    const/4 v1, 0x1

    .line 35
    const-string v0, "Adjust"

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 36
    invoke-virtual {p0, v1}, Lcom/adjust/sdk/RequestHandler;->setDaemon(Z)V

    .line 37
    invoke-virtual {p0}, Lcom/adjust/sdk/RequestHandler;->start()V

    .line 39
    invoke-static {}, Lcom/adjust/sdk/AdjustFactory;->getLogger()Lcom/adjust/sdk/ILogger;

    move-result-object v0

    iput-object v0, p0, Lcom/adjust/sdk/RequestHandler;->logger:Lcom/adjust/sdk/ILogger;

    .line 40
    new-instance v0, Lcom/adjust/sdk/RequestHandler$InternalHandler;

    invoke-virtual {p0}, Lcom/adjust/sdk/RequestHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/adjust/sdk/RequestHandler$InternalHandler;-><init>(Landroid/os/Looper;Lcom/adjust/sdk/RequestHandler;)V

    iput-object v0, p0, Lcom/adjust/sdk/RequestHandler;->internalHandler:Lcom/adjust/sdk/RequestHandler$InternalHandler;

    .line 41
    invoke-virtual {p0, p1}, Lcom/adjust/sdk/RequestHandler;->init(Lcom/adjust/sdk/IPackageHandler;)V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/adjust/sdk/RequestHandler;Lcom/adjust/sdk/ActivityPackage;)V
    .locals 0
    .param p0, "x0"    # Lcom/adjust/sdk/RequestHandler;
    .param p1, "x1"    # Lcom/adjust/sdk/ActivityPackage;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/adjust/sdk/RequestHandler;->sendInternal(Lcom/adjust/sdk/ActivityPackage;)V

    return-void
.end method

.method private closePackage(Lcom/adjust/sdk/ActivityPackage;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "activityPackage"    # Lcom/adjust/sdk/ActivityPackage;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 121
    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getFailureMessage()Ljava/lang/String;

    move-result-object v0

    .line 122
    .local v0, "packageMessage":Ljava/lang/String;
    invoke-direct {p0, p2, p3}, Lcom/adjust/sdk/RequestHandler;->getReasonString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "reasonString":Ljava/lang/String;
    iget-object v2, p0, Lcom/adjust/sdk/RequestHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v3, "%s. (%s) Will retry later"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    iget-object v2, p0, Lcom/adjust/sdk/RequestHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v2}, Lcom/adjust/sdk/IPackageHandler;->closeFirstPackage()V

    .line 126
    return-void
.end method

.method private getReasonString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 138
    if-eqz p2, :cond_0

    .line 139
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v4

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 141
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%s"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private requestFinished(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "jsonResponse"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 110
    if-nez p1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/adjust/sdk/RequestHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IPackageHandler;->closeFirstPackage()V

    .line 117
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/adjust/sdk/RequestHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v0, p1}, Lcom/adjust/sdk/IPackageHandler;->finishedTrackingActivity(Lorg/json/JSONObject;)V

    .line 116
    iget-object v0, p0, Lcom/adjust/sdk/RequestHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v0}, Lcom/adjust/sdk/IPackageHandler;->sendNextPackage()V

    goto :goto_0
.end method

.method private sendInternal(Lcom/adjust/sdk/ActivityPackage;)V
    .locals 6
    .param p1, "activityPackage"    # Lcom/adjust/sdk/ActivityPackage;

    .prologue
    .line 87
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://app.adjust.com"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 92
    .local v3, "targetURL":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getClientSdk()Ljava/lang/String;

    move-result-object v4

    .line 93
    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getParameters()Ljava/util/Map;

    move-result-object v5

    .line 90
    invoke-static {v3, v4, v5}, Lcom/adjust/sdk/Util;->createPOSTHttpsURLConnection(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Ljavax/net/ssl/HttpsURLConnection;

    move-result-object v0

    .line 95
    .local v0, "connection":Ljavax/net/ssl/HttpsURLConnection;
    invoke-static {v0}, Lcom/adjust/sdk/Util;->readHttpResponse(Ljavax/net/ssl/HttpsURLConnection;)Lorg/json/JSONObject;

    move-result-object v2

    .line 97
    .local v2, "jsonResponse":Lorg/json/JSONObject;
    invoke-direct {p0, v2}, Lcom/adjust/sdk/RequestHandler;->requestFinished(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    .line 107
    .end local v0    # "connection":Ljavax/net/ssl/HttpsURLConnection;
    .end local v2    # "jsonResponse":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v1

    .line 99
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string v4, "Failed to encode parameters"

    invoke-direct {p0, p1, v4, v1}, Lcom/adjust/sdk/RequestHandler;->sendNextPackage(Lcom/adjust/sdk/ActivityPackage;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 100
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 101
    .local v1, "e":Ljava/net/SocketTimeoutException;
    const-string v4, "Request timed out"

    invoke-direct {p0, p1, v4, v1}, Lcom/adjust/sdk/RequestHandler;->closePackage(Lcom/adjust/sdk/ActivityPackage;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 102
    .end local v1    # "e":Ljava/net/SocketTimeoutException;
    :catch_2
    move-exception v1

    .line 103
    .local v1, "e":Ljava/io/IOException;
    const-string v4, "Request failed"

    invoke-direct {p0, p1, v4, v1}, Lcom/adjust/sdk/RequestHandler;->closePackage(Lcom/adjust/sdk/ActivityPackage;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 104
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 105
    .local v1, "e":Ljava/lang/Throwable;
    const-string v4, "Runtime exception"

    invoke-direct {p0, p1, v4, v1}, Lcom/adjust/sdk/RequestHandler;->sendNextPackage(Lcom/adjust/sdk/ActivityPackage;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private sendNextPackage(Lcom/adjust/sdk/ActivityPackage;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "activityPackage"    # Lcom/adjust/sdk/ActivityPackage;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 130
    invoke-virtual {p1}, Lcom/adjust/sdk/ActivityPackage;->getFailureMessage()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "failureMessage":Ljava/lang/String;
    invoke-direct {p0, p2, p3}, Lcom/adjust/sdk/RequestHandler;->getReasonString(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    .line 132
    .local v1, "reasonString":Ljava/lang/String;
    iget-object v2, p0, Lcom/adjust/sdk/RequestHandler;->logger:Lcom/adjust/sdk/ILogger;

    const-string v3, "%s. (%s)"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/adjust/sdk/ILogger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    iget-object v2, p0, Lcom/adjust/sdk/RequestHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    invoke-interface {v2}, Lcom/adjust/sdk/IPackageHandler;->sendNextPackage()V

    .line 135
    return-void
.end method


# virtual methods
.method public init(Lcom/adjust/sdk/IPackageHandler;)V
    .locals 0
    .param p1, "packageHandler"    # Lcom/adjust/sdk/IPackageHandler;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/adjust/sdk/RequestHandler;->packageHandler:Lcom/adjust/sdk/IPackageHandler;

    .line 47
    return-void
.end method

.method public sendPackage(Lcom/adjust/sdk/ActivityPackage;)V
    .locals 2
    .param p1, "pack"    # Lcom/adjust/sdk/ActivityPackage;

    .prologue
    .line 51
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 52
    .local v0, "message":Landroid/os/Message;
    const v1, 0x11ad0

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 53
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 54
    iget-object v1, p0, Lcom/adjust/sdk/RequestHandler;->internalHandler:Lcom/adjust/sdk/RequestHandler$InternalHandler;

    invoke-virtual {v1, v0}, Lcom/adjust/sdk/RequestHandler$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 55
    return-void
.end method
