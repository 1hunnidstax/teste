.class public final enum Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;
.super Ljava/lang/Enum;
.source "NativeStrandVideoView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Quartile"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;

.field public static final enum Q1:Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;

.field public static final enum Q2:Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;

.field public static final enum Q3:Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;

.field public static final enum Q4:Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 88
    new-instance v0, Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;

    const-string v1, "Q1"

    invoke-direct {v0, v1, v2}, Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;->Q1:Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;

    .line 89
    new-instance v0, Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;

    const-string v1, "Q2"

    invoke-direct {v0, v1, v3}, Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;->Q2:Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;

    .line 90
    new-instance v0, Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;

    const-string v1, "Q3"

    invoke-direct {v0, v1, v4}, Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;->Q3:Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;

    .line 91
    new-instance v0, Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;

    const-string v1, "Q4"

    invoke-direct {v0, v1, v5}, Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;->Q4:Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;

    .line 87
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;

    sget-object v1, Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;->Q1:Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;

    aput-object v1, v0, v2

    sget-object v1, Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;->Q2:Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;->Q3:Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;->Q4:Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;

    aput-object v1, v0, v5

    sput-object v0, Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;->$VALUES:[Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;

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
    .line 87
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;
    .locals 1

    .prologue
    .line 87
    const-class v0, Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;->$VALUES:[Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;

    invoke-virtual {v0}, [Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;

    return-object v0
.end method
