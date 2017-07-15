.class public Lcom/inmobi/ads/av;
.super Lcom/inmobi/ads/NativeV2Asset;
.source "NativeV2VideoAsset.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/av$a;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field private C:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/NativeV2Asset;",
            ">;"
        }
    .end annotation
.end field

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeStrandAssetStyle;Lcom/inmobi/ads/bk;ZZZZ[Lcom/inmobi/ads/ah;Lorg/json/JSONObject;Landroid/graphics/Bitmap;)V
    .locals 8

    .prologue
    .line 84
    sget-object v1, Lcom/inmobi/ads/NativeV2Asset$AssetType;->ASSET_TYPE_VIDEO:Lcom/inmobi/ads/NativeV2Asset$AssetType;

    invoke-direct {p0, p1, p2, v1, p3}, Lcom/inmobi/ads/NativeV2Asset;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeV2Asset$AssetType;Lcom/inmobi/ads/NativeStrandAssetStyle;)V

    .line 85
    iput-object p4, p0, Lcom/inmobi/ads/av;->e:Ljava/lang/Object;

    .line 86
    sget-object v1, Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;->ASSET_INTERACTION_MODE_BROWSER:Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;

    iput-object v1, p0, Lcom/inmobi/ads/av;->i:Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;

    .line 87
    iput-boolean p5, p0, Lcom/inmobi/ads/av;->y:Z

    .line 88
    iput-boolean p6, p0, Lcom/inmobi/ads/av;->z:Z

    .line 89
    iput-boolean p7, p0, Lcom/inmobi/ads/av;->A:Z

    .line 90
    move/from16 v0, p8

    iput-boolean v0, p0, Lcom/inmobi/ads/av;->B:Z

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/inmobi/ads/av;->x:Ljava/util/List;

    .line 93
    if-eqz p4, :cond_5

    .line 94
    invoke-interface {p4}, Lcom/inmobi/ads/bk;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/inmobi/ads/av;->q:Ljava/lang/String;

    .line 98
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {p4}, Lcom/inmobi/ads/bk;->e()Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 100
    const/4 v1, 0x0

    .line 101
    if-eqz p9, :cond_8

    .line 102
    move-object/from16 v0, p9

    array-length v4, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, p9, v2

    .line 103
    sget-object v6, Lcom/inmobi/ads/ah$a;->v:Lcom/inmobi/ads/ah$a;

    invoke-virtual {v5}, Lcom/inmobi/ads/ah;->c()Lcom/inmobi/ads/ah$a;

    move-result-object v7

    if-ne v6, v7, :cond_1

    .line 104
    invoke-virtual {v5}, Lcom/inmobi/ads/ah;->d()Ljava/util/Map;

    move-result-object v1

    .line 105
    invoke-virtual {v5}, Lcom/inmobi/ads/ah;->b()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 106
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 109
    :cond_1
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    move-object v2, v1

    .line 114
    :goto_2
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/ah;

    .line 115
    sget-object v5, Lcom/inmobi/ads/ah$a;->v:Lcom/inmobi/ads/ah$a;

    invoke-virtual {v1}, Lcom/inmobi/ads/ah;->c()Lcom/inmobi/ads/ah$a;

    move-result-object v6

    if-ne v5, v6, :cond_3

    .line 116
    invoke-virtual {v1, v2}, Lcom/inmobi/ads/ah;->b(Ljava/util/Map;)V

    goto :goto_3

    .line 120
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 122
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/inmobi/ads/ah;

    .line 123
    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 124
    invoke-virtual {p0, v1}, Lcom/inmobi/ads/av;->a([Lcom/inmobi/ads/ah;)V

    .line 128
    :cond_5
    if-eqz p10, :cond_6

    .line 129
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/inmobi/ads/av;->f:Lorg/json/JSONObject;

    .line 132
    :cond_6
    if-eqz p11, :cond_7

    .line 133
    move-object/from16 v0, p11

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/av;->b(Ljava/lang/Object;)V

    .line 137
    :cond_7
    iget-object v1, p0, Lcom/inmobi/ads/av;->u:Ljava/util/Map;

    const-string v2, "placementType"

    sget-object v3, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_INLINE:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    iget-object v1, p0, Lcom/inmobi/ads/av;->u:Ljava/util/Map;

    const-string v2, "lastVisibleTimestamp"

    const/high16 v3, -0x80000000

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    iget-object v1, p0, Lcom/inmobi/ads/av;->u:Ljava/util/Map;

    const-string v2, "visible"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v1, p0, Lcom/inmobi/ads/av;->u:Ljava/util/Map;

    const-string v2, "seekPosition"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v1, p0, Lcom/inmobi/ads/av;->u:Ljava/util/Map;

    const-string v2, "didStartPlaying"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object v1, p0, Lcom/inmobi/ads/av;->u:Ljava/util/Map;

    const-string v2, "didPause"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    iget-object v1, p0, Lcom/inmobi/ads/av;->u:Ljava/util/Map;

    const-string v2, "didCompleteQ1"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    iget-object v1, p0, Lcom/inmobi/ads/av;->u:Ljava/util/Map;

    const-string v2, "didCompleteQ2"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v1, p0, Lcom/inmobi/ads/av;->u:Ljava/util/Map;

    const-string v2, "didCompleteQ3"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v1, p0, Lcom/inmobi/ads/av;->u:Ljava/util/Map;

    const-string v2, "didCompleteQ4"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v1, p0, Lcom/inmobi/ads/av;->u:Ljava/util/Map;

    const-string v2, "didRequestFullScreen"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v1, p0, Lcom/inmobi/ads/av;->u:Ljava/util/Map;

    const-string v2, "isFullScreen"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    iget-object v1, p0, Lcom/inmobi/ads/av;->u:Ljava/util/Map;

    const-string v2, "didImpressionFire"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v1, p0, Lcom/inmobi/ads/av;->u:Ljava/util/Map;

    const-string v2, "mapViewabilityParams"

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    iget-object v1, p0, Lcom/inmobi/ads/av;->u:Ljava/util/Map;

    const-string v2, "didSignalVideoCompleted"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v1, p0, Lcom/inmobi/ads/av;->u:Ljava/util/Map;

    const-string v2, "shouldAutoPlay"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v1, p0, Lcom/inmobi/ads/av;->u:Ljava/util/Map;

    const-string v2, "lastMediaVolume"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v1, p0, Lcom/inmobi/ads/av;->u:Ljava/util/Map;

    const-string v2, "currentMediaVolume"

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    return-void

    :cond_8
    move-object v2, v1

    goto/16 :goto_2
.end method


# virtual methods
.method public A()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/inmobi/ads/av;->z:Z

    return v0
.end method

.method public B()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Lcom/inmobi/ads/av;->A:Z

    return v0
.end method

.method public C()Z
    .locals 1

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/inmobi/ads/av;->B:Z

    return v0
.end method

.method public D()Lcom/inmobi/ads/bk;
    .locals 1

    .prologue
    .line 207
    invoke-virtual {p0}, Lcom/inmobi/ads/av;->d()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/ads/av;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/bk;

    goto :goto_0
.end method

.method public a(Lcom/inmobi/ads/av;)V
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/inmobi/ads/av;->u:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 216
    iget-object v0, p0, Lcom/inmobi/ads/av;->C:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/inmobi/ads/av;->y()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 217
    invoke-virtual {p1}, Lcom/inmobi/ads/av;->f()[Lcom/inmobi/ads/ah;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/av;->t:[Lcom/inmobi/ads/ah;

    .line 218
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/inmobi/ads/av;->C:Ljava/util/Map;

    .line 159
    return-void
.end method

.method public b(I)I
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/inmobi/ads/av;->C:Ljava/util/Map;

    const-string v1, "time"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/inmobi/ads/av;->C:Ljava/util/Map;

    const-string v1, "time"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 170
    :cond_0
    return p1
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 178
    iput-boolean p1, p0, Lcom/inmobi/ads/av;->y:Z

    .line 179
    return-void
.end method

.method public c(Lcom/inmobi/ads/NativeV2Asset;)V
    .locals 1
    .param p1    # Lcom/inmobi/ads/NativeV2Asset;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 174
    iget-object v0, p0, Lcom/inmobi/ads/av;->x:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    return-void
.end method

.method public y()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Lcom/inmobi/ads/av;->C:Ljava/util/Map;

    return-object v0
.end method

.method public z()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/inmobi/ads/av;->y:Z

    return v0
.end method
