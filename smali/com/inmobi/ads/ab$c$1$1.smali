.class Lcom/inmobi/ads/ab$c$1$1;
.super Ljava/lang/Object;
.source "NativeStrandAdCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/ab$c$1;->a(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/ab;

.field final synthetic b:Lcom/inmobi/ads/ab$b;

.field final synthetic c:Lcom/inmobi/ads/ab$c$1;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/ab$c$1;Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/inmobi/ads/ab$c$1$1;->c:Lcom/inmobi/ads/ab$c$1;

    iput-object p2, p0, Lcom/inmobi/ads/ab$c$1$1;->a:Lcom/inmobi/ads/ab;

    iput-object p3, p0, Lcom/inmobi/ads/ab$c$1$1;->b:Lcom/inmobi/ads/ab$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 58
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/ab;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Entering state:STARTED"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/inmobi/ads/ab$c$1$1;->a:Lcom/inmobi/ads/ab;

    sget-object v1, Lcom/inmobi/ads/ab$c;->a:Lcom/inmobi/ads/ab$c;

    invoke-static {v0, v1}, Lcom/inmobi/ads/ab;->a(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$c;)Lcom/inmobi/ads/ab$c;

    .line 60
    iget-object v0, p0, Lcom/inmobi/ads/ab$c$1$1;->b:Lcom/inmobi/ads/ab$b;

    if-nez v0, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/ab$c$1$1;->b:Lcom/inmobi/ads/ab$b;

    iget-object v0, v0, Lcom/inmobi/ads/ab$b;->c:Lcom/inmobi/ads/ac;

    .line 65
    :try_start_0
    invoke-static {}, Lcom/inmobi/ads/d;->a()Lcom/inmobi/ads/d;

    move-result-object v1

    .line 66
    invoke-virtual {v0}, Lcom/inmobi/ads/ac;->d()Ljava/lang/String;

    move-result-object v2

    .line 67
    invoke-virtual {v0}, Lcom/inmobi/ads/ac;->p()Lcom/inmobi/ads/c;

    move-result-object v3

    invoke-virtual {v0}, Lcom/inmobi/ads/ac;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/inmobi/ads/c;->a(Ljava/lang/String;)Lcom/inmobi/ads/c$b;

    move-result-object v3

    .line 68
    invoke-virtual {v3}, Lcom/inmobi/ads/c$b;->e()J

    move-result-wide v4

    .line 66
    invoke-virtual {v1, v2, v4, v5}, Lcom/inmobi/ads/d;->a(Ljava/lang/String;J)I

    move-result v1

    .line 70
    if-lez v1, :cond_2

    .line 71
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 72
    const-string v3, "count"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    const-string v1, "ads"

    const-string v3, "AdCacheAdExpired"

    invoke-virtual {v0, v1, v3, v2}, Lcom/inmobi/ads/ac;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/inmobi/ads/ab$c$1$1;->a:Lcom/inmobi/ads/ab;

    invoke-static {v0}, Lcom/inmobi/ads/ab;->a(Lcom/inmobi/ads/ab;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/inmobi/ads/ab$c$1$1;->c:Lcom/inmobi/ads/ab$c$1;

    iget-object v1, p0, Lcom/inmobi/ads/ab$c$1$1;->a:Lcom/inmobi/ads/ab;

    iget-object v2, p0, Lcom/inmobi/ads/ab$c$1$1;->b:Lcom/inmobi/ads/ab$b;

    invoke-static {v0, v1, v2}, Lcom/inmobi/ads/ab$c$1;->a(Lcom/inmobi/ads/ab$c$1;Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 78
    :catch_0
    move-exception v0

    .line 79
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 80
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/ab;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
