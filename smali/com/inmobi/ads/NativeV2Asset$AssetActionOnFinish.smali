.class public final enum Lcom/inmobi/ads/NativeV2Asset$AssetActionOnFinish;
.super Ljava/lang/Enum;
.source "NativeV2Asset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/NativeV2Asset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AssetActionOnFinish"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/ads/NativeV2Asset$AssetActionOnFinish;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/inmobi/ads/NativeV2Asset$AssetActionOnFinish;

.field public static final enum ASSET_ACTION_ON_FINISH_EXIT:Lcom/inmobi/ads/NativeV2Asset$AssetActionOnFinish;

.field public static final enum ASSET_ACTION_ON_FINISH_NONE:Lcom/inmobi/ads/NativeV2Asset$AssetActionOnFinish;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 70
    new-instance v0, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnFinish;

    const-string v1, "ASSET_ACTION_ON_FINISH_NONE"

    invoke-direct {v0, v1, v2}, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnFinish;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnFinish;->ASSET_ACTION_ON_FINISH_NONE:Lcom/inmobi/ads/NativeV2Asset$AssetActionOnFinish;

    .line 71
    new-instance v0, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnFinish;

    const-string v1, "ASSET_ACTION_ON_FINISH_EXIT"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnFinish;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnFinish;->ASSET_ACTION_ON_FINISH_EXIT:Lcom/inmobi/ads/NativeV2Asset$AssetActionOnFinish;

    .line 69
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/inmobi/ads/NativeV2Asset$AssetActionOnFinish;

    sget-object v1, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnFinish;->ASSET_ACTION_ON_FINISH_NONE:Lcom/inmobi/ads/NativeV2Asset$AssetActionOnFinish;

    aput-object v1, v0, v2

    sget-object v1, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnFinish;->ASSET_ACTION_ON_FINISH_EXIT:Lcom/inmobi/ads/NativeV2Asset$AssetActionOnFinish;

    aput-object v1, v0, v3

    sput-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnFinish;->$VALUES:[Lcom/inmobi/ads/NativeV2Asset$AssetActionOnFinish;

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
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/ads/NativeV2Asset$AssetActionOnFinish;
    .locals 1

    .prologue
    .line 69
    const-class v0, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnFinish;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnFinish;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/ads/NativeV2Asset$AssetActionOnFinish;
    .locals 1

    .prologue
    .line 69
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnFinish;->$VALUES:[Lcom/inmobi/ads/NativeV2Asset$AssetActionOnFinish;

    invoke-virtual {v0}, [Lcom/inmobi/ads/NativeV2Asset$AssetActionOnFinish;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/ads/NativeV2Asset$AssetActionOnFinish;

    return-object v0
.end method
