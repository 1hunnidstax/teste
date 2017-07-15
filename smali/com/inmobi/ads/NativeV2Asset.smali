.class public Lcom/inmobi/ads/NativeV2Asset;
.super Ljava/lang/Object;
.source "NativeV2Asset.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/NativeV2Asset$AssetVisibility;,
        Lcom/inmobi/ads/NativeV2Asset$AssetDisplayOnType;,
        Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;,
        Lcom/inmobi/ads/NativeV2Asset$AssetActionOnFinish;,
        Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;,
        Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;,
        Lcom/inmobi/ads/NativeV2Asset$AssetValueType;,
        Lcom/inmobi/ads/NativeV2Asset$AssetType;
    }
.end annotation


# static fields
.field private static final x:Ljava/lang/String;


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Lcom/inmobi/ads/NativeV2Asset$AssetType;

.field protected c:Lcom/inmobi/ads/NativeStrandAssetStyle;

.field protected d:Ljava/lang/String;

.field protected e:Ljava/lang/Object;

.field protected f:Lorg/json/JSONObject;

.field protected g:Ljava/lang/String;

.field protected h:Z

.field protected i:Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;

.field protected j:Ljava/lang/String;

.field protected k:Lcom/inmobi/ads/NativeV2Asset$AssetActionOnFinish;

.field protected l:Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;

.field protected m:Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;

.field protected n:Lcom/inmobi/ads/NativeV2Asset$AssetDisplayOnType;

.field protected o:I

.field protected p:Ljava/lang/String;

.field protected q:Ljava/lang/String;

.field protected r:Ljava/lang/String;

.field protected s:Lcom/inmobi/ads/NativeV2Asset;

.field protected t:[Lcom/inmobi/ads/ah;

.field protected u:Ljava/util/Map;
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

.field protected v:Ljava/lang/Object;

.field protected w:Lcom/inmobi/ads/NativeV2Asset$AssetVisibility;

.field private y:Lcom/inmobi/ads/NativeV2Asset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/inmobi/ads/NativeV2Asset;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/NativeV2Asset;->x:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 137
    const-string v0, ""

    const-string v1, "root"

    sget-object v2, Lcom/inmobi/ads/NativeV2Asset$AssetType;->ASSET_TYPE_CONTAINER:Lcom/inmobi/ads/NativeV2Asset$AssetType;

    invoke-direct {p0, v0, v1, v2}, Lcom/inmobi/ads/NativeV2Asset;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeV2Asset$AssetType;)V

    .line 138
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeV2Asset$AssetType;)V
    .locals 1

    .prologue
    .line 141
    new-instance v0, Lcom/inmobi/ads/NativeStrandAssetStyle;

    invoke-direct {v0}, Lcom/inmobi/ads/NativeStrandAssetStyle;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/inmobi/ads/NativeV2Asset;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeV2Asset$AssetType;Lcom/inmobi/ads/NativeStrandAssetStyle;)V

    .line 142
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeV2Asset$AssetType;Lcom/inmobi/ads/NativeStrandAssetStyle;)V
    .locals 6

    .prologue
    .line 145
    const/4 v0, 0x0

    new-array v5, v0, [Lcom/inmobi/ads/ah;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/ads/NativeV2Asset;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeV2Asset$AssetType;Lcom/inmobi/ads/NativeStrandAssetStyle;[Lcom/inmobi/ads/ah;)V

    .line 146
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeV2Asset$AssetType;Lcom/inmobi/ads/NativeStrandAssetStyle;[Lcom/inmobi/ads/ah;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Lcom/inmobi/ads/NativeV2Asset;->a:Ljava/lang/String;

    .line 152
    iput-object p2, p0, Lcom/inmobi/ads/NativeV2Asset;->d:Ljava/lang/String;

    .line 153
    iput-object p3, p0, Lcom/inmobi/ads/NativeV2Asset;->b:Lcom/inmobi/ads/NativeV2Asset$AssetType;

    .line 154
    iput-object p4, p0, Lcom/inmobi/ads/NativeV2Asset;->c:Lcom/inmobi/ads/NativeStrandAssetStyle;

    .line 155
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/ads/NativeV2Asset;->e:Ljava/lang/Object;

    .line 156
    const-string v0, ""

    iput-object v0, p0, Lcom/inmobi/ads/NativeV2Asset;->g:Ljava/lang/String;

    .line 157
    iput-boolean v2, p0, Lcom/inmobi/ads/NativeV2Asset;->h:Z

    .line 158
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;->ASSET_INTERACTION_MODE_NO_ACTION:Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;

    iput-object v0, p0, Lcom/inmobi/ads/NativeV2Asset;->i:Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;

    .line 159
    const-string v0, ""

    iput-object v0, p0, Lcom/inmobi/ads/NativeV2Asset;->j:Ljava/lang/String;

    .line 160
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;->ASSET_ACTION_ON_CLICK_NONE:Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;

    iput-object v0, p0, Lcom/inmobi/ads/NativeV2Asset;->l:Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;

    .line 161
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnFinish;->ASSET_ACTION_ON_FINISH_NONE:Lcom/inmobi/ads/NativeV2Asset$AssetActionOnFinish;

    iput-object v0, p0, Lcom/inmobi/ads/NativeV2Asset;->k:Lcom/inmobi/ads/NativeV2Asset$AssetActionOnFinish;

    .line 162
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;->ASSET_REFERENCED_CREATIVE_NONE:Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;

    iput-object v0, p0, Lcom/inmobi/ads/NativeV2Asset;->m:Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;

    .line 163
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetDisplayOnType;->ASSET_DISPLAY_ON_TYPE_ALWAYS:Lcom/inmobi/ads/NativeV2Asset$AssetDisplayOnType;

    iput-object v0, p0, Lcom/inmobi/ads/NativeV2Asset;->n:Lcom/inmobi/ads/NativeV2Asset$AssetDisplayOnType;

    .line 164
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetVisibility;->VISIBLE:Lcom/inmobi/ads/NativeV2Asset$AssetVisibility;

    iput-object v0, p0, Lcom/inmobi/ads/NativeV2Asset;->w:Lcom/inmobi/ads/NativeV2Asset$AssetVisibility;

    .line 165
    const/4 v0, -0x1

    iput v0, p0, Lcom/inmobi/ads/NativeV2Asset;->o:I

    .line 166
    const-string v0, ""

    iput-object v0, p0, Lcom/inmobi/ads/NativeV2Asset;->p:Ljava/lang/String;

    .line 167
    const-string v0, ""

    iput-object v0, p0, Lcom/inmobi/ads/NativeV2Asset;->q:Ljava/lang/String;

    .line 168
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/NativeV2Asset;->f:Lorg/json/JSONObject;

    .line 169
    array-length v0, p5

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 170
    new-array v1, v0, [Lcom/inmobi/ads/ah;

    iput-object v1, p0, Lcom/inmobi/ads/NativeV2Asset;->t:[Lcom/inmobi/ads/ah;

    .line 171
    iget-object v1, p0, Lcom/inmobi/ads/NativeV2Asset;->t:[Lcom/inmobi/ads/ah;

    invoke-static {p5, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 172
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/NativeV2Asset;->u:Ljava/util/Map;

    .line 173
    return-void
.end method


# virtual methods
.method public a()Lcom/inmobi/ads/NativeV2Asset$AssetType;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/inmobi/ads/NativeV2Asset;->b:Lcom/inmobi/ads/NativeV2Asset$AssetType;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 309
    iput p1, p0, Lcom/inmobi/ads/NativeV2Asset;->o:I

    .line 310
    return-void
.end method

.method public a(Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;)V
    .locals 0

    .prologue
    .line 277
    iput-object p1, p0, Lcom/inmobi/ads/NativeV2Asset;->l:Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;

    .line 278
    return-void
.end method

.method public a(Lcom/inmobi/ads/NativeV2Asset$AssetActionOnFinish;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/inmobi/ads/NativeV2Asset;->k:Lcom/inmobi/ads/NativeV2Asset$AssetActionOnFinish;

    .line 286
    return-void
.end method

.method public a(Lcom/inmobi/ads/NativeV2Asset$AssetDisplayOnType;)V
    .locals 0

    .prologue
    .line 301
    iput-object p1, p0, Lcom/inmobi/ads/NativeV2Asset;->n:Lcom/inmobi/ads/NativeV2Asset$AssetDisplayOnType;

    .line 302
    return-void
.end method

.method public a(Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/inmobi/ads/NativeV2Asset;->i:Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;

    .line 261
    return-void
.end method

.method public a(Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lcom/inmobi/ads/NativeV2Asset;->m:Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;

    .line 294
    return-void
.end method

.method public a(Lcom/inmobi/ads/NativeV2Asset$AssetVisibility;)V
    .locals 0

    .prologue
    .line 264
    iput-object p1, p0, Lcom/inmobi/ads/NativeV2Asset;->w:Lcom/inmobi/ads/NativeV2Asset$AssetVisibility;

    .line 266
    return-void
.end method

.method public a(Lcom/inmobi/ads/NativeV2Asset;)V
    .locals 0

    .prologue
    .line 247
    iput-object p1, p0, Lcom/inmobi/ads/NativeV2Asset;->y:Lcom/inmobi/ads/NativeV2Asset;

    .line 248
    return-void
.end method

.method public a(Lcom/inmobi/ads/ah$a;Ljava/util/Map;)V
    .locals 5
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/ah$a;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 186
    iget-object v0, p0, Lcom/inmobi/ads/NativeV2Asset;->t:[Lcom/inmobi/ads/ah;

    array-length v0, v0

    if-nez v0, :cond_1

    .line 192
    :cond_0
    return-void

    .line 187
    :cond_1
    iget-object v1, p0, Lcom/inmobi/ads/NativeV2Asset;->t:[Lcom/inmobi/ads/ah;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 188
    invoke-virtual {v3}, Lcom/inmobi/ads/ah;->c()Lcom/inmobi/ads/ah$a;

    move-result-object v4

    if-ne p1, v4, :cond_2

    .line 189
    invoke-virtual {p0, v3, p2}, Lcom/inmobi/ads/NativeV2Asset;->a(Lcom/inmobi/ads/ah;Ljava/util/Map;)V

    .line 187
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public a(Lcom/inmobi/ads/ah;Ljava/util/Map;)V
    .locals 4
    .param p1    # Lcom/inmobi/ads/ah;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/ah;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeV2Asset;->x()Lcom/inmobi/rendering/a/c;

    move-result-object v0

    .line 178
    invoke-virtual {p1}, Lcom/inmobi/ads/ah;->b()Ljava/lang/String;

    move-result-object v1

    .line 180
    invoke-static {v1, p2}, Lcom/inmobi/commons/core/utilities/d;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-virtual {p1}, Lcom/inmobi/ads/ah;->d()Ljava/util/Map;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/rendering/a/c;->a(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 182
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/inmobi/ads/NativeV2Asset;->e:Ljava/lang/Object;

    .line 212
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/inmobi/ads/NativeV2Asset;->g:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 243
    iput-boolean p1, p0, Lcom/inmobi/ads/NativeV2Asset;->h:Z

    .line 244
    return-void
.end method

.method public a([Lcom/inmobi/ads/ah;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 219
    array-length v0, p1

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 220
    new-array v1, v0, [Lcom/inmobi/ads/ah;

    iput-object v1, p0, Lcom/inmobi/ads/NativeV2Asset;->t:[Lcom/inmobi/ads/ah;

    .line 221
    iget-object v1, p0, Lcom/inmobi/ads/NativeV2Asset;->t:[Lcom/inmobi/ads/ah;

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    return-void
.end method

.method public b()Lcom/inmobi/ads/NativeStrandAssetStyle;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/inmobi/ads/NativeV2Asset;->c:Lcom/inmobi/ads/NativeStrandAssetStyle;

    return-object v0
.end method

.method public b(Lcom/inmobi/ads/NativeV2Asset;)V
    .locals 0
    .param p1    # Lcom/inmobi/ads/NativeV2Asset;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 349
    iput-object p1, p0, Lcom/inmobi/ads/NativeV2Asset;->s:Lcom/inmobi/ads/NativeV2Asset;

    .line 350
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 367
    iput-object p1, p0, Lcom/inmobi/ads/NativeV2Asset;->v:Ljava/lang/Object;

    .line 368
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 317
    iput-object p1, p0, Lcom/inmobi/ads/NativeV2Asset;->p:Ljava/lang/String;

    .line 318
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lcom/inmobi/ads/NativeV2Asset;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 325
    iput-object p1, p0, Lcom/inmobi/ads/NativeV2Asset;->j:Ljava/lang/String;

    .line 326
    return-void
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/inmobi/ads/NativeV2Asset;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 329
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/NativeV2Asset;->q:Ljava/lang/String;

    .line 330
    return-void
.end method

.method public e()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/inmobi/ads/NativeV2Asset;->f:Lorg/json/JSONObject;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 333
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/NativeV2Asset;->r:Ljava/lang/String;

    .line 334
    return-void
.end method

.method public f()[Lcom/inmobi/ads/ah;
    .locals 2

    .prologue
    .line 226
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/inmobi/ads/NativeV2Asset;->t:[Lcom/inmobi/ads/ah;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 227
    iget-object v1, p0, Lcom/inmobi/ads/NativeV2Asset;->t:[Lcom/inmobi/ads/ah;

    array-length v1, v1

    new-array v1, v1, [Lcom/inmobi/ads/ah;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/ads/ah;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/inmobi/ads/NativeV2Asset;->g:Ljava/lang/String;

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/inmobi/ads/NativeV2Asset;->h:Z

    return v0
.end method

.method public i()Lcom/inmobi/ads/NativeV2Asset;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/inmobi/ads/NativeV2Asset;->y:Lcom/inmobi/ads/NativeV2Asset;

    return-object v0
.end method

.method public j()Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/inmobi/ads/NativeV2Asset;->i:Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;

    return-object v0
.end method

.method public k()Lcom/inmobi/ads/NativeV2Asset$AssetVisibility;
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/inmobi/ads/NativeV2Asset;->w:Lcom/inmobi/ads/NativeV2Asset$AssetVisibility;

    return-object v0
.end method

.method public l()Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lcom/inmobi/ads/NativeV2Asset;->l:Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;

    return-object v0
.end method

.method public m()Lcom/inmobi/ads/NativeV2Asset$AssetActionOnFinish;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/inmobi/ads/NativeV2Asset;->k:Lcom/inmobi/ads/NativeV2Asset$AssetActionOnFinish;

    return-object v0
.end method

.method public n()Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/inmobi/ads/NativeV2Asset;->m:Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;

    return-object v0
.end method

.method public o()Lcom/inmobi/ads/NativeV2Asset$AssetDisplayOnType;
    .locals 1

    .prologue
    .line 297
    iget-object v0, p0, Lcom/inmobi/ads/NativeV2Asset;->n:Lcom/inmobi/ads/NativeV2Asset$AssetDisplayOnType;

    return-object v0
.end method

.method public p()I
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lcom/inmobi/ads/NativeV2Asset;->o:I

    return v0
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/inmobi/ads/NativeV2Asset;->j:Ljava/lang/String;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lcom/inmobi/ads/NativeV2Asset;->q:Ljava/lang/String;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/inmobi/ads/NativeV2Asset;->r:Ljava/lang/String;

    return-object v0
.end method

.method public t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 345
    iget-object v0, p0, Lcom/inmobi/ads/NativeV2Asset;->a:Ljava/lang/String;

    return-object v0
.end method

.method public u()Lcom/inmobi/ads/NativeV2Asset;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/inmobi/ads/NativeV2Asset;->s:Lcom/inmobi/ads/NativeV2Asset;

    return-object v0
.end method

.method public v()Ljava/util/Map;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

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
    .line 358
    iget-object v0, p0, Lcom/inmobi/ads/NativeV2Asset;->u:Ljava/util/Map;

    return-object v0
.end method

.method public w()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 363
    iget-object v0, p0, Lcom/inmobi/ads/NativeV2Asset;->v:Ljava/lang/Object;

    return-object v0
.end method

.method x()Lcom/inmobi/rendering/a/c;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 372
    invoke-static {}, Lcom/inmobi/rendering/a/c;->a()Lcom/inmobi/rendering/a/c;

    move-result-object v0

    return-object v0
.end method
