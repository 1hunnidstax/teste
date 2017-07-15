.class public Lcom/inmobi/ads/as;
.super Lcom/inmobi/ads/NativeV2Asset;
.source "NativeV2TimerAsset.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/as$a;
    }
.end annotation


# instance fields
.field private x:Lcom/inmobi/ads/as$a;

.field private y:Lcom/inmobi/ads/as$a;

.field private z:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeStrandAssetStyle;Lcom/inmobi/ads/as$a;Lcom/inmobi/ads/as$a;)V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetType;->ASSET_TYPE_TIMER:Lcom/inmobi/ads/NativeV2Asset$AssetType;

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/inmobi/ads/NativeV2Asset;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeV2Asset$AssetType;Lcom/inmobi/ads/NativeStrandAssetStyle;)V

    .line 25
    iput-object p4, p0, Lcom/inmobi/ads/as;->x:Lcom/inmobi/ads/as$a;

    .line 26
    iput-object p5, p0, Lcom/inmobi/ads/as;->y:Lcom/inmobi/ads/as$a;

    .line 27
    return-void
.end method


# virtual methods
.method public A()Lcom/inmobi/ads/as$a;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/inmobi/ads/as;->y:Lcom/inmobi/ads/as$a;

    return-object v0
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/inmobi/ads/as;->z:Z

    .line 31
    return-void
.end method

.method public y()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/inmobi/ads/as;->z:Z

    return v0
.end method

.method public z()Lcom/inmobi/ads/as$a;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/inmobi/ads/as;->x:Lcom/inmobi/ads/as$a;

    return-object v0
.end method
