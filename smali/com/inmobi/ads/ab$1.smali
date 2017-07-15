.class Lcom/inmobi/ads/ab$1;
.super Ljava/lang/Object;
.source "NativeStrandAdCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/ab;->c(Lcom/inmobi/ads/ab$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/inmobi/ads/ac;

.field final synthetic c:Lcom/inmobi/ads/ab;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/ab;Ljava/util/List;Lcom/inmobi/ads/ac;)V
    .locals 0

    .prologue
    .line 628
    iput-object p1, p0, Lcom/inmobi/ads/ab$1;->c:Lcom/inmobi/ads/ab;

    iput-object p2, p0, Lcom/inmobi/ads/ab$1;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/inmobi/ads/ab$1;->b:Lcom/inmobi/ads/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 632
    :try_start_0
    invoke-static {}, Lcom/inmobi/ads/d;->a()Lcom/inmobi/ads/d;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/ab$1;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/inmobi/ads/ab$1;->b:Lcom/inmobi/ads/ac;

    .line 633
    invoke-virtual {v2}, Lcom/inmobi/ads/ac;->p()Lcom/inmobi/ads/c;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/ads/ab$1;->b:Lcom/inmobi/ads/ac;

    .line 634
    invoke-virtual {v3}, Lcom/inmobi/ads/ac;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/inmobi/ads/c;->a(Ljava/lang/String;)Lcom/inmobi/ads/c$b;

    move-result-object v2

    .line 635
    invoke-virtual {v2}, Lcom/inmobi/ads/c$b;->b()I

    move-result v2

    iget-object v3, p0, Lcom/inmobi/ads/ab$1;->b:Lcom/inmobi/ads/ac;

    .line 636
    invoke-virtual {v3}, Lcom/inmobi/ads/ac;->d()Ljava/lang/String;

    move-result-object v3

    .line 632
    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/ads/d;->a(Ljava/util/List;ILjava/lang/String;)V

    .line 637
    iget-object v0, p0, Lcom/inmobi/ads/ab$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 638
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/ab;->i()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stored "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/ads/ab$1;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " data model(s) to disk"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/ab$1;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 641
    iget-object v0, p0, Lcom/inmobi/ads/ab$1;->c:Lcom/inmobi/ads/ab;

    invoke-static {v0}, Lcom/inmobi/ads/ab;->g(Lcom/inmobi/ads/ab;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/inmobi/ads/ab$1$1;

    invoke-direct {v1, p0}, Lcom/inmobi/ads/ab$1$1;-><init>(Lcom/inmobi/ads/ab$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 651
    :goto_0
    return-void

    .line 647
    :catch_0
    move-exception v0

    .line 648
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 649
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/ab;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
