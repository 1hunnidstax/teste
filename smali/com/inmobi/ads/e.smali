.class final Lcom/inmobi/ads/e;
.super Ljava/lang/Object;
.source "AdNetworkClient.java"

# interfaces
.implements Lcom/inmobi/commons/core/network/a$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/e$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/inmobi/ads/f;

.field private c:Lcom/inmobi/ads/e$a;

.field private d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/inmobi/ads/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/inmobi/ads/f;Lcom/inmobi/ads/e$a;)V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/ads/e;->d:J

    .line 25
    iput-object p1, p0, Lcom/inmobi/ads/e;->b:Lcom/inmobi/ads/f;

    .line 26
    iput-object p2, p0, Lcom/inmobi/ads/e;->c:Lcom/inmobi/ads/e$a;

    .line 27
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 30
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/ads/e;->d:J

    .line 31
    new-instance v0, Lcom/inmobi/commons/core/network/a;

    iget-object v1, p0, Lcom/inmobi/ads/e;->b:Lcom/inmobi/ads/f;

    invoke-direct {v0, v1, p0}, Lcom/inmobi/commons/core/network/a;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest;Lcom/inmobi/commons/core/network/a$a;)V

    .line 32
    invoke-virtual {v0}, Lcom/inmobi/commons/core/network/a;->a()V

    .line 33
    return-void
.end method

.method public a(Lcom/inmobi/commons/core/network/c;)V
    .locals 6

    .prologue
    .line 37
    new-instance v0, Lcom/inmobi/ads/g;

    iget-object v1, p0, Lcom/inmobi/ads/e;->b:Lcom/inmobi/ads/f;

    invoke-direct {v0, v1, p1}, Lcom/inmobi/ads/g;-><init>(Lcom/inmobi/ads/f;Lcom/inmobi/commons/core/network/c;)V

    .line 43
    :try_start_0
    invoke-static {}, Lcom/inmobi/signals/n;->a()Lcom/inmobi/signals/n;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/ads/e;->b:Lcom/inmobi/ads/f;

    invoke-virtual {v2}, Lcom/inmobi/ads/f;->t()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/inmobi/signals/n;->a(J)V

    .line 44
    invoke-static {}, Lcom/inmobi/signals/n;->a()Lcom/inmobi/signals/n;

    move-result-object v1

    invoke-virtual {p1}, Lcom/inmobi/commons/core/network/c;->f()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/inmobi/signals/n;->b(J)V

    .line 45
    invoke-static {}, Lcom/inmobi/signals/n;->a()Lcom/inmobi/signals/n;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/inmobi/ads/e;->d:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/inmobi/signals/n;->g(J)V

    .line 47
    iget-object v1, p0, Lcom/inmobi/ads/e;->c:Lcom/inmobi/ads/e$a;

    invoke-interface {v1, v0}, Lcom/inmobi/ads/e$a;->a(Lcom/inmobi/ads/g;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    return-void

    .line 48
    :catch_0
    move-exception v0

    .line 49
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/e;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handling ad fetch success encountered an unexpected error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 50
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public b(Lcom/inmobi/commons/core/network/c;)V
    .locals 5

    .prologue
    .line 56
    new-instance v0, Lcom/inmobi/ads/g;

    iget-object v1, p0, Lcom/inmobi/ads/e;->b:Lcom/inmobi/ads/f;

    invoke-direct {v0, v1, p1}, Lcom/inmobi/ads/g;-><init>(Lcom/inmobi/ads/f;Lcom/inmobi/commons/core/network/c;)V

    .line 57
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/e;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ad fetch failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 58
    invoke-virtual {v0}, Lcom/inmobi/ads/g;->d()Lcom/inmobi/commons/core/network/NetworkError;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inmobi/commons/core/network/NetworkError;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 57
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :try_start_0
    invoke-static {}, Lcom/inmobi/signals/n;->a()Lcom/inmobi/signals/n;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/ads/e;->b:Lcom/inmobi/ads/f;

    invoke-virtual {v2}, Lcom/inmobi/ads/f;->t()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/inmobi/signals/n;->a(J)V

    .line 62
    invoke-static {}, Lcom/inmobi/signals/n;->a()Lcom/inmobi/signals/n;

    move-result-object v1

    invoke-virtual {p1}, Lcom/inmobi/commons/core/network/c;->f()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/inmobi/signals/n;->b(J)V

    .line 64
    iget-object v1, p0, Lcom/inmobi/ads/e;->c:Lcom/inmobi/ads/e$a;

    invoke-interface {v1, v0}, Lcom/inmobi/ads/e$a;->b(Lcom/inmobi/ads/g;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/e;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handling ad fetch failed encountered an unexpected error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 67
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
