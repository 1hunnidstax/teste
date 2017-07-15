.class Lcom/inmobi/ads/ac$1;
.super Ljava/lang/Object;
.source "NativeStrandAdUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/ac;->a(Lcom/inmobi/ads/ai;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/ai;

.field final synthetic b:Lcom/inmobi/ads/ac;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/ac;Lcom/inmobi/ads/ai;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/inmobi/ads/ac$1;->b:Lcom/inmobi/ads/ac;

    iput-object p2, p0, Lcom/inmobi/ads/ac$1;->a:Lcom/inmobi/ads/ai;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 238
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/ac$1;->b:Lcom/inmobi/ads/ac;

    invoke-static {v0}, Lcom/inmobi/ads/ac;->a(Lcom/inmobi/ads/ac;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/ac$1;->b:Lcom/inmobi/ads/ac;

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ac;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 243
    iget-object v0, p0, Lcom/inmobi/ads/ac$1;->b:Lcom/inmobi/ads/ac;

    iget-object v1, p0, Lcom/inmobi/ads/ac$1;->a:Lcom/inmobi/ads/ai;

    invoke-static {v0, v1}, Lcom/inmobi/ads/ac;->a(Lcom/inmobi/ads/ac;Lcom/inmobi/ads/ai;)Lcom/inmobi/ads/ai;

    .line 245
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 246
    const-string v1, "loadLatency"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/inmobi/ads/ac$1;->b:Lcom/inmobi/ads/ac;

    iget-wide v4, v4, Lcom/inmobi/ads/ac;->a:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-object v1, p0, Lcom/inmobi/ads/ac$1;->b:Lcom/inmobi/ads/ac;

    const-string v2, "ads"

    const-string v3, "AdLoadSuccessful"

    invoke-virtual {v1, v2, v3, v0}, Lcom/inmobi/ads/ac;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 249
    iget-object v0, p0, Lcom/inmobi/ads/ac$1;->b:Lcom/inmobi/ads/ac;

    invoke-virtual {v0}, Lcom/inmobi/ads/ac;->q()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 250
    iget-object v0, p0, Lcom/inmobi/ads/ac$1;->b:Lcom/inmobi/ads/ac;

    invoke-virtual {v0}, Lcom/inmobi/ads/ac;->q()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/ads/AdUnit$b;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 252
    :catch_0
    move-exception v0

    .line 253
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "InMobi"

    const-string v3, "Failed to load ad; SDK encountered an unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/ac;->P()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDK encountered unexpected error in handling data model validation success; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 257
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 255
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method
