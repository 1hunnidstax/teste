.class Lcom/inmobi/commons/core/network/a$1;
.super Ljava/lang/Object;
.source "AsyncNetworkTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/commons/core/network/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/commons/core/network/a;


# direct methods
.method constructor <init>(Lcom/inmobi/commons/core/network/a;)V
    .locals 0

    .prologue
    .line 17
    iput-object p1, p0, Lcom/inmobi/commons/core/network/a$1;->a:Lcom/inmobi/commons/core/network/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 21
    :try_start_0
    new-instance v0, Lcom/inmobi/commons/core/network/b;

    iget-object v1, p0, Lcom/inmobi/commons/core/network/a$1;->a:Lcom/inmobi/commons/core/network/a;

    invoke-static {v1}, Lcom/inmobi/commons/core/network/a;->a(Lcom/inmobi/commons/core/network/a;)Lcom/inmobi/commons/core/network/NetworkRequest;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/inmobi/commons/core/network/b;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest;)V

    .line 22
    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/b;->a()Lcom/inmobi/commons/core/network/c;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/c;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 25
    iget-object v1, p0, Lcom/inmobi/commons/core/network/a$1;->a:Lcom/inmobi/commons/core/network/a;

    invoke-static {v1}, Lcom/inmobi/commons/core/network/a;->b(Lcom/inmobi/commons/core/network/a;)Lcom/inmobi/commons/core/network/a$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/inmobi/commons/core/network/a$a;->b(Lcom/inmobi/commons/core/network/c;)V

    .line 38
    :goto_0
    return-void

    .line 27
    :cond_0
    iget-object v1, p0, Lcom/inmobi/commons/core/network/a$1;->a:Lcom/inmobi/commons/core/network/a;

    invoke-static {v1}, Lcom/inmobi/commons/core/network/a;->b(Lcom/inmobi/commons/core/network/a;)Lcom/inmobi/commons/core/network/a$a;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/inmobi/commons/core/network/a$a;->a(Lcom/inmobi/commons/core/network/c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/commons/core/network/a;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Network request failed with unexpected error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 31
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 30
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    new-instance v0, Lcom/inmobi/commons/core/network/NetworkError;

    sget-object v1, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->UNKNOWN_ERROR:Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    const-string v2, "Network request failed with unknown error"

    invoke-direct {v0, v1, v2}, Lcom/inmobi/commons/core/network/NetworkError;-><init>(Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;Ljava/lang/String;)V

    .line 34
    new-instance v1, Lcom/inmobi/commons/core/network/c;

    iget-object v2, p0, Lcom/inmobi/commons/core/network/a$1;->a:Lcom/inmobi/commons/core/network/a;

    invoke-static {v2}, Lcom/inmobi/commons/core/network/a;->a(Lcom/inmobi/commons/core/network/a;)Lcom/inmobi/commons/core/network/NetworkRequest;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/inmobi/commons/core/network/c;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest;)V

    .line 35
    invoke-virtual {v1, v0}, Lcom/inmobi/commons/core/network/c;->a(Lcom/inmobi/commons/core/network/NetworkError;)V

    .line 36
    iget-object v0, p0, Lcom/inmobi/commons/core/network/a$1;->a:Lcom/inmobi/commons/core/network/a;

    invoke-static {v0}, Lcom/inmobi/commons/core/network/a;->b(Lcom/inmobi/commons/core/network/a;)Lcom/inmobi/commons/core/network/a$a;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/inmobi/commons/core/network/a$a;->b(Lcom/inmobi/commons/core/network/c;)V

    goto :goto_0
.end method
