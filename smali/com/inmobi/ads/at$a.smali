.class final Lcom/inmobi/ads/at$a;
.super Ljava/lang/Thread;
.source "NativeV2VideoAdContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/at;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/at;

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/ads/at;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/inmobi/ads/at;Lcom/inmobi/ads/at;)V
    .locals 1
    .param p2    # Lcom/inmobi/ads/at;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 843
    iput-object p1, p0, Lcom/inmobi/ads/at$a;->a:Lcom/inmobi/ads/at;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 844
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/at$a;->b:Ljava/lang/ref/WeakReference;

    .line 845
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 854
    iget-object v0, p0, Lcom/inmobi/ads/at$a;->a:Lcom/inmobi/ads/at;

    iget-object v0, v0, Lcom/inmobi/ads/at;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/at$a;->a:Lcom/inmobi/ads/at;

    iget-object v0, v0, Lcom/inmobi/ads/at;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 855
    :cond_0
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/at;->z()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Activity is null. No end card will be created."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    :cond_1
    :goto_0
    return-void

    .line 859
    :cond_2
    iget-object v0, p0, Lcom/inmobi/ads/at$a;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/inmobi/ads/at;

    .line 860
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/inmobi/ads/at;->c()Z

    move-result v0

    if-nez v0, :cond_1

    .line 863
    :try_start_0
    invoke-virtual {v7}, Lcom/inmobi/ads/at;->k()Lcom/inmobi/ads/NativeV2DataModel;

    move-result-object v3

    .line 868
    iget-object v0, p0, Lcom/inmobi/ads/at$a;->a:Lcom/inmobi/ads/at;

    iget-object v0, v0, Lcom/inmobi/ads/at;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inmobi/ads/at$a;->a:Lcom/inmobi/ads/at;

    iget-object v0, v0, Lcom/inmobi/ads/at;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Lcom/inmobi/ads/NativeV2DataModel;->f()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_4

    .line 869
    :cond_3
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/at;->z()Ljava/lang/String;

    move-result-object v1

    const-string v2, "No companion ads"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 898
    :catch_0
    move-exception v0

    .line 899
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/at;->z()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encountered unexpected error in EndCardBuilder: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 900
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 899
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "InMobi"

    const-string v3, "SDK encountered error while inflating ad"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0

    .line 873
    :cond_4
    :try_start_1
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/at;->z()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Building data model for companion ads ..."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/inmobi/ads/NativeV2DataModel;->a(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 877
    if-eqz v2, :cond_1

    .line 879
    new-instance v0, Lcom/inmobi/ads/NativeV2DataModel;

    iget-object v1, p0, Lcom/inmobi/ads/at$a;->a:Lcom/inmobi/ads/at;

    .line 880
    invoke-virtual {v1}, Lcom/inmobi/ads/at;->d()Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/ads/NativeV2DataModel;-><init>(Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;Lorg/json/JSONObject;Lcom/inmobi/ads/NativeV2DataModel;Lcom/inmobi/ads/c$g;Lcom/inmobi/ads/bj;)V

    .line 882
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeV2DataModel;->n()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 886
    iget-object v1, p0, Lcom/inmobi/ads/at$a;->a:Lcom/inmobi/ads/at;

    iget-object v1, v1, Lcom/inmobi/ads/at;->b:Ljava/lang/ref/WeakReference;

    .line 887
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    new-instance v2, Lcom/inmobi/ads/AdContainer$RenderingProperties;

    sget-object v3, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_INLINE:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    invoke-direct {v2, v3}, Lcom/inmobi/ads/AdContainer$RenderingProperties;-><init>(Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;)V

    iget-object v3, p0, Lcom/inmobi/ads/at$a;->a:Lcom/inmobi/ads/at;

    .line 888
    invoke-virtual {v3}, Lcom/inmobi/ads/at;->f()Ljava/lang/String;

    move-result-object v4

    iget-object v3, p0, Lcom/inmobi/ads/at$a;->a:Lcom/inmobi/ads/at;

    invoke-virtual {v3}, Lcom/inmobi/ads/at;->g()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    move-object v3, v0

    .line 887
    invoke-static/range {v1 .. v6}, Lcom/inmobi/ads/ai$a;->a(Landroid/content/Context;Lcom/inmobi/ads/AdContainer$RenderingProperties;Lcom/inmobi/ads/NativeV2DataModel;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Lcom/inmobi/ads/ai;

    move-result-object v0

    .line 890
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/at;->z()Ljava/lang/String;

    move-result-object v2

    const-string v3, "End-card container built successfully ..."

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 891
    invoke-virtual {v0, v7}, Lcom/inmobi/ads/ai;->a(Lcom/inmobi/ads/ai;)V

    .line 892
    invoke-virtual {v7, v0}, Lcom/inmobi/ads/at;->d(Lcom/inmobi/ads/ai;)V

    goto/16 :goto_0

    .line 895
    :cond_5
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/at;->z()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Invalid data model for end-card container! End card will not be shown ..."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
