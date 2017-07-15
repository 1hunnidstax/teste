.class public abstract Lcom/vungle/publisher/vz;
.super Ljava/lang/Object;
.source "vungle"


# instance fields
.field public c:Lcom/vungle/publisher/gm$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected d:Lcom/vungle/publisher/wn;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(I)Z
    .locals 1

    .prologue
    .line 75
    const/16 v0, 0xc8

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Ljava/net/HttpURLConnection;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lcom/vungle/publisher/vz;->d:Lcom/vungle/publisher/wn;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/wn;->a(Ljava/net/HttpURLConnection;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/vungle/publisher/we;Lcom/vungle/publisher/vy;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 57
    return-void
.end method

.method protected final b(Lcom/vungle/publisher/we;Lcom/vungle/publisher/vy;)V
    .locals 5

    .prologue
    .line 28
    :try_start_0
    iget v0, p2, Lcom/vungle/publisher/vy;->b:I

    invoke-static {v0}, Lcom/vungle/publisher/vz;->a(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/vungle/publisher/vz;->a(Lcom/vungle/publisher/we;Lcom/vungle/publisher/vy;)V
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 51
    :goto_0
    return-void

    .line 33
    :catch_0
    move-exception v0

    .line 34
    :try_start_2
    const-string v1, "VungleNetwork"

    invoke-static {v1, v0}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 35
    const/16 v0, 0x25b

    iput v0, p2, Lcom/vungle/publisher/vy;->b:I

    .line 46
    :cond_0
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/vungle/publisher/vz;->c(Lcom/vungle/publisher/we;Lcom/vungle/publisher/vy;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 48
    :catch_1
    move-exception v0

    .line 49
    iget-object v1, p0, Lcom/vungle/publisher/vz;->c:Lcom/vungle/publisher/gm$a;

    const-string v2, "VungleNetwork"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "error while handling response: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/gm$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1, p2}, Lcom/vungle/publisher/vz;->d(Lcom/vungle/publisher/we;Lcom/vungle/publisher/vy;)V

    goto :goto_0

    .line 37
    :catch_2
    move-exception v0

    .line 38
    :try_start_3
    iget-object v1, p0, Lcom/vungle/publisher/vz;->c:Lcom/vungle/publisher/gm$a;

    const-string v2, "VungleNetwork"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IOException while handling response: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/gm$a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 39
    const/16 v0, 0x258

    iput v0, p2, Lcom/vungle/publisher/vy;->b:I

    goto :goto_1

    .line 41
    :catch_3
    move-exception v0

    .line 42
    iget-object v1, p0, Lcom/vungle/publisher/vz;->c:Lcom/vungle/publisher/gm$a;

    const-string v2, "VungleNetwork"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "JSONException while handling response: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/gm$a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    const/16 v0, 0x25c

    iput v0, p2, Lcom/vungle/publisher/vy;->b:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method protected c(Lcom/vungle/publisher/we;Lcom/vungle/publisher/vy;)V
    .locals 0

    .prologue
    .line 54
    invoke-virtual {p0, p1, p2}, Lcom/vungle/publisher/vz;->d(Lcom/vungle/publisher/we;Lcom/vungle/publisher/vy;)V

    .line 55
    return-void
.end method

.method public d(Lcom/vungle/publisher/we;Lcom/vungle/publisher/vy;)V
    .locals 3

    .prologue
    .line 65
    const-string v0, "VungleNetwork"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/vungle/publisher/we;->a:Lcom/vungle/publisher/vs;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed permanently with response code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/vungle/publisher/vy;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method
