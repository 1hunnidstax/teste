.class public Lcom/inmobi/ads/am;
.super Lcom/inmobi/ads/NativeV2Asset;
.source "NativeV2IconAsset.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeStrandAssetStyle;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetType;->ASSET_TYPE_ICON:Lcom/inmobi/ads/NativeV2Asset$AssetType;

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/inmobi/ads/NativeV2Asset;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeV2Asset$AssetType;Lcom/inmobi/ads/NativeStrandAssetStyle;)V

    .line 17
    iput-object p4, p0, Lcom/inmobi/ads/am;->e:Ljava/lang/Object;

    .line 18
    return-void
.end method
