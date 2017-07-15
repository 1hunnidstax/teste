.class Lcom/inmobi/ads/ac$2;
.super Ljava/lang/Object;
.source "NativeStrandAdUnit.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/ac;->e(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/inmobi/ads/ac;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/ac;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 265
    iput-object p1, p0, Lcom/inmobi/ads/ac$2;->b:Lcom/inmobi/ads/ac;

    iput-object p2, p0, Lcom/inmobi/ads/ac$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 269
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/ac$2;->b:Lcom/inmobi/ads/ac;

    invoke-static {v0}, Lcom/inmobi/ads/ac;->a(Lcom/inmobi/ads/ac;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 285
    :cond_0
    :goto_0
    return-void

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/ac$2;->b:Lcom/inmobi/ads/ac;

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_FAILED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ac;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 273
    iget-object v0, p0, Lcom/inmobi/ads/ac$2;->b:Lcom/inmobi/ads/ac;

    iget-object v1, p0, Lcom/inmobi/ads/ac$2;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ac;->b(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/inmobi/ads/ac$2;->b:Lcom/inmobi/ads/ac;

    invoke-virtual {v0}, Lcom/inmobi/ads/ac;->q()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/inmobi/ads/ac$2;->b:Lcom/inmobi/ads/ac;

    invoke-virtual {v0}, Lcom/inmobi/ads/ac;->q()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/ac$2;->b:Lcom/inmobi/ads/ac;

    new-instance v2, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v3, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v2, v3}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-interface {v0, v1, v2}, Lcom/inmobi/ads/AdUnit$b;->a(Lcom/inmobi/ads/AdUnit;Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "InMobi"

    const-string v3, "Failed to load ad; SDK encountered an unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/ac;->P()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDK encountered unexpected error in handling data model validation failure; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 282
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 280
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method
