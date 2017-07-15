.class final enum Lcom/inmobi/ads/ab$c$3;
.super Lcom/inmobi/ads/ab$c;
.source "NativeStrandAdCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/ab$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 349
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/inmobi/ads/ab$c;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/inmobi/ads/ab$1;)V

    return-void
.end method


# virtual methods
.method a(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;)V
    .locals 4

    .prologue
    .line 352
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/ab;->i()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Entering state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    sget-object v0, Lcom/inmobi/ads/ab$c;->c:Lcom/inmobi/ads/ab$c;

    invoke-static {p1, v0}, Lcom/inmobi/ads/ab;->a(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$c;)Lcom/inmobi/ads/ab$c;

    .line 354
    invoke-virtual {p1}, Lcom/inmobi/ads/ab;->h()V

    .line 356
    return-void
.end method

.method b(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;)V
    .locals 1

    .prologue
    .line 360
    invoke-static {p1}, Lcom/inmobi/ads/ab;->d(Lcom/inmobi/ads/ab;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/inmobi/ads/ab;->a(Lcom/inmobi/ads/ab;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    sget-object v0, Lcom/inmobi/ads/ab$c$3;->a:Lcom/inmobi/ads/ab$c;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/ads/ab$c;->a(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;)V

    .line 365
    :goto_0
    return-void

    .line 363
    :cond_0
    sget-object v0, Lcom/inmobi/ads/ab$c$3;->b:Lcom/inmobi/ads/ab$c;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/ads/ab$c;->a(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;)V

    goto :goto_0
.end method

.method c(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;)V
    .locals 1

    .prologue
    .line 369
    sget-object v0, Lcom/inmobi/ads/ab$c$3;->d:Lcom/inmobi/ads/ab$c;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/ads/ab$c;->a(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;)V

    .line 370
    return-void
.end method
