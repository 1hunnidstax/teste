.class final enum Lcom/inmobi/ads/ab$c$2;
.super Lcom/inmobi/ads/ab$c;
.source "NativeStrandAdCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/ab$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 256
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/inmobi/ads/ab$c;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/inmobi/ads/ab$1;)V

    return-void
.end method


# virtual methods
.method a(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;)V
    .locals 4

    .prologue
    .line 259
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/ab;->i()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Entering state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    sget-object v0, Lcom/inmobi/ads/ab$c;->b:Lcom/inmobi/ads/ab$c;

    invoke-static {p1, v0}, Lcom/inmobi/ads/ab;->a(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$c;)Lcom/inmobi/ads/ab$c;

    .line 261
    invoke-virtual {p1}, Lcom/inmobi/ads/ab;->h()V

    .line 262
    return-void
.end method

.method a(Lcom/inmobi/ads/ab;Z)V
    .locals 4

    .prologue
    .line 334
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/ab;->i()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Activity in focus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/inmobi/ads/ab;->a(Lcom/inmobi/ads/ab;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 336
    sget-object v0, Lcom/inmobi/ads/ab$c$2;->a:Lcom/inmobi/ads/ab$c;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/inmobi/ads/ab$c;->a(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;)V

    .line 338
    :cond_0
    return-void
.end method

.method b(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;)V
    .locals 2

    .prologue
    .line 266
    invoke-static {p1}, Lcom/inmobi/ads/ab;->a(Lcom/inmobi/ads/ab;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 267
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->NETWORK_UNREACHABLE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-static {p1, p2, v0}, Lcom/inmobi/ads/ab;->b(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 269
    :cond_0
    return-void
.end method

.method b(Lcom/inmobi/ads/ab;Z)V
    .locals 4

    .prologue
    .line 343
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/ab;->i()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Network available:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/inmobi/ads/ab;->d(Lcom/inmobi/ads/ab;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    sget-object v0, Lcom/inmobi/ads/ab$c;->a:Lcom/inmobi/ads/ab$c;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/inmobi/ads/ab$c;->a(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;)V

    .line 347
    :cond_0
    return-void
.end method

.method c(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;)V
    .locals 1

    .prologue
    .line 328
    sget-object v0, Lcom/inmobi/ads/ab$c$2;->d:Lcom/inmobi/ads/ab$c;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/ads/ab$c;->a(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;)V

    .line 329
    return-void
.end method

.method e(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;)Lcom/inmobi/ads/ai;
    .locals 8
    .param p2    # Lcom/inmobi/ads/ab$b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 274
    if-nez p2, :cond_0

    .line 318
    :goto_0
    return-object v1

    .line 275
    :cond_0
    iget-object v6, p2, Lcom/inmobi/ads/ab$b;->c:Lcom/inmobi/ads/ac;

    .line 278
    invoke-virtual {v6}, Lcom/inmobi/ads/ac;->a()Landroid/content/Context;

    move-result-object v0

    .line 279
    if-eqz v0, :cond_6

    invoke-static {p1}, Lcom/inmobi/ads/ab;->b(Lcom/inmobi/ads/ab;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 280
    invoke-static {p1}, Lcom/inmobi/ads/ab;->b(Lcom/inmobi/ads/ab;)Ljava/util/Map;

    move-result-object v7

    monitor-enter v7

    .line 281
    :try_start_0
    invoke-static {p1}, Lcom/inmobi/ads/ab;->b(Lcom/inmobi/ads/ab;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 282
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 283
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/ads/NativeV2DataModel;

    .line 284
    invoke-static {p1}, Lcom/inmobi/ads/ab;->b(Lcom/inmobi/ads/ab;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetType;->ASSET_TYPE_VIDEO:Lcom/inmobi/ads/NativeV2Asset$AssetType;

    invoke-virtual {v2, v0}, Lcom/inmobi/ads/NativeV2DataModel;->a(Lcom/inmobi/ads/NativeV2Asset$AssetType;)Ljava/util/List;

    move-result-object v0

    .line 286
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 287
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/av;

    .line 288
    invoke-virtual {v0}, Lcom/inmobi/ads/av;->D()Lcom/inmobi/ads/bk;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/ads/bk;->b()Ljava/lang/String;

    move-result-object v0

    .line 289
    invoke-static {}, Lcom/inmobi/ads/l;->a()Lcom/inmobi/ads/l;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/inmobi/ads/l;->c(Ljava/lang/String;)Lcom/inmobi/ads/b;

    move-result-object v0

    .line 290
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/inmobi/ads/b;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 291
    :cond_1
    const-string v0, "NoCachedVideoAsset"

    invoke-virtual {v6, v0}, Lcom/inmobi/ads/ac;->e(Ljava/lang/String;)V

    .line 292
    monitor-exit v7

    goto :goto_0

    .line 316
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 297
    :cond_2
    :try_start_1
    invoke-virtual {v6}, Lcom/inmobi/ads/ac;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/inmobi/ads/AdContainer$RenderingProperties;

    sget-object v3, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_INLINE:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    invoke-direct {v1, v3}, Lcom/inmobi/ads/AdContainer$RenderingProperties;-><init>(Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;)V

    .line 299
    invoke-virtual {v6}, Lcom/inmobi/ads/ac;->m()Ljava/lang/String;

    move-result-object v3

    .line 300
    invoke-virtual {v6}, Lcom/inmobi/ads/ac;->n()Ljava/lang/String;

    move-result-object v4

    .line 301
    invoke-virtual {v6}, Lcom/inmobi/ads/ac;->g()Ljava/util/Set;

    move-result-object v5

    .line 297
    invoke-static/range {v0 .. v5}, Lcom/inmobi/ads/ai$a;->a(Landroid/content/Context;Lcom/inmobi/ads/AdContainer$RenderingProperties;Lcom/inmobi/ads/NativeV2DataModel;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Lcom/inmobi/ads/ai;

    move-result-object v1

    .line 302
    if-nez v1, :cond_3

    .line 303
    const-string v0, "DataModelValidationFailed"

    invoke-virtual {v6, v0}, Lcom/inmobi/ads/ac;->e(Ljava/lang/String;)V

    move-object v0, v1

    .line 316
    :goto_1
    monitor-exit v7

    :goto_2
    move-object v1, v0

    .line 318
    goto/16 :goto_0

    .line 305
    :cond_3
    invoke-virtual {v6, v1}, Lcom/inmobi/ads/ac;->a(Lcom/inmobi/ads/ai;)V

    .line 306
    invoke-static {p1}, Lcom/inmobi/ads/ab;->c(Lcom/inmobi/ads/ab;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 307
    if-eqz v0, :cond_4

    .line 308
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/ab$a;

    .line 309
    if-eqz v0, :cond_4

    .line 310
    invoke-interface {v0}, Lcom/inmobi/ads/ab$a;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    move-object v0, v1

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_1

    :cond_6
    move-object v0, v1

    goto :goto_2
.end method
