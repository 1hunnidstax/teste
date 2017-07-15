.class public final enum Lcom/inmobi/ads/NativeV2DataModel$Orientation;
.super Ljava/lang/Enum;
.source "NativeV2DataModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/NativeV2DataModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Orientation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/ads/NativeV2DataModel$Orientation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/inmobi/ads/NativeV2DataModel$Orientation;

.field public static final enum ORIENTATION_LANDSCAPE:Lcom/inmobi/ads/NativeV2DataModel$Orientation;

.field public static final enum ORIENTATION_PORTRAIT:Lcom/inmobi/ads/NativeV2DataModel$Orientation;

.field public static final enum ORIENTATION_UNSPECIFIED:Lcom/inmobi/ads/NativeV2DataModel$Orientation;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 107
    new-instance v0, Lcom/inmobi/ads/NativeV2DataModel$Orientation;

    const-string v1, "ORIENTATION_UNSPECIFIED"

    invoke-direct {v0, v1, v2}, Lcom/inmobi/ads/NativeV2DataModel$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/NativeV2DataModel$Orientation;->ORIENTATION_UNSPECIFIED:Lcom/inmobi/ads/NativeV2DataModel$Orientation;

    .line 111
    new-instance v0, Lcom/inmobi/ads/NativeV2DataModel$Orientation;

    const-string v1, "ORIENTATION_PORTRAIT"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/ads/NativeV2DataModel$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/NativeV2DataModel$Orientation;->ORIENTATION_PORTRAIT:Lcom/inmobi/ads/NativeV2DataModel$Orientation;

    .line 115
    new-instance v0, Lcom/inmobi/ads/NativeV2DataModel$Orientation;

    const-string v1, "ORIENTATION_LANDSCAPE"

    invoke-direct {v0, v1, v4}, Lcom/inmobi/ads/NativeV2DataModel$Orientation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/NativeV2DataModel$Orientation;->ORIENTATION_LANDSCAPE:Lcom/inmobi/ads/NativeV2DataModel$Orientation;

    .line 103
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/inmobi/ads/NativeV2DataModel$Orientation;

    sget-object v1, Lcom/inmobi/ads/NativeV2DataModel$Orientation;->ORIENTATION_UNSPECIFIED:Lcom/inmobi/ads/NativeV2DataModel$Orientation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/inmobi/ads/NativeV2DataModel$Orientation;->ORIENTATION_PORTRAIT:Lcom/inmobi/ads/NativeV2DataModel$Orientation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/ads/NativeV2DataModel$Orientation;->ORIENTATION_LANDSCAPE:Lcom/inmobi/ads/NativeV2DataModel$Orientation;

    aput-object v1, v0, v4

    sput-object v0, Lcom/inmobi/ads/NativeV2DataModel$Orientation;->$VALUES:[Lcom/inmobi/ads/NativeV2DataModel$Orientation;

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
    .line 103
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/ads/NativeV2DataModel$Orientation;
    .locals 1

    .prologue
    .line 103
    const-class v0, Lcom/inmobi/ads/NativeV2DataModel$Orientation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeV2DataModel$Orientation;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/ads/NativeV2DataModel$Orientation;
    .locals 1

    .prologue
    .line 103
    sget-object v0, Lcom/inmobi/ads/NativeV2DataModel$Orientation;->$VALUES:[Lcom/inmobi/ads/NativeV2DataModel$Orientation;

    invoke-virtual {v0}, [Lcom/inmobi/ads/NativeV2DataModel$Orientation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/ads/NativeV2DataModel$Orientation;

    return-object v0
.end method
