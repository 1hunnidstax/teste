.class final enum Lcom/inmobi/ads/NativeStrandAssetStyle$a;
.super Ljava/lang/Enum;
.source "NativeStrandAssetStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/NativeStrandAssetStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/ads/NativeStrandAssetStyle$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/inmobi/ads/NativeStrandAssetStyle$a;

.field public static final enum b:Lcom/inmobi/ads/NativeStrandAssetStyle$a;

.field private static final synthetic d:[Lcom/inmobi/ads/NativeStrandAssetStyle$a;


# instance fields
.field private final c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    new-instance v0, Lcom/inmobi/ads/NativeStrandAssetStyle$a;

    const-string v1, "BORDER_CORNER_STYLE_CURVED"

    const-string v2, "curved"

    invoke-direct {v0, v1, v3, v2}, Lcom/inmobi/ads/NativeStrandAssetStyle$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/ads/NativeStrandAssetStyle$a;->a:Lcom/inmobi/ads/NativeStrandAssetStyle$a;

    .line 48
    new-instance v0, Lcom/inmobi/ads/NativeStrandAssetStyle$a;

    const-string v1, "BORDER_CORNER_STYLE_STRAIGHT"

    const-string v2, "straight"

    invoke-direct {v0, v1, v4, v2}, Lcom/inmobi/ads/NativeStrandAssetStyle$a;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/ads/NativeStrandAssetStyle$a;->b:Lcom/inmobi/ads/NativeStrandAssetStyle$a;

    .line 40
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/inmobi/ads/NativeStrandAssetStyle$a;

    sget-object v1, Lcom/inmobi/ads/NativeStrandAssetStyle$a;->a:Lcom/inmobi/ads/NativeStrandAssetStyle$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/ads/NativeStrandAssetStyle$a;->b:Lcom/inmobi/ads/NativeStrandAssetStyle$a;

    aput-object v1, v0, v4

    sput-object v0, Lcom/inmobi/ads/NativeStrandAssetStyle$a;->d:[Lcom/inmobi/ads/NativeStrandAssetStyle$a;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 53
    iput-object p3, p0, Lcom/inmobi/ads/NativeStrandAssetStyle$a;->c:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/ads/NativeStrandAssetStyle$a;
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/inmobi/ads/NativeStrandAssetStyle$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeStrandAssetStyle$a;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/ads/NativeStrandAssetStyle$a;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/inmobi/ads/NativeStrandAssetStyle$a;->d:[Lcom/inmobi/ads/NativeStrandAssetStyle$a;

    invoke-virtual {v0}, [Lcom/inmobi/ads/NativeStrandAssetStyle$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/ads/NativeStrandAssetStyle$a;

    return-object v0
.end method
