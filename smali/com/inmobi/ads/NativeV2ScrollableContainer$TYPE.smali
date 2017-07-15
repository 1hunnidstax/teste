.class public final enum Lcom/inmobi/ads/NativeV2ScrollableContainer$TYPE;
.super Ljava/lang/Enum;
.source "NativeV2ScrollableContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/NativeV2ScrollableContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/ads/NativeV2ScrollableContainer$TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/inmobi/ads/NativeV2ScrollableContainer$TYPE;

.field public static final enum TYPE_FREE:Lcom/inmobi/ads/NativeV2ScrollableContainer$TYPE;

.field public static final enum TYPE_PAGED:Lcom/inmobi/ads/NativeV2ScrollableContainer$TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/inmobi/ads/NativeV2ScrollableContainer$TYPE;

    const-string v1, "TYPE_PAGED"

    invoke-direct {v0, v1, v2}, Lcom/inmobi/ads/NativeV2ScrollableContainer$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/NativeV2ScrollableContainer$TYPE;->TYPE_PAGED:Lcom/inmobi/ads/NativeV2ScrollableContainer$TYPE;

    .line 10
    new-instance v0, Lcom/inmobi/ads/NativeV2ScrollableContainer$TYPE;

    const-string v1, "TYPE_FREE"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/ads/NativeV2ScrollableContainer$TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/NativeV2ScrollableContainer$TYPE;->TYPE_FREE:Lcom/inmobi/ads/NativeV2ScrollableContainer$TYPE;

    .line 8
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/inmobi/ads/NativeV2ScrollableContainer$TYPE;

    sget-object v1, Lcom/inmobi/ads/NativeV2ScrollableContainer$TYPE;->TYPE_PAGED:Lcom/inmobi/ads/NativeV2ScrollableContainer$TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/inmobi/ads/NativeV2ScrollableContainer$TYPE;->TYPE_FREE:Lcom/inmobi/ads/NativeV2ScrollableContainer$TYPE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/inmobi/ads/NativeV2ScrollableContainer$TYPE;->$VALUES:[Lcom/inmobi/ads/NativeV2ScrollableContainer$TYPE;

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
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/ads/NativeV2ScrollableContainer$TYPE;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/inmobi/ads/NativeV2ScrollableContainer$TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeV2ScrollableContainer$TYPE;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/ads/NativeV2ScrollableContainer$TYPE;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/inmobi/ads/NativeV2ScrollableContainer$TYPE;->$VALUES:[Lcom/inmobi/ads/NativeV2ScrollableContainer$TYPE;

    invoke-virtual {v0}, [Lcom/inmobi/ads/NativeV2ScrollableContainer$TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/ads/NativeV2ScrollableContainer$TYPE;

    return-object v0
.end method
