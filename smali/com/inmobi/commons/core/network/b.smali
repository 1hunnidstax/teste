.class Lcom/inmobi/commons/core/network/b;
.super Ljava/lang/Object;
.source "NetworkConnection.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/inmobi/commons/core/network/NetworkRequest;

.field private c:Ljava/net/HttpURLConnection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/inmobi/commons/core/network/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/core/network/b;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/inmobi/commons/core/network/NetworkRequest;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/inmobi/commons/core/network/b;->b:Lcom/inmobi/commons/core/network/NetworkRequest;

    .line 35
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 88
    invoke-direct {p0, v0}, Lcom/inmobi/commons/core/network/b;->a(Ljava/net/HttpURLConnection;)V

    .line 89
    return-object v0
.end method

.method private a(Lcom/inmobi/commons/core/network/c;Ljava/io/InputStream;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 184
    iget-object v0, p0, Lcom/inmobi/commons/core/network/b;->b:Lcom/inmobi/commons/core/network/NetworkRequest;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/NetworkRequest;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/commons/core/network/b;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v0

    int-to-long v0, v0

    iget-object v2, p0, Lcom/inmobi/commons/core/network/b;->b:Lcom/inmobi/commons/core/network/NetworkRequest;

    invoke-virtual {v2}, Lcom/inmobi/commons/core/network/NetworkRequest;->g()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 185
    new-instance v0, Lcom/inmobi/commons/core/network/NetworkError;

    sget-object v1, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->RESPONSE_EXCEEDS_SPECIFIED_SIZE_LIMIT:Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    const-string v2, "Response size greater than specified max response size"

    invoke-direct {v0, v1, v2}, Lcom/inmobi/commons/core/network/NetworkError;-><init>(Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/inmobi/commons/core/network/c;->a(Lcom/inmobi/commons/core/network/NetworkError;)V

    .line 215
    :goto_0
    return-void

    .line 187
    :cond_0
    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/inmobi/commons/core/network/b;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getErrorStream()Ljava/io/InputStream;

    move-result-object v0

    .line 188
    :goto_1
    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/d;->a(Ljava/io/InputStream;)[B

    move-result-object v0

    .line 190
    array-length v1, v0

    if-nez v1, :cond_3

    .line 191
    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/inmobi/commons/core/network/c;->a(Ljava/lang/String;)V

    .line 213
    :cond_1
    :goto_2
    iget-object v0, p0, Lcom/inmobi/commons/core/network/b;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/inmobi/commons/core/network/c;->a(Ljava/util/Map;)V

    goto :goto_0

    .line 187
    :cond_2
    iget-object v0, p0, Lcom/inmobi/commons/core/network/b;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_1

    .line 193
    :cond_3
    iget-object v1, p0, Lcom/inmobi/commons/core/network/b;->b:Lcom/inmobi/commons/core/network/NetworkRequest;

    invoke-virtual {v1}, Lcom/inmobi/commons/core/network/NetworkRequest;->r()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 194
    iget-object v1, p0, Lcom/inmobi/commons/core/network/b;->b:Lcom/inmobi/commons/core/network/NetworkRequest;

    invoke-virtual {v1, v0}, Lcom/inmobi/commons/core/network/NetworkRequest;->a([B)[B

    move-result-object v0

    .line 195
    if-nez v0, :cond_4

    .line 196
    new-instance v1, Lcom/inmobi/commons/core/network/NetworkError;

    sget-object v2, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->INVALID_ENCRYPTED_RESPONSE_RECEIVED:Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    const-string v3, "Unable to decrypt the server response."

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/core/network/NetworkError;-><init>(Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/inmobi/commons/core/network/c;->a(Lcom/inmobi/commons/core/network/NetworkError;)V

    .line 201
    :cond_4
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/inmobi/commons/core/network/b;->b:Lcom/inmobi/commons/core/network/NetworkRequest;

    invoke-virtual {v1}, Lcom/inmobi/commons/core/network/NetworkRequest;->s()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 202
    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/d;->a([B)[B

    move-result-object v0

    .line 203
    if-nez v0, :cond_5

    .line 204
    new-instance v1, Lcom/inmobi/commons/core/network/NetworkError;

    sget-object v2, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->GZIP_DECOMPRESSION_FAILED:Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    const-string v3, "Failed to uncompress gzip response"

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/core/network/NetworkError;-><init>(Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/inmobi/commons/core/network/c;->a(Lcom/inmobi/commons/core/network/NetworkError;)V

    .line 208
    :cond_5
    if-eqz v0, :cond_1

    .line 209
    new-instance v1, Ljava/lang/String;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/inmobi/commons/core/network/c;->a(Ljava/lang/String;)V

    .line 210
    invoke-virtual {p1, v0}, Lcom/inmobi/commons/core/network/c;->a([B)V

    goto :goto_2
.end method

.method private a(Ljava/net/HttpURLConnection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/ProtocolException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 93
    iget-object v0, p0, Lcom/inmobi/commons/core/network/b;->b:Lcom/inmobi/commons/core/network/NetworkRequest;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/NetworkRequest;->p()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 94
    iget-object v0, p0, Lcom/inmobi/commons/core/network/b;->b:Lcom/inmobi/commons/core/network/NetworkRequest;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/NetworkRequest;->q()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 95
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 97
    iget-object v0, p0, Lcom/inmobi/commons/core/network/b;->b:Lcom/inmobi/commons/core/network/NetworkRequest;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/NetworkRequest;->j()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/inmobi/commons/core/network/b;->b:Lcom/inmobi/commons/core/network/NetworkRequest;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/NetworkRequest;->j()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 99
    iget-object v1, p0, Lcom/inmobi/commons/core/network/b;->b:Lcom/inmobi/commons/core/network/NetworkRequest;

    invoke-virtual {v1}, Lcom/inmobi/commons/core/network/NetworkRequest;->j()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/inmobi/commons/core/network/b;->b:Lcom/inmobi/commons/core/network/NetworkRequest;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/NetworkRequest;->o()Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    move-result-object v0

    .line 104
    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 105
    sget-object v1, Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;->GET:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    if-eq v0, v1, :cond_1

    .line 106
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 107
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    .line 109
    :cond_1
    return-void
.end method

.method private b()Lcom/inmobi/commons/core/network/c;
    .locals 7

    .prologue
    .line 127
    new-instance v1, Lcom/inmobi/commons/core/network/c;

    iget-object v0, p0, Lcom/inmobi/commons/core/network/b;->b:Lcom/inmobi/commons/core/network/NetworkRequest;

    invoke-direct {v1, v0}, Lcom/inmobi/commons/core/network/c;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest;)V

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/commons/core/network/b;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    .line 131
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/commons/core/network/b;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/inmobi/commons/core/network/b;->b:Lcom/inmobi/commons/core/network/NetworkRequest;

    invoke-virtual {v5}, Lcom/inmobi/commons/core/network/NetworkRequest;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "Response code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 132
    const/4 v3, 0x0

    .line 134
    const/16 v0, 0xc8

    if-ne v2, v0, :cond_0

    .line 135
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0, v1, v3, v0}, Lcom/inmobi/commons/core/network/b;->a(Lcom/inmobi/commons/core/network/c;Ljava/io/InputStream;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 154
    :goto_0
    :try_start_2
    invoke-static {v3}, Lcom/inmobi/commons/core/utilities/d;->a(Ljava/io/Closeable;)V

    .line 155
    iget-object v0, p0, Lcom/inmobi/commons/core/network/b;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 180
    :goto_1
    return-object v1

    .line 137
    :cond_0
    :try_start_3
    invoke-static {v2}, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->fromValue(I)Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    move-result-object v0

    .line 140
    sget-object v4, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->BAD_REQUEST:Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    if-ne v0, v4, :cond_1

    .line 141
    const/4 v2, 0x1

    invoke-direct {p0, v1, v3, v2}, Lcom/inmobi/commons/core/network/b;->a(Lcom/inmobi/commons/core/network/c;Ljava/io/InputStream;Z)V

    .line 143
    invoke-virtual {v1}, Lcom/inmobi/commons/core/network/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/inmobi/commons/core/network/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 144
    new-instance v4, Lcom/inmobi/commons/core/network/NetworkError;

    invoke-direct {v4, v0, v2}, Lcom/inmobi/commons/core/network/NetworkError;-><init>(Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/inmobi/commons/core/network/c;->a(Lcom/inmobi/commons/core/network/NetworkError;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 154
    :catchall_0
    move-exception v0

    :try_start_4
    invoke-static {v3}, Lcom/inmobi/commons/core/utilities/d;->a(Ljava/io/Closeable;)V

    .line 155
    iget-object v2, p0, Lcom/inmobi/commons/core/network/b;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v0
    :try_end_4
    .catch Ljava/net/SocketTimeoutException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 157
    :catch_0
    move-exception v0

    .line 158
    new-instance v0, Lcom/inmobi/commons/core/network/NetworkError;

    sget-object v2, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->HTTP_GATEWAY_TIMEOUT:Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    sget-object v3, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->HTTP_GATEWAY_TIMEOUT:Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    invoke-virtual {v3}, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/inmobi/commons/core/network/NetworkError;-><init>(Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/inmobi/commons/core/network/c;->a(Lcom/inmobi/commons/core/network/NetworkError;)V

    goto :goto_1

    .line 146
    :cond_1
    if-nez v0, :cond_2

    .line 147
    :try_start_5
    sget-object v0, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->UNKNOWN_ERROR:Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    .line 149
    :cond_2
    new-instance v4, Lcom/inmobi/commons/core/network/NetworkError;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HTTP:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v0, v2}, Lcom/inmobi/commons/core/network/NetworkError;-><init>(Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/inmobi/commons/core/network/c;->a(Lcom/inmobi/commons/core/network/NetworkError;)V

    .line 150
    iget-object v0, p0, Lcom/inmobi/commons/core/network/b;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inmobi/commons/core/network/c;->a(Ljava/util/Map;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 159
    :catch_1
    move-exception v0

    .line 160
    new-instance v0, Lcom/inmobi/commons/core/network/NetworkError;

    sget-object v2, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->NETWORK_IO_ERROR:Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    sget-object v3, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->NETWORK_IO_ERROR:Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    invoke-virtual {v3}, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/inmobi/commons/core/network/NetworkError;-><init>(Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/inmobi/commons/core/network/c;->a(Lcom/inmobi/commons/core/network/NetworkError;)V

    goto :goto_1

    .line 161
    :catch_2
    move-exception v0

    .line 162
    new-instance v0, Lcom/inmobi/commons/core/network/NetworkError;

    sget-object v2, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->OUT_OF_MEMORY_ERROR:Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    sget-object v3, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->OUT_OF_MEMORY_ERROR:Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    invoke-virtual {v3}, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/inmobi/commons/core/network/NetworkError;-><init>(Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/inmobi/commons/core/network/c;->a(Lcom/inmobi/commons/core/network/NetworkError;)V

    goto/16 :goto_1

    .line 163
    :catch_3
    move-exception v0

    .line 168
    new-instance v2, Lcom/inmobi/commons/core/network/NetworkError;

    sget-object v3, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->UNKNOWN_ERROR:Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    sget-object v4, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->UNKNOWN_ERROR:Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    invoke-virtual {v4}, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/inmobi/commons/core/network/NetworkError;-><init>(Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/network/c;->a(Lcom/inmobi/commons/core/network/NetworkError;)V

    .line 171
    :try_start_6
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 172
    const-string v3, "type"

    const-string v4, "GenericException"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    const-string v3, "message"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v3

    const-string v4, "root"

    const-string v5, "ExceptionCaught"

    invoke-virtual {v3, v4, v5, v2}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto/16 :goto_1

    .line 175
    :catch_4
    move-exception v2

    .line 176
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/commons/core/network/b;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in submitting telemetry event : ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 177
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private b(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lcom/inmobi/commons/core/network/b;->c:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Length"

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/inmobi/commons/core/network/b;->c:Ljava/net/HttpURLConnection;

    const-string v1, "Content-Type"

    const-string v2, "application/x-www-form-urlencoded"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const/4 v2, 0x0

    .line 119
    :try_start_0
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v0, Ljava/io/OutputStreamWriter;

    iget-object v3, p0, Lcom/inmobi/commons/core/network/b;->c:Ljava/net/HttpURLConnection;

    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :try_start_1
    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 122
    invoke-static {v1}, Lcom/inmobi/commons/core/utilities/d;->a(Ljava/io/Closeable;)V

    .line 124
    return-void

    .line 122
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_0
    invoke-static {v1}, Lcom/inmobi/commons/core/utilities/d;->a(Ljava/io/Closeable;)V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 218
    const/4 v0, 0x0

    .line 220
    if-eqz p1, :cond_0

    .line 221
    const-string v1, "errorMessage"

    .line 223
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 225
    const-string v2, "errorMessage"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    const-string v2, "errorMessage"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 232
    :cond_0
    :goto_0
    return-object v0

    .line 228
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public a()Lcom/inmobi/commons/core/network/c;
    .locals 6

    .prologue
    .line 38
    .line 40
    iget-object v0, p0, Lcom/inmobi/commons/core/network/b;->b:Lcom/inmobi/commons/core/network/NetworkRequest;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/NetworkRequest;->a()V

    .line 42
    invoke-static {}, Lcom/inmobi/commons/core/utilities/d;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 44
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/commons/core/network/b;->b:Lcom/inmobi/commons/core/network/NetworkRequest;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/NetworkRequest;->k()Ljava/lang/String;

    move-result-object v0

    .line 45
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/commons/core/network/b;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0, v0}, Lcom/inmobi/commons/core/network/b;->a(Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/commons/core/network/b;->c:Ljava/net/HttpURLConnection;

    .line 48
    iget-object v0, p0, Lcom/inmobi/commons/core/network/b;->b:Lcom/inmobi/commons/core/network/NetworkRequest;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/NetworkRequest;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/inmobi/commons/core/network/b;->c:Ljava/net/HttpURLConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/inmobi/commons/core/network/b;->b:Lcom/inmobi/commons/core/network/NetworkRequest;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/NetworkRequest;->o()Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    move-result-object v0

    sget-object v1, Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;->POST:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    if-ne v0, v1, :cond_1

    .line 53
    iget-object v0, p0, Lcom/inmobi/commons/core/network/b;->b:Lcom/inmobi/commons/core/network/NetworkRequest;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/NetworkRequest;->m()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inmobi/commons/core/network/b;->b(Ljava/lang/String;)V

    .line 55
    :cond_1
    invoke-direct {p0}, Lcom/inmobi/commons/core/network/b;->b()Lcom/inmobi/commons/core/network/c;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    .line 56
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 57
    new-instance v0, Lcom/inmobi/commons/core/network/c;

    iget-object v2, p0, Lcom/inmobi/commons/core/network/b;->b:Lcom/inmobi/commons/core/network/NetworkRequest;

    invoke-direct {v0, v2}, Lcom/inmobi/commons/core/network/c;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest;)V

    .line 58
    new-instance v2, Lcom/inmobi/commons/core/network/NetworkError;

    sget-object v3, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->NETWORK_IO_ERROR:Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/inmobi/commons/core/network/NetworkError;-><init>(Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/inmobi/commons/core/network/c;->a(Lcom/inmobi/commons/core/network/NetworkError;)V

    goto :goto_0

    .line 59
    :catch_1
    move-exception v0

    .line 60
    new-instance v0, Lcom/inmobi/commons/core/network/c;

    iget-object v1, p0, Lcom/inmobi/commons/core/network/b;->b:Lcom/inmobi/commons/core/network/NetworkRequest;

    invoke-direct {v0, v1}, Lcom/inmobi/commons/core/network/c;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest;)V

    .line 61
    new-instance v1, Lcom/inmobi/commons/core/network/NetworkError;

    sget-object v2, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->BAD_REQUEST:Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The URL is malformed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->BAD_REQUEST:Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    invoke-virtual {v4}, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/core/network/NetworkError;-><init>(Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/network/c;->a(Lcom/inmobi/commons/core/network/NetworkError;)V

    goto :goto_0

    .line 62
    :catch_2
    move-exception v0

    move-object v1, v0

    .line 63
    new-instance v0, Lcom/inmobi/commons/core/network/c;

    iget-object v2, p0, Lcom/inmobi/commons/core/network/b;->b:Lcom/inmobi/commons/core/network/NetworkRequest;

    invoke-direct {v0, v2}, Lcom/inmobi/commons/core/network/c;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest;)V

    .line 64
    new-instance v2, Lcom/inmobi/commons/core/network/NetworkError;

    sget-object v3, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->UNKNOWN_ERROR:Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    invoke-virtual {v1}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/inmobi/commons/core/network/NetworkError;-><init>(Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/inmobi/commons/core/network/c;->a(Lcom/inmobi/commons/core/network/NetworkError;)V

    .line 68
    :try_start_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 69
    const-string v3, "type"

    const-string v4, "GenericException"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const-string v3, "message"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v3

    const-string v4, "root"

    const-string v5, "ExceptionCaught"

    invoke-virtual {v3, v4, v5, v2}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto/16 :goto_0

    .line 72
    :catch_3
    move-exception v2

    .line 73
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/commons/core/network/b;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in submitting telemetry event : ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 74
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 78
    :cond_2
    new-instance v0, Lcom/inmobi/commons/core/network/c;

    iget-object v1, p0, Lcom/inmobi/commons/core/network/b;->b:Lcom/inmobi/commons/core/network/NetworkRequest;

    invoke-direct {v0, v1}, Lcom/inmobi/commons/core/network/c;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest;)V

    .line 79
    new-instance v1, Lcom/inmobi/commons/core/network/NetworkError;

    sget-object v2, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->NETWORK_UNAVAILABLE_ERROR:Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    const-string v3, "Network not reachable currently. Please try again."

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/core/network/NetworkError;-><init>(Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/network/c;->a(Lcom/inmobi/commons/core/network/NetworkError;)V

    goto/16 :goto_0
.end method
