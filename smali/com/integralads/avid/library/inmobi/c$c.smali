.class Lcom/integralads/avid/library/inmobi/c$c;
.super Landroid/os/AsyncTask;
.source "AvidLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/integralads/avid/library/inmobi/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/integralads/avid/library/inmobi/c$1;)V
    .locals 0

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/integralads/avid/library/inmobi/c$c;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 98
    aget-object v3, p1, v1

    .line 99
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 100
    const-string v1, "AvidLoader: URL is empty"

    invoke-static {v1}, Lcom/integralads/avid/library/inmobi/f/a;->a(Ljava/lang/String;)V

    .line 131
    :cond_0
    :goto_0
    return-object v0

    .line 106
    :cond_1
    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 108
    invoke-virtual {v1}, Ljava/net/URLConnection;->connect()V

    .line 109
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    :try_start_1
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 113
    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 114
    :goto_1
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    .line 115
    new-instance v6, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v6, v4, v7, v5}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v1, v6}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 118
    :catch_0
    move-exception v1

    move-object v1, v2

    .line 119
    :goto_2
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AvidLoader: something is wrong with the URL \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/integralads/avid/library/inmobi/f/a;->a(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 126
    if-eqz v1, :cond_0

    .line 127
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 129
    :catch_1
    move-exception v1

    .line 130
    const-string v2, "AvidLoader: can not close Stream"

    invoke-static {v2, v1}, Lcom/integralads/avid/library/inmobi/f/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 117
    :cond_2
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v1

    .line 126
    if-eqz v2, :cond_3

    .line 127
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_3
    move-object v0, v1

    .line 131
    goto :goto_0

    .line 129
    :catch_2
    move-exception v1

    .line 130
    const-string v2, "AvidLoader: can not close Stream"

    invoke-static {v2, v1}, Lcom/integralads/avid/library/inmobi/f/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0

    .line 121
    :catch_3
    move-exception v1

    move-object v2, v0

    .line 122
    :goto_3
    :try_start_6
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AvidLoader: IO error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/integralads/avid/library/inmobi/f/a;->a(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 126
    if-eqz v2, :cond_0

    .line 127
    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    .line 129
    :catch_4
    move-exception v1

    .line 130
    const-string v2, "AvidLoader: can not close Stream"

    invoke-static {v2, v1}, Lcom/integralads/avid/library/inmobi/f/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 125
    :catchall_0
    move-exception v1

    move-object v2, v0

    .line 126
    :goto_4
    if-eqz v2, :cond_4

    .line 127
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 131
    :cond_4
    throw v1

    .line 129
    :catch_5
    move-exception v1

    .line 130
    const-string v2, "AvidLoader: can not close Stream"

    invoke-static {v2, v1}, Lcom/integralads/avid/library/inmobi/f/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 125
    :catchall_1
    move-exception v1

    goto :goto_4

    :catchall_2
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_4

    .line 121
    :catch_6
    move-exception v1

    goto :goto_3

    .line 118
    :catch_7
    move-exception v1

    move-object v1, v0

    goto/16 :goto_2
.end method

.method protected a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 138
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 139
    invoke-static {p1}, Lcom/integralads/avid/library/inmobi/a;->a(Ljava/lang/String;)V

    .line 140
    invoke-static {}, Lcom/integralads/avid/library/inmobi/c;->c()Lcom/integralads/avid/library/inmobi/c$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    invoke-static {}, Lcom/integralads/avid/library/inmobi/c;->c()Lcom/integralads/avid/library/inmobi/c$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/integralads/avid/library/inmobi/c$b;->a()V

    .line 146
    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/integralads/avid/library/inmobi/c;->a(Lcom/integralads/avid/library/inmobi/c$c;)Lcom/integralads/avid/library/inmobi/c$c;

    .line 147
    return-void

    .line 143
    :cond_1
    invoke-static {}, Lcom/integralads/avid/library/inmobi/c;->b()Lcom/integralads/avid/library/inmobi/c$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 144
    invoke-static {}, Lcom/integralads/avid/library/inmobi/c;->b()Lcom/integralads/avid/library/inmobi/c$a;

    move-result-object v0

    invoke-static {}, Lcom/integralads/avid/library/inmobi/c;->d()Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/integralads/avid/library/inmobi/c$a;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 94
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/integralads/avid/library/inmobi/c$c;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onCancelled()V
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/integralads/avid/library/inmobi/c;->a(Lcom/integralads/avid/library/inmobi/c$c;)Lcom/integralads/avid/library/inmobi/c$c;

    .line 152
    return-void
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 94
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/integralads/avid/library/inmobi/c$c;->a(Ljava/lang/String;)V

    return-void
.end method
