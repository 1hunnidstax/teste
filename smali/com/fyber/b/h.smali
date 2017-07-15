.class public abstract Lcom/fyber/b/h;
.super Ljava/lang/Object;
.source "NetworkOperation.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Runnable;",
        "Ljava/util/concurrent/Callable",
        "<TV;>;"
    }
.end annotation


# instance fields
.field protected c:Z

.field protected d:Lcom/fyber/utils/u;


# direct methods
.method protected constructor <init>(Lcom/fyber/utils/u;)V
    .locals 1
    .param p1    # Lcom/fyber/utils/u;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/b/h;->c:Z

    .line 27
    iput-object p1, p0, Lcom/fyber/b/h;->d:Lcom/fyber/utils/u;

    .line 28
    return-void
.end method

.method private c()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p0}, Lcom/fyber/b/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/fyber/b/h;->d:Lcom/fyber/utils/u;

    invoke-virtual {v0}, Lcom/fyber/utils/u;->f()Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-virtual {p0}, Lcom/fyber/b/h;->a_()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sending request to "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    invoke-static {v0}, Lcom/fyber/utils/i;->b(Ljava/lang/String;)Lcom/fyber/utils/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/utils/i;->a()Lcom/fyber/utils/b;

    move-result-object v0

    check-cast v0, Lcom/fyber/utils/i;

    .line 72
    invoke-virtual {p0, v0}, Lcom/fyber/b/h;->b(Lcom/fyber/utils/i;)Ljava/lang/Object;

    move-result-object v0

    .line 74
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected a()Z
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract a_()Ljava/lang/String;
.end method

.method protected abstract b(Lcom/fyber/utils/i;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fyber/utils/i;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract b(Ljava/io/IOException;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/IOException;",
            ")TV;"
        }
    .end annotation
.end method

.method public call()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/fyber/b/h;->c:Z

    if-eqz v0, :cond_0

    .line 46
    :try_start_0
    invoke-direct {p0}, Lcom/fyber/b/h;->c()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 52
    :goto_0
    return-object v0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    invoke-virtual {p0}, Lcom/fyber/b/h;->a_()Ljava/lang/String;

    move-result-object v1

    const-string v2, "An error occurred"

    invoke-static {v1, v2, v0}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 49
    invoke-virtual {p0, v0}, Lcom/fyber/b/h;->b(Ljava/io/IOException;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 52
    :cond_0
    invoke-direct {p0}, Lcom/fyber/b/h;->c()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public run()V
    .locals 3

    .prologue
    .line 33
    :try_start_0
    invoke-direct {p0}, Lcom/fyber/b/h;->c()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 40
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    invoke-virtual {p0}, Lcom/fyber/b/h;->a_()Ljava/lang/String;

    move-result-object v1

    const-string v2, "An error occurred"

    invoke-static {v1, v2, v0}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 36
    invoke-virtual {p0, v0}, Lcom/fyber/b/h;->b(Ljava/io/IOException;)Ljava/lang/Object;

    goto :goto_0

    .line 37
    :catch_1
    move-exception v0

    .line 38
    invoke-virtual {p0}, Lcom/fyber/b/h;->a_()Ljava/lang/String;

    move-result-object v1

    const-string v2, "An error occurred"

    invoke-static {v1, v2, v0}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_0
.end method
