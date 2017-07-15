.class public final Lcom/vungle/publisher/xr;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/aij;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vungle/publisher/aij",
        "<",
        "Lcom/vungle/publisher/vy;",
        "Lcom/vungle/publisher/gg",
        "<*>;",
        "Lcom/vungle/publisher/gg",
        "<*>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/vungle/publisher/vy;Lcom/vungle/publisher/gg;)Lcom/vungle/publisher/gg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/vy;",
            "Lcom/vungle/publisher/gg",
            "<*>;)",
            "Lcom/vungle/publisher/gg",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 35
    :try_start_0
    invoke-static {p0, p1}, Lcom/vungle/publisher/xr;->b(Lcom/vungle/publisher/vy;Lcom/vungle/publisher/gg;)Lcom/vungle/publisher/gg;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 36
    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/vungle/publisher/ahx;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method private static b(Lcom/vungle/publisher/vy;Lcom/vungle/publisher/gg;)Lcom/vungle/publisher/gg;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/vy;",
            "Lcom/vungle/publisher/gg",
            "<*>;)",
            "Lcom/vungle/publisher/gg",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x0

    .line 42
    .line 44
    invoke-interface {p1}, Lcom/vungle/publisher/gg;->g()Ljava/lang/String;

    move-result-object v4

    .line 47
    :try_start_0
    iget-object v5, p0, Lcom/vungle/publisher/vy;->a:Ljava/net/HttpURLConnection;

    .line 48
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    .line 49
    :try_start_1
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 50
    invoke-static {v6}, Lcom/vungle/publisher/qx;->b(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 51
    const-string v1, "VunglePrepare"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "downloading to: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const/16 v1, 0x2000

    new-array v7, v1, [B

    .line 55
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 57
    :goto_0
    :try_start_2
    invoke-virtual {v2, v7}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_2

    .line 58
    add-int/2addr v3, v6

    .line 59
    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8, v6}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    :try_start_3
    new-instance v0, Lcom/vungle/publisher/qt;

    const-string v3, "could not write ad to disk"

    invoke-direct {v0, v3}, Lcom/vungle/publisher/qt;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 84
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v2, :cond_0

    .line 86
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 92
    :cond_0
    :goto_2
    if-eqz v1, :cond_1

    .line 94
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 98
    :cond_1
    :goto_3
    throw v0

    .line 64
    :cond_2
    :try_start_6
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 65
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getContentLength()I

    move-result v5

    .line 66
    const-string v6, "VunglePrepare"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "response ContentLength = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    if-gt v5, v3, :cond_5

    .line 70
    const-string v0, "VunglePrepare"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "download complete: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-interface {p1}, Lcom/vungle/publisher/gg;->t()Lcom/vungle/publisher/el$b;

    move-result-object v0

    sget-object v4, Lcom/vungle/publisher/xr$1;->a:[I

    invoke-virtual {v0}, Lcom/vungle/publisher/el$b;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    :goto_4
    const-string v3, "VunglePrepare"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " downloaded for ad "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lcom/vungle/publisher/gg;->l()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/vungle/publisher/el$a;->b:Lcom/vungle/publisher/el$a;

    invoke-interface {p1, v0}, Lcom/vungle/publisher/gg;->a(Lcom/vungle/publisher/el$a;)V

    invoke-interface {p1}, Lcom/vungle/publisher/gg;->b_()I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v0, v1

    .line 84
    :goto_5
    if-eqz v2, :cond_3

    .line 86
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    .line 92
    :cond_3
    :goto_6
    if-eqz v0, :cond_4

    .line 94
    :try_start_8
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 82
    :cond_4
    :goto_7
    return-object p1

    .line 71
    :pswitch_0
    :try_start_9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Lcom/vungle/publisher/gg;->a(Ljava/lang/Integer;)V

    goto :goto_4

    .line 74
    :cond_5
    const-string v6, "VunglePrepare"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "download size mismatch: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ", expected size: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", actual size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    sget-object v3, Lcom/vungle/publisher/el$a;->d:Lcom/vungle/publisher/el$a;

    invoke-interface {p1, v3}, Lcom/vungle/publisher/gg;->a(Lcom/vungle/publisher/el$a;)V

    .line 76
    invoke-interface {p1}, Lcom/vungle/publisher/gg;->b_()I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    move-object p1, v0

    move-object v0, v1

    .line 78
    goto :goto_5

    .line 80
    :cond_6
    :try_start_a
    const-string v1, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "could not create or directory not writeable: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    move-object p1, v0

    goto :goto_5

    .line 88
    :catch_1
    move-exception v1

    .line 89
    const-string v2, "VunglePrepare"

    const-string v3, "error closing input stream"

    invoke-static {v2, v3, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_6

    .line 96
    :catch_2
    move-exception v0

    .line 97
    const-string v1, "VunglePrepare"

    const-string v2, "error closing output stream"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 88
    :catch_3
    move-exception v2

    .line 89
    const-string v3, "VunglePrepare"

    const-string v4, "error closing input stream"

    invoke-static {v3, v4, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2

    .line 96
    :catch_4
    move-exception v1

    .line 97
    const-string v2, "VunglePrepare"

    const-string v3, "error closing output stream"

    invoke-static {v2, v3, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 84
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v9, v0

    move-object v0, v1

    move-object v1, v9

    goto/16 :goto_1

    :catchall_2
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto/16 :goto_1

    .line 71
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 26
    check-cast p1, Lcom/vungle/publisher/vy;

    check-cast p2, Lcom/vungle/publisher/gg;

    invoke-static {p1, p2}, Lcom/vungle/publisher/xr;->a(Lcom/vungle/publisher/vy;Lcom/vungle/publisher/gg;)Lcom/vungle/publisher/gg;

    move-result-object v0

    return-object v0
.end method
