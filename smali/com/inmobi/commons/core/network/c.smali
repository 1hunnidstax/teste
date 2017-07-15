.class public Lcom/inmobi/commons/core/network/c;
.super Ljava/lang/Object;
.source "NetworkResponse.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/inmobi/commons/core/network/NetworkRequest;

.field private c:Ljava/lang/String;

.field private d:[B

.field private e:Lcom/inmobi/commons/core/network/NetworkError;

.field private f:Ljava/util/Map;
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


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/inmobi/commons/core/network/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/core/network/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/inmobi/commons/core/network/NetworkRequest;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/inmobi/commons/core/network/c;->b:Lcom/inmobi/commons/core/network/NetworkRequest;

    .line 19
    return-void
.end method


# virtual methods
.method public a(Lcom/inmobi/commons/core/network/NetworkError;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/inmobi/commons/core/network/c;->e:Lcom/inmobi/commons/core/network/NetworkError;

    .line 69
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/inmobi/commons/core/network/c;->c:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 60
    iput-object p1, p0, Lcom/inmobi/commons/core/network/c;->f:Ljava/util/Map;

    .line 61
    return-void
.end method

.method public a([B)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 47
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 48
    :cond_0
    new-array v0, v2, [B

    iput-object v0, p0, Lcom/inmobi/commons/core/network/c;->d:[B

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_1
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/inmobi/commons/core/network/c;->d:[B

    .line 52
    iget-object v0, p0, Lcom/inmobi/commons/core/network/c;->d:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/inmobi/commons/core/network/c;->e:Lcom/inmobi/commons/core/network/NetworkError;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/inmobi/commons/core/network/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c()[B
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 38
    iget-object v0, p0, Lcom/inmobi/commons/core/network/c;->d:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/commons/core/network/c;->d:[B

    array-length v0, v0

    if-nez v0, :cond_1

    .line 39
    :cond_0
    new-array v0, v3, [B

    .line 43
    :goto_0
    return-object v0

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/inmobi/commons/core/network/c;->d:[B

    array-length v0, v0

    new-array v0, v0, [B

    .line 42
    iget-object v1, p0, Lcom/inmobi/commons/core/network/c;->d:[B

    iget-object v2, p0, Lcom/inmobi/commons/core/network/c;->d:[B

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public d()Ljava/util/Map;
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
    .line 56
    iget-object v0, p0, Lcom/inmobi/commons/core/network/c;->f:Ljava/util/Map;

    return-object v0
.end method

.method public e()Lcom/inmobi/commons/core/network/NetworkError;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/inmobi/commons/core/network/c;->e:Lcom/inmobi/commons/core/network/NetworkError;

    return-object v0
.end method

.method public f()J
    .locals 7

    .prologue
    .line 72
    const-wide/16 v0, 0x0

    .line 75
    :try_start_0
    iget-object v2, p0, Lcom/inmobi/commons/core/network/c;->c:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 81
    :goto_0
    return-wide v0

    .line 76
    :catch_0
    move-exception v2

    .line 77
    sget-object v3, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v4, Lcom/inmobi/commons/core/network/c;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SDK encountered unexpected error in computing response size; "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 79
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-static {v3, v4, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
