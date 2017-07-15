.class final enum Lcom/inmobi/ads/ar$a$b;
.super Ljava/lang/Enum;
.source "NativeV2TextAsset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/ar$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/inmobi/ads/ar$a$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/inmobi/ads/ar$a$b;

.field public static final enum b:Lcom/inmobi/ads/ar$a$b;

.field public static final enum c:Lcom/inmobi/ads/ar$a$b;

.field public static final enum d:Lcom/inmobi/ads/ar$a$b;

.field public static final enum e:Lcom/inmobi/ads/ar$a$b;

.field private static final synthetic g:[Lcom/inmobi/ads/ar$a$b;


# instance fields
.field private final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 24
    new-instance v0, Lcom/inmobi/ads/ar$a$b;

    const-string v1, "TEXT_STYLE_NONE"

    const-string v2, "none"

    invoke-direct {v0, v1, v3, v2}, Lcom/inmobi/ads/ar$a$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/ads/ar$a$b;->a:Lcom/inmobi/ads/ar$a$b;

    .line 28
    new-instance v0, Lcom/inmobi/ads/ar$a$b;

    const-string v1, "TEXT_STYLE_BOLD"

    const-string v2, "bold"

    invoke-direct {v0, v1, v4, v2}, Lcom/inmobi/ads/ar$a$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/ads/ar$a$b;->b:Lcom/inmobi/ads/ar$a$b;

    .line 32
    new-instance v0, Lcom/inmobi/ads/ar$a$b;

    const-string v1, "TEXT_STYLE_ITALICISED"

    const-string v2, "italic"

    invoke-direct {v0, v1, v5, v2}, Lcom/inmobi/ads/ar$a$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/ads/ar$a$b;->c:Lcom/inmobi/ads/ar$a$b;

    .line 36
    new-instance v0, Lcom/inmobi/ads/ar$a$b;

    const-string v1, "TEXT_STYLE_STRIKE_THRU"

    const-string v2, "strike"

    invoke-direct {v0, v1, v6, v2}, Lcom/inmobi/ads/ar$a$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/ads/ar$a$b;->d:Lcom/inmobi/ads/ar$a$b;

    .line 40
    new-instance v0, Lcom/inmobi/ads/ar$a$b;

    const-string v1, "TEXT_STYLE_UNDERLINE"

    const-string v2, "underline"

    invoke-direct {v0, v1, v7, v2}, Lcom/inmobi/ads/ar$a$b;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/inmobi/ads/ar$a$b;->e:Lcom/inmobi/ads/ar$a$b;

    .line 20
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/inmobi/ads/ar$a$b;

    sget-object v1, Lcom/inmobi/ads/ar$a$b;->a:Lcom/inmobi/ads/ar$a$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/inmobi/ads/ar$a$b;->b:Lcom/inmobi/ads/ar$a$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/inmobi/ads/ar$a$b;->c:Lcom/inmobi/ads/ar$a$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/inmobi/ads/ar$a$b;->d:Lcom/inmobi/ads/ar$a$b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/inmobi/ads/ar$a$b;->e:Lcom/inmobi/ads/ar$a$b;

    aput-object v1, v0, v7

    sput-object v0, Lcom/inmobi/ads/ar$a$b;->g:[Lcom/inmobi/ads/ar$a$b;

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
    iput-object p3, p0, Lcom/inmobi/ads/ar$a$b;->f:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inmobi/ads/ar$a$b;
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/inmobi/ads/ar$a$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/ar$a$b;

    return-object v0
.end method

.method public static values()[Lcom/inmobi/ads/ar$a$b;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/inmobi/ads/ar$a$b;->g:[Lcom/inmobi/ads/ar$a$b;

    invoke-virtual {v0}, [Lcom/inmobi/ads/ar$a$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inmobi/ads/ar$a$b;

    return-object v0
.end method
