.class Lcom/inmobi/ads/av$a;
.super Lcom/inmobi/ads/NativeStrandAssetStyle;
.source "NativeV2VideoAsset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/av;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(IIII)V
    .locals 9

    .prologue
    .line 22
    sget-object v5, Lcom/inmobi/ads/NativeStrandAssetStyle$b;->a:Lcom/inmobi/ads/NativeStrandAssetStyle$b;

    sget-object v6, Lcom/inmobi/ads/NativeStrandAssetStyle$a;->b:Lcom/inmobi/ads/NativeStrandAssetStyle$a;

    const-string v7, "#ff000000"

    const-string v8, "#00000000"

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v8}, Lcom/inmobi/ads/NativeStrandAssetStyle;-><init>(IIIILcom/inmobi/ads/NativeStrandAssetStyle$b;Lcom/inmobi/ads/NativeStrandAssetStyle$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void
.end method
