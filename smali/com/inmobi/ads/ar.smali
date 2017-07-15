.class public Lcom/inmobi/ads/ar;
.super Lcom/inmobi/ads/NativeV2Asset;
.source "NativeV2TextAsset.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/ar$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeStrandAssetStyle;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 155
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetType;->ASSET_TYPE_TEXT:Lcom/inmobi/ads/NativeV2Asset$AssetType;

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/inmobi/ads/NativeV2Asset;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeV2Asset$AssetType;Lcom/inmobi/ads/NativeStrandAssetStyle;)V

    .line 156
    iput-object p4, p0, Lcom/inmobi/ads/ar;->e:Ljava/lang/Object;

    .line 157
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeV2Asset$AssetType;Lcom/inmobi/ads/NativeStrandAssetStyle;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 160
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/inmobi/ads/NativeV2Asset;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeV2Asset$AssetType;Lcom/inmobi/ads/NativeStrandAssetStyle;)V

    .line 161
    iput-object p5, p0, Lcom/inmobi/ads/ar;->e:Ljava/lang/Object;

    .line 162
    return-void
.end method
