.class final enum Lcom/inmobi/ads/ab$c$1;
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
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/inmobi/ads/ab$c;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/inmobi/ads/ab$1;)V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/ab$c$1;Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/inmobi/ads/ab$c$1;->f(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;)V

    return-void
.end method

.method private f(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;)V
    .locals 2

    .prologue
    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 89
    new-instance v1, Lcom/inmobi/ads/ab$c$1$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/inmobi/ads/ab$c$1$2;-><init>(Lcom/inmobi/ads/ab$c$1;Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 101
    return-void
.end method


# virtual methods
.method a(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;)V
    .locals 2
    .param p2    # Lcom/inmobi/ads/ab$b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 55
    invoke-static {}, Lcom/inmobi/ads/ab;->j()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/inmobi/ads/ab$c$1$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/inmobi/ads/ab$c$1$1;-><init>(Lcom/inmobi/ads/ab$c$1;Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 85
    return-void
.end method

.method a(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;Lcom/inmobi/ads/AdUnit;Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 2

    .prologue
    .line 227
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 238
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    invoke-static {p1}, Lcom/inmobi/ads/ab;->c(Lcom/inmobi/ads/ab;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 231
    if-eqz v0, :cond_0

    .line 232
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/ab$a;

    .line 233
    if-eqz v0, :cond_0

    .line 234
    const/4 v1, 0x0

    invoke-interface {v0, v1, p4}, Lcom/inmobi/ads/ab$a;->a(ZLcom/inmobi/ads/InMobiAdRequestStatus;)V

    goto :goto_0
.end method

.method a(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;Lcom/inmobi/ads/AdUnit;Lorg/json/JSONObject;)V
    .locals 7

    .prologue
    .line 179
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    .line 217
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/inmobi/ads/ab$c$1$3;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p3

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/ads/ab$c$1$3;-><init>(Lcom/inmobi/ads/ab$c$1;Lorg/json/JSONObject;Lcom/inmobi/ads/AdUnit;Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 216
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method a(Lcom/inmobi/ads/ab;Z)V
    .locals 3

    .prologue
    .line 242
    if-nez p2, :cond_0

    .line 243
    sget-object v0, Lcom/inmobi/ads/ab$c;->b:Lcom/inmobi/ads/ab$c;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/inmobi/ads/ab$c;->a(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;)V

    .line 244
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/ab;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "App went to background; stopping cache replenish handler"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    :cond_0
    return-void
.end method

.method b(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;)V
    .locals 1

    .prologue
    .line 106
    sget-object v0, Lcom/inmobi/ads/ab$c$1;->a:Lcom/inmobi/ads/ab$c;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/ads/ab$c;->a(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;)V

    .line 107
    return-void
.end method

.method b(Lcom/inmobi/ads/ab;Z)V
    .locals 3

    .prologue
    .line 250
    if-nez p2, :cond_0

    .line 251
    sget-object v0, Lcom/inmobi/ads/ab$c;->b:Lcom/inmobi/ads/ab$c;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/inmobi/ads/ab$c;->a(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;)V

    .line 252
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/ab;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Connectivity lost; stopping cache replenish handler"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :cond_0
    return-void
.end method

.method c(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;)V
    .locals 1

    .prologue
    .line 116
    sget-object v0, Lcom/inmobi/ads/ab$c$1;->d:Lcom/inmobi/ads/ab$c;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/ads/ab$c;->a(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;)V

    .line 117
    return-void
.end method

.method d(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;)V
    .locals 2
    .param p2    # Lcom/inmobi/ads/ab$b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 121
    if-nez p2, :cond_1

    .line 125
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v0, p2, Lcom/inmobi/ads/ab$b;->c:Lcom/inmobi/ads/ac;

    .line 123
    invoke-static {p1}, Lcom/inmobi/ads/ab;->b(Lcom/inmobi/ads/ab;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 124
    invoke-virtual {v0}, Lcom/inmobi/ads/ac;->x()V

    goto :goto_0
.end method

.method e(Lcom/inmobi/ads/ab;Lcom/inmobi/ads/ab$b;)Lcom/inmobi/ads/ai;
    .locals 8
    .param p2    # Lcom/inmobi/ads/ab$b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 129
    if-nez p2, :cond_0

    .line 173
    :goto_0
    return-object v1

    .line 130
    :cond_0
    iget-object v6, p2, Lcom/inmobi/ads/ab$b;->c:Lcom/inmobi/ads/ac;

    .line 133
    invoke-virtual {v6}, Lcom/inmobi/ads/ac;->a()Landroid/content/Context;

    move-result-object v0

    .line 134
    if-eqz v0, :cond_6

    invoke-static {p1}, Lcom/inmobi/ads/ab;->b(Lcom/inmobi/ads/ab;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 135
    invoke-static {p1}, Lcom/inmobi/ads/ab;->b(Lcom/inmobi/ads/ab;)Ljava/util/Map;

    move-result-object v7

    monitor-enter v7

    .line 136
    :try_start_0
    invoke-static {p1}, Lcom/inmobi/ads/ab;->b(Lcom/inmobi/ads/ab;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 137
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    .line 138
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/ads/NativeV2DataModel;

    .line 139
    invoke-static {p1}, Lcom/inmobi/ads/ab;->b(Lcom/inmobi/ads/ab;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetType;->ASSET_TYPE_VIDEO:Lcom/inmobi/ads/NativeV2Asset$AssetType;

    invoke-virtual {v2, v0}, Lcom/inmobi/ads/NativeV2DataModel;->a(Lcom/inmobi/ads/NativeV2Asset$AssetType;)Ljava/util/List;

    move-result-object v0

    .line 141
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    .line 142
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/av;

    .line 143
    invoke-virtual {v0}, Lcom/inmobi/ads/av;->D()Lcom/inmobi/ads/bk;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/ads/bk;->b()Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-static {}, Lcom/inmobi/ads/l;->a()Lcom/inmobi/ads/l;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/inmobi/ads/l;->c(Ljava/lang/String;)Lcom/inmobi/ads/b;

    move-result-object v0

    .line 145
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/inmobi/ads/b;->d()Z

    move-result v0

    if-nez v0, :cond_2

    .line 146
    :cond_1
    const-string v0, "NoCachedVideoAsset"

    invoke-virtual {v6, v0}, Lcom/inmobi/ads/ac;->e(Ljava/lang/String;)V

    .line 147
    monitor-exit v7

    goto :goto_0

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 152
    :cond_2
    :try_start_1
    invoke-virtual {v6}, Lcom/inmobi/ads/ac;->a()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/inmobi/ads/AdContainer$RenderingProperties;

    sget-object v3, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_INLINE:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    invoke-direct {v1, v3}, Lcom/inmobi/ads/AdContainer$RenderingProperties;-><init>(Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;)V

    .line 154
    invoke-virtual {v6}, Lcom/inmobi/ads/ac;->m()Ljava/lang/String;

    move-result-object v3

    .line 155
    invoke-virtual {v6}, Lcom/inmobi/ads/ac;->n()Ljava/lang/String;

    move-result-object v4

    .line 156
    invoke-virtual {v6}, Lcom/inmobi/ads/ac;->g()Ljava/util/Set;

    move-result-object v5

    .line 152
    invoke-static/range {v0 .. v5}, Lcom/inmobi/ads/ai$a;->a(Landroid/content/Context;Lcom/inmobi/ads/AdContainer$RenderingProperties;Lcom/inmobi/ads/NativeV2DataModel;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Lcom/inmobi/ads/ai;

    move-result-object v1

    .line 157
    if-nez v1, :cond_3

    .line 158
    const-string v0, "DataModelValidationFailed"

    invoke-virtual {v6, v0}, Lcom/inmobi/ads/ac;->e(Ljava/lang/String;)V

    move-object v0, v1

    .line 171
    :goto_1
    monitor-exit v7

    :goto_2
    move-object v1, v0

    .line 173
    goto/16 :goto_0

    .line 160
    :cond_3
    invoke-virtual {v6, v1}, Lcom/inmobi/ads/ac;->a(Lcom/inmobi/ads/ai;)V

    .line 161
    invoke-static {p1}, Lcom/inmobi/ads/ab;->c(Lcom/inmobi/ads/ab;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 162
    if-eqz v0, :cond_4

    .line 163
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/ab$a;

    .line 164
    if-eqz v0, :cond_4

    .line 165
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
