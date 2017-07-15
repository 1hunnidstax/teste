.class final enum Lcom/inmobi/ads/aj$a;
.super Ljava/lang/Enum;
.source "NativeV2ContainerAsset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/aj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/ads/aj$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/inmobi/ads/aj$a;

.field public static final enum b:Lcom/inmobi/ads/aj$a;

.field private static final synthetic c:[Lcom/inmobi/ads/aj$a;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 23
    new-instance v0, Lcom/inmobi/ads/aj$a;

    const-string v1, "CARD_SCROLLABLE_TYPE_PAGED"

    invoke-direct {v0, v1, v2}, Lcom/inmobi/ads/aj$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/aj$a;->a:Lcom/inmobi/ads/aj$a;

    .line 24
    new-instance v0, Lcom/inmobi/ads/aj$a;

    const-string v1, "CARD_SCROLLABLE_TYPE_FREE"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/ads/aj$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/aj$a;->b:Lcom/inmobi/ads/aj$a;

    .line 22
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/inmobi/ads/aj$a;

    sget-object v1, Lcom/inmobi/ads/aj$a;->a:Lcom/inmobi/ads/aj$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/inmobi/ads/aj$a;->b:Lcom/inmobi/ads/aj$a;

    aput-object v1, v0, v3

    sput-object v0, Lcom/inmobi/ads/aj$a;->c:[Lcom/inmobi/ads/aj$a;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/ads/aj$a;
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/inmobi/ads/aj$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/aj$a;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/ads/aj$a;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/inmobi/ads/aj$a;->c:[Lcom/inmobi/ads/aj$a;

    invoke-virtual {v0}, [Lcom/inmobi/ads/aj$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/ads/aj$a;

    return-object v0
.end method
