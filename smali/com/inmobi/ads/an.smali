.class public Lcom/inmobi/ads/an;
.super Lcom/inmobi/ads/NativeV2Asset;
.source "NativeV2ImageAsset.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeStrandAssetStyle;Ljava/lang/String;Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;Lorg/json/JSONObject;)V
    .locals 8

    .prologue
    .line 36
    const/4 v0, 0x0

    new-array v5, v0, [Lcom/inmobi/ads/ah;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/inmobi/ads/an;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeStrandAssetStyle;Ljava/lang/String;[Lcom/inmobi/ads/ah;Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;Lorg/json/JSONObject;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeStrandAssetStyle;Ljava/lang/String;[Lcom/inmobi/ads/ah;Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    .line 45
    sget-object v3, Lcom/inmobi/ads/NativeV2Asset$AssetType;->ASSET_TYPE_IMAGE:Lcom/inmobi/ads/NativeV2Asset$AssetType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/ads/NativeV2Asset;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeV2Asset$AssetType;Lcom/inmobi/ads/NativeStrandAssetStyle;[Lcom/inmobi/ads/ah;)V

    .line 46
    iput-object p4, p0, Lcom/inmobi/ads/an;->e:Ljava/lang/Object;

    .line 47
    if-eqz p7, :cond_0

    .line 48
    iput-object p6, p0, Lcom/inmobi/ads/an;->i:Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;

    .line 49
    iput-object p7, p0, Lcom/inmobi/ads/an;->f:Lorg/json/JSONObject;

    .line 51
    :cond_0
    return-void
.end method
