.class public final Lcom/fyber/c/d/c;
.super Ljava/lang/Enum;
.source "VideoPlayerUIThreadActions.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/fyber/c/d/c;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:I

.field public static final enum b:I

.field public static final enum c:I

.field public static final enum d:I

.field public static final enum e:I

.field public static final enum f:I

.field public static final enum g:I

.field public static final enum h:I

.field public static final enum i:I

.field public static final enum j:I

.field private static final synthetic k:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 15
    sput v3, Lcom/fyber/c/d/c;->a:I

    .line 16
    sput v4, Lcom/fyber/c/d/c;->b:I

    .line 17
    sput v5, Lcom/fyber/c/d/c;->c:I

    .line 18
    sput v6, Lcom/fyber/c/d/c;->d:I

    .line 19
    sput v7, Lcom/fyber/c/d/c;->e:I

    .line 20
    const/4 v0, 0x6

    sput v0, Lcom/fyber/c/d/c;->f:I

    .line 21
    const/4 v0, 0x7

    sput v0, Lcom/fyber/c/d/c;->g:I

    .line 22
    const/16 v0, 0x8

    sput v0, Lcom/fyber/c/d/c;->h:I

    .line 23
    const/16 v0, 0x9

    sput v0, Lcom/fyber/c/d/c;->i:I

    .line 24
    const/16 v0, 0xa

    sput v0, Lcom/fyber/c/d/c;->j:I

    .line 14
    const/16 v0, 0xa

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/fyber/c/d/c;->a:I

    aput v2, v0, v1

    sget v1, Lcom/fyber/c/d/c;->b:I

    aput v1, v0, v3

    sget v1, Lcom/fyber/c/d/c;->c:I

    aput v1, v0, v4

    sget v1, Lcom/fyber/c/d/c;->d:I

    aput v1, v0, v5

    sget v1, Lcom/fyber/c/d/c;->e:I

    aput v1, v0, v6

    sget v1, Lcom/fyber/c/d/c;->f:I

    aput v1, v0, v7

    const/4 v1, 0x6

    sget v2, Lcom/fyber/c/d/c;->g:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/fyber/c/d/c;->h:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcom/fyber/c/d/c;->i:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lcom/fyber/c/d/c;->j:I

    aput v2, v0, v1

    sput-object v0, Lcom/fyber/c/d/c;->k:[I

    return-void
.end method

.method public static a()[I
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/fyber/c/d/c;->k:[I

    invoke-virtual {v0}, [I->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    return-object v0
.end method
