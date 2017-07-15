.class Lcom/inmobi/ads/j$a;
.super Ljava/lang/Object;
.source "AdUnitCache.java"

# interfaces
.implements Lcom/inmobi/ads/AdUnit$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/inmobi/ads/ax;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/ax;)V
    .locals 0

    .prologue
    .line 370
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 371
    iput-object p1, p0, Lcom/inmobi/ads/j$a;->a:Lcom/inmobi/ads/ax;

    .line 372
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 385
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/j;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onAdLoadSucceeded called"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    return-void
.end method

.method public a(Lcom/inmobi/ads/AdUnit;)V
    .locals 0

    .prologue
    .line 381
    return-void
.end method

.method public a(Lcom/inmobi/ads/AdUnit;Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 4

    .prologue
    .line 390
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/j;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAdLoadFailed called. Status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    invoke-static {}, Lcom/inmobi/ads/j;->e()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/j$a;->a:Lcom/inmobi/ads/ax;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/AdUnit;

    .line 394
    invoke-static {}, Lcom/inmobi/ads/j;->e()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/ads/j$a;->a:Lcom/inmobi/ads/ax;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    invoke-virtual {p2}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v1

    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->NO_FILL:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v1, v2, :cond_0

    .line 397
    const-string v1, "ads"

    const-string v2, "PreLoadServerNoFill"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/ads/AdUnit;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 399
    :cond_0
    return-void
.end method

.method public a(Lcom/inmobi/ads/AdUnit;Z)V
    .locals 4

    .prologue
    .line 376
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/j;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onAdReceived called with: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 424
    return-void
.end method

.method public b()V
    .locals 0

    .prologue
    .line 404
    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 434
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 409
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 414
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 419
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 429
    return-void
.end method

.method public g()V
    .locals 0

    .prologue
    .line 439
    return-void
.end method
