.class public Lcom/inmobi/ads/NativeV2DataModel;
.super Ljava/lang/Object;
.source "NativeV2DataModel.java"


# annotations
.annotation build Landroid/support/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/NativeV2DataModel$Orientation;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lorg/json/JSONObject;

.field private c:Ljava/lang/String;

.field private d:Lcom/inmobi/ads/NativeV2DataModel$Orientation;

.field private e:Z

.field private f:Lorg/json/JSONObject;

.field private g:Lcom/inmobi/ads/aj;

.field private h:Lorg/json/JSONArray;

.field private final i:Lcom/inmobi/ads/NativeV2DataModel;

.field private j:Ljava/util/Map;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/inmobi/ads/NativeV2Asset$AssetType;",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/NativeV2Asset;",
            ">;>;"
        }
    .end annotation
.end field

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/inmobi/ads/NativeV2Asset;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lcom/inmobi/ads/bj;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private o:Lcom/inmobi/ads/c$g;

.field private p:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const-class v0, Lcom/inmobi/ads/NativeV2DataModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/NativeV2DataModel;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/ads/NativeV2DataModel;->i:Lcom/inmobi/ads/NativeV2DataModel;

    .line 189
    return-void
.end method

.method public constructor <init>(Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;Lorg/json/JSONObject;Lcom/inmobi/ads/NativeV2DataModel;Lcom/inmobi/ads/c$g;Lcom/inmobi/ads/bj;)V
    .locals 1
    .param p1    # Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/inmobi/ads/NativeV2DataModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/inmobi/ads/c$g;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/inmobi/ads/bj;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    iput-object p1, p0, Lcom/inmobi/ads/NativeV2DataModel;->p:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 202
    iput-object p3, p0, Lcom/inmobi/ads/NativeV2DataModel;->i:Lcom/inmobi/ads/NativeV2DataModel;

    .line 203
    if-nez p4, :cond_0

    new-instance p4, Lcom/inmobi/ads/c$g;

    invoke-direct {p4}, Lcom/inmobi/ads/c$g;-><init>()V

    :cond_0
    iput-object p4, p0, Lcom/inmobi/ads/NativeV2DataModel;->o:Lcom/inmobi/ads/c$g;

    .line 204
    iput-object p2, p0, Lcom/inmobi/ads/NativeV2DataModel;->b:Lorg/json/JSONObject;

    .line 205
    sget-object v0, Lcom/inmobi/ads/NativeV2DataModel$Orientation;->ORIENTATION_UNSPECIFIED:Lcom/inmobi/ads/NativeV2DataModel$Orientation;

    iput-object v0, p0, Lcom/inmobi/ads/NativeV2DataModel;->d:Lcom/inmobi/ads/NativeV2DataModel$Orientation;

    .line 206
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/ads/NativeV2DataModel;->e:Z

    .line 207
    iput-object p5, p0, Lcom/inmobi/ads/NativeV2DataModel;->n:Lcom/inmobi/ads/bj;

    .line 208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/NativeV2DataModel;->l:Ljava/util/Map;

    .line 209
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/NativeV2DataModel;->m:Ljava/util/Map;

    .line 210
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/NativeV2DataModel;->k:Ljava/util/Map;

    .line 212
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeV2DataModel;->m()V

    .line 213
    return-void
.end method

.method public constructor <init>(Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;Lorg/json/JSONObject;Lcom/inmobi/ads/c$g;Lcom/inmobi/ads/bj;)V
    .locals 6
    .param p1    # Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/inmobi/ads/c$g;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/inmobi/ads/bj;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 194
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/ads/NativeV2DataModel;-><init>(Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;Lorg/json/JSONObject;Lcom/inmobi/ads/NativeV2DataModel;Lcom/inmobi/ads/c$g;Lcom/inmobi/ads/bj;)V

    .line 195
    return-void
.end method

.method private a(Landroid/graphics/Point;Landroid/graphics/Point;Lorg/json/JSONObject;)Lcom/inmobi/ads/NativeStrandAssetStyle;
    .locals 10
    .param p1    # Landroid/graphics/Point;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Point;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1599
    const-string v0, "border"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1600
    sget-object v6, Lcom/inmobi/ads/NativeStrandAssetStyle$b;->a:Lcom/inmobi/ads/NativeStrandAssetStyle$b;

    .line 1601
    sget-object v0, Lcom/inmobi/ads/NativeStrandAssetStyle$a;->b:Lcom/inmobi/ads/NativeStrandAssetStyle$a;

    .line 1602
    const-string v8, "#ff000000"

    move-object v7, v0

    .line 1626
    :goto_0
    const-string v0, "backgroundColor"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v9, "#00000000"

    .line 1630
    :goto_1
    sget-object v5, Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;->CONTENT_MODE_FILL:Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;

    .line 1631
    const-string v0, "contentMode"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1632
    const-string v0, "contentMode"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1633
    invoke-direct {p0, v0}, Lcom/inmobi/ads/NativeV2DataModel;->n(Ljava/lang/String;)Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;

    move-result-object v5

    .line 1635
    :cond_0
    new-instance v0, Lcom/inmobi/ads/NativeStrandAssetStyle;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p2, Landroid/graphics/Point;->x:I

    iget v4, p2, Landroid/graphics/Point;->y:I

    invoke-direct/range {v0 .. v9}, Lcom/inmobi/ads/NativeStrandAssetStyle;-><init>(IIIILcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;Lcom/inmobi/ads/NativeStrandAssetStyle$b;Lcom/inmobi/ads/NativeStrandAssetStyle$a;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 1604
    :cond_1
    const-string v0, "border"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1605
    const-string v0, "style"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1606
    sget-object v6, Lcom/inmobi/ads/NativeStrandAssetStyle$b;->a:Lcom/inmobi/ads/NativeStrandAssetStyle$b;

    .line 1607
    sget-object v0, Lcom/inmobi/ads/NativeStrandAssetStyle$a;->b:Lcom/inmobi/ads/NativeStrandAssetStyle$a;

    .line 1608
    const-string v8, "#ff000000"

    move-object v7, v0

    goto :goto_0

    .line 1610
    :cond_2
    const-string v0, "style"

    .line 1611
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1610
    invoke-direct {p0, v0}, Lcom/inmobi/ads/NativeV2DataModel;->l(Ljava/lang/String;)Lcom/inmobi/ads/NativeStrandAssetStyle$b;

    move-result-object v6

    .line 1612
    const-string v0, "corner"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1613
    sget-object v0, Lcom/inmobi/ads/NativeStrandAssetStyle$a;->b:Lcom/inmobi/ads/NativeStrandAssetStyle$a;

    .line 1618
    :goto_2
    const-string v2, "color"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1619
    const-string v8, "#ff000000"

    move-object v7, v0

    goto :goto_0

    .line 1615
    :cond_3
    const-string v0, "corner"

    .line 1616
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1615
    invoke-direct {p0, v0}, Lcom/inmobi/ads/NativeV2DataModel;->m(Ljava/lang/String;)Lcom/inmobi/ads/NativeStrandAssetStyle$a;

    move-result-object v0

    goto :goto_2

    .line 1621
    :cond_4
    const-string v2, "color"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    move-object v7, v0

    goto :goto_0

    .line 1626
    :cond_5
    const-string v0, "backgroundColor"

    .line 1628
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    goto :goto_1
.end method

.method private a(Lorg/json/JSONObject;Lcom/inmobi/ads/NativeV2Asset$AssetType;Ljava/lang/String;)Lcom/inmobi/ads/NativeV2Asset;
    .locals 30
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    .prologue
    .line 599
    invoke-direct/range {p0 .. p1}, Lcom/inmobi/ads/NativeV2DataModel;->e(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v3

    .line 600
    invoke-direct/range {p0 .. p1}, Lcom/inmobi/ads/NativeV2DataModel;->f(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v4

    .line 601
    invoke-direct/range {p0 .. p1}, Lcom/inmobi/ads/NativeV2DataModel;->i(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v7

    .line 603
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v7, v1}, Lcom/inmobi/ads/NativeV2DataModel;->a(Lorg/json/JSONObject;Lcom/inmobi/ads/NativeV2Asset$AssetType;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 604
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/NativeV2DataModel;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid asset style for asset: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/NativeV2DataModel;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Asset style JSON: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    const/4 v2, 0x0

    .line 910
    :goto_0
    return-object v2

    .line 609
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/inmobi/ads/NativeV2DataModel;->j(Lorg/json/JSONObject;)Landroid/graphics/Point;

    move-result-object v8

    .line 610
    invoke-direct/range {p0 .. p1}, Lcom/inmobi/ads/NativeV2DataModel;->k(Lorg/json/JSONObject;)Landroid/graphics/Point;

    move-result-object v9

    .line 611
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/ads/NativeV2DataModel;->a(Lorg/json/JSONObject;)[Lcom/inmobi/ads/ah;

    move-result-object v13

    .line 613
    invoke-direct/range {p0 .. p1}, Lcom/inmobi/ads/NativeV2DataModel;->l(Lorg/json/JSONObject;)Lcom/inmobi/ads/NativeV2Asset$AssetDisplayOnType;

    move-result-object v26

    .line 614
    invoke-direct/range {p0 .. p1}, Lcom/inmobi/ads/NativeV2DataModel;->m(Lorg/json/JSONObject;)I

    move-result v27

    .line 615
    invoke-virtual/range {p0 .. p1}, Lcom/inmobi/ads/NativeV2DataModel;->b(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v28

    .line 617
    const/4 v14, 0x0

    .line 618
    const/4 v2, 0x0

    .line 619
    const-string v6, ""

    .line 621
    invoke-direct/range {p0 .. p1}, Lcom/inmobi/ads/NativeV2DataModel;->h(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/inmobi/ads/NativeV2DataModel;->p(Ljava/lang/String;)Lcom/inmobi/ads/NativeV2Asset$AssetValueType;

    move-result-object v5

    .line 622
    invoke-direct/range {p0 .. p1}, Lcom/inmobi/ads/NativeV2DataModel;->p(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v10

    .line 623
    if-eqz v10, :cond_1f

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-eqz v11, :cond_1f

    .line 625
    const/4 v11, 0x0

    :try_start_0
    invoke-virtual {v10, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 626
    sget-object v10, Lcom/inmobi/ads/NativeV2Asset$AssetValueType;->ASSET_VALUE_REFERENCE:Lcom/inmobi/ads/NativeV2Asset$AssetValueType;

    if-ne v5, v10, :cond_1

    .line 627
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/inmobi/ads/NativeV2DataModel;->b(Ljava/lang/String;)Lcom/inmobi/ads/NativeV2Asset;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 628
    if-nez v2, :cond_1

    :try_start_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inmobi/ads/NativeV2DataModel;->i:Lcom/inmobi/ads/NativeV2DataModel;

    if-eqz v5, :cond_1

    .line 629
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/inmobi/ads/NativeV2DataModel;->i:Lcom/inmobi/ads/NativeV2DataModel;

    invoke-virtual {v5, v6}, Lcom/inmobi/ads/NativeV2DataModel;->b(Ljava/lang/String;)Lcom/inmobi/ads/NativeV2Asset;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v2

    :cond_1
    move-object v5, v2

    .line 637
    :goto_1
    :try_start_2
    sget-object v2, Lcom/inmobi/ads/NativeV2DataModel$1;->a:[I

    invoke-virtual/range {p2 .. p2}, Lcom/inmobi/ads/NativeV2Asset$AssetType;->ordinal()I

    move-result v10

    aget v2, v2, v10
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    packed-switch v2, :pswitch_data_0

    move-object v2, v14

    :cond_2
    :goto_2
    move-object v4, v2

    .line 888
    :goto_3
    if-eqz v4, :cond_5

    .line 889
    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/inmobi/ads/NativeV2Asset;->a(Lcom/inmobi/ads/NativeV2Asset$AssetDisplayOnType;)V

    .line 890
    move/from16 v0, v27

    invoke-virtual {v4, v0}, Lcom/inmobi/ads/NativeV2Asset;->a(I)V

    .line 891
    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/inmobi/ads/NativeV2Asset;->b(Ljava/lang/String;)V

    .line 893
    if-eqz v28, :cond_3

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    .line 894
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inmobi/ads/NativeV2DataModel;->m:Ljava/util/Map;

    move-object/from16 v0, v28

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    :cond_3
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inmobi/ads/NativeV2DataModel;->l:Ljava/util/Map;

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 899
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inmobi/ads/NativeV2DataModel;->l:Ljava/util/Map;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 902
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inmobi/ads/NativeV2DataModel;->k:Ljava/util/Map;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 903
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inmobi/ads/NativeV2DataModel;->k:Ljava/util/Map;

    move-object/from16 v0, p2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_4
    move-object v2, v4

    .line 910
    goto/16 :goto_0

    .line 632
    :catch_0
    move-exception v5

    move-object/from16 v29, v5

    move-object v5, v6

    move-object v6, v2

    move-object/from16 v2, v29

    .line 633
    :goto_5
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v10

    new-instance v11, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v11, v2}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v10, v11}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    move-object/from16 v29, v5

    move-object v5, v6

    move-object/from16 v6, v29

    goto :goto_1

    .line 639
    :pswitch_0
    :try_start_3
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v7}, Lcom/inmobi/ads/NativeV2DataModel;->a(Landroid/graphics/Point;Landroid/graphics/Point;Lorg/json/JSONObject;)Lcom/inmobi/ads/NativeStrandAssetStyle;

    move-result-object v5

    .line 641
    const/4 v2, 0x0

    .line 642
    sget-object v6, Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;->ASSET_INTERACTION_MODE_NO_ACTION:Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;

    .line 643
    invoke-direct/range {p0 .. p1}, Lcom/inmobi/ads/NativeV2DataModel;->q(Lorg/json/JSONObject;)Z

    move-result v8

    if-eqz v8, :cond_1e

    .line 644
    sget-object v6, Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;->ASSET_INTERACTION_MODE_BROWSER:Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;

    .line 645
    const-string v8, "assetOnclick"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "openMode"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1e

    .line 646
    const-string v2, "assetOnclick"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v6, "openMode"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 647
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/inmobi/ads/NativeV2DataModel;->f(Ljava/lang/String;)Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;

    move-result-object v6

    .line 648
    const-string v2, "assetOnclick"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/inmobi/ads/NativeV2DataModel;->o(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v17, v2

    .line 652
    :goto_6
    sget-object v8, Lcom/inmobi/ads/aj$a;->a:Lcom/inmobi/ads/aj$a;

    .line 653
    const-string v2, "transitionEffect"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 654
    const-string v2, "transitionEffect"

    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 655
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/inmobi/ads/NativeV2DataModel;->o(Ljava/lang/String;)Lcom/inmobi/ads/aj$a;

    move-result-object v8

    .line 657
    :cond_6
    if-eqz v13, :cond_7

    array-length v2, v13

    if-nez v2, :cond_9

    .line 658
    :cond_7
    new-instance v2, Lcom/inmobi/ads/aj;

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v8}, Lcom/inmobi/ads/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeStrandAssetStyle;Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;Lorg/json/JSONObject;Lcom/inmobi/ads/aj$a;)V

    .line 666
    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/inmobi/ads/aj;->a(Ljava/lang/String;)V

    .line 667
    if-eqz v17, :cond_8

    .line 668
    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/inmobi/ads/aj;->e(Ljava/lang/String;)V

    .line 670
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1}, Lcom/inmobi/ads/NativeV2DataModel;->a(Lcom/inmobi/ads/NativeV2Asset;Lorg/json/JSONObject;)V

    .line 672
    const-string v4, "assetValue"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 673
    const/4 v4, 0x0

    :goto_8
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v4, v6, :cond_2

    .line 674
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "assetValue"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 676
    invoke-virtual {v5, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 678
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lcom/inmobi/ads/NativeV2DataModel;->g(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/inmobi/ads/NativeV2DataModel;->h(Ljava/lang/String;)Lcom/inmobi/ads/NativeV2Asset$AssetType;

    move-result-object v8

    .line 677
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v6}, Lcom/inmobi/ads/NativeV2DataModel;->a(Lorg/json/JSONObject;Lcom/inmobi/ads/NativeV2Asset$AssetType;Ljava/lang/String;)Lcom/inmobi/ads/NativeV2Asset;

    move-result-object v8

    .line 681
    if-nez v8, :cond_a

    .line 682
    sget-object v6, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v8, Lcom/inmobi/ads/NativeV2DataModel;->a:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Cannot build asset from JSON: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v8, v7}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 662
    :cond_9
    new-instance v9, Lcom/inmobi/ads/aj;

    move-object v10, v3

    move-object v11, v4

    move-object v12, v5

    move-object v14, v6

    move-object/from16 v15, p1

    move-object/from16 v16, v8

    invoke-direct/range {v9 .. v16}, Lcom/inmobi/ads/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeStrandAssetStyle;[Lcom/inmobi/ads/ah;Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;Lorg/json/JSONObject;Lcom/inmobi/ads/aj$a;)V

    move-object v2, v9

    goto/16 :goto_7

    .line 684
    :cond_a
    invoke-virtual {v8, v6}, Lcom/inmobi/ads/NativeV2Asset;->a(Ljava/lang/String;)V

    .line 685
    invoke-virtual {v8, v2}, Lcom/inmobi/ads/NativeV2Asset;->b(Lcom/inmobi/ads/NativeV2Asset;)V

    .line 686
    invoke-virtual {v2, v8}, Lcom/inmobi/ads/aj;->c(Lcom/inmobi/ads/NativeV2Asset;)Z
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_9

    .line 883
    :catch_1
    move-exception v2

    .line 884
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v4

    new-instance v5, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v5, v2}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 885
    const/4 v4, 0x0

    goto/16 :goto_3

    .line 694
    :pswitch_1
    :try_start_4
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v7}, Lcom/inmobi/ads/NativeV2DataModel;->b(Landroid/graphics/Point;Landroid/graphics/Point;Lorg/json/JSONObject;)Lcom/inmobi/ads/ar$a;

    move-result-object v5

    .line 696
    new-instance v2, Lcom/inmobi/ads/ar;

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/inmobi/ads/ar;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeStrandAssetStyle;Ljava/lang/String;)V

    .line 698
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/inmobi/ads/NativeV2Asset;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 705
    :pswitch_2
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v7}, Lcom/inmobi/ads/NativeV2DataModel;->a(Landroid/graphics/Point;Landroid/graphics/Point;Lorg/json/JSONObject;)Lcom/inmobi/ads/NativeStrandAssetStyle;

    move-result-object v5

    .line 706
    new-instance v2, Lcom/inmobi/ads/am;

    .line 707
    invoke-direct/range {p0 .. p1}, Lcom/inmobi/ads/NativeV2DataModel;->d(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/inmobi/ads/am;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeStrandAssetStyle;Ljava/lang/String;)V

    .line 708
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/inmobi/ads/NativeV2Asset;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 713
    :pswitch_3
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v7}, Lcom/inmobi/ads/NativeV2DataModel;->a(Landroid/graphics/Point;Landroid/graphics/Point;Lorg/json/JSONObject;)Lcom/inmobi/ads/NativeStrandAssetStyle;

    move-result-object v5

    .line 714
    const/4 v6, 0x0

    .line 715
    const-string v2, "startOffset"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 716
    const-string v2, "startOffset"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/inmobi/ads/NativeV2DataModel;->r(Lorg/json/JSONObject;)Lcom/inmobi/ads/as$a;

    move-result-object v6

    .line 718
    :cond_b
    const/4 v7, 0x0

    .line 719
    const-string v2, "timerDuration"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 720
    const-string v2, "timerDuration"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/inmobi/ads/NativeV2DataModel;->r(Lorg/json/JSONObject;)Lcom/inmobi/ads/as$a;

    move-result-object v7

    .line 722
    :cond_c
    const-string v2, "displayTimer"

    const/4 v8, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v8

    .line 723
    new-instance v2, Lcom/inmobi/ads/as;

    invoke-direct/range {v2 .. v7}, Lcom/inmobi/ads/as;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeStrandAssetStyle;Lcom/inmobi/ads/as$a;Lcom/inmobi/ads/as$a;)V

    .line 725
    invoke-virtual {v2, v8}, Lcom/inmobi/ads/as;->b(Z)V

    .line 726
    const-string v4, "assetOnFinish"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 727
    const-string v4, "assetOnFinish"

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/json/JSONObject;

    .line 728
    const-string v5, "action"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 729
    const-string v5, "action"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 730
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/inmobi/ads/NativeV2DataModel;->g(Ljava/lang/String;)Lcom/inmobi/ads/NativeV2Asset$AssetActionOnFinish;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/inmobi/ads/as;->a(Lcom/inmobi/ads/NativeV2Asset$AssetActionOnFinish;)V

    .line 733
    :cond_d
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/inmobi/ads/as;->a(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 738
    :pswitch_4
    const/4 v2, 0x0

    .line 739
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v7}, Lcom/inmobi/ads/NativeV2DataModel;->a(Landroid/graphics/Point;Landroid/graphics/Point;Lorg/json/JSONObject;)Lcom/inmobi/ads/NativeStrandAssetStyle;

    move-result-object v5

    .line 740
    sget-object v7, Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;->ASSET_INTERACTION_MODE_NO_ACTION:Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;

    .line 741
    invoke-direct/range {p0 .. p1}, Lcom/inmobi/ads/NativeV2DataModel;->q(Lorg/json/JSONObject;)Z

    move-result v6

    if-eqz v6, :cond_1d

    .line 742
    sget-object v7, Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;->ASSET_INTERACTION_MODE_BROWSER:Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;

    .line 743
    const-string v6, "assetOnclick"

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v8, "openMode"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1d

    .line 744
    const-string v2, "assetOnclick"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v6, "openMode"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 745
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/inmobi/ads/NativeV2DataModel;->f(Ljava/lang/String;)Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;

    move-result-object v7

    .line 746
    const-string v2, "assetOnclick"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/inmobi/ads/NativeV2DataModel;->o(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v16, v2

    .line 750
    :goto_a
    if-eqz v13, :cond_e

    array-length v2, v13

    if-nez v2, :cond_f

    .line 751
    :cond_e
    new-instance v2, Lcom/inmobi/ads/an;

    .line 752
    invoke-direct/range {p0 .. p1}, Lcom/inmobi/ads/NativeV2DataModel;->d(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/inmobi/ads/an;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeStrandAssetStyle;Ljava/lang/String;Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;Lorg/json/JSONObject;)V

    .line 758
    :goto_b
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/inmobi/ads/NativeV2Asset;->a(Ljava/lang/String;)V

    .line 759
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1}, Lcom/inmobi/ads/NativeV2DataModel;->a(Lcom/inmobi/ads/NativeV2Asset;Lorg/json/JSONObject;)V

    .line 760
    if-eqz v16, :cond_2

    .line 761
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/inmobi/ads/NativeV2Asset;->e(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 754
    :cond_f
    new-instance v8, Lcom/inmobi/ads/an;

    .line 755
    invoke-direct/range {p0 .. p1}, Lcom/inmobi/ads/NativeV2DataModel;->d(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v12

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    move-object v14, v7

    move-object/from16 v15, p1

    invoke-direct/range {v8 .. v15}, Lcom/inmobi/ads/an;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeStrandAssetStyle;Ljava/lang/String;[Lcom/inmobi/ads/ah;Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;Lorg/json/JSONObject;)V

    move-object v2, v8

    goto :goto_b

    .line 767
    :pswitch_5
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xf

    if-ge v2, v7, :cond_10

    .line 768
    const/4 v2, 0x0

    .line 769
    goto/16 :goto_2

    .line 779
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inmobi/ads/NativeV2DataModel;->k:Ljava/util/Map;

    sget-object v7, Lcom/inmobi/ads/NativeV2Asset$AssetType;->ASSET_TYPE_VIDEO:Lcom/inmobi/ads/NativeV2Asset$AssetType;

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 780
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v7, Lcom/inmobi/ads/NativeV2DataModel;->a:Ljava/lang/String;

    const-string v10, "One video asset already present! I will add this to the data model (for now) but ideally consider skipping this asset"

    invoke-static {v2, v7, v10}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    :cond_11
    new-instance v17, Lcom/inmobi/ads/av$a;

    iget v2, v8, Landroid/graphics/Point;->x:I

    iget v7, v8, Landroid/graphics/Point;->y:I

    iget v8, v9, Landroid/graphics/Point;->x:I

    iget v9, v9, Landroid/graphics/Point;->y:I

    move-object/from16 v0, v17

    invoke-direct {v0, v2, v7, v8, v9}, Lcom/inmobi/ads/av$a;-><init>(IIII)V

    .line 791
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/inmobi/ads/NativeV2DataModel;->n:Lcom/inmobi/ads/bj;

    if-nez v2, :cond_13

    .line 792
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v6, v5}, Lcom/inmobi/ads/NativeV2DataModel;->a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/inmobi/ads/NativeV2Asset;)Lcom/inmobi/ads/bk;

    move-result-object v18

    .line 795
    :goto_c
    const/16 v19, 0x1

    .line 796
    const/16 v20, 0x1

    .line 797
    const/16 v21, 0x0

    .line 798
    const/16 v22, 0x1

    .line 799
    sget-object v2, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_INLINE:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/inmobi/ads/NativeV2DataModel;->p:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    if-ne v2, v6, :cond_15

    .line 800
    if-eqz v5, :cond_14

    .line 802
    invoke-virtual {v5}, Lcom/inmobi/ads/NativeV2Asset;->v()Ljava/util/Map;

    move-result-object v2

    const-string v6, "didRequestFullScreen"

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 803
    const-string v2, "loop"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 804
    const-string v2, "showProgress"

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v22

    .line 805
    const-string v2, "soundOn"

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v19

    .line 806
    const-string v2, "showMute"

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .line 823
    :cond_12
    :goto_d
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 824
    const-string v2, "videoViewabilityConfig"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 825
    const-string v2, "videoViewabilityConfig"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 826
    invoke-virtual {v7}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v8

    .line 827
    :goto_e
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 828
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 829
    invoke-virtual {v7, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    .line 830
    invoke-interface {v6, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 792
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/inmobi/ads/NativeV2DataModel;->n:Lcom/inmobi/ads/bj;

    move-object/from16 v18, v0

    goto :goto_c

    .line 810
    :cond_14
    const-string v2, "loop"

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 811
    const-string v2, "showProgress"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v22

    .line 812
    const-string v2, "soundOn"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v19

    .line 813
    const-string v2, "showMute"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v20

    goto :goto_d

    .line 817
    :cond_15
    const-string v2, "loop"

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 818
    const-string v2, "showProgress"

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v22

    .line 819
    const-string v2, "soundOn"

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v19

    .line 820
    const-string v2, "showMute"

    const/4 v6, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v20

    goto :goto_d

    .line 834
    :cond_16
    new-instance v14, Lcom/inmobi/ads/av;

    const/16 v25, 0x0

    move-object v15, v3

    move-object/from16 v16, v4

    move-object/from16 v23, v13

    move-object/from16 v24, p1

    invoke-direct/range {v14 .. v25}, Lcom/inmobi/ads/av;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeStrandAssetStyle;Lcom/inmobi/ads/bk;ZZZZ[Lcom/inmobi/ads/ah;Lorg/json/JSONObject;Landroid/graphics/Bitmap;)V

    .line 839
    move-object v0, v14

    check-cast v0, Lcom/inmobi/ads/av;

    move-object v2, v0

    invoke-virtual {v2, v6}, Lcom/inmobi/ads/av;->a(Ljava/util/Map;)V

    .line 840
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Lcom/inmobi/ads/NativeV2Asset;->a(Ljava/lang/String;)V

    .line 841
    invoke-virtual {v14, v5}, Lcom/inmobi/ads/NativeV2Asset;->a(Lcom/inmobi/ads/NativeV2Asset;)V

    .line 842
    if-eqz v5, :cond_17

    .line 843
    invoke-virtual {v5, v14}, Lcom/inmobi/ads/NativeV2Asset;->a(Lcom/inmobi/ads/NativeV2Asset;)V

    :cond_17
    move-object v2, v14

    .line 847
    goto/16 :goto_2

    .line 850
    :pswitch_6
    const/4 v2, 0x0

    .line 851
    goto/16 :goto_2

    .line 855
    :pswitch_7
    invoke-direct/range {p0 .. p1}, Lcom/inmobi/ads/NativeV2DataModel;->q(Lorg/json/JSONObject;)Z

    move-result v2

    if-nez v2, :cond_18

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 856
    :cond_18
    const/4 v2, 0x0

    .line 858
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9, v7}, Lcom/inmobi/ads/NativeV2DataModel;->c(Landroid/graphics/Point;Landroid/graphics/Point;Lorg/json/JSONObject;)Lcom/inmobi/ads/ar$a;

    move-result-object v5

    .line 859
    sget-object v7, Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;->ASSET_INTERACTION_MODE_BROWSER:Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;

    .line 860
    const-string v8, "assetOnclick"

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "openMode"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1c

    .line 861
    const-string v2, "assetOnclick"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v7, "openMode"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 862
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/inmobi/ads/NativeV2DataModel;->f(Ljava/lang/String;)Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;

    move-result-object v7

    .line 863
    const-string v2, "assetOnclick"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/inmobi/ads/NativeV2DataModel;->o(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v16, v2

    .line 867
    :goto_f
    if-eqz v13, :cond_19

    array-length v2, v13

    if-nez v2, :cond_1a

    .line 868
    :cond_19
    new-instance v2, Lcom/inmobi/ads/ak;

    move-object/from16 v8, p1

    invoke-direct/range {v2 .. v8}, Lcom/inmobi/ads/ak;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeStrandAssetStyle;Ljava/lang/String;Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;Lorg/json/JSONObject;)V

    .line 874
    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/inmobi/ads/NativeV2Asset;->a(Ljava/lang/String;)V

    .line 875
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v2, v1}, Lcom/inmobi/ads/NativeV2DataModel;->a(Lcom/inmobi/ads/NativeV2Asset;Lorg/json/JSONObject;)V

    .line 876
    if-eqz v16, :cond_2

    .line 877
    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/inmobi/ads/NativeV2Asset;->e(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 871
    :cond_1a
    new-instance v8, Lcom/inmobi/ads/ak;

    move-object v9, v3

    move-object v10, v4

    move-object v11, v5

    move-object v12, v6

    move-object v14, v7

    move-object/from16 v15, p1

    invoke-direct/range {v8 .. v15}, Lcom/inmobi/ads/ak;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeStrandAssetStyle;Ljava/lang/String;[Lcom/inmobi/ads/ah;Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;Lorg/json/JSONObject;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v2, v8

    goto :goto_10

    .line 905
    :cond_1b
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 906
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 907
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/inmobi/ads/NativeV2DataModel;->k:Ljava/util/Map;

    move-object/from16 v0, p2

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 632
    :catch_2
    move-exception v5

    move-object/from16 v29, v5

    move-object v5, v6

    move-object v6, v2

    move-object/from16 v2, v29

    goto/16 :goto_5

    :cond_1c
    move-object/from16 v16, v2

    goto :goto_f

    :cond_1d
    move-object/from16 v16, v2

    goto/16 :goto_a

    :cond_1e
    move-object/from16 v17, v2

    goto/16 :goto_6

    :cond_1f
    move-object v5, v2

    goto/16 :goto_1

    .line 637
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private a(ILcom/inmobi/ads/ah$a;Lorg/json/JSONObject;)Lcom/inmobi/ads/ah;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1054
    const-string v0, "url"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, ""

    move-object v1, v0

    .line 1055
    :goto_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1056
    sget-object v0, Lcom/inmobi/ads/ah$a;->g:Lcom/inmobi/ads/ah$a;

    if-ne v0, p2, :cond_9

    .line 1057
    const-string v0, "events"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 1061
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    if-nez v4, :cond_3

    move-object v0, v2

    .line 1100
    :goto_1
    return-object v0

    .line 1054
    :cond_2
    const-string v0, "url"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    .line 1063
    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1065
    if-eqz v4, :cond_6

    .line 1066
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v0, v5, :cond_6

    .line 1068
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/inmobi/ads/ah;->a(Ljava/lang/String;)Lcom/inmobi/ads/ah$a;

    move-result-object v5

    .line 1069
    sget-object v6, Lcom/inmobi/ads/ah$a;->m:Lcom/inmobi/ads/ah$a;

    if-eq v5, v6, :cond_4

    sget-object v6, Lcom/inmobi/ads/ah$a;->h:Lcom/inmobi/ads/ah$a;

    if-eq v5, v6, :cond_4

    sget-object v6, Lcom/inmobi/ads/ah$a;->d:Lcom/inmobi/ads/ah$a;

    if-ne v5, v6, :cond_5

    .line 1072
    :cond_4
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1066
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1076
    :cond_6
    const-string v0, "referencedEvents"

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    :cond_7
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1083
    :try_start_0
    const-string v0, "params"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1085
    const-string v0, "params"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 1086
    invoke-virtual {v4}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 1087
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1088
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1089
    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1090
    invoke-interface {v2, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 1093
    :catch_0
    move-exception v0

    .line 1094
    sget-object v4, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v5, Lcom/inmobi/ads/NativeV2DataModel;->a:Ljava/lang/String;

    const-string v6, "Failed to parser tracker.params"

    invoke-static {v4, v5, v6, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1095
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v4

    new-instance v5, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v5, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 1097
    :cond_8
    new-instance v0, Lcom/inmobi/ads/ah;

    invoke-direct {v0, v1, p1, p2, v2}, Lcom/inmobi/ads/ah;-><init>(Ljava/lang/String;ILcom/inmobi/ads/ah$a;Ljava/util/Map;)V

    .line 1099
    invoke-virtual {v0, v3}, Lcom/inmobi/ads/ah;->a(Ljava/util/Map;)V

    goto/16 :goto_1

    .line 1078
    :cond_9
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {v1}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_a
    move-object v0, v2

    goto/16 :goto_1
.end method

.method private a(Lorg/json/JSONObject;Ljava/lang/String;Lcom/inmobi/ads/NativeV2Asset;)Lcom/inmobi/ads/bk;
    .locals 4
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1187
    invoke-direct {p0, p1}, Lcom/inmobi/ads/NativeV2DataModel;->g(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "VIDEO"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1189
    :try_start_0
    const-string v0, "assetValue"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1190
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move-object v0, v1

    .line 1203
    :goto_0
    return-object v0

    .line 1193
    :cond_1
    if-eqz p3, :cond_2

    instance-of v0, p3, Lcom/inmobi/ads/av;

    if-eqz v0, :cond_2

    .line 1194
    invoke-virtual {p3}, Lcom/inmobi/ads/NativeV2Asset;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/bk;

    goto :goto_0

    .line 1196
    :cond_2
    new-instance v0, Lcom/inmobi/ads/bh;

    iget-object v2, p0, Lcom/inmobi/ads/NativeV2DataModel;->o:Lcom/inmobi/ads/c$g;

    invoke-direct {v0, v2}, Lcom/inmobi/ads/bh;-><init>(Lcom/inmobi/ads/c$g;)V

    invoke-virtual {v0, p2}, Lcom/inmobi/ads/bh;->b(Ljava/lang/String;)Lcom/inmobi/ads/bj;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1197
    :catch_0
    move-exception v0

    .line 1199
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    :cond_3
    move-object v0, v1

    .line 1203
    goto :goto_0
.end method

.method private a(Lcom/inmobi/ads/NativeV2Asset;Lorg/json/JSONObject;)V
    .locals 9
    .param p1    # Lcom/inmobi/ads/NativeV2Asset;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 915
    const-string v2, ""

    .line 916
    const-string v3, ""

    .line 917
    const/4 v0, 0x0

    .line 919
    invoke-direct {p0, p2}, Lcom/inmobi/ads/NativeV2DataModel;->q(Lorg/json/JSONObject;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 920
    const-string v4, "assetOnclick"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "itemUrl"

    .line 921
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 922
    sget-object v4, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v5, Lcom/inmobi/ads/NativeV2DataModel;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Missing itemUrl on asset "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 924
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 922
    invoke-static {v4, v5, v6}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 931
    :goto_0
    const-string v4, "assetOnclick"

    invoke-virtual {p2, v4}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "action"

    .line 932
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 933
    const-string v0, "assetOnclick"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "action"

    .line 934
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move v8, v1

    move-object v1, v0

    move v0, v8

    .line 939
    :goto_1
    invoke-virtual {p1, v2}, Lcom/inmobi/ads/NativeV2Asset;->d(Ljava/lang/String;)V

    .line 940
    invoke-virtual {p1, v1}, Lcom/inmobi/ads/NativeV2Asset;->c(Ljava/lang/String;)V

    .line 941
    invoke-virtual {p1, v0}, Lcom/inmobi/ads/NativeV2Asset;->a(Z)V

    .line 942
    return-void

    .line 926
    :cond_0
    const-string v0, "assetOnclick"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "itemUrl"

    .line 927
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    move v0, v1

    .line 928
    goto :goto_0

    :cond_1
    move-object v1, v3

    goto :goto_1
.end method

.method private a(Lcom/inmobi/ads/aj;)Z
    .locals 2
    .param p1    # Lcom/inmobi/ads/aj;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 331
    const-string v0, "card_scrollable"

    invoke-virtual {p1}, Lcom/inmobi/ads/aj;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private b(Landroid/graphics/Point;Landroid/graphics/Point;Lorg/json/JSONObject;)Lcom/inmobi/ads/ar$a;
    .locals 16
    .param p1    # Landroid/graphics/Point;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Point;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1653
    const-string v2, "border"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1654
    sget-object v7, Lcom/inmobi/ads/NativeStrandAssetStyle$b;->a:Lcom/inmobi/ads/NativeStrandAssetStyle$b;

    .line 1655
    sget-object v2, Lcom/inmobi/ads/NativeStrandAssetStyle$a;->b:Lcom/inmobi/ads/NativeStrandAssetStyle$a;

    .line 1656
    const-string v9, "#ff000000"

    move-object v8, v2

    .line 1680
    :goto_0
    const-string v2, "backgroundColor"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v10, "#00000000"

    .line 1685
    :goto_1
    const-string v2, "text"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1690
    :try_start_0
    const-string v2, "size"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v4

    double-to-int v11, v4

    .line 1701
    const-string v2, "length"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    const v13, 0x7fffffff

    .line 1704
    :goto_2
    const-string v2, "color"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v14, "#ff000000"

    .line 1708
    :goto_3
    const-string v2, "style"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1709
    const/4 v2, 0x1

    new-array v15, v2, [Lcom/inmobi/ads/ar$a$b;

    const/4 v2, 0x0

    sget-object v4, Lcom/inmobi/ads/ar$a$b;->a:Lcom/inmobi/ads/ar$a$b;

    aput-object v4, v15, v2

    .line 1725
    :cond_0
    :goto_4
    sget-object v12, Lcom/inmobi/ads/ar$a$a;->a:Lcom/inmobi/ads/ar$a$a;

    .line 1726
    const-string v2, "align"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1727
    const-string v2, "align"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/inmobi/ads/NativeV2DataModel;->k(Ljava/lang/String;)Lcom/inmobi/ads/ar$a$a;

    move-result-object v12

    .line 1730
    :cond_1
    new-instance v2, Lcom/inmobi/ads/ar$a;

    move-object/from16 v0, p1

    iget v3, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p1

    iget v4, v0, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p2

    iget v5, v0, Landroid/graphics/Point;->x:I

    move-object/from16 v0, p2

    iget v6, v0, Landroid/graphics/Point;->y:I

    invoke-direct/range {v2 .. v15}, Lcom/inmobi/ads/ar$a;-><init>(IIIILcom/inmobi/ads/NativeStrandAssetStyle$b;Lcom/inmobi/ads/NativeStrandAssetStyle$a;Ljava/lang/String;Ljava/lang/String;ILcom/inmobi/ads/ar$a$a;ILjava/lang/String;[Lcom/inmobi/ads/ar$a$b;)V

    return-object v2

    .line 1658
    :cond_2
    const-string v2, "border"

    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1659
    const-string v2, "style"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1660
    sget-object v7, Lcom/inmobi/ads/NativeStrandAssetStyle$b;->a:Lcom/inmobi/ads/NativeStrandAssetStyle$b;

    .line 1661
    sget-object v2, Lcom/inmobi/ads/NativeStrandAssetStyle$a;->b:Lcom/inmobi/ads/NativeStrandAssetStyle$a;

    .line 1662
    const-string v9, "#ff000000"

    move-object v8, v2

    goto/16 :goto_0

    .line 1664
    :cond_3
    const-string v2, "style"

    .line 1665
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1664
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/inmobi/ads/NativeV2DataModel;->l(Ljava/lang/String;)Lcom/inmobi/ads/NativeStrandAssetStyle$b;

    move-result-object v7

    .line 1666
    const-string v2, "corner"

    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1667
    sget-object v2, Lcom/inmobi/ads/NativeStrandAssetStyle$a;->b:Lcom/inmobi/ads/NativeStrandAssetStyle$a;

    .line 1672
    :goto_5
    const-string v4, "color"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1673
    const-string v9, "#ff000000"

    move-object v8, v2

    goto/16 :goto_0

    .line 1669
    :cond_4
    const-string v2, "corner"

    .line 1670
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1669
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/inmobi/ads/NativeV2DataModel;->m(Ljava/lang/String;)Lcom/inmobi/ads/NativeStrandAssetStyle$a;

    move-result-object v2

    goto :goto_5

    .line 1675
    :cond_5
    const-string v4, "color"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    move-object v8, v2

    goto/16 :goto_0

    .line 1680
    :cond_6
    const-string v2, "backgroundColor"

    .line 1682
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_1

    .line 1691
    :catch_0
    move-exception v2

    .line 1692
    sget-object v3, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v4, Lcom/inmobi/ads/NativeV2DataModel;->a:Ljava/lang/String;

    const-string v5, "Failure in building text asset! Text size should be an integer"

    invoke-static {v3, v4, v5}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1695
    new-instance v3, Lorg/json/JSONException;

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .line 1696
    invoke-virtual {v3, v2}, Lorg/json/JSONException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1697
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v4

    new-instance v5, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v5, v2}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v4, v5}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 1698
    throw v3

    .line 1701
    :cond_7
    const-string v2, "length"

    .line 1703
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    goto/16 :goto_2

    .line 1704
    :cond_8
    const-string v2, "color"

    .line 1706
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_3

    .line 1711
    :cond_9
    const-string v2, "style"

    .line 1712
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1713
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 1714
    if-nez v4, :cond_a

    .line 1715
    const/4 v2, 0x1

    new-array v15, v2, [Lcom/inmobi/ads/ar$a$b;

    const/4 v2, 0x0

    sget-object v4, Lcom/inmobi/ads/ar$a$b;->a:Lcom/inmobi/ads/ar$a$b;

    aput-object v4, v15, v2

    goto/16 :goto_4

    .line 1717
    :cond_a
    new-array v15, v4, [Lcom/inmobi/ads/ar$a$b;

    .line 1718
    const/4 v2, 0x0

    :goto_6
    if-ge v2, v4, :cond_0

    .line 1719
    const-string v5, "style"

    .line 1720
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 1721
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 1719
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/inmobi/ads/NativeV2DataModel;->j(Ljava/lang/String;)Lcom/inmobi/ads/ar$a$b;

    move-result-object v5

    aput-object v5, v15, v2

    .line 1718
    add-int/lit8 v2, v2, 0x1

    goto :goto_6
.end method

.method private c(Ljava/lang/String;)Lcom/inmobi/ads/NativeV2Asset$AssetDisplayOnType;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1378
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1381
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetDisplayOnType;->ASSET_DISPLAY_ON_TYPE_UNKNOWN:Lcom/inmobi/ads/NativeV2Asset$AssetDisplayOnType;

    .line 1385
    :goto_1
    return-object v0

    .line 1378
    :sswitch_0
    const-string v2, "unknown"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v2, "absolute"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "percentage"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 1383
    :pswitch_0
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetDisplayOnType;->ASSET_DISPLAY_ON_TYPE_ABSOLUTE:Lcom/inmobi/ads/NativeV2Asset$AssetDisplayOnType;

    goto :goto_1

    .line 1385
    :pswitch_1
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetDisplayOnType;->ASSET_DISPLAY_ON_TYPE_PERCENTAGE:Lcom/inmobi/ads/NativeV2Asset$AssetDisplayOnType;

    goto :goto_1

    .line 1378
    :sswitch_data_0
    .sparse-switch
        -0x36f20d66 -> :sswitch_2
        -0x10fa53b6 -> :sswitch_0
        0x67010d77 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private c(Landroid/graphics/Point;Landroid/graphics/Point;Lorg/json/JSONObject;)Lcom/inmobi/ads/ar$a;
    .locals 12
    .param p1    # Landroid/graphics/Point;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Point;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 1744
    const-string v0, "border"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1745
    sget-object v5, Lcom/inmobi/ads/NativeStrandAssetStyle$b;->a:Lcom/inmobi/ads/NativeStrandAssetStyle$b;

    .line 1746
    sget-object v0, Lcom/inmobi/ads/NativeStrandAssetStyle$a;->b:Lcom/inmobi/ads/NativeStrandAssetStyle$a;

    .line 1747
    const-string v7, "#ff000000"

    move-object v6, v0

    .line 1771
    :goto_0
    const-string v0, "backgroundColor"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v8, "#00000000"

    .line 1776
    :goto_1
    const-string v0, "text"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1781
    :try_start_0
    const-string v0, "size"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v10

    double-to-int v9, v10

    .line 1791
    const-string v0, "color"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v10, "#ff000000"

    .line 1796
    :goto_2
    const-string v0, "style"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1797
    new-array v11, v4, [Lcom/inmobi/ads/ar$a$b;

    sget-object v0, Lcom/inmobi/ads/ar$a$b;->a:Lcom/inmobi/ads/ar$a$b;

    aput-object v0, v11, v1

    .line 1813
    :cond_0
    :goto_3
    new-instance v0, Lcom/inmobi/ads/ak$a;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p2, Landroid/graphics/Point;->x:I

    iget v4, p2, Landroid/graphics/Point;->y:I

    invoke-direct/range {v0 .. v11}, Lcom/inmobi/ads/ak$a;-><init>(IIIILcom/inmobi/ads/NativeStrandAssetStyle$b;Lcom/inmobi/ads/NativeStrandAssetStyle$a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[Lcom/inmobi/ads/ar$a$b;)V

    return-object v0

    .line 1749
    :cond_1
    const-string v0, "border"

    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 1750
    const-string v0, "style"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1751
    sget-object v5, Lcom/inmobi/ads/NativeStrandAssetStyle$b;->a:Lcom/inmobi/ads/NativeStrandAssetStyle$b;

    .line 1752
    sget-object v0, Lcom/inmobi/ads/NativeStrandAssetStyle$a;->b:Lcom/inmobi/ads/NativeStrandAssetStyle$a;

    .line 1753
    const-string v7, "#ff000000"

    move-object v6, v0

    goto :goto_0

    .line 1755
    :cond_2
    const-string v0, "style"

    .line 1756
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1755
    invoke-direct {p0, v0}, Lcom/inmobi/ads/NativeV2DataModel;->l(Ljava/lang/String;)Lcom/inmobi/ads/NativeStrandAssetStyle$b;

    move-result-object v5

    .line 1757
    const-string v0, "corner"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1758
    sget-object v0, Lcom/inmobi/ads/NativeStrandAssetStyle$a;->b:Lcom/inmobi/ads/NativeStrandAssetStyle$a;

    .line 1763
    :goto_4
    const-string v3, "color"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1764
    const-string v7, "#ff000000"

    move-object v6, v0

    goto :goto_0

    .line 1760
    :cond_3
    const-string v0, "corner"

    .line 1761
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1760
    invoke-direct {p0, v0}, Lcom/inmobi/ads/NativeV2DataModel;->m(Ljava/lang/String;)Lcom/inmobi/ads/NativeStrandAssetStyle$a;

    move-result-object v0

    goto :goto_4

    .line 1766
    :cond_4
    const-string v3, "color"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    move-object v6, v0

    goto/16 :goto_0

    .line 1771
    :cond_5
    const-string v0, "backgroundColor"

    .line 1773
    invoke-virtual {p3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 1782
    :catch_0
    move-exception v0

    .line 1783
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/NativeV2DataModel;->a:Ljava/lang/String;

    const-string v3, "Failure in building text asset! Text size should be an integer"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1786
    new-instance v1, Lorg/json/JSONException;

    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .line 1787
    invoke-virtual {v1, v0}, Lorg/json/JSONException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1788
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 1789
    throw v1

    .line 1791
    :cond_6
    const-string v0, "color"

    .line 1793
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_2

    .line 1799
    :cond_7
    const-string v0, "style"

    .line 1800
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    .line 1801
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 1802
    if-nez v3, :cond_8

    .line 1803
    new-array v11, v4, [Lcom/inmobi/ads/ar$a$b;

    sget-object v0, Lcom/inmobi/ads/ar$a$b;->a:Lcom/inmobi/ads/ar$a$b;

    aput-object v0, v11, v1

    goto/16 :goto_3

    .line 1805
    :cond_8
    new-array v11, v3, [Lcom/inmobi/ads/ar$a$b;

    move v0, v1

    .line 1806
    :goto_5
    if-ge v0, v3, :cond_0

    .line 1807
    const-string v1, "style"

    .line 1808
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1809
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1807
    invoke-direct {p0, v1}, Lcom/inmobi/ads/NativeV2DataModel;->j(Ljava/lang/String;)Lcom/inmobi/ads/ar$a$b;

    move-result-object v1

    aput-object v1, v11, v0

    .line 1806
    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method private c(Lorg/json/JSONObject;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/ah;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1104
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1107
    :try_start_0
    const-string v0, "passThroughJson"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 1109
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1110
    const-string v0, "macros"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1111
    const-string v0, "macros"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 1112
    invoke-virtual {v5}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v6

    .line 1113
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1114
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1115
    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1116
    invoke-interface {v4, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1136
    :catch_0
    move-exception v0

    .line 1137
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/NativeV2DataModel;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to parse IAS tracker : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1138
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1137
    invoke-static {v1, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 1142
    :cond_0
    :goto_1
    return-object v2

    .line 1120
    :cond_1
    :try_start_1
    const-string v0, "urls"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1121
    const-string v0, "urls"

    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1122
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    move v0, v1

    .line 1123
    :goto_2
    if-ge v0, v5, :cond_2

    .line 1124
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1125
    new-instance v6, Lcom/inmobi/ads/ah;

    const/4 v7, 0x0

    sget-object v8, Lcom/inmobi/ads/ah$a;->v:Lcom/inmobi/ads/ah$a;

    invoke-direct {v6, v1, v7, v8, v4}, Lcom/inmobi/ads/ah;-><init>(Ljava/lang/String;ILcom/inmobi/ads/ah$a;Ljava/util/Map;)V

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1123
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1132
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1133
    new-instance v0, Lcom/inmobi/ads/ah;

    const-string v1, ""

    const/4 v3, 0x0

    sget-object v5, Lcom/inmobi/ads/ah$a;->v:Lcom/inmobi/ads/ah$a;

    invoke-direct {v0, v1, v3, v5, v4}, Lcom/inmobi/ads/ah;-><init>(Ljava/lang/String;ILcom/inmobi/ads/ah$a;Ljava/util/Map;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private d(Ljava/lang/String;)Lcom/inmobi/ads/ah$b;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1414
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1416
    sget-object v0, Lcom/inmobi/ads/ah$b;->a:Lcom/inmobi/ads/ah$b;

    .line 1422
    :goto_1
    return-object v0

    .line 1414
    :sswitch_0
    const-string v2, "URL_PING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v2, "URL_WEBVIEW_PING"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "HTML_SCRIPT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 1418
    :pswitch_0
    sget-object v0, Lcom/inmobi/ads/ah$b;->b:Lcom/inmobi/ads/ah$b;

    goto :goto_1

    .line 1420
    :pswitch_1
    sget-object v0, Lcom/inmobi/ads/ah$b;->c:Lcom/inmobi/ads/ah$b;

    goto :goto_1

    .line 1422
    :pswitch_2
    sget-object v0, Lcom/inmobi/ads/ah$b;->d:Lcom/inmobi/ads/ah$b;

    goto :goto_1

    .line 1414
    nop

    :sswitch_data_0
    .sparse-switch
        -0x553d2421 -> :sswitch_2
        -0x96c9d9e -> :sswitch_0
        0x42376308 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private d(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1208
    :try_start_0
    invoke-direct {p0, p1}, Lcom/inmobi/ads/NativeV2DataModel;->g(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ICON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1209
    invoke-direct {p0, p1}, Lcom/inmobi/ads/NativeV2DataModel;->g(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "IMAGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "assetValue"

    .line 1210
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1211
    const-string v0, "assetValue"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1216
    :goto_0
    return-object v0

    .line 1213
    :catch_0
    move-exception v0

    .line 1214
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 1216
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private e(Ljava/lang/String;)Lcom/inmobi/ads/ah$a;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1427
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1429
    sget-object v0, Lcom/inmobi/ads/ah$a;->a:Lcom/inmobi/ads/ah$a;

    .line 1443
    :goto_1
    return-object v0

    .line 1427
    :sswitch_0
    const-string v2, "LOAD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v2, "CLIENT_FILL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "RENDER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_3
    const-string v2, "VIEW"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_4
    const-string v2, "CLICK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_5
    const-string v2, "VIDEO_VIEWABILITY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_6
    const-string v2, "IAS_VIEWABILITY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    .line 1431
    :pswitch_0
    sget-object v0, Lcom/inmobi/ads/ah$a;->b:Lcom/inmobi/ads/ah$a;

    goto :goto_1

    .line 1433
    :pswitch_1
    sget-object v0, Lcom/inmobi/ads/ah$a;->c:Lcom/inmobi/ads/ah$a;

    goto :goto_1

    .line 1435
    :pswitch_2
    sget-object v0, Lcom/inmobi/ads/ah$a;->d:Lcom/inmobi/ads/ah$a;

    goto :goto_1

    .line 1437
    :pswitch_3
    sget-object v0, Lcom/inmobi/ads/ah$a;->e:Lcom/inmobi/ads/ah$a;

    goto :goto_1

    .line 1439
    :pswitch_4
    sget-object v0, Lcom/inmobi/ads/ah$a;->f:Lcom/inmobi/ads/ah$a;

    goto :goto_1

    .line 1441
    :pswitch_5
    sget-object v0, Lcom/inmobi/ads/ah$a;->g:Lcom/inmobi/ads/ah$a;

    goto :goto_1

    .line 1443
    :pswitch_6
    sget-object v0, Lcom/inmobi/ads/ah$a;->v:Lcom/inmobi/ads/ah$a;

    goto :goto_1

    .line 1427
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7021ca6a -> :sswitch_2
        -0x2bc4d3f -> :sswitch_6
        0x23bce6 -> :sswitch_0
        0x2832a5 -> :sswitch_3
        0x3d3cd68 -> :sswitch_4
        0x750e84e1 -> :sswitch_5
        0x77b5e577 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private e(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1221
    :try_start_0
    const-string v0, "assetId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1224
    :goto_0
    return-object v0

    .line 1222
    :catch_0
    move-exception v0

    .line 1223
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 1224
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private f(Ljava/lang/String;)Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1449
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1452
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;->ASSET_INTERACTION_MODE_BROWSER:Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;

    .line 1456
    :goto_1
    return-object v0

    .line 1449
    :sswitch_0
    const-string v2, "EXTERNAL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v2, "INAPP"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "DEEPLINK"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 1454
    :pswitch_0
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;->ASSET_INTERACTION_MODE_IN_APP:Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;

    goto :goto_1

    .line 1456
    :pswitch_1
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;->ASSET_INTERACTION_MODE_DEEP_LINK:Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;

    goto :goto_1

    .line 1449
    :sswitch_data_0
    .sparse-switch
        -0x3de0ac35 -> :sswitch_0
        0x42926bc -> :sswitch_1
        0x542746e6 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private f(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1230
    :try_start_0
    const-string v0, "assetName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1233
    :goto_0
    return-object v0

    .line 1231
    :catch_0
    move-exception v0

    .line 1232
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 1233
    const-string v0, ""

    goto :goto_0
.end method

.method private g(Ljava/lang/String;)Lcom/inmobi/ads/NativeV2Asset$AssetActionOnFinish;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1461
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1464
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnFinish;->ASSET_ACTION_ON_FINISH_NONE:Lcom/inmobi/ads/NativeV2Asset$AssetActionOnFinish;

    .line 1466
    :goto_1
    return-object v0

    .line 1461
    :sswitch_0
    const-string v2, "NONE"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v2, "EXIT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 1466
    :pswitch_0
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnFinish;->ASSET_ACTION_ON_FINISH_EXIT:Lcom/inmobi/ads/NativeV2Asset$AssetActionOnFinish;

    goto :goto_1

    .line 1461
    nop

    :sswitch_data_0
    .sparse-switch
        0x20b11e -> :sswitch_1
        0x24a738 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private g(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1239
    :try_start_0
    const-string v0, "assetType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1242
    :goto_0
    return-object v0

    .line 1240
    :catch_0
    move-exception v0

    .line 1241
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 1242
    const-string v0, ""

    goto :goto_0
.end method

.method private h(Ljava/lang/String;)Lcom/inmobi/ads/NativeV2Asset$AssetType;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1471
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1474
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetType;->ASSET_TYPE_CONTAINER:Lcom/inmobi/ads/NativeV2Asset$AssetType;

    .line 1488
    :goto_1
    return-object v0

    .line 1471
    :sswitch_0
    const-string v2, "container"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v2, "icon"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "image"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_3
    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_4
    const-string v2, "text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_5
    const-string v2, "cta"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_6
    const-string v2, "rating"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_7
    const-string v2, "timer"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    .line 1476
    :pswitch_0
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetType;->ASSET_TYPE_ICON:Lcom/inmobi/ads/NativeV2Asset$AssetType;

    goto :goto_1

    .line 1478
    :pswitch_1
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetType;->ASSET_TYPE_IMAGE:Lcom/inmobi/ads/NativeV2Asset$AssetType;

    goto :goto_1

    .line 1480
    :pswitch_2
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetType;->ASSET_TYPE_VIDEO:Lcom/inmobi/ads/NativeV2Asset$AssetType;

    goto :goto_1

    .line 1482
    :pswitch_3
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetType;->ASSET_TYPE_TEXT:Lcom/inmobi/ads/NativeV2Asset$AssetType;

    goto :goto_1

    .line 1484
    :pswitch_4
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetType;->ASSET_TYPE_CTA:Lcom/inmobi/ads/NativeV2Asset$AssetType;

    goto :goto_1

    .line 1486
    :pswitch_5
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetType;->ASSET_TYPE_RATING:Lcom/inmobi/ads/NativeV2Asset$AssetType;

    goto :goto_1

    .line 1488
    :pswitch_6
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetType;->ASSET_TYPE_TIMER:Lcom/inmobi/ads/NativeV2Asset$AssetType;

    goto :goto_1

    .line 1471
    :sswitch_data_0
    .sparse-switch
        -0x37ea4e63 -> :sswitch_6
        -0x187eb37f -> :sswitch_0
        0x18210 -> :sswitch_5
        0x313c79 -> :sswitch_1
        0x36452d -> :sswitch_4
        0x5faa95b -> :sswitch_2
        0x6940745 -> :sswitch_7
        0x6b0147b -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private h(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1248
    :try_start_0
    const-string v0, "valueType"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1251
    :goto_0
    return-object v0

    .line 1249
    :catch_0
    move-exception v0

    .line 1250
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 1251
    const-string v0, ""

    goto :goto_0
.end method

.method private i(Ljava/lang/String;)Lcom/inmobi/ads/NativeV2DataModel$Orientation;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1493
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1496
    sget-object v0, Lcom/inmobi/ads/NativeV2DataModel$Orientation;->ORIENTATION_UNSPECIFIED:Lcom/inmobi/ads/NativeV2DataModel$Orientation;

    .line 1500
    :goto_1
    return-object v0

    .line 1493
    :sswitch_0
    const-string v2, "unspecified"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v2, "portrait"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "landscape"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 1498
    :pswitch_0
    sget-object v0, Lcom/inmobi/ads/NativeV2DataModel$Orientation;->ORIENTATION_PORTRAIT:Lcom/inmobi/ads/NativeV2DataModel$Orientation;

    goto :goto_1

    .line 1500
    :pswitch_1
    sget-object v0, Lcom/inmobi/ads/NativeV2DataModel$Orientation;->ORIENTATION_LANDSCAPE:Lcom/inmobi/ads/NativeV2DataModel$Orientation;

    goto :goto_1

    .line 1493
    :sswitch_data_0
    .sparse-switch
        -0x60ed74c9 -> :sswitch_0
        0x2b77bb9b -> :sswitch_1
        0x5545f2bb -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private i(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 1258
    :try_start_0
    const-string v0, "assetStyle"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1260
    :goto_0
    if-nez v0, :cond_0

    .line 1261
    const-string v0, "assetStyleRef"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1262
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1273
    :cond_0
    :goto_1
    return-object v0

    .line 1258
    :cond_1
    const-string v0, "assetStyle"

    .line 1259
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    .line 1264
    :cond_2
    const-string v0, "assetStyleRef"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1265
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeV2DataModel;->h()Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1271
    :catch_0
    move-exception v0

    .line 1272
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 1273
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_1

    .line 1266
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeV2DataModel;->h()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_1
.end method

.method private j(Lorg/json/JSONObject;)Landroid/graphics/Point;
    .locals 4
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1278
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1280
    :try_start_0
    invoke-direct {p0, p1}, Lcom/inmobi/ads/NativeV2DataModel;->i(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1281
    const-string v2, "geometry"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1289
    :goto_0
    return-object v0

    .line 1283
    :cond_0
    const-string v2, "geometry"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1284
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/inmobi/ads/NativeV2DataModel;->c(I)I

    move-result v2

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 1285
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/inmobi/ads/NativeV2DataModel;->c(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1286
    :catch_0
    move-exception v1

    .line 1287
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v1}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method

.method private j(Ljava/lang/String;)Lcom/inmobi/ads/ar$a$b;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1505
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1508
    sget-object v0, Lcom/inmobi/ads/ar$a$b;->a:Lcom/inmobi/ads/ar$a$b;

    .line 1516
    :goto_1
    return-object v0

    .line 1505
    :sswitch_0
    const-string v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v2, "bold"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "italic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_3
    const-string v2, "strike"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_4
    const-string v2, "underline"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    .line 1510
    :pswitch_0
    sget-object v0, Lcom/inmobi/ads/ar$a$b;->b:Lcom/inmobi/ads/ar$a$b;

    goto :goto_1

    .line 1512
    :pswitch_1
    sget-object v0, Lcom/inmobi/ads/ar$a$b;->c:Lcom/inmobi/ads/ar$a$b;

    goto :goto_1

    .line 1514
    :pswitch_2
    sget-object v0, Lcom/inmobi/ads/ar$a$b;->d:Lcom/inmobi/ads/ar$a$b;

    goto :goto_1

    .line 1516
    :pswitch_3
    sget-object v0, Lcom/inmobi/ads/ar$a$b;->e:Lcom/inmobi/ads/ar$a$b;

    goto :goto_1

    .line 1505
    :sswitch_data_0
    .sparse-switch
        -0x4642c5d0 -> :sswitch_2
        -0x3d363934 -> :sswitch_4
        -0x352aa04e -> :sswitch_3
        0x2e3a85 -> :sswitch_1
        0x33af38 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private k(Lorg/json/JSONObject;)Landroid/graphics/Point;
    .locals 4
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1293
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 1295
    :try_start_0
    invoke-direct {p0, p1}, Lcom/inmobi/ads/NativeV2DataModel;->i(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1296
    const-string v2, "geometry"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1304
    :goto_0
    return-object v0

    .line 1298
    :cond_0
    const-string v2, "geometry"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 1299
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/inmobi/ads/NativeV2DataModel;->c(I)I

    move-result v2

    iput v2, v0, Landroid/graphics/Point;->x:I

    .line 1300
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/inmobi/ads/NativeV2DataModel;->c(I)I

    move-result v1

    iput v1, v0, Landroid/graphics/Point;->y:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1301
    :catch_0
    move-exception v1

    .line 1302
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v1}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method

.method private k(Ljava/lang/String;)Lcom/inmobi/ads/ar$a$a;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1521
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1524
    sget-object v0, Lcom/inmobi/ads/ar$a$a;->a:Lcom/inmobi/ads/ar$a$a;

    .line 1528
    :goto_1
    return-object v0

    .line 1521
    :sswitch_0
    const-string v2, "left"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v2, "right"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "centre"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 1526
    :pswitch_0
    sget-object v0, Lcom/inmobi/ads/ar$a$a;->b:Lcom/inmobi/ads/ar$a$a;

    goto :goto_1

    .line 1528
    :pswitch_1
    sget-object v0, Lcom/inmobi/ads/ar$a$a;->c:Lcom/inmobi/ads/ar$a$a;

    goto :goto_1

    .line 1521
    :sswitch_data_0
    .sparse-switch
        -0x514d3225 -> :sswitch_2
        0x32a007 -> :sswitch_0
        0x677c21c -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private l(Ljava/lang/String;)Lcom/inmobi/ads/NativeStrandAssetStyle$b;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1533
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1536
    sget-object v0, Lcom/inmobi/ads/NativeStrandAssetStyle$b;->a:Lcom/inmobi/ads/NativeStrandAssetStyle$b;

    .line 1538
    :goto_1
    return-object v0

    .line 1533
    :sswitch_0
    const-string v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v2, "line"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 1538
    :pswitch_0
    sget-object v0, Lcom/inmobi/ads/NativeStrandAssetStyle$b;->b:Lcom/inmobi/ads/NativeStrandAssetStyle$b;

    goto :goto_1

    .line 1533
    nop

    :sswitch_data_0
    .sparse-switch
        0x32aff4 -> :sswitch_1
        0x33af38 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private l(Lorg/json/JSONObject;)Lcom/inmobi/ads/NativeV2Asset$AssetDisplayOnType;
    .locals 4
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1308
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetDisplayOnType;->ASSET_DISPLAY_ON_TYPE_ALWAYS:Lcom/inmobi/ads/NativeV2Asset$AssetDisplayOnType;

    .line 1310
    :try_start_0
    invoke-direct {p0, p1}, Lcom/inmobi/ads/NativeV2DataModel;->n(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v1

    .line 1311
    const-string v2, "type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1316
    :goto_0
    return-object v0

    .line 1313
    :cond_0
    const-string v2, "type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/inmobi/ads/NativeV2DataModel;->c(Ljava/lang/String;)Lcom/inmobi/ads/NativeV2Asset$AssetDisplayOnType;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1314
    :catch_0
    move-exception v1

    .line 1315
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v1}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method

.method private m(Lorg/json/JSONObject;)I
    .locals 10
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v6, -0x1

    .line 1321
    .line 1323
    :try_start_0
    invoke-direct {p0, p1}, Lcom/inmobi/ads/NativeV2DataModel;->n(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1324
    const-string v1, "delay"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v6

    .line 1350
    :goto_0
    return v0

    .line 1326
    :cond_0
    const-string v1, "delay"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 1327
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetDisplayOnType;->ASSET_DISPLAY_ON_TYPE_ABSOLUTE:Lcom/inmobi/ads/NativeV2Asset$AssetDisplayOnType;

    invoke-direct {p0, p1}, Lcom/inmobi/ads/NativeV2DataModel;->l(Lorg/json/JSONObject;)Lcom/inmobi/ads/NativeV2Asset$AssetDisplayOnType;

    move-result-object v1

    if-ne v0, v1, :cond_1

    move v0, v7

    .line 1328
    goto :goto_0

    .line 1329
    :cond_1
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetDisplayOnType;->ASSET_DISPLAY_ON_TYPE_PERCENTAGE:Lcom/inmobi/ads/NativeV2Asset$AssetDisplayOnType;

    invoke-direct {p0, p1}, Lcom/inmobi/ads/NativeV2DataModel;->l(Lorg/json/JSONObject;)Lcom/inmobi/ads/NativeV2Asset$AssetDisplayOnType;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 1330
    if-lez v7, :cond_3

    const/16 v0, 0x64

    if-gt v7, v0, :cond_3

    .line 1331
    const/4 v0, 0x4

    new-array v8, v0, [I

    fill-array-data v8, :array_0

    .line 1333
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 1334
    const/4 v4, 0x0

    move v5, v6

    :goto_1
    array-length v0, v8

    if-ge v4, v0, :cond_2

    .line 1335
    aget v0, v8, v4

    .line 1336
    sub-int v1, v7, v0

    sub-int v0, v7, v0

    mul-int/2addr v0, v1

    int-to-double v0, v0

    .line 1337
    cmpg-double v9, v0, v2

    if-gez v9, :cond_5

    move v2, v4

    .line 1334
    :goto_2
    add-int/lit8 v4, v4, 0x1

    move v5, v2

    move-wide v2, v0

    goto :goto_1

    .line 1342
    :cond_2
    aget v0, v8, v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    move v0, v6

    .line 1344
    goto :goto_0

    :cond_4
    move v0, v6

    .line 1346
    goto :goto_0

    .line 1348
    :catch_0
    move-exception v0

    .line 1349
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    move v0, v6

    .line 1350
    goto :goto_0

    :cond_5
    move-wide v0, v2

    move v2, v5

    goto :goto_2

    .line 1331
    :array_0
    .array-data 4
        0x19
        0x32
        0x4b
        0x64
    .end array-data
.end method

.method private m(Ljava/lang/String;)Lcom/inmobi/ads/NativeStrandAssetStyle$a;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1543
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1546
    sget-object v0, Lcom/inmobi/ads/NativeStrandAssetStyle$a;->b:Lcom/inmobi/ads/NativeStrandAssetStyle$a;

    .line 1548
    :goto_1
    return-object v0

    .line 1543
    :sswitch_0
    const-string v2, "straight"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v2, "curved"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 1548
    :pswitch_0
    sget-object v0, Lcom/inmobi/ads/NativeStrandAssetStyle$a;->a:Lcom/inmobi/ads/NativeStrandAssetStyle$a;

    goto :goto_1

    .line 1543
    nop

    :sswitch_data_0
    .sparse-switch
        -0x5069e2ab -> :sswitch_1
        0x6a8aaafa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private n(Ljava/lang/String;)Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1553
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1556
    sget-object v0, Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;->CONTENT_MODE_UNSPECIFIED:Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;

    .line 1562
    :goto_1
    return-object v0

    .line 1553
    :sswitch_0
    const-string v2, "unspecified"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v2, "fill"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "aspectFill"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_3
    const-string v2, "aspectFit"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    .line 1558
    :pswitch_0
    sget-object v0, Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;->CONTENT_MODE_FILL:Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;

    goto :goto_1

    .line 1560
    :pswitch_1
    sget-object v0, Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;->CONTENT_MODE_ASPECT_FILL:Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;

    goto :goto_1

    .line 1562
    :pswitch_2
    sget-object v0, Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;->CONTENT_MODE_ASPECT_FIT:Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;

    goto :goto_1

    .line 1553
    nop

    :sswitch_data_0
    .sparse-switch
        -0x60ed74c9 -> :sswitch_0
        -0x512e7f67 -> :sswitch_3
        0x2ff583 -> :sswitch_1
        0x2b5e91fb -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private n(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1367
    const-string v0, "display"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 1372
    :goto_0
    return-object v0

    .line 1369
    :cond_0
    :try_start_0
    const-string v0, "display"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1370
    :catch_0
    move-exception v0

    .line 1371
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 1372
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method private o(Ljava/lang/String;)Lcom/inmobi/ads/aj$a;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1575
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1578
    sget-object v0, Lcom/inmobi/ads/aj$a;->a:Lcom/inmobi/ads/aj$a;

    .line 1580
    :goto_1
    return-object v0

    .line 1575
    :sswitch_0
    const-string v2, "paged"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v2, "free"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 1580
    :pswitch_0
    sget-object v0, Lcom/inmobi/ads/aj$a;->b:Lcom/inmobi/ads/aj$a;

    goto :goto_1

    .line 1575
    nop

    :sswitch_data_0
    .sparse-switch
        0x30166c -> :sswitch_1
        0x657efb5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private o(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 1
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 1390
    const-string v0, "fallbackUrl"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private p(Ljava/lang/String;)Lcom/inmobi/ads/NativeV2Asset$AssetValueType;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1585
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 1588
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetValueType;->ASSET_VALUE_ABSOLUTE:Lcom/inmobi/ads/NativeV2Asset$AssetValueType;

    .line 1590
    :goto_1
    return-object v0

    .line 1585
    :sswitch_0
    const-string v2, "absolute"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v2, "reference"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    .line 1590
    :pswitch_0
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetValueType;->ASSET_VALUE_REFERENCE:Lcom/inmobi/ads/NativeV2Asset$AssetValueType;

    goto :goto_1

    .line 1585
    nop

    :sswitch_data_0
    .sparse-switch
        -0x3724c0b5 -> :sswitch_1
        0x67010d77 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private p(Lorg/json/JSONObject;)Lorg/json/JSONArray;
    .locals 3
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1400
    :try_start_0
    const-string v0, "assetValue"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1405
    :goto_0
    return-object v0

    .line 1401
    :catch_0
    move-exception v0

    .line 1402
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 1405
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    goto :goto_0
.end method

.method private p()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 547
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetType;->ASSET_TYPE_VIDEO:Lcom/inmobi/ads/NativeV2Asset$AssetType;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/NativeV2DataModel;->a(Lcom/inmobi/ads/NativeV2Asset$AssetType;)Ljava/util/List;

    move-result-object v0

    .line 548
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    move v0, v2

    .line 587
    :goto_0
    return v0

    .line 551
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeV2Asset;

    .line 555
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeV2Asset;->t()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 556
    sget-object v4, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v5, Lcom/inmobi/ads/NativeV2DataModel;->a:Ljava/lang/String;

    const-string v6, "Video asset has invalid ID! CTA link resolution may not work"

    invoke-static {v4, v5, v6}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    :cond_3
    check-cast v0, Lcom/inmobi/ads/av;

    .line 561
    invoke-virtual {v0}, Lcom/inmobi/ads/av;->D()Lcom/inmobi/ads/bk;

    move-result-object v4

    .line 562
    if-nez v4, :cond_4

    .line 563
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/NativeV2DataModel;->a:Ljava/lang/String;

    const-string v3, "No Vast XML. Discarding DataModel"

    invoke-static {v0, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 564
    goto :goto_0

    .line 566
    :cond_4
    invoke-virtual {v0}, Lcom/inmobi/ads/av;->D()Lcom/inmobi/ads/bk;

    move-result-object v4

    invoke-interface {v4}, Lcom/inmobi/ads/bk;->d()Ljava/util/List;

    move-result-object v4

    .line 567
    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_6

    .line 568
    :cond_5
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/NativeV2DataModel;->a:Ljava/lang/String;

    const-string v3, "No Media files. Discarding DataModel"

    invoke-static {v0, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 569
    goto :goto_0

    .line 571
    :cond_6
    invoke-virtual {v0}, Lcom/inmobi/ads/av;->D()Lcom/inmobi/ads/bk;

    move-result-object v4

    invoke-interface {v4}, Lcom/inmobi/ads/bk;->b()Ljava/lang/String;

    move-result-object v4

    .line 572
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 576
    :cond_7
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/NativeV2DataModel;->a:Ljava/lang/String;

    const-string v4, "Invalid Media URL.Discarding the model"

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 578
    const-string v3, "[ERRORCODE]"

    sget-object v4, Lcom/inmobi/ads/VastErrorCode;->NO_SUPPORTED_MEDIA:Lcom/inmobi/ads/VastErrorCode;

    invoke-virtual {v4}, Lcom/inmobi/ads/VastErrorCode;->getId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    sget-object v3, Lcom/inmobi/ads/ah$a;->t:Lcom/inmobi/ads/ah$a;

    invoke-virtual {v0, v3, v2}, Lcom/inmobi/ads/av;->a(Lcom/inmobi/ads/ah$a;Ljava/util/Map;)V

    move v0, v1

    .line 580
    goto/16 :goto_0

    :cond_8
    move v0, v2

    .line 587
    goto/16 :goto_0
.end method

.method private q(Lorg/json/JSONObject;)Z
    .locals 1
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1409
    const-string v0, "assetOnclick"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private r(Lorg/json/JSONObject;)Lcom/inmobi/ads/as$a;
    .locals 7

    .prologue
    .line 1567
    const-string v0, "absolute"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 1568
    const-string v0, "percentage"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 1569
    const-string v0, "reference"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1570
    invoke-virtual {p0, v0}, Lcom/inmobi/ads/NativeV2DataModel;->b(Ljava/lang/String;)Lcom/inmobi/ads/NativeV2Asset;

    move-result-object v6

    .line 1571
    new-instance v1, Lcom/inmobi/ads/as$a;

    invoke-direct/range {v1 .. v6}, Lcom/inmobi/ads/as$a;-><init>(JJLcom/inmobi/ads/NativeV2Asset;)V

    return-object v1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;
    .locals 3

    .prologue
    .line 500
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 502
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;->ASSET_REFERENCED_CREATIVE_NONE:Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;

    .line 507
    :goto_1
    return-object v0

    .line 500
    :sswitch_0
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v2, "video"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "companion"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    .line 505
    :pswitch_0
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;->ASSET_REFERENCED_CREATIVE_LINEAR:Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;

    goto :goto_1

    .line 507
    :pswitch_1
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;->ASSET_REFERENCED_CREATIVE_COMPANION:Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;

    goto :goto_1

    .line 500
    :sswitch_data_0
    .sparse-switch
        -0x54361cf4 -> :sswitch_2
        0x0 -> :sswitch_0
        0x6b0147b -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected a(Lcom/inmobi/ads/NativeV2DataModel;Lcom/inmobi/ads/NativeV2Asset;)Lcom/inmobi/ads/NativeV2Asset;
    .locals 5
    .param p1    # Lcom/inmobi/ads/NativeV2DataModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/inmobi/ads/NativeV2Asset;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 476
    if-nez p1, :cond_0

    move-object v0, v1

    .line 496
    :goto_0
    return-object v0

    .line 477
    :cond_0
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeV2Asset;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 478
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    move-object v0, v1

    goto :goto_0

    .line 480
    :cond_2
    const-string v2, "\\|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 481
    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/inmobi/ads/NativeV2DataModel;->b(Ljava/lang/String;)Lcom/inmobi/ads/NativeV2Asset;

    move-result-object v0

    .line 482
    if-nez v0, :cond_3

    .line 483
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeV2DataModel;->e()Lcom/inmobi/ads/NativeV2DataModel;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/inmobi/ads/NativeV2DataModel;->a(Lcom/inmobi/ads/NativeV2DataModel;Lcom/inmobi/ads/NativeV2Asset;)Lcom/inmobi/ads/NativeV2Asset;

    move-result-object v0

    goto :goto_0

    .line 486
    :cond_3
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v0, v1

    goto :goto_0

    .line 488
    :cond_4
    array-length v1, v2

    if-ne v4, v1, :cond_5

    .line 489
    sget-object v1, Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;->ASSET_REFERENCED_CREATIVE_LINEAR:Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/NativeV2Asset;->a(Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;)V

    goto :goto_0

    .line 493
    :cond_5
    aget-object v1, v2, v4

    invoke-virtual {p0, v1}, Lcom/inmobi/ads/NativeV2DataModel;->a(Ljava/lang/String;)Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/NativeV2Asset;->a(Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;)V

    .line 494
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/NativeV2DataModel;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Referenced asset ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 495
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeV2Asset;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 494
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/inmobi/ads/NativeV2Asset;)Lcom/inmobi/ads/aj;
    .locals 1
    .param p1    # Lcom/inmobi/ads/NativeV2Asset;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 315
    instance-of v0, p1, Lcom/inmobi/ads/aj;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/inmobi/ads/aj;

    .line 316
    invoke-direct {p0, v0}, Lcom/inmobi/ads/NativeV2DataModel;->a(Lcom/inmobi/ads/aj;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    check-cast p1, Lcom/inmobi/ads/aj;

    .line 327
    :cond_0
    :goto_0
    return-object p1

    .line 320
    :cond_1
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeV2Asset;->u()Lcom/inmobi/ads/NativeV2Asset;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/aj;

    move-object p1, v0

    .line 321
    :goto_1
    if-eqz p1, :cond_2

    .line 322
    invoke-direct {p0, p1}, Lcom/inmobi/ads/NativeV2DataModel;->a(Lcom/inmobi/ads/aj;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 325
    invoke-virtual {p1}, Lcom/inmobi/ads/aj;->u()Lcom/inmobi/ads/NativeV2Asset;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/aj;

    move-object p1, v0

    goto :goto_1

    .line 327
    :cond_2
    const/4 p1, 0x0

    goto :goto_0
.end method

.method a(Lcom/inmobi/ads/NativeV2Asset$AssetType;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/NativeV2Asset$AssetType;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/NativeV2Asset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 986
    iget-object v0, p0, Lcom/inmobi/ads/NativeV2DataModel;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 987
    iget-object v0, p0, Lcom/inmobi/ads/NativeV2DataModel;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 991
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public a()Lorg/json/JSONObject;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/inmobi/ads/NativeV2DataModel;->b:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/NativeV2DataModel;->b:Lorg/json/JSONObject;

    goto :goto_0
.end method

.method public a(I)Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 255
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/NativeV2DataModel;->h:Lorg/json/JSONArray;

    invoke-virtual {v0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 258
    :goto_0
    return-object v0

    .line 256
    :catch_0
    move-exception v0

    .line 257
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 258
    const/4 v0, 0x0

    goto :goto_0
.end method

.method a(Lorg/json/JSONArray;)Z
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1037
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    .line 1038
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getInt(I)I

    move-result v3

    .line 1039
    if-ltz v2, :cond_0

    if-ltz v3, :cond_0

    move v2, v0

    .line 1040
    :goto_0
    if-nez v2, :cond_1

    .line 1048
    :goto_1
    return v1

    :cond_0
    move v2, v1

    .line 1039
    goto :goto_0

    .line 1042
    :cond_1
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getInt(I)I

    move-result v2

    .line 1043
    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getInt(I)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1044
    if-lez v2, :cond_2

    if-lez v3, :cond_2

    :goto_2
    move v1, v0

    .line 1045
    goto :goto_1

    :cond_2
    move v0, v1

    .line 1044
    goto :goto_2

    .line 1046
    :catch_0
    move-exception v0

    .line 1047
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_1
.end method

.method a(Lorg/json/JSONObject;Lcom/inmobi/ads/NativeV2Asset$AssetType;)Z
    .locals 5
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 996
    const-string v2, "geometry"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1030
    :cond_0
    :goto_0
    return v1

    .line 999
    :cond_1
    :try_start_0
    const-string v2, "geometry"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1000
    invoke-virtual {p0, v2}, Lcom/inmobi/ads/NativeV2DataModel;->a(Lorg/json/JSONArray;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1002
    sget-object v2, Lcom/inmobi/ads/NativeV2DataModel$1;->a:[I

    invoke-virtual {p2}, Lcom/inmobi/ads/NativeV2Asset$AssetType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    move v1, v0

    .line 1011
    goto :goto_0

    .line 1014
    :pswitch_2
    const-string v2, "text"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1015
    const-string v2, "text"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 1018
    :try_start_1
    const-string v3, "size"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v2

    double-to-int v2, v2

    .line 1026
    if-lez v2, :cond_2

    :goto_1
    move v1, v0

    goto :goto_0

    .line 1019
    :catch_0
    move-exception v0

    .line 1020
    :try_start_2
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/NativeV2DataModel;->a:Ljava/lang/String;

    const-string v4, "Failure in validating text asset! Text size should be an integer"

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 1028
    :catch_1
    move-exception v0

    .line 1029
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1026
    goto :goto_1

    .line 1002
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method a(Lorg/json/JSONObject;)[Lcom/inmobi/ads/ah;
    .locals 8
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1147
    const-string v1, "trackers"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 1180
    :goto_0
    return-object v0

    .line 1148
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1150
    :try_start_0
    const-string v2, "trackers"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 1151
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 1152
    if-nez v3, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/inmobi/ads/ah;

    goto :goto_0

    .line 1154
    :cond_1
    :goto_1
    if-ge v0, v3, :cond_5

    .line 1155
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 1157
    const-string v5, "trackerType"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1154
    :cond_2
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1158
    :cond_3
    const-string v5, "trackerType"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1159
    invoke-direct {p0, v5}, Lcom/inmobi/ads/NativeV2DataModel;->d(Ljava/lang/String;)Lcom/inmobi/ads/ah$b;

    move-result-object v5

    .line 1161
    sget-object v6, Lcom/inmobi/ads/ah$b;->b:Lcom/inmobi/ads/ah$b;

    if-ne v6, v5, :cond_2

    .line 1163
    const-string v5, "eventId"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 1165
    const-string v6, "uiEvent"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1166
    const-string v6, "uiEvent"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1167
    invoke-direct {p0, v6}, Lcom/inmobi/ads/NativeV2DataModel;->e(Ljava/lang/String;)Lcom/inmobi/ads/ah$a;

    move-result-object v6

    .line 1168
    sget-object v7, Lcom/inmobi/ads/ah$a;->a:Lcom/inmobi/ads/ah$a;

    if-eq v7, v6, :cond_2

    .line 1170
    sget-object v7, Lcom/inmobi/ads/ah$a;->v:Lcom/inmobi/ads/ah$a;

    if-eq v7, v6, :cond_4

    .line 1171
    invoke-direct {p0, v5, v6, v4}, Lcom/inmobi/ads/NativeV2DataModel;->a(ILcom/inmobi/ads/ah$a;Lorg/json/JSONObject;)Lcom/inmobi/ads/ah;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1178
    :catch_0
    move-exception v0

    .line 1179
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 1180
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/inmobi/ads/ah;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/ads/ah;

    goto :goto_0

    .line 1173
    :cond_4
    :try_start_1
    invoke-direct {p0, v4}, Lcom/inmobi/ads/NativeV2DataModel;->c(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 1177
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/inmobi/ads/ah;

    invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/ads/ah;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method b(Ljava/lang/String;)Lcom/inmobi/ads/NativeV2Asset;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 969
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 978
    :cond_0
    :goto_0
    return-object v0

    .line 972
    :cond_1
    iget-object v1, p0, Lcom/inmobi/ads/NativeV2DataModel;->l:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 973
    iget-object v0, p0, Lcom/inmobi/ads/NativeV2DataModel;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeV2Asset;

    goto :goto_0

    .line 975
    :cond_2
    iget-object v1, p0, Lcom/inmobi/ads/NativeV2DataModel;->i:Lcom/inmobi/ads/NativeV2DataModel;

    if-eqz v1, :cond_0

    .line 976
    iget-object v0, p0, Lcom/inmobi/ads/NativeV2DataModel;->i:Lcom/inmobi/ads/NativeV2DataModel;

    iget-object v0, v0, Lcom/inmobi/ads/NativeV2DataModel;->l:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeV2Asset;

    goto :goto_0
.end method

.method public b()Lcom/inmobi/ads/aj;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/inmobi/ads/NativeV2DataModel;->g:Lcom/inmobi/ads/aj;

    return-object v0
.end method

.method public b(I)Lcom/inmobi/ads/aj;
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 295
    iget-object v0, p0, Lcom/inmobi/ads/NativeV2DataModel;->g:Lcom/inmobi/ads/aj;

    invoke-virtual {v0}, Lcom/inmobi/ads/aj;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeV2Asset;

    .line 296
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeV2Asset;->c()Ljava/lang/String;

    move-result-object v3

    const-string v4, "card_scrollable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v1, v0

    .line 297
    check-cast v1, Lcom/inmobi/ads/aj;

    invoke-virtual {v1}, Lcom/inmobi/ads/aj;->A()I

    move-result v1

    if-lt p1, v1, :cond_1

    move-object v0, v2

    .line 301
    :goto_0
    return-object v0

    .line 298
    :cond_1
    check-cast v0, Lcom/inmobi/ads/aj;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/aj;->b(I)Lcom/inmobi/ads/NativeV2Asset;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/aj;

    goto :goto_0

    :cond_2
    move-object v0, v2

    .line 301
    goto :goto_0
.end method

.method public b(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 3
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1356
    :try_start_0
    invoke-direct {p0, p1}, Lcom/inmobi/ads/NativeV2DataModel;->n(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 1357
    const-string v1, "reference"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    .line 1362
    :goto_0
    return-object v0

    .line 1359
    :cond_0
    const-string v1, "reference"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 1360
    :catch_0
    move-exception v0

    .line 1361
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 1362
    const-string v0, ""

    goto :goto_0
.end method

.method c(I)I
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 1395
    invoke-static {p1}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->a(I)I

    move-result v0

    return v0
.end method

.method public c()Lcom/inmobi/ads/NativeV2DataModel$Orientation;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/inmobi/ads/NativeV2DataModel;->d:Lcom/inmobi/ads/NativeV2DataModel$Orientation;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/inmobi/ads/NativeV2DataModel;->e:Z

    return v0
.end method

.method public e()Lcom/inmobi/ads/NativeV2DataModel;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/inmobi/ads/NativeV2DataModel;->i:Lcom/inmobi/ads/NativeV2DataModel;

    return-object v0
.end method

.method public f()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/inmobi/ads/NativeV2DataModel;->h:Lorg/json/JSONArray;

    return-object v0
.end method

.method g()Ljava/util/Map;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 250
    iget-object v0, p0, Lcom/inmobi/ads/NativeV2DataModel;->j:Ljava/util/Map;

    return-object v0
.end method

.method public h()Lorg/json/JSONObject;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lcom/inmobi/ads/NativeV2DataModel;->f:Lorg/json/JSONObject;

    return-object v0
.end method

.method public i()Lcom/inmobi/ads/aj;
    .locals 4

    .prologue
    .line 270
    iget-object v0, p0, Lcom/inmobi/ads/NativeV2DataModel;->g:Lcom/inmobi/ads/aj;

    invoke-virtual {v0}, Lcom/inmobi/ads/aj;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeV2Asset;

    .line 271
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeV2Asset;->c()Ljava/lang/String;

    move-result-object v2

    const-string v3, "card_scrollable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    check-cast v0, Lcom/inmobi/ads/aj;

    .line 276
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public j()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 282
    iget-object v0, p0, Lcom/inmobi/ads/NativeV2DataModel;->g:Lcom/inmobi/ads/aj;

    if-nez v0, :cond_0

    move v0, v1

    .line 289
    :goto_0
    return v0

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/NativeV2DataModel;->g:Lcom/inmobi/ads/aj;

    invoke-virtual {v0}, Lcom/inmobi/ads/aj;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeV2Asset;

    .line 284
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeV2Asset;->c()Ljava/lang/String;

    move-result-object v3

    const-string v4, "card_scrollable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 285
    check-cast v0, Lcom/inmobi/ads/aj;

    invoke-virtual {v0}, Lcom/inmobi/ads/aj;->A()I

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    .line 289
    goto :goto_0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lcom/inmobi/ads/NativeV2DataModel;->g:Lcom/inmobi/ads/aj;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/NativeV2DataModel;->g:Lcom/inmobi/ads/aj;

    invoke-virtual {v0}, Lcom/inmobi/ads/aj;->b()Lcom/inmobi/ads/NativeStrandAssetStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandAssetStyle;->a()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    goto :goto_0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lcom/inmobi/ads/NativeV2DataModel;->g:Lcom/inmobi/ads/aj;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/NativeV2DataModel;->g:Lcom/inmobi/ads/aj;

    invoke-virtual {v0}, Lcom/inmobi/ads/aj;->b()Lcom/inmobi/ads/NativeStrandAssetStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandAssetStyle;->a()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    goto :goto_0
.end method

.method m()V
    .locals 10
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 337
    :try_start_0
    iget-object v2, p0, Lcom/inmobi/ads/NativeV2DataModel;->b:Lorg/json/JSONObject;

    const-string v3, "version"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/inmobi/ads/NativeV2DataModel;->c:Ljava/lang/String;

    .line 338
    iget-object v2, p0, Lcom/inmobi/ads/NativeV2DataModel;->b:Lorg/json/JSONObject;

    const-string v3, "styleRefs"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    iput-object v2, p0, Lcom/inmobi/ads/NativeV2DataModel;->f:Lorg/json/JSONObject;

    .line 339
    iget-object v2, p0, Lcom/inmobi/ads/NativeV2DataModel;->b:Lorg/json/JSONObject;

    const-string v3, "orientation"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 340
    sget-object v2, Lcom/inmobi/ads/NativeV2DataModel$Orientation;->ORIENTATION_UNSPECIFIED:Lcom/inmobi/ads/NativeV2DataModel$Orientation;

    iput-object v2, p0, Lcom/inmobi/ads/NativeV2DataModel;->d:Lcom/inmobi/ads/NativeV2DataModel$Orientation;

    .line 344
    :goto_0
    iget-object v2, p0, Lcom/inmobi/ads/NativeV2DataModel;->b:Lorg/json/JSONObject;

    const-string v3, "disableBackButton"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/inmobi/ads/NativeV2DataModel;->e:Z

    .line 345
    iget-object v2, p0, Lcom/inmobi/ads/NativeV2DataModel;->b:Lorg/json/JSONObject;

    const-string v3, "rootContainer"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    sget-object v3, Lcom/inmobi/ads/NativeV2Asset$AssetType;->ASSET_TYPE_CONTAINER:Lcom/inmobi/ads/NativeV2Asset$AssetType;

    const-string v4, "/rootContainer"

    invoke-direct {p0, v2, v3, v4}, Lcom/inmobi/ads/NativeV2DataModel;->a(Lorg/json/JSONObject;Lcom/inmobi/ads/NativeV2Asset$AssetType;Ljava/lang/String;)Lcom/inmobi/ads/NativeV2Asset;

    move-result-object v2

    check-cast v2, Lcom/inmobi/ads/aj;

    iput-object v2, p0, Lcom/inmobi/ads/NativeV2DataModel;->g:Lcom/inmobi/ads/aj;

    .line 352
    iget-object v2, p0, Lcom/inmobi/ads/NativeV2DataModel;->b:Lorg/json/JSONObject;

    const-string v3, "rewards"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 353
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/inmobi/ads/NativeV2DataModel;->j:Ljava/util/Map;

    .line 356
    :cond_0
    iget-object v2, p0, Lcom/inmobi/ads/NativeV2DataModel;->b:Lorg/json/JSONObject;

    const-string v3, "rewards"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 357
    iget-object v2, p0, Lcom/inmobi/ads/NativeV2DataModel;->b:Lorg/json/JSONObject;

    const-string v3, "rewards"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 358
    if-eqz v3, :cond_2

    .line 359
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 360
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 361
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 362
    invoke-virtual {v3, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 363
    iget-object v7, p0, Lcom/inmobi/ads/NativeV2DataModel;->j:Ljava/util/Map;

    invoke-interface {v7, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 469
    :catch_0
    move-exception v2

    .line 470
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v3

    new-instance v4, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v4, v2}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 472
    :goto_2
    return-void

    .line 342
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/inmobi/ads/NativeV2DataModel;->b:Lorg/json/JSONObject;

    const-string v3, "orientation"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/inmobi/ads/NativeV2DataModel;->i(Ljava/lang/String;)Lcom/inmobi/ads/NativeV2DataModel$Orientation;

    move-result-object v2

    iput-object v2, p0, Lcom/inmobi/ads/NativeV2DataModel;->d:Lcom/inmobi/ads/NativeV2DataModel$Orientation;

    goto :goto_0

    .line 369
    :cond_2
    sget-object v2, Lcom/inmobi/ads/NativeV2Asset$AssetType;->ASSET_TYPE_IMAGE:Lcom/inmobi/ads/NativeV2Asset$AssetType;

    invoke-virtual {p0, v2}, Lcom/inmobi/ads/NativeV2DataModel;->a(Lcom/inmobi/ads/NativeV2Asset$AssetType;)Ljava/util/List;

    move-result-object v2

    .line 370
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/ads/NativeV2Asset;

    .line 371
    invoke-virtual {v2}, Lcom/inmobi/ads/NativeV2Asset;->d()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 372
    const-string v6, "http://"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "https://"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 376
    invoke-virtual {p0, p0, v2}, Lcom/inmobi/ads/NativeV2DataModel;->a(Lcom/inmobi/ads/NativeV2DataModel;Lcom/inmobi/ads/NativeV2Asset;)Lcom/inmobi/ads/NativeV2Asset;

    move-result-object v3

    .line 377
    if-nez v3, :cond_4

    .line 378
    sget-object v3, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v6, Lcom/inmobi/ads/NativeV2DataModel;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not find referenced asset for asset ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 379
    invoke-virtual {v2}, Lcom/inmobi/ads/NativeV2Asset;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v7, ")"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 378
    invoke-static {v3, v6, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 382
    :cond_4
    invoke-virtual {v3}, Lcom/inmobi/ads/NativeV2Asset;->a()Lcom/inmobi/ads/NativeV2Asset$AssetType;

    move-result-object v6

    invoke-virtual {v2}, Lcom/inmobi/ads/NativeV2Asset;->a()Lcom/inmobi/ads/NativeV2Asset$AssetType;

    move-result-object v7

    if-ne v6, v7, :cond_5

    .line 383
    invoke-virtual {v3}, Lcom/inmobi/ads/NativeV2Asset;->d()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/inmobi/ads/NativeV2Asset;->a(Ljava/lang/Object;)V

    goto :goto_3

    .line 384
    :cond_5
    sget-object v6, Lcom/inmobi/ads/NativeV2Asset$AssetType;->ASSET_TYPE_VIDEO:Lcom/inmobi/ads/NativeV2Asset$AssetType;

    invoke-virtual {v3}, Lcom/inmobi/ads/NativeV2Asset;->a()Lcom/inmobi/ads/NativeV2Asset$AssetType;

    move-result-object v7

    if-ne v6, v7, :cond_3

    .line 385
    sget-object v6, Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;->ASSET_REFERENCED_CREATIVE_LINEAR:Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;

    invoke-virtual {v3}, Lcom/inmobi/ads/NativeV2Asset;->n()Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;

    move-result-object v7

    if-ne v6, v7, :cond_6

    .line 386
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/NativeV2DataModel;->a:Ljava/lang/String;

    const-string v6, "Image asset cannot reference a linear creative in a video element!"

    invoke-static {v2, v3, v6}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 389
    :cond_6
    sget-object v6, Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;->ASSET_REFERENCED_CREATIVE_COMPANION:Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;

    invoke-virtual {v3}, Lcom/inmobi/ads/NativeV2Asset;->n()Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;

    move-result-object v7

    if-ne v6, v7, :cond_9

    .line 390
    check-cast v3, Lcom/inmobi/ads/av;

    .line 391
    invoke-virtual {v3}, Lcom/inmobi/ads/av;->D()Lcom/inmobi/ads/bk;

    move-result-object v6

    .line 392
    new-instance v7, Lcom/inmobi/ads/bf;

    invoke-direct {v7}, Lcom/inmobi/ads/bf;-><init>()V

    .line 393
    invoke-virtual {v7, v3, v2}, Lcom/inmobi/ads/bf;->a(Lcom/inmobi/ads/av;Lcom/inmobi/ads/NativeV2Asset;)Lcom/inmobi/ads/bg;

    move-result-object v8

    .line 394
    if-nez v8, :cond_8

    .line 395
    sget-object v2, Lcom/inmobi/ads/NativeV2Asset$AssetVisibility;->GONE:Lcom/inmobi/ads/NativeV2Asset$AssetVisibility;

    invoke-virtual {v3, v2}, Lcom/inmobi/ads/av;->a(Lcom/inmobi/ads/NativeV2Asset$AssetVisibility;)V

    .line 396
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 397
    invoke-virtual {v7}, Lcom/inmobi/ads/bf;->a()Z

    move-result v6

    if-nez v6, :cond_7

    .line 398
    const-string v6, "[ERRORCODE]"

    sget-object v7, Lcom/inmobi/ads/VastErrorCode;->MISSING_SUPPORTED_TYPE_COMPANION:Lcom/inmobi/ads/VastErrorCode;

    .line 399
    invoke-virtual {v7}, Lcom/inmobi/ads/VastErrorCode;->getId()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 398
    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    :goto_4
    sget-object v6, Lcom/inmobi/ads/ah$a;->t:Lcom/inmobi/ads/ah$a;

    invoke-virtual {v3, v6, v2}, Lcom/inmobi/ads/av;->a(Lcom/inmobi/ads/ah$a;Ljava/util/Map;)V

    .line 405
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/NativeV2DataModel;->a:Ljava/lang/String;

    const-string v6, "Unable to find the best-fit companion ad! Returning ..."

    invoke-static {v2, v3, v6}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 401
    :cond_7
    const-string v6, "[ERRORCODE]"

    sget-object v7, Lcom/inmobi/ads/VastErrorCode;->NO_BEST_FIT_COMPANION:Lcom/inmobi/ads/VastErrorCode;

    .line 402
    invoke-virtual {v7}, Lcom/inmobi/ads/VastErrorCode;->getId()Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 401
    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 408
    :cond_8
    sget-object v3, Lcom/inmobi/ads/bg$a$a;->b:Lcom/inmobi/ads/bg$a$a;

    invoke-virtual {v8, v3}, Lcom/inmobi/ads/bg;->a(Lcom/inmobi/ads/bg$a$a;)Ljava/util/List;

    move-result-object v7

    .line 410
    invoke-interface {v6, v8}, Lcom/inmobi/ads/bk;->a(Lcom/inmobi/ads/bg;)V

    .line 411
    sget-object v6, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v8, Lcom/inmobi/ads/NativeV2DataModel;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Setting asset value: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const/4 v3, 0x0

    .line 412
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/inmobi/ads/bg$a;

    iget-object v3, v3, Lcom/inmobi/ads/bg$a;->b:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 411
    invoke-static {v6, v8, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const/4 v3, 0x0

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/inmobi/ads/bg$a;

    iget-object v3, v3, Lcom/inmobi/ads/bg$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/inmobi/ads/NativeV2Asset;->a(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 416
    :cond_9
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/NativeV2DataModel;->a:Ljava/lang/String;

    const-string v6, "Unknown creative type reference for image asset! Returning ..."

    invoke-static {v2, v3, v6}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 423
    :cond_a
    iget-object v2, p0, Lcom/inmobi/ads/NativeV2DataModel;->m:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_b
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 424
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 425
    iget-object v4, p0, Lcom/inmobi/ads/NativeV2DataModel;->l:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/ads/NativeV2Asset;

    .line 426
    sget-object v4, Lcom/inmobi/ads/NativeV2Asset$AssetDisplayOnType;->ASSET_DISPLAY_ON_TYPE_PERCENTAGE:Lcom/inmobi/ads/NativeV2Asset$AssetDisplayOnType;

    invoke-virtual {v2}, Lcom/inmobi/ads/NativeV2Asset;->o()Lcom/inmobi/ads/NativeV2Asset$AssetDisplayOnType;

    move-result-object v7

    if-ne v4, v7, :cond_b

    .line 427
    iget-object v4, p0, Lcom/inmobi/ads/NativeV2DataModel;->l:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/inmobi/ads/NativeV2Asset;

    .line 428
    sget-object v4, Lcom/inmobi/ads/NativeV2Asset$AssetType;->ASSET_TYPE_VIDEO:Lcom/inmobi/ads/NativeV2Asset$AssetType;

    invoke-virtual {v3}, Lcom/inmobi/ads/NativeV2Asset;->a()Lcom/inmobi/ads/NativeV2Asset$AssetType;

    move-result-object v7

    if-ne v4, v7, :cond_b

    .line 429
    move-object v0, v3

    check-cast v0, Lcom/inmobi/ads/av;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/inmobi/ads/av;->D()Lcom/inmobi/ads/bk;

    move-result-object v4

    check-cast v4, Lcom/inmobi/ads/bj;

    .line 430
    invoke-virtual {v4}, Lcom/inmobi/ads/bj;->h()Ljava/lang/String;

    move-result-object v4

    .line 431
    const-string v7, ":"

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    .line 434
    const/4 v7, 0x1

    :try_start_2
    aget-object v7, v4, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    mul-int/lit8 v7, v7, 0x3c

    const/4 v8, 0x2

    aget-object v4, v4, v8

    .line 435
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    move-result v4

    add-int/2addr v4, v7

    .line 440
    :goto_6
    if-nez v4, :cond_c

    .line 441
    :try_start_3
    div-int/lit8 v4, v4, 0x4

    invoke-virtual {v2, v4}, Lcom/inmobi/ads/NativeV2Asset;->a(I)V

    .line 459
    :goto_7
    check-cast v3, Lcom/inmobi/ads/av;

    invoke-virtual {v3, v2}, Lcom/inmobi/ads/av;->c(Lcom/inmobi/ads/NativeV2Asset;)V

    goto :goto_5

    .line 436
    :catch_1
    move-exception v4

    .line 438
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v7

    new-instance v8, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v8, v4}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v7, v8}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    move v4, v5

    goto :goto_6

    .line 443
    :cond_c
    invoke-virtual {v2}, Lcom/inmobi/ads/NativeV2Asset;->p()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 446
    div-int/lit8 v4, v4, 0x4

    invoke-virtual {v2, v4}, Lcom/inmobi/ads/NativeV2Asset;->a(I)V

    goto :goto_7

    .line 449
    :sswitch_0
    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v4}, Lcom/inmobi/ads/NativeV2Asset;->a(I)V

    goto :goto_7

    .line 452
    :sswitch_1
    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x4

    invoke-virtual {v2, v4}, Lcom/inmobi/ads/NativeV2Asset;->a(I)V

    goto :goto_7

    .line 455
    :sswitch_2
    invoke-virtual {v2, v4}, Lcom/inmobi/ads/NativeV2Asset;->a(I)V

    goto :goto_7

    .line 464
    :cond_d
    iget-object v2, p0, Lcom/inmobi/ads/NativeV2DataModel;->b:Lorg/json/JSONObject;

    const-string v3, "pages"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 465
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    iput-object v2, p0, Lcom/inmobi/ads/NativeV2DataModel;->h:Lorg/json/JSONArray;

    goto/16 :goto_2

    .line 467
    :cond_e
    iget-object v2, p0, Lcom/inmobi/ads/NativeV2DataModel;->b:Lorg/json/JSONObject;

    const-string v3, "pages"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    iput-object v2, p0, Lcom/inmobi/ads/NativeV2DataModel;->h:Lorg/json/JSONArray;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_2

    .line 443
    nop

    :sswitch_data_0
    .sparse-switch
        0x32 -> :sswitch_0
        0x4b -> :sswitch_1
        0x64 -> :sswitch_2
    .end sparse-switch
.end method

.method n()Z
    .locals 4
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 524
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeV2DataModel;->b()Lcom/inmobi/ads/aj;

    move-result-object v1

    if-nez v1, :cond_0

    .line 525
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/NativeV2DataModel;->a:Ljava/lang/String;

    const-string v3, "Invalid Data Model: No Root Container"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 538
    :goto_0
    return v0

    .line 528
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeV2DataModel;->i()Lcom/inmobi/ads/aj;

    move-result-object v1

    .line 529
    if-nez v1, :cond_1

    .line 530
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/NativeV2DataModel;->a:Ljava/lang/String;

    const-string v2, "No Card Scrollable in the data model"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    invoke-direct {p0}, Lcom/inmobi/ads/NativeV2DataModel;->p()Z

    move-result v0

    goto :goto_0

    .line 534
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeV2DataModel;->j()I

    move-result v1

    if-gtz v1, :cond_2

    .line 535
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/NativeV2DataModel;->a:Ljava/lang/String;

    const-string v3, "Invalid Data Model: No Cards in Card Scrollable"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 538
    :cond_2
    invoke-direct {p0}, Lcom/inmobi/ads/NativeV2DataModel;->p()Z

    move-result v0

    goto :goto_0
.end method

.method o()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/NativeV2Asset$AssetType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 982
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/inmobi/ads/NativeV2DataModel;->k:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
