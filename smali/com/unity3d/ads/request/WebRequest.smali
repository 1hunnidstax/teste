.class public Lcom/unity3d/ads/request/WebRequest;
.super Ljava/lang/Object;
.source "WebRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/ads/request/WebRequest$RequestType;
    }
.end annotation


# instance fields
.field private _body:Ljava/lang/String;

.field private _canceled:Z

.field private _connectTimeout:I

.field private _contentLength:J

.field private _headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private _progressListener:Lcom/unity3d/ads/request/IWebRequestProgressListener;

.field private _readTimeout:I

.field private _requestType:Ljava/lang/String;

.field private _responseCode:I

.field private _responseHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private _url:Ljava/net/URL;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "requestType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    const/16 v4, 0x7530

    .line 42
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/unity3d/ads/request/WebRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;II)V

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;II)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "requestType"    # Ljava/lang/String;
    .param p4, "connectTimeout"    # I
    .param p5, "readTimeout"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 45
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-object v0, Lcom/unity3d/ads/request/WebRequest$RequestType;->GET:Lcom/unity3d/ads/request/WebRequest$RequestType;

    invoke-virtual {v0}, Lcom/unity3d/ads/request/WebRequest$RequestType;->name()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/request/WebRequest;->_requestType:Ljava/lang/String;

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Lcom/unity3d/ads/request/WebRequest;->_responseCode:I

    .line 27
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/unity3d/ads/request/WebRequest;->_contentLength:J

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unity3d/ads/request/WebRequest;->_canceled:Z

    .line 46
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unity3d/ads/request/WebRequest;->_url:Ljava/net/URL;

    .line 47
    iput-object p2, p0, Lcom/unity3d/ads/request/WebRequest;->_requestType:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/unity3d/ads/request/WebRequest;->_headers:Ljava/util/Map;

    .line 49
    iput p4, p0, Lcom/unity3d/ads/request/WebRequest;->_connectTimeout:I

    .line 50
    iput p5, p0, Lcom/unity3d/ads/request/WebRequest;->_readTimeout:I

    .line 51
    return-void
.end method

.method private getHttpUrlConnectionWithHeaders()Ljava/net/HttpURLConnection;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    invoke-virtual {p0}, Lcom/unity3d/ads/request/WebRequest;->getUrl()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "https://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 207
    invoke-virtual {p0}, Lcom/unity3d/ads/request/WebRequest;->getUrl()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/HttpsURLConnection;

    .line 213
    .local v0, "connection":Ljava/net/HttpURLConnection;
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 214
    invoke-virtual {p0}, Lcom/unity3d/ads/request/WebRequest;->getConnectTimeout()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 215
    invoke-virtual {p0}, Lcom/unity3d/ads/request/WebRequest;->getReadTimeout()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 216
    invoke-virtual {p0}, Lcom/unity3d/ads/request/WebRequest;->getRequestType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0}, Lcom/unity3d/ads/request/WebRequest;->getHeaders()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/unity3d/ads/request/WebRequest;->getHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 219
    invoke-virtual {p0}, Lcom/unity3d/ads/request/WebRequest;->getHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 220
    .local v1, "k":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/unity3d/ads/request/WebRequest;->getHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 221
    .local v2, "value":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting header: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V

    .line 222
    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 210
    .end local v0    # "connection":Ljava/net/HttpURLConnection;
    .end local v1    # "k":Ljava/lang/String;
    .end local v2    # "value":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lcom/unity3d/ads/request/WebRequest;->getUrl()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .restart local v0    # "connection":Ljava/net/HttpURLConnection;
    goto/16 :goto_0

    .line 227
    :cond_2
    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unity3d/ads/request/WebRequest;->_canceled:Z

    .line 55
    return-void
.end method

.method public getBody()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/unity3d/ads/request/WebRequest;->_body:Ljava/lang/String;

    return-object v0
.end method

.method public getConnectTimeout()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/unity3d/ads/request/WebRequest;->_connectTimeout:I

    return v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 97
    iget-wide v0, p0, Lcom/unity3d/ads/request/WebRequest;->_contentLength:J

    return-wide v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 90
    iget-object v0, p0, Lcom/unity3d/ads/request/WebRequest;->_headers:Ljava/util/Map;

    return-object v0
.end method

.method public getQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/unity3d/ads/request/WebRequest;->_url:Ljava/net/URL;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/unity3d/ads/request/WebRequest;->_url:Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->getQuery()Ljava/lang/String;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getReadTimeout()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/unity3d/ads/request/WebRequest;->_readTimeout:I

    return v0
.end method

.method public getRequestType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/unity3d/ads/request/WebRequest;->_requestType:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/unity3d/ads/request/WebRequest;->_responseCode:I

    return v0
.end method

.method public getResponseHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/unity3d/ads/request/WebRequest;->_responseHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getUrl()Ljava/net/URL;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/unity3d/ads/request/WebRequest;->_url:Ljava/net/URL;

    return-object v0
.end method

.method public isCanceled()Z
    .locals 1

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/unity3d/ads/request/WebRequest;->_canceled:Z

    return v0
.end method

.method public makeRequest()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 198
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 199
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, v0}, Lcom/unity3d/ads/request/WebRequest;->makeStreamRequest(Ljava/io/OutputStream;)J

    .line 200
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method public makeStreamRequest(Ljava/io/OutputStream;)J
    .locals 14
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 120
    invoke-direct {p0}, Lcom/unity3d/ads/request/WebRequest;->getHttpUrlConnectionWithHeaders()Ljava/net/HttpURLConnection;

    move-result-object v8

    .line 121
    .local v8, "connection":Ljava/net/HttpURLConnection;
    invoke-virtual {v8, v4}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 123
    invoke-virtual {p0}, Lcom/unity3d/ads/request/WebRequest;->getRequestType()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/unity3d/ads/request/WebRequest$RequestType;->POST:Lcom/unity3d/ads/request/WebRequest$RequestType;

    invoke-virtual {v1}, Lcom/unity3d/ads/request/WebRequest$RequestType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v8, v4}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 125
    const/4 v11, 0x0

    .line 128
    .local v11, "pout":Ljava/io/PrintWriter;
    :try_start_0
    new-instance v12, Ljava/io/PrintWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    const-string v4, "UTF-8"

    invoke-direct {v0, v1, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {v12, v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    .end local v11    # "pout":Ljava/io/PrintWriter;
    .local v12, "pout":Ljava/io/PrintWriter;
    :try_start_1
    invoke-virtual {p0}, Lcom/unity3d/ads/request/WebRequest;->getBody()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 130
    invoke-virtual {p0}, Lcom/unity3d/ads/request/WebRequest;->getQuery()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 136
    :goto_0
    invoke-virtual {v12}, Ljava/io/PrintWriter;->flush()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 144
    if-eqz v12, :cond_0

    .line 145
    :try_start_2
    invoke-virtual {v12}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 156
    .end local v12    # "pout":Ljava/io/PrintWriter;
    :cond_0
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    iput v0, p0, Lcom/unity3d/ads/request/WebRequest;->_responseCode:I

    .line 157
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/unity3d/ads/request/WebRequest;->_contentLength:J

    .line 159
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 160
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/unity3d/ads/request/WebRequest;->_responseHeaders:Ljava/util/Map;

    .line 165
    :cond_1
    :try_start_3
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    move-result-object v10

    .line 173
    .local v10, "input":Ljava/io/InputStream;
    :cond_2
    iget-object v0, p0, Lcom/unity3d/ads/request/WebRequest;->_progressListener:Lcom/unity3d/ads/request/IWebRequestProgressListener;

    if-eqz v0, :cond_3

    .line 174
    iget-object v0, p0, Lcom/unity3d/ads/request/WebRequest;->_progressListener:Lcom/unity3d/ads/request/IWebRequestProgressListener;

    invoke-virtual {p0}, Lcom/unity3d/ads/request/WebRequest;->getUrl()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v2, p0, Lcom/unity3d/ads/request/WebRequest;->_contentLength:J

    iget v4, p0, Lcom/unity3d/ads/request/WebRequest;->_responseCode:I

    iget-object v5, p0, Lcom/unity3d/ads/request/WebRequest;->_responseHeaders:Ljava/util/Map;

    invoke-interface/range {v0 .. v5}, Lcom/unity3d/ads/request/IWebRequestProgressListener;->onRequestStart(Ljava/lang/String;JILjava/util/Map;)V

    .line 177
    :cond_3
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-direct {v6, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 179
    .local v6, "binput":Ljava/io/BufferedInputStream;
    const-wide/16 v2, 0x0

    .line 180
    .local v2, "total":J
    const/16 v0, 0x1000

    new-array v13, v0, [B

    .line 182
    .local v13, "readTarget":[B
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/unity3d/ads/request/WebRequest;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {v6, v13}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v7

    .local v7, "bytesRead":I
    const/4 v0, -0x1

    if-eq v7, v0, :cond_7

    .line 183
    const/4 v0, 0x0

    invoke-virtual {p1, v13, v0, v7}, Ljava/io/OutputStream;->write([BII)V

    .line 184
    int-to-long v0, v7

    add-long/2addr v2, v0

    .line 186
    iget-object v0, p0, Lcom/unity3d/ads/request/WebRequest;->_progressListener:Lcom/unity3d/ads/request/IWebRequestProgressListener;

    if-eqz v0, :cond_4

    .line 187
    iget-object v0, p0, Lcom/unity3d/ads/request/WebRequest;->_progressListener:Lcom/unity3d/ads/request/IWebRequestProgressListener;

    invoke-virtual {p0}, Lcom/unity3d/ads/request/WebRequest;->getUrl()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    iget-wide v4, p0, Lcom/unity3d/ads/request/WebRequest;->_contentLength:J

    invoke-interface/range {v0 .. v5}, Lcom/unity3d/ads/request/IWebRequestProgressListener;->onRequestProgress(Ljava/lang/String;JJ)V

    goto :goto_1

    .line 133
    .end local v2    # "total":J
    .end local v6    # "binput":Ljava/io/BufferedInputStream;
    .end local v7    # "bytesRead":I
    .end local v10    # "input":Ljava/io/InputStream;
    .end local v13    # "readTarget":[B
    .restart local v12    # "pout":Ljava/io/PrintWriter;
    :cond_5
    :try_start_4
    invoke-virtual {p0}, Lcom/unity3d/ads/request/WebRequest;->getBody()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    .line 138
    :catch_0
    move-exception v9

    move-object v11, v12

    .line 139
    .end local v12    # "pout":Ljava/io/PrintWriter;
    .local v9, "e":Ljava/lang/Exception;
    .restart local v11    # "pout":Ljava/io/PrintWriter;
    :goto_2
    :try_start_5
    const-string v0, "Error while writing POST params"

    invoke-static {v0, v9}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 140
    throw v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 143
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    .line 144
    :goto_3
    if-eqz v11, :cond_6

    .line 145
    :try_start_6
    invoke-virtual {v11}, Ljava/io/PrintWriter;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 150
    :cond_6
    throw v0

    .line 148
    .end local v11    # "pout":Ljava/io/PrintWriter;
    .restart local v12    # "pout":Ljava/io/PrintWriter;
    :catch_1
    move-exception v9

    .line 149
    .restart local v9    # "e":Ljava/lang/Exception;
    const-string v0, "Error closing writer"

    invoke-static {v0, v9}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 150
    throw v9

    .line 148
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v12    # "pout":Ljava/io/PrintWriter;
    .restart local v11    # "pout":Ljava/io/PrintWriter;
    :catch_2
    move-exception v9

    .line 149
    .restart local v9    # "e":Ljava/lang/Exception;
    const-string v0, "Error closing writer"

    invoke-static {v0, v9}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 150
    throw v9

    .line 166
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v11    # "pout":Ljava/io/PrintWriter;
    :catch_3
    move-exception v9

    .line 167
    .local v9, "e":Ljava/io/IOException;
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v10

    .line 168
    .restart local v10    # "input":Ljava/io/InputStream;
    if-nez v10, :cond_2

    .line 169
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Can\'t open error stream"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 191
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v2    # "total":J
    .restart local v6    # "binput":Ljava/io/BufferedInputStream;
    .restart local v13    # "readTarget":[B
    :cond_7
    invoke-virtual {v8}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 192
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    .line 194
    return-wide v2

    .line 143
    .end local v2    # "total":J
    .end local v6    # "binput":Ljava/io/BufferedInputStream;
    .end local v10    # "input":Ljava/io/InputStream;
    .end local v13    # "readTarget":[B
    .restart local v12    # "pout":Ljava/io/PrintWriter;
    :catchall_1
    move-exception v0

    move-object v11, v12

    .end local v12    # "pout":Ljava/io/PrintWriter;
    .restart local v11    # "pout":Ljava/io/PrintWriter;
    goto :goto_3

    .line 138
    :catch_4
    move-exception v9

    goto :goto_2
.end method

.method public setBody(Ljava/lang/String;)V
    .locals 0
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/unity3d/ads/request/WebRequest;->_body:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setConnectTimeout(I)V
    .locals 0
    .param p1, "timeout"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/unity3d/ads/request/WebRequest;->_connectTimeout:I

    .line 105
    return-void
.end method

.method public setProgressListener(Lcom/unity3d/ads/request/IWebRequestProgressListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/unity3d/ads/request/IWebRequestProgressListener;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/unity3d/ads/request/WebRequest;->_progressListener:Lcom/unity3d/ads/request/IWebRequestProgressListener;

    .line 117
    return-void
.end method

.method public setReadTimeout(I)V
    .locals 0
    .param p1, "readTimeout"    # I

    .prologue
    .line 112
    iput p1, p0, Lcom/unity3d/ads/request/WebRequest;->_readTimeout:I

    .line 113
    return-void
.end method
