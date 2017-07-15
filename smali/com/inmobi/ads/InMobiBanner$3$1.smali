.class Lcom/inmobi/ads/InMobiBanner$3$1;
.super Ljava/lang/Object;
.source "InMobiBanner.java"

# interfaces
.implements Lcom/inmobi/ads/InMobiBanner$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/InMobiBanner$3;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/InMobiBanner$3;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/InMobiBanner$3;)V
    .locals 0

    .prologue
    .line 896
    iput-object p1, p0, Lcom/inmobi/ads/InMobiBanner$3$1;->a:Lcom/inmobi/ads/InMobiBanner$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    .prologue
    .line 900
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner$3$1;->a:Lcom/inmobi/ads/InMobiBanner$3;

    iget-object v0, v0, Lcom/inmobi/ads/InMobiBanner$3;->a:Lcom/inmobi/ads/InMobiBanner;

    # getter for: Lcom/inmobi/ads/InMobiBanner;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiBanner$b;
    invoke-static {v0}, Lcom/inmobi/ads/InMobiBanner;->access$800(Lcom/inmobi/ads/InMobiBanner;)Lcom/inmobi/ads/InMobiBanner$b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/InMobiBanner$b;->sendEmptyMessage(I)Z

    .line 901
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner$3$1;->a:Lcom/inmobi/ads/InMobiBanner$3;

    iget-object v0, v0, Lcom/inmobi/ads/InMobiBanner$3;->a:Lcom/inmobi/ads/InMobiBanner;

    # invokes: Lcom/inmobi/ads/InMobiBanner;->scheduleRefresh()V
    invoke-static {v0}, Lcom/inmobi/ads/InMobiBanner;->access$900(Lcom/inmobi/ads/InMobiBanner;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 908
    :goto_0
    return-void

    .line 902
    :catch_0
    move-exception v0

    .line 903
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    # getter for: Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/inmobi/ads/InMobiBanner;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Encountered unexpected error in scheduling refresh for banner ad"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    # getter for: Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/inmobi/ads/InMobiBanner;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InMobiBanner$5.onSuccess() handler threw unexpected error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 906
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 905
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
