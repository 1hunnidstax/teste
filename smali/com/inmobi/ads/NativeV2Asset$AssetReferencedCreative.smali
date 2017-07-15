.class public final enum Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;
.super Ljava/lang/Enum;
.source "NativeV2Asset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/NativeV2Asset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AssetReferencedCreative"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;

.field public static final enum ASSET_REFERENCED_CREATIVE_COMPANION:Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;

.field public static final enum ASSET_REFERENCED_CREATIVE_LINEAR:Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;

.field public static final enum ASSET_REFERENCED_CREATIVE_NONE:Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    new-instance v0, Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;

    const-string v1, "ASSET_REFERENCED_CREATIVE_NONE"

    invoke-direct {v0, v1, v2}, Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;->ASSET_REFERENCED_CREATIVE_NONE:Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;

    .line 76
    new-instance v0, Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;

    const-string v1, "ASSET_REFERENCED_CREATIVE_LINEAR"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;->ASSET_REFERENCED_CREATIVE_LINEAR:Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;

    .line 77
    new-instance v0, Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;

    const-string v1, "ASSET_REFERENCED_CREATIVE_COMPANION"

    invoke-direct {v0, v1, v4}, Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;->ASSET_REFERENCED_CREATIVE_COMPANION:Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;

    .line 74
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;

    sget-object v1, Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;->ASSET_REFERENCED_CREATIVE_NONE:Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;

    aput-object v1, v0, v2

    sget-object v1, Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;->ASSET_REFERENCED_CREATIVE_LINEAR:Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;->ASSET_REFERENCED_CREATIVE_COMPANION:Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;

    aput-object v1, v0, v4

    sput-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;->$VALUES:[Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;
    .locals 1

    .prologue
    .line 74
    const-class v0, Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;->$VALUES:[Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;

    invoke-virtual {v0}, [Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;

    return-object v0
.end method
