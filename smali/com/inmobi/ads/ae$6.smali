.class Lcom/inmobi/ads/ae$6;
.super Ljava/lang/Object;
.source "NativeStrandLayoutInflater.java"

# interfaces
.implements Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/ae;->a(Lcom/inmobi/ads/av;Lcom/inmobi/ads/NativeStrandVideoView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/av;

.field final synthetic b:Lcom/inmobi/ads/ae;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/ae;Lcom/inmobi/ads/av;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/inmobi/ads/ae$6;->b:Lcom/inmobi/ads/ae;

    iput-object p2, p0, Lcom/inmobi/ads/ae$6;->a:Lcom/inmobi/ads/av;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;)V
    .locals 5

    .prologue
    .line 322
    iget-object v0, p0, Lcom/inmobi/ads/ae$6;->b:Lcom/inmobi/ads/ae;

    invoke-static {v0}, Lcom/inmobi/ads/ae;->d(Lcom/inmobi/ads/ae;)Lcom/inmobi/ads/aw;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/inmobi/ads/ae$6;->b:Lcom/inmobi/ads/ae;

    invoke-static {v0}, Lcom/inmobi/ads/ae;->d(Lcom/inmobi/ads/ae;)Lcom/inmobi/ads/aw;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/ae$6;->a:Lcom/inmobi/ads/av;

    invoke-interface {v0, v1, p1}, Lcom/inmobi/ads/aw;->a(Lcom/inmobi/ads/av;Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;)V

    .line 324
    sget-object v0, Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;->Q4:Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;

    if-ne v0, p1, :cond_0

    .line 326
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/ae$6;->b:Lcom/inmobi/ads/ae;

    invoke-static {v0}, Lcom/inmobi/ads/ae;->d(Lcom/inmobi/ads/ae;)Lcom/inmobi/ads/aw;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/ae$6;->a:Lcom/inmobi/ads/av;

    invoke-interface {v0, v1}, Lcom/inmobi/ads/aw;->d(Lcom/inmobi/ads/av;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 327
    :catch_0
    move-exception v0

    .line 328
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/ae;->d()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDK encountered unexpected error in handling the onVideoCompleted event; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 330
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 328
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method
