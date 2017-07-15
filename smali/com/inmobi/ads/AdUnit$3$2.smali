.class Lcom/inmobi/ads/AdUnit$3$2;
.super Ljava/lang/Object;
.source "AdUnit.java"

# interfaces
.implements Lcom/inmobi/ads/ai$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/AdUnit$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/AdUnit$3;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/AdUnit$3;)V
    .locals 0

    .prologue
    .line 857
    iput-object p1, p0, Lcom/inmobi/ads/AdUnit$3$2;->a:Lcom/inmobi/ads/AdUnit$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 860
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$3$2;->a:Lcom/inmobi/ads/AdUnit$3;

    iget-object v0, v0, Lcom/inmobi/ads/AdUnit$3;->d:Lcom/inmobi/ads/AdUnit;

    iget-object v1, p0, Lcom/inmobi/ads/AdUnit$3$2;->a:Lcom/inmobi/ads/AdUnit$3;

    iget v1, v1, Lcom/inmobi/ads/AdUnit$3;->c:I

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/AdUnit;->a(I)Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    .line 861
    if-eqz v0, :cond_0

    .line 862
    invoke-interface {v0}, Lcom/inmobi/ads/AdUnit$b;->b()V

    .line 864
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 925
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$3$2;->a:Lcom/inmobi/ads/AdUnit$3;

    iget-object v0, v0, Lcom/inmobi/ads/AdUnit$3;->d:Lcom/inmobi/ads/AdUnit;

    invoke-virtual {v0, p1, p2, p3}, Lcom/inmobi/ads/AdUnit;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 926
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 909
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$3$2;->a:Lcom/inmobi/ads/AdUnit$3;

    iget-object v0, v0, Lcom/inmobi/ads/AdUnit$3;->d:Lcom/inmobi/ads/AdUnit;

    iget-object v1, p0, Lcom/inmobi/ads/AdUnit$3$2;->a:Lcom/inmobi/ads/AdUnit$3;

    iget v1, v1, Lcom/inmobi/ads/AdUnit$3;->c:I

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/AdUnit;->a(I)Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    .line 910
    if-eqz v0, :cond_0

    .line 911
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, v1}, Lcom/inmobi/ads/AdUnit$b;->b(Ljava/util/Map;)V

    .line 913
    :cond_0
    return-void
.end method

.method public b()V
    .locals 6

    .prologue
    .line 868
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v1, "InMobi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully displayed Interstitial for placement id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/ads/AdUnit$3$2;->a:Lcom/inmobi/ads/AdUnit$3;

    iget-object v3, v3, Lcom/inmobi/ads/AdUnit$3;->d:Lcom/inmobi/ads/AdUnit;

    .line 869
    invoke-virtual {v3}, Lcom/inmobi/ads/AdUnit;->b()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 868
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$3$2;->a:Lcom/inmobi/ads/AdUnit$3;

    iget-object v0, v0, Lcom/inmobi/ads/AdUnit$3;->d:Lcom/inmobi/ads/AdUnit;

    iget-object v1, p0, Lcom/inmobi/ads/AdUnit$3$2;->a:Lcom/inmobi/ads/AdUnit$3;

    iget v1, v1, Lcom/inmobi/ads/AdUnit$3;->c:I

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/AdUnit;->a(I)Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    .line 871
    if-eqz v0, :cond_0

    .line 872
    invoke-interface {v0}, Lcom/inmobi/ads/AdUnit$b;->d()V

    .line 874
    :cond_0
    return-void
.end method

.method public c()V
    .locals 0

    .prologue
    .line 878
    return-void
.end method

.method public d()V
    .locals 6

    .prologue
    .line 882
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v1, "InMobi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad interaction for placement id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/ads/AdUnit$3$2;->a:Lcom/inmobi/ads/AdUnit$3;

    iget-object v3, v3, Lcom/inmobi/ads/AdUnit$3;->d:Lcom/inmobi/ads/AdUnit;

    .line 883
    invoke-virtual {v3}, Lcom/inmobi/ads/AdUnit;->b()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 882
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$3$2;->a:Lcom/inmobi/ads/AdUnit$3;

    iget-object v0, v0, Lcom/inmobi/ads/AdUnit$3;->d:Lcom/inmobi/ads/AdUnit;

    iget-object v1, p0, Lcom/inmobi/ads/AdUnit$3$2;->a:Lcom/inmobi/ads/AdUnit$3;

    iget v1, v1, Lcom/inmobi/ads/AdUnit$3;->c:I

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/AdUnit;->a(I)Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    .line 885
    if-eqz v0, :cond_0

    .line 886
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/inmobi/ads/AdUnit$b;->a(Ljava/util/Map;)V

    .line 888
    :cond_0
    return-void
.end method

.method public e()V
    .locals 6

    .prologue
    .line 892
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v1, "InMobi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interstitial ad dismissed for placement id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/ads/AdUnit$3$2;->a:Lcom/inmobi/ads/AdUnit$3;

    iget-object v3, v3, Lcom/inmobi/ads/AdUnit$3;->d:Lcom/inmobi/ads/AdUnit;

    .line 893
    invoke-virtual {v3}, Lcom/inmobi/ads/AdUnit;->b()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 892
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/inmobi/ads/AdUnit$3$2$1;

    invoke-direct {v1, p0}, Lcom/inmobi/ads/AdUnit$3$2$1;-><init>(Lcom/inmobi/ads/AdUnit$3$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 905
    return-void
.end method

.method public f()V
    .locals 2

    .prologue
    .line 917
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$3$2;->a:Lcom/inmobi/ads/AdUnit$3;

    iget-object v0, v0, Lcom/inmobi/ads/AdUnit$3;->d:Lcom/inmobi/ads/AdUnit;

    iget-object v1, p0, Lcom/inmobi/ads/AdUnit$3$2;->a:Lcom/inmobi/ads/AdUnit$3;

    iget v1, v1, Lcom/inmobi/ads/AdUnit$3;->c:I

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/AdUnit;->a(I)Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    .line 918
    if-eqz v0, :cond_0

    .line 919
    invoke-interface {v0}, Lcom/inmobi/ads/AdUnit$b;->f()V

    .line 921
    :cond_0
    return-void
.end method
