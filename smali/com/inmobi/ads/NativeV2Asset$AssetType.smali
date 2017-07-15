.class public final enum Lcom/inmobi/ads/NativeV2Asset$AssetType;
.super Ljava/lang/Enum;
.source "NativeV2Asset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/NativeV2Asset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AssetType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/ads/NativeV2Asset$AssetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/inmobi/ads/NativeV2Asset$AssetType;

.field public static final enum ASSET_TYPE_CONTAINER:Lcom/inmobi/ads/NativeV2Asset$AssetType;

.field public static final enum ASSET_TYPE_CTA:Lcom/inmobi/ads/NativeV2Asset$AssetType;

.field public static final enum ASSET_TYPE_ICON:Lcom/inmobi/ads/NativeV2Asset$AssetType;

.field public static final enum ASSET_TYPE_IMAGE:Lcom/inmobi/ads/NativeV2Asset$AssetType;

.field public static final enum ASSET_TYPE_RATING:Lcom/inmobi/ads/NativeV2Asset$AssetType;

.field public static final enum ASSET_TYPE_TEXT:Lcom/inmobi/ads/NativeV2Asset$AssetType;

.field public static final enum ASSET_TYPE_TIMER:Lcom/inmobi/ads/NativeV2Asset$AssetType;

.field public static final enum ASSET_TYPE_VIDEO:Lcom/inmobi/ads/NativeV2Asset$AssetType;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 33
    new-instance v0, Lcom/inmobi/ads/NativeV2Asset$AssetType;

    const-string v1, "ASSET_TYPE_CONTAINER"

    const-string v2, "CONTAINER"

    invoke-direct {v0, v1, v4, v2}, Lcom/inmobi/ads/NativeV2Asset$AssetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetType;->ASSET_TYPE_CONTAINER:Lcom/inmobi/ads/NativeV2Asset$AssetType;

    .line 34
    new-instance v0, Lcom/inmobi/ads/NativeV2Asset$AssetType;

    const-string v1, "ASSET_TYPE_TEXT"

    const-string v2, "TEXT"

    invoke-direct {v0, v1, v5, v2}, Lcom/inmobi/ads/NativeV2Asset$AssetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetType;->ASSET_TYPE_TEXT:Lcom/inmobi/ads/NativeV2Asset$AssetType;

    .line 35
    new-instance v0, Lcom/inmobi/ads/NativeV2Asset$AssetType;

    const-string v1, "ASSET_TYPE_CTA"

    const-string v2, "CTA"

    invoke-direct {v0, v1, v6, v2}, Lcom/inmobi/ads/NativeV2Asset$AssetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetType;->ASSET_TYPE_CTA:Lcom/inmobi/ads/NativeV2Asset$AssetType;

    .line 36
    new-instance v0, Lcom/inmobi/ads/NativeV2Asset$AssetType;

    const-string v1, "ASSET_TYPE_IMAGE"

    const-string v2, "IMAGE"

    invoke-direct {v0, v1, v7, v2}, Lcom/inmobi/ads/NativeV2Asset$AssetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetType;->ASSET_TYPE_IMAGE:Lcom/inmobi/ads/NativeV2Asset$AssetType;

    .line 37
    new-instance v0, Lcom/inmobi/ads/NativeV2Asset$AssetType;

    const-string v1, "ASSET_TYPE_ICON"

    const-string v2, "ICON"

    invoke-direct {v0, v1, v8, v2}, Lcom/inmobi/ads/NativeV2Asset$AssetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetType;->ASSET_TYPE_ICON:Lcom/inmobi/ads/NativeV2Asset$AssetType;

    .line 38
    new-instance v0, Lcom/inmobi/ads/NativeV2Asset$AssetType;

    const-string v1, "ASSET_TYPE_RATING"

    const/4 v2, 0x5

    const-string v3, "RATING"

    invoke-direct {v0, v1, v2, v3}, Lcom/inmobi/ads/NativeV2Asset$AssetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetType;->ASSET_TYPE_RATING:Lcom/inmobi/ads/NativeV2Asset$AssetType;

    .line 39
    new-instance v0, Lcom/inmobi/ads/NativeV2Asset$AssetType;

    const-string v1, "ASSET_TYPE_VIDEO"

    const/4 v2, 0x6

    const-string v3, "VIDEO"

    invoke-direct {v0, v1, v2, v3}, Lcom/inmobi/ads/NativeV2Asset$AssetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetType;->ASSET_TYPE_VIDEO:Lcom/inmobi/ads/NativeV2Asset$AssetType;

    .line 40
    new-instance v0, Lcom/inmobi/ads/NativeV2Asset$AssetType;

    const-string v1, "ASSET_TYPE_TIMER"

    const/4 v2, 0x7

    const-string v3, "TIMER"

    invoke-direct {v0, v1, v2, v3}, Lcom/inmobi/ads/NativeV2Asset$AssetType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetType;->ASSET_TYPE_TIMER:Lcom/inmobi/ads/NativeV2Asset$AssetType;

    .line 32
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/inmobi/ads/NativeV2Asset$AssetType;

    sget-object v1, Lcom/inmobi/ads/NativeV2Asset$AssetType;->ASSET_TYPE_CONTAINER:Lcom/inmobi/ads/NativeV2Asset$AssetType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inmobi/ads/NativeV2Asset$AssetType;->ASSET_TYPE_TEXT:Lcom/inmobi/ads/NativeV2Asset$AssetType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/inmobi/ads/NativeV2Asset$AssetType;->ASSET_TYPE_CTA:Lcom/inmobi/ads/NativeV2Asset$AssetType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/inmobi/ads/NativeV2Asset$AssetType;->ASSET_TYPE_IMAGE:Lcom/inmobi/ads/NativeV2Asset$AssetType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/inmobi/ads/NativeV2Asset$AssetType;->ASSET_TYPE_ICON:Lcom/inmobi/ads/NativeV2Asset$AssetType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/inmobi/ads/NativeV2Asset$AssetType;->ASSET_TYPE_RATING:Lcom/inmobi/ads/NativeV2Asset$AssetType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/inmobi/ads/NativeV2Asset$AssetType;->ASSET_TYPE_VIDEO:Lcom/inmobi/ads/NativeV2Asset$AssetType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/inmobi/ads/NativeV2Asset$AssetType;->ASSET_TYPE_TIMER:Lcom/inmobi/ads/NativeV2Asset$AssetType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetType;->$VALUES:[Lcom/inmobi/ads/NativeV2Asset$AssetType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput-object p3, p0, Lcom/inmobi/ads/NativeV2Asset$AssetType;->a:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/ads/NativeV2Asset$AssetType;
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/inmobi/ads/NativeV2Asset$AssetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeV2Asset$AssetType;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/ads/NativeV2Asset$AssetType;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetType;->$VALUES:[Lcom/inmobi/ads/NativeV2Asset$AssetType;

    invoke-virtual {v0}, [Lcom/inmobi/ads/NativeV2Asset$AssetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/ads/NativeV2Asset$AssetType;

    return-object v0
.end method
