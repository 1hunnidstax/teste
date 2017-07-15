.class public final enum Lcom/inmobi/ads/NativeV2Asset$AssetValueType;
.super Ljava/lang/Enum;
.source "NativeV2Asset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/NativeV2Asset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AssetValueType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/ads/NativeV2Asset$AssetValueType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/inmobi/ads/NativeV2Asset$AssetValueType;

.field public static final enum ASSET_VALUE_ABSOLUTE:Lcom/inmobi/ads/NativeV2Asset$AssetValueType;

.field public static final enum ASSET_VALUE_REFERENCE:Lcom/inmobi/ads/NativeV2Asset$AssetValueType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-instance v0, Lcom/inmobi/ads/NativeV2Asset$AssetValueType;

    const-string v1, "ASSET_VALUE_ABSOLUTE"

    invoke-direct {v0, v1, v2}, Lcom/inmobi/ads/NativeV2Asset$AssetValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetValueType;->ASSET_VALUE_ABSOLUTE:Lcom/inmobi/ads/NativeV2Asset$AssetValueType;

    .line 51
    new-instance v0, Lcom/inmobi/ads/NativeV2Asset$AssetValueType;

    const-string v1, "ASSET_VALUE_REFERENCE"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/ads/NativeV2Asset$AssetValueType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetValueType;->ASSET_VALUE_REFERENCE:Lcom/inmobi/ads/NativeV2Asset$AssetValueType;

    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/inmobi/ads/NativeV2Asset$AssetValueType;

    sget-object v1, Lcom/inmobi/ads/NativeV2Asset$AssetValueType;->ASSET_VALUE_ABSOLUTE:Lcom/inmobi/ads/NativeV2Asset$AssetValueType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/inmobi/ads/NativeV2Asset$AssetValueType;->ASSET_VALUE_REFERENCE:Lcom/inmobi/ads/NativeV2Asset$AssetValueType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetValueType;->$VALUES:[Lcom/inmobi/ads/NativeV2Asset$AssetValueType;

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
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/ads/NativeV2Asset$AssetValueType;
    .locals 1

    .prologue
    .line 49
    const-class v0, Lcom/inmobi/ads/NativeV2Asset$AssetValueType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeV2Asset$AssetValueType;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/ads/NativeV2Asset$AssetValueType;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetValueType;->$VALUES:[Lcom/inmobi/ads/NativeV2Asset$AssetValueType;

    invoke-virtual {v0}, [Lcom/inmobi/ads/NativeV2Asset$AssetValueType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/ads/NativeV2Asset$AssetValueType;

    return-object v0
.end method
