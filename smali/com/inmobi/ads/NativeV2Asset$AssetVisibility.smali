.class public final enum Lcom/inmobi/ads/NativeV2Asset$AssetVisibility;
.super Ljava/lang/Enum;
.source "NativeV2Asset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/NativeV2Asset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AssetVisibility"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/ads/NativeV2Asset$AssetVisibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/inmobi/ads/NativeV2Asset$AssetVisibility;

.field public static final enum GONE:Lcom/inmobi/ads/NativeV2Asset$AssetVisibility;

.field public static final enum INVISIBLE:Lcom/inmobi/ads/NativeV2Asset$AssetVisibility;

.field public static final enum VISIBLE:Lcom/inmobi/ads/NativeV2Asset$AssetVisibility;


# instance fields
.field private a:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 88
    new-instance v0, Lcom/inmobi/ads/NativeV2Asset$AssetVisibility;

    const-string v1, "VISIBLE"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v3, v2}, Lcom/inmobi/ads/NativeV2Asset$AssetVisibility;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetVisibility;->VISIBLE:Lcom/inmobi/ads/NativeV2Asset$AssetVisibility;

    .line 89
    new-instance v0, Lcom/inmobi/ads/NativeV2Asset$AssetVisibility;

    const-string v1, "INVISIBLE"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Lcom/inmobi/ads/NativeV2Asset$AssetVisibility;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetVisibility;->INVISIBLE:Lcom/inmobi/ads/NativeV2Asset$AssetVisibility;

    .line 90
    new-instance v0, Lcom/inmobi/ads/NativeV2Asset$AssetVisibility;

    const-string v1, "GONE"

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2}, Lcom/inmobi/ads/NativeV2Asset$AssetVisibility;-><init>(Ljava/lang/String;ILjava/lang/Integer;)V

    sput-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetVisibility;->GONE:Lcom/inmobi/ads/NativeV2Asset$AssetVisibility;

    .line 87
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/inmobi/ads/NativeV2Asset$AssetVisibility;

    sget-object v1, Lcom/inmobi/ads/NativeV2Asset$AssetVisibility;->VISIBLE:Lcom/inmobi/ads/NativeV2Asset$AssetVisibility;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/ads/NativeV2Asset$AssetVisibility;->INVISIBLE:Lcom/inmobi/ads/NativeV2Asset$AssetVisibility;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inmobi/ads/NativeV2Asset$AssetVisibility;->GONE:Lcom/inmobi/ads/NativeV2Asset$AssetVisibility;

    aput-object v1, v0, v5

    sput-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetVisibility;->$VALUES:[Lcom/inmobi/ads/NativeV2Asset$AssetVisibility;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Integer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 95
    iput-object p3, p0, Lcom/inmobi/ads/NativeV2Asset$AssetVisibility;->a:Ljava/lang/Integer;

    .line 96
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/ads/NativeV2Asset$AssetVisibility;
    .locals 1

    .prologue
    .line 87
    const-class v0, Lcom/inmobi/ads/NativeV2Asset$AssetVisibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeV2Asset$AssetVisibility;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/ads/NativeV2Asset$AssetVisibility;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetVisibility;->$VALUES:[Lcom/inmobi/ads/NativeV2Asset$AssetVisibility;

    invoke-virtual {v0}, [Lcom/inmobi/ads/NativeV2Asset$AssetVisibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/ads/NativeV2Asset$AssetVisibility;

    return-object v0
.end method


# virtual methods
.method public getId()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/inmobi/ads/NativeV2Asset$AssetVisibility;->a:Ljava/lang/Integer;

    return-object v0
.end method
