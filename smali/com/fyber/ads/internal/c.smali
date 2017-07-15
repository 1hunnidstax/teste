.class public final enum Lcom/fyber/ads/internal/c;
.super Ljava/lang/Enum;
.source "ClientState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fyber/ads/internal/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/fyber/ads/internal/c;

.field public static final enum b:Lcom/fyber/ads/internal/c;

.field public static final enum c:Lcom/fyber/ads/internal/c;

.field public static final enum d:Lcom/fyber/ads/internal/c;

.field private static final synthetic g:[Lcom/fyber/ads/internal/c;


# instance fields
.field private final e:Z

.field private final f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 11
    new-instance v0, Lcom/fyber/ads/internal/c;

    const-string v1, "READY_TO_CHECK_OFFERS"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/fyber/ads/internal/c;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/fyber/ads/internal/c;->a:Lcom/fyber/ads/internal/c;

    .line 13
    new-instance v0, Lcom/fyber/ads/internal/c;

    const-string v1, "REQUESTING_OFFERS"

    invoke-direct {v0, v1, v3, v2, v2}, Lcom/fyber/ads/internal/c;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/fyber/ads/internal/c;->b:Lcom/fyber/ads/internal/c;

    .line 15
    new-instance v0, Lcom/fyber/ads/internal/c;

    const-string v1, "READY_TO_SHOW_OFFERS"

    invoke-direct {v0, v1, v4, v3, v3}, Lcom/fyber/ads/internal/c;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/fyber/ads/internal/c;->c:Lcom/fyber/ads/internal/c;

    .line 17
    new-instance v0, Lcom/fyber/ads/internal/c;

    const-string v1, "SHOWING_OFFERS"

    invoke-direct {v0, v1, v5, v2, v2}, Lcom/fyber/ads/internal/c;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/fyber/ads/internal/c;->d:Lcom/fyber/ads/internal/c;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/fyber/ads/internal/c;

    sget-object v1, Lcom/fyber/ads/internal/c;->a:Lcom/fyber/ads/internal/c;

    aput-object v1, v0, v2

    sget-object v1, Lcom/fyber/ads/internal/c;->b:Lcom/fyber/ads/internal/c;

    aput-object v1, v0, v3

    sget-object v1, Lcom/fyber/ads/internal/c;->c:Lcom/fyber/ads/internal/c;

    aput-object v1, v0, v4

    sget-object v1, Lcom/fyber/ads/internal/c;->d:Lcom/fyber/ads/internal/c;

    aput-object v1, v0, v5

    sput-object v0, Lcom/fyber/ads/internal/c;->g:[Lcom/fyber/ads/internal/c;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-boolean p3, p0, Lcom/fyber/ads/internal/c;->e:Z

    .line 24
    iput-boolean p4, p0, Lcom/fyber/ads/internal/c;->f:Z

    .line 25
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/fyber/ads/internal/c;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/fyber/ads/internal/c;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/fyber/ads/internal/c;

    return-object v0
.end method

.method public static values()[Lcom/fyber/ads/internal/c;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/fyber/ads/internal/c;->g:[Lcom/fyber/ads/internal/c;

    invoke-virtual {v0}, [Lcom/fyber/ads/internal/c;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/fyber/ads/internal/c;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 31
    iget-boolean v0, p0, Lcom/fyber/ads/internal/c;->e:Z

    return v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/fyber/ads/internal/c;->f:Z

    return v0
.end method
