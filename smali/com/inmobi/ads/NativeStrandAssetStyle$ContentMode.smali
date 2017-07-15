.class public final enum Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;
.super Ljava/lang/Enum;
.source "NativeStrandAssetStyle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/NativeStrandAssetStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ContentMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;

.field public static final enum CONTENT_MODE_ASPECT_FILL:Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;

.field public static final enum CONTENT_MODE_ASPECT_FIT:Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;

.field public static final enum CONTENT_MODE_FILL:Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;

.field public static final enum CONTENT_MODE_UNSPECIFIED:Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 62
    new-instance v0, Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;

    const-string v1, "CONTENT_MODE_UNSPECIFIED"

    const-string v2, "unspecified"

    invoke-direct {v0, v1, v3, v2}, Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;->CONTENT_MODE_UNSPECIFIED:Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;

    .line 63
    new-instance v0, Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;

    const-string v1, "CONTENT_MODE_FILL"

    const-string v2, "fill"

    invoke-direct {v0, v1, v4, v2}, Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;->CONTENT_MODE_FILL:Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;

    .line 64
    new-instance v0, Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;

    const-string v1, "CONTENT_MODE_ASPECT_FIT"

    const-string v2, "aspectFit"

    invoke-direct {v0, v1, v5, v2}, Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;->CONTENT_MODE_ASPECT_FIT:Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;

    .line 65
    new-instance v0, Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;

    const-string v1, "CONTENT_MODE_ASPECT_FILL"

    const-string v2, "aspectFill"

    invoke-direct {v0, v1, v6, v2}, Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;->CONTENT_MODE_ASPECT_FILL:Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;

    .line 61
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;

    sget-object v1, Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;->CONTENT_MODE_UNSPECIFIED:Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;->CONTENT_MODE_FILL:Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;->CONTENT_MODE_ASPECT_FIT:Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;->CONTENT_MODE_ASPECT_FILL:Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;

    aput-object v1, v0, v6

    sput-object v0, Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;->$VALUES:[Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;

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
    .line 69
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 70
    iput-object p3, p0, Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;->a:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;
    .locals 1

    .prologue
    .line 61
    const-class v0, Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;
    .locals 1

    .prologue
    .line 61
    sget-object v0, Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;->$VALUES:[Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;

    invoke-virtual {v0}, [Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;

    return-object v0
.end method


# virtual methods
.method public isEqual(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 74
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
