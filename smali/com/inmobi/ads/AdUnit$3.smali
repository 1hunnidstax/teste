.class Lcom/inmobi/ads/AdUnit$3;
.super Ljava/lang/Thread;
.source "AdUnit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/AdUnit;->a(ILjava/lang/String;Ljava/lang/Runnable;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Landroid/os/Looper;

.field final synthetic c:I

.field final synthetic d:Lcom/inmobi/ads/AdUnit;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/AdUnit;Ljava/lang/Runnable;Landroid/os/Looper;I)V
    .locals 0

    .prologue
    .line 809
    iput-object p1, p0, Lcom/inmobi/ads/AdUnit$3;->d:Lcom/inmobi/ads/AdUnit;

    iput-object p2, p0, Lcom/inmobi/ads/AdUnit$3;->a:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/inmobi/ads/AdUnit$3;->b:Landroid/os/Looper;

    iput p4, p0, Lcom/inmobi/ads/AdUnit$3;->c:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method private a(ILcom/inmobi/ads/ai;)V
    .locals 2
    .param p2    # Lcom/inmobi/ads/ai;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 813
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$3;->d:Lcom/inmobi/ads/AdUnit;

    invoke-static {v0, p2}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/AdUnit;Lcom/inmobi/ads/ai;)Lcom/inmobi/ads/ai;

    .line 814
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$3;->d:Lcom/inmobi/ads/AdUnit;

    invoke-virtual {v0}, Lcom/inmobi/ads/AdUnit;->L()V

    .line 815
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$3;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$3;->b:Landroid/os/Looper;

    if-eqz v0, :cond_0

    .line 816
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/inmobi/ads/AdUnit$3;->b:Landroid/os/Looper;

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/inmobi/ads/AdUnit$3;->a:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 818
    :cond_0
    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 822
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/inmobi/ads/AdUnit$3$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/inmobi/ads/AdUnit$3$1;-><init>(Lcom/inmobi/ads/AdUnit$3;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 837
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 842
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$3;->d:Lcom/inmobi/ads/AdUnit;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/inmobi/ads/AdUnit;->a:J

    .line 843
    new-instance v2, Lcom/inmobi/ads/NativeV2DataModel;

    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$3;->d:Lcom/inmobi/ads/AdUnit;

    .line 844
    invoke-virtual {v0}, Lcom/inmobi/ads/AdUnit;->h()Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    move-result-object v0

    new-instance v1, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/inmobi/ads/AdUnit$3;->d:Lcom/inmobi/ads/AdUnit;

    invoke-virtual {v3}, Lcom/inmobi/ads/AdUnit;->j()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/inmobi/ads/AdUnit$3;->d:Lcom/inmobi/ads/AdUnit;

    .line 845
    invoke-virtual {v3}, Lcom/inmobi/ads/AdUnit;->p()Lcom/inmobi/ads/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/ads/c;->p()Lcom/inmobi/ads/c$g;

    move-result-object v3

    iget-object v4, p0, Lcom/inmobi/ads/AdUnit$3;->d:Lcom/inmobi/ads/AdUnit;

    .line 846
    invoke-virtual {v4}, Lcom/inmobi/ads/AdUnit;->w()Lcom/inmobi/ads/bj;

    move-result-object v4

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/inmobi/ads/NativeV2DataModel;-><init>(Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;Lorg/json/JSONObject;Lcom/inmobi/ads/c$g;Lcom/inmobi/ads/bj;)V

    .line 847
    invoke-virtual {v2}, Lcom/inmobi/ads/NativeV2DataModel;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$3;->d:Lcom/inmobi/ads/AdUnit;

    invoke-virtual {v0}, Lcom/inmobi/ads/AdUnit;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 848
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit$3;->d:Lcom/inmobi/ads/AdUnit;

    .line 849
    invoke-virtual {v0}, Lcom/inmobi/ads/AdUnit;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/inmobi/ads/AdContainer$RenderingProperties;

    iget-object v3, p0, Lcom/inmobi/ads/AdUnit$3;->d:Lcom/inmobi/ads/AdUnit;

    .line 850
    invoke-virtual {v3}, Lcom/inmobi/ads/AdUnit;->h()Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/inmobi/ads/AdContainer$RenderingProperties;-><init>(Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;)V

    iget-object v3, p0, Lcom/inmobi/ads/AdUnit$3;->d:Lcom/inmobi/ads/AdUnit;

    .line 851
    invoke-virtual {v3}, Lcom/inmobi/ads/AdUnit;->m()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/inmobi/ads/AdUnit$3;->d:Lcom/inmobi/ads/AdUnit;

    .line 852
    invoke-virtual {v4}, Lcom/inmobi/ads/AdUnit;->n()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/inmobi/ads/AdUnit$3;->d:Lcom/inmobi/ads/AdUnit;

    .line 853
    invoke-virtual {v5}, Lcom/inmobi/ads/AdUnit;->g()Ljava/util/Set;

    move-result-object v5

    .line 849
    invoke-static/range {v0 .. v5}, Lcom/inmobi/ads/ai$a;->a(Landroid/content/Context;Lcom/inmobi/ads/AdContainer$RenderingProperties;Lcom/inmobi/ads/NativeV2DataModel;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Lcom/inmobi/ads/ai;

    move-result-object v0

    .line 854
    if-nez v0, :cond_0

    .line 855
    iget v0, p0, Lcom/inmobi/ads/AdUnit$3;->c:I

    const-string v1, "DataModelValidationFailed"

    invoke-direct {p0, v0, v1}, Lcom/inmobi/ads/AdUnit$3;->a(ILjava/lang/String;)V

    .line 943
    :goto_0
    return-void

    .line 857
    :cond_0
    new-instance v1, Lcom/inmobi/ads/AdUnit$3$2;

    invoke-direct {v1, p0}, Lcom/inmobi/ads/AdUnit$3$2;-><init>(Lcom/inmobi/ads/AdUnit$3;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ai;->a(Lcom/inmobi/ads/ai$b;)V

    .line 928
    iget v1, p0, Lcom/inmobi/ads/AdUnit$3;->c:I

    invoke-direct {p0, v1, v0}, Lcom/inmobi/ads/AdUnit$3;->a(ILcom/inmobi/ads/ai;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 933
    :catch_0
    move-exception v0

    .line 934
    iget v1, p0, Lcom/inmobi/ads/AdUnit$3;->c:I

    const-string v2, "InternalError"

    invoke-direct {p0, v1, v2}, Lcom/inmobi/ads/AdUnit$3;->a(ILjava/lang/String;)V

    .line 935
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0

    .line 931
    :cond_1
    :try_start_1
    iget v0, p0, Lcom/inmobi/ads/AdUnit$3;->c:I

    const-string v1, "DataModelValidationFailed"

    invoke-direct {p0, v0, v1}, Lcom/inmobi/ads/AdUnit$3;->a(ILjava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 936
    :catch_1
    move-exception v0

    .line 937
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/AdUnit;->M()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encountered unexpected error in loading ad markup into container: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 939
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 937
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    iget v1, p0, Lcom/inmobi/ads/AdUnit$3;->c:I

    const-string v2, "InternalError"

    invoke-direct {p0, v1, v2}, Lcom/inmobi/ads/AdUnit$3;->a(ILjava/lang/String;)V

    .line 941
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method
