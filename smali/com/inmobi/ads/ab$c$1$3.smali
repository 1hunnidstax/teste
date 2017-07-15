.class Lcom/inmobi/ads/ab$c$1$3;
.super Ljava/lang/Object;
.source "NativeStrandAdCache.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/ab$c$1;->a(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;Lcom/inmobi/ads/AdUnit;Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/inmobi/ads/AdUnit;

.field final synthetic c:Lcom/inmobi/ads/ab;

.field final synthetic d:Lcom/inmobi/ads/ab$b;

.field final synthetic e:Lcom/inmobi/ads/ab$c$1;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/ab$c$1;Lorg/json/JSONObject;Lcom/inmobi/ads/AdUnit;Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/inmobi/ads/ab$c$1$3;->e:Lcom/inmobi/ads/ab$c$1;

    iput-object p2, p0, Lcom/inmobi/ads/ab$c$1$3;->a:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/inmobi/ads/ab$c$1$3;->b:Lcom/inmobi/ads/AdUnit;

    iput-object p4, p0, Lcom/inmobi/ads/ab$c$1$3;->c:Lcom/inmobi/ads/ab;

    iput-object p5, p0, Lcom/inmobi/ads/ab$c$1$3;->d:Lcom/inmobi/ads/ab$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 189
    new-instance v2, Lcom/inmobi/ads/NativeV2DataModel;

    sget-object v0, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_INLINE:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    iget-object v1, p0, Lcom/inmobi/ads/ab$c$1$3;->a:Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/inmobi/ads/ab$c$1$3;->b:Lcom/inmobi/ads/AdUnit;

    .line 190
    invoke-virtual {v3}, Lcom/inmobi/ads/AdUnit;->p()Lcom/inmobi/ads/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/ads/c;->p()Lcom/inmobi/ads/c$g;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v0, v1, v3, v4}, Lcom/inmobi/ads/NativeV2DataModel;-><init>(Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;Lorg/json/JSONObject;Lcom/inmobi/ads/c$g;Lcom/inmobi/ads/bj;)V

    .line 193
    :try_start_0
    invoke-virtual {v2}, Lcom/inmobi/ads/NativeV2DataModel;->n()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 194
    iget-object v0, p0, Lcom/inmobi/ads/ab$c$1$3;->c:Lcom/inmobi/ads/ab;

    invoke-static {v0}, Lcom/inmobi/ads/ab;->b(Lcom/inmobi/ads/ab;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/ab$c$1$3;->d:Lcom/inmobi/ads/ab$b;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 215
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/ab$c$1$3;->c:Lcom/inmobi/ads/ab;

    invoke-static {v0}, Lcom/inmobi/ads/ab;->b(Lcom/inmobi/ads/ab;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/ab$c$1$3;->d:Lcom/inmobi/ads/ab$b;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 196
    sget-object v1, Lcom/inmobi/ads/NativeV2Asset$AssetType;->ASSET_TYPE_VIDEO:Lcom/inmobi/ads/NativeV2Asset$AssetType;

    invoke-virtual {v2, v1}, Lcom/inmobi/ads/NativeV2DataModel;->a(Lcom/inmobi/ads/NativeV2Asset$AssetType;)Ljava/util/List;

    move-result-object v1

    .line 197
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/NativeV2Asset;

    .line 198
    check-cast v1, Lcom/inmobi/ads/av;

    .line 199
    invoke-virtual {v1}, Lcom/inmobi/ads/av;->D()Lcom/inmobi/ads/bk;

    move-result-object v4

    invoke-interface {v4}, Lcom/inmobi/ads/bk;->b()Ljava/lang/String;

    move-result-object v4

    .line 200
    invoke-static {}, Lcom/inmobi/ads/l;->a()Lcom/inmobi/ads/l;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/inmobi/ads/l;->b(Ljava/lang/String;)Lcom/inmobi/ads/b;

    move-result-object v4

    .line 201
    invoke-virtual {v1}, Lcom/inmobi/ads/av;->D()Lcom/inmobi/ads/bk;

    move-result-object v1

    invoke-virtual {v4}, Lcom/inmobi/ads/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Lcom/inmobi/ads/bk;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 211
    :catch_0
    move-exception v0

    .line 212
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 213
    iget-object v0, p0, Lcom/inmobi/ads/ab$c$1$3;->c:Lcom/inmobi/ads/ab;

    iget-object v1, p0, Lcom/inmobi/ads/ab$c$1$3;->d:Lcom/inmobi/ads/ab$b;

    new-instance v2, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v3, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v2, v3}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-static {v0, v1, v2}, Lcom/inmobi/ads/ab;->b(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    goto :goto_0

    .line 203
    :cond_1
    :try_start_1
    monitor-enter v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 204
    :try_start_2
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 206
    :try_start_3
    iget-object v0, p0, Lcom/inmobi/ads/ab$c$1$3;->c:Lcom/inmobi/ads/ab;

    iget-object v1, p0, Lcom/inmobi/ads/ab$c$1$3;->d:Lcom/inmobi/ads/ab$b;

    new-instance v2, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v3, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->NO_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v2, v3}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-static {v0, v1, v2}, Lcom/inmobi/ads/ab;->a(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 205
    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v1

    .line 209
    :cond_2
    iget-object v0, p0, Lcom/inmobi/ads/ab$c$1$3;->c:Lcom/inmobi/ads/ab;

    iget-object v1, p0, Lcom/inmobi/ads/ab$c$1$3;->d:Lcom/inmobi/ads/ab$b;

    new-instance v2, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v3, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v2, v3}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-static {v0, v1, v2}, Lcom/inmobi/ads/ab;->b(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0
.end method
