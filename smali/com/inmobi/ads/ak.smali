.class public Lcom/inmobi/ads/ak;
.super Lcom/inmobi/ads/ar;
.source "NativeV2CtaAsset.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/ak$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeStrandAssetStyle;Ljava/lang/String;Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;Lorg/json/JSONObject;)V
    .locals 8

    .prologue
    .line 73
    const/4 v0, 0x0

    new-array v5, v0, [Lcom/inmobi/ads/ah;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/inmobi/ads/ak;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeStrandAssetStyle;Ljava/lang/String;[Lcom/inmobi/ads/ah;Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;Lorg/json/JSONObject;)V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeStrandAssetStyle;Ljava/lang/String;[Lcom/inmobi/ads/ah;Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;Lorg/json/JSONObject;)V
    .locals 6

    .prologue
    .line 81
    sget-object v3, Lcom/inmobi/ads/NativeV2Asset$AssetType;->ASSET_TYPE_CTA:Lcom/inmobi/ads/NativeV2Asset$AssetType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/ads/ar;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeV2Asset$AssetType;Lcom/inmobi/ads/NativeStrandAssetStyle;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0, p5}, Lcom/inmobi/ads/ak;->a([Lcom/inmobi/ads/ah;)V

    .line 83
    if-eqz p7, :cond_0

    .line 84
    iput-object p6, p0, Lcom/inmobi/ads/ak;->i:Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;

    .line 85
    iput-object p7, p0, Lcom/inmobi/ads/ak;->f:Lorg/json/JSONObject;

    .line 87
    :cond_0
    return-void
.end method
