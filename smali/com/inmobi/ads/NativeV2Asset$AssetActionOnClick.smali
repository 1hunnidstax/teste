.class public final enum Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;
.super Ljava/lang/Enum;
.source "NativeV2Asset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/NativeV2Asset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AssetActionOnClick"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;

.field public static final enum ASSET_ACTION_ON_CLICK_EXIT:Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;

.field public static final enum ASSET_ACTION_ON_CLICK_FULLSCREEN:Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;

.field public static final enum ASSET_ACTION_ON_CLICK_NONE:Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;

.field public static final enum ASSET_ACTION_ON_CLICK_REPLAY:Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;

.field public static final enum ASSET_ACTION_ON_CLICK_SKIP:Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 62
    new-instance v0, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;

    const-string v1, "ASSET_ACTION_ON_CLICK_NONE"

    invoke-direct {v0, v1, v2}, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;->ASSET_ACTION_ON_CLICK_NONE:Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;

    .line 63
    new-instance v0, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;

    const-string v1, "ASSET_ACTION_ON_CLICK_EXIT"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;->ASSET_ACTION_ON_CLICK_EXIT:Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;

    .line 64
    new-instance v0, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;

    const-string v1, "ASSET_ACTION_ON_CLICK_SKIP"

    invoke-direct {v0, v1, v4}, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;->ASSET_ACTION_ON_CLICK_SKIP:Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;

    .line 65
    new-instance v0, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;

    const-string v1, "ASSET_ACTION_ON_CLICK_REPLAY"

    invoke-direct {v0, v1, v5}, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;->ASSET_ACTION_ON_CLICK_REPLAY:Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;

    .line 66
    new-instance v0, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;

    const-string v1, "ASSET_ACTION_ON_CLICK_FULLSCREEN"

    invoke-direct {v0, v1, v6}, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;->ASSET_ACTION_ON_CLICK_FULLSCREEN:Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;

    .line 61
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;

    sget-object v1, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;->ASSET_ACTION_ON_CLICK_NONE:Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;

    aput-object v1, v0, v2

    sget-object v1, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;->ASSET_ACTION_ON_CLICK_EXIT:Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;->ASSET_ACTION_ON_CLICK_SKIP:Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;->ASSET_ACTION_ON_CLICK_REPLAY:Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;

    aput-object v1, v0, v5

    sget-object v1, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;->ASSET_ACTION_ON_CLICK_FULLSCREEN:Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;

    aput-object v1, v0, v6

    sput-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;->$VALUES:[Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;

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
    .line 61
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;->$VALUES:[Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;

    invoke-virtual {v0}, [Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;

    return-object v0
.end method
