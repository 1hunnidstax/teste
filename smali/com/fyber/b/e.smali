.class public abstract Lcom/fyber/b/e;
.super Lcom/fyber/b/h;
.source "EventNetworkOperation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/b/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/fyber/b/h",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final a:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/fyber/b/e$a;)V
    .locals 1

    .prologue
    .line 25
    iget-object v0, p1, Lcom/fyber/b/e$a;->c:Lcom/fyber/utils/u;

    invoke-direct {p0, v0}, Lcom/fyber/b/h;-><init>(Lcom/fyber/utils/u;)V

    .line 26
    iget-object v0, p1, Lcom/fyber/b/e$a;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/b/e;->a:Ljava/lang/String;

    .line 27
    return-void
.end method


# virtual methods
.method protected a(Lcom/fyber/utils/i;)Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/fyber/b/e;->a_()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "Event communication successful - "

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/fyber/utils/i;->b()I

    move-result v0

    const/16 v3, 0xc8

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const/4 v0, 0x0

    return-object v0

    .line 52
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/io/IOException;)Ljava/lang/Void;
    .locals 3

    .prologue
    .line 46
    invoke-virtual {p0}, Lcom/fyber/b/e;->a_()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "An exception occurred when trying to send the tracking event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const/4 v0, 0x0

    return-object v0
.end method

.method protected a()Z
    .locals 2

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/fyber/b/e;->a_()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/b/e;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const/4 v0, 0x1

    return v0
.end method

.method protected synthetic b(Lcom/fyber/utils/i;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/fyber/b/e;->a(Lcom/fyber/utils/i;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b(Ljava/io/IOException;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0, p1}, Lcom/fyber/b/e;->a(Ljava/io/IOException;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 2

    .prologue
    .line 36
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/Fyber$a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-static {}, Lcom/fyber/Fyber;->getConfigs()Lcom/fyber/Fyber$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fyber/Fyber$a;->a(Ljava/lang/Runnable;)V

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    invoke-virtual {p0}, Lcom/fyber/b/e;->a_()Ljava/lang/String;

    move-result-object v0

    const-string v1, "It appears that Fyber SDK has not been started yet."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
