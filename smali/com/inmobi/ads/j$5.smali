.class Lcom/inmobi/ads/j$5;
.super Ljava/lang/Object;
.source "AdUnitCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/j;->b(Lcom/inmobi/ads/ax;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/ax;

.field final synthetic b:Lcom/inmobi/ads/j;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/j;Lcom/inmobi/ads/ax;)V
    .locals 0

    .prologue
    .line 304
    iput-object p1, p0, Lcom/inmobi/ads/j$5;->b:Lcom/inmobi/ads/j;

    iput-object p2, p0, Lcom/inmobi/ads/j$5;->a:Lcom/inmobi/ads/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 308
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/j$5;->b:Lcom/inmobi/ads/j;

    invoke-static {v0}, Lcom/inmobi/ads/j;->b(Lcom/inmobi/ads/j;)V

    .line 310
    invoke-static {}, Lcom/inmobi/ads/j;->f()Lcom/inmobi/ads/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/c;->o()Lcom/inmobi/ads/c$e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/c$e;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/inmobi/ads/j;->e()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/j$5;->a:Lcom/inmobi/ads/ax;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 311
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/j;->d()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preLoadAdUnit. pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/ads/j$5;->a:Lcom/inmobi/ads/ax;

    .line 312
    invoke-virtual {v3}, Lcom/inmobi/ads/ax;->c()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " tp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/ads/j$5;->a:Lcom/inmobi/ads/ax;

    .line 313
    invoke-virtual {v3}, Lcom/inmobi/ads/ax;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 311
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v0, p0, Lcom/inmobi/ads/j$5;->a:Lcom/inmobi/ads/ax;

    invoke-virtual {v0}, Lcom/inmobi/ads/ax;->a()Ljava/util/Map;

    move-result-object v0

    .line 317
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/j$5;->a:Lcom/inmobi/ads/ax;

    invoke-virtual {v0}, Lcom/inmobi/ads/ax;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 318
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 319
    const-string v1, "tp"

    iget-object v2, p0, Lcom/inmobi/ads/j$5;->a:Lcom/inmobi/ads/ax;

    invoke-virtual {v2}, Lcom/inmobi/ads/ax;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    iget-object v1, p0, Lcom/inmobi/ads/j$5;->a:Lcom/inmobi/ads/ax;

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/ax;->a(Ljava/util/Map;)V

    .line 323
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 324
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/ads/j$5;->a:Lcom/inmobi/ads/ax;

    invoke-virtual {v2}, Lcom/inmobi/ads/ax;->c()J

    move-result-wide v2

    new-instance v4, Lcom/inmobi/ads/j$a;

    iget-object v5, p0, Lcom/inmobi/ads/j$5;->a:Lcom/inmobi/ads/ax;

    invoke-direct {v4, v5}, Lcom/inmobi/ads/j$a;-><init>(Lcom/inmobi/ads/ax;)V

    .line 323
    invoke-static {v0, v1, v2, v3, v4}, Lcom/inmobi/ads/w$a;->a(ILandroid/content/Context;JLcom/inmobi/ads/AdUnit$b;)Lcom/inmobi/ads/w;

    move-result-object v0

    .line 325
    iget-object v1, p0, Lcom/inmobi/ads/j$5;->a:Lcom/inmobi/ads/ax;

    invoke-virtual {v1}, Lcom/inmobi/ads/ax;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/w;->a(Ljava/lang/String;)V

    .line 326
    iget-object v1, p0, Lcom/inmobi/ads/j$5;->a:Lcom/inmobi/ads/ax;

    invoke-virtual {v1}, Lcom/inmobi/ads/ax;->a()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/w;->a(Ljava/util/Map;)V

    .line 327
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/w;->a(Z)V

    .line 328
    invoke-static {}, Lcom/inmobi/ads/j;->e()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/ads/j$5;->a:Lcom/inmobi/ads/ax;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    invoke-virtual {v0}, Lcom/inmobi/ads/w;->x()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :cond_1
    :goto_0
    return-void

    .line 332
    :catch_0
    move-exception v0

    .line 333
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/j;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDK encountered an unexpected error preloading ad units; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 334
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 333
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method
