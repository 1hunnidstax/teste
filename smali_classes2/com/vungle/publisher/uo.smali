.class public final enum Lcom/vungle/publisher/uo;
.super Ljava/lang/Enum;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vungle/publisher/uo;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/vungle/publisher/uo;

.field public static final enum b:Lcom/vungle/publisher/uo;

.field public static final enum c:Lcom/vungle/publisher/uo;

.field public static final enum d:Lcom/vungle/publisher/uo;

.field public static final enum e:Lcom/vungle/publisher/uo;

.field public static final enum f:Lcom/vungle/publisher/uo;

.field public static final enum g:Lcom/vungle/publisher/uo;

.field public static final enum h:Lcom/vungle/publisher/uo;

.field public static final enum i:Lcom/vungle/publisher/uo;

.field public static final enum j:Lcom/vungle/publisher/uo;

.field public static final enum k:Lcom/vungle/publisher/uo;

.field public static final enum l:Lcom/vungle/publisher/uo;

.field public static final enum m:Lcom/vungle/publisher/uo;

.field public static final enum n:Lcom/vungle/publisher/uo;

.field public static final enum o:Lcom/vungle/publisher/uo;

.field public static final enum p:Lcom/vungle/publisher/uo;

.field public static final enum q:Lcom/vungle/publisher/uo;

.field private static final synthetic t:[Lcom/vungle/publisher/uo;


# instance fields
.field public final r:Ljava/lang/String;

.field public final s:Lcom/vungle/publisher/un;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4
    new-instance v0, Lcom/vungle/publisher/uo;

    const-string v1, "wifi"

    const-string v2, "WIFI"

    sget-object v3, Lcom/vungle/publisher/un;->b:Lcom/vungle/publisher/un;

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/vungle/publisher/uo;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/vungle/publisher/un;)V

    sput-object v0, Lcom/vungle/publisher/uo;->a:Lcom/vungle/publisher/uo;

    .line 5
    new-instance v0, Lcom/vungle/publisher/uo;

    const-string v1, "gprs"

    const-string v2, "GPRS"

    invoke-direct {v0, v1, v6, v2}, Lcom/vungle/publisher/uo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vungle/publisher/uo;->b:Lcom/vungle/publisher/uo;

    .line 6
    new-instance v0, Lcom/vungle/publisher/uo;

    const-string v1, "cdma"

    const-string v2, "CDMA"

    invoke-direct {v0, v1, v7, v2}, Lcom/vungle/publisher/uo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vungle/publisher/uo;->c:Lcom/vungle/publisher/uo;

    .line 7
    new-instance v0, Lcom/vungle/publisher/uo;

    const-string v1, "edge"

    const-string v2, "EDGE"

    invoke-direct {v0, v1, v8, v2}, Lcom/vungle/publisher/uo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vungle/publisher/uo;->d:Lcom/vungle/publisher/uo;

    .line 8
    new-instance v0, Lcom/vungle/publisher/uo;

    const-string v1, "rtt1x"

    const-string v2, "1xRTT"

    invoke-direct {v0, v1, v9, v2}, Lcom/vungle/publisher/uo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vungle/publisher/uo;->e:Lcom/vungle/publisher/uo;

    .line 9
    new-instance v0, Lcom/vungle/publisher/uo;

    const-string v1, "iden"

    const/4 v2, 0x5

    const-string v3, "IDEN"

    invoke-direct {v0, v1, v2, v3}, Lcom/vungle/publisher/uo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vungle/publisher/uo;->f:Lcom/vungle/publisher/uo;

    .line 10
    new-instance v0, Lcom/vungle/publisher/uo;

    const-string v1, "umts"

    const/4 v2, 0x6

    const-string v3, "UMTS"

    invoke-direct {v0, v1, v2, v3}, Lcom/vungle/publisher/uo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vungle/publisher/uo;->g:Lcom/vungle/publisher/uo;

    .line 11
    new-instance v0, Lcom/vungle/publisher/uo;

    const-string v1, "evdo0"

    const/4 v2, 0x7

    const-string v3, "EVDO_0"

    invoke-direct {v0, v1, v2, v3}, Lcom/vungle/publisher/uo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vungle/publisher/uo;->h:Lcom/vungle/publisher/uo;

    .line 12
    new-instance v0, Lcom/vungle/publisher/uo;

    const-string v1, "evdoA"

    const/16 v2, 0x8

    const-string v3, "EVDO_A"

    invoke-direct {v0, v1, v2, v3}, Lcom/vungle/publisher/uo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vungle/publisher/uo;->i:Lcom/vungle/publisher/uo;

    .line 13
    new-instance v0, Lcom/vungle/publisher/uo;

    const-string v1, "hsdpa"

    const/16 v2, 0x9

    const-string v3, "HSDPA"

    invoke-direct {v0, v1, v2, v3}, Lcom/vungle/publisher/uo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vungle/publisher/uo;->j:Lcom/vungle/publisher/uo;

    .line 14
    new-instance v0, Lcom/vungle/publisher/uo;

    const-string v1, "hspa"

    const/16 v2, 0xa

    const-string v3, "HSPA"

    invoke-direct {v0, v1, v2, v3}, Lcom/vungle/publisher/uo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vungle/publisher/uo;->k:Lcom/vungle/publisher/uo;

    .line 15
    new-instance v0, Lcom/vungle/publisher/uo;

    const-string v1, "hspap"

    const/16 v2, 0xb

    const-string v3, "HSPAP"

    invoke-direct {v0, v1, v2, v3}, Lcom/vungle/publisher/uo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vungle/publisher/uo;->l:Lcom/vungle/publisher/uo;

    .line 16
    new-instance v0, Lcom/vungle/publisher/uo;

    const-string v1, "hsupa"

    const/16 v2, 0xc

    const-string v3, "HSUPA"

    invoke-direct {v0, v1, v2, v3}, Lcom/vungle/publisher/uo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vungle/publisher/uo;->m:Lcom/vungle/publisher/uo;

    .line 17
    new-instance v0, Lcom/vungle/publisher/uo;

    const-string v1, "evdoB"

    const/16 v2, 0xd

    const-string v3, "EVDO_B"

    invoke-direct {v0, v1, v2, v3}, Lcom/vungle/publisher/uo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vungle/publisher/uo;->n:Lcom/vungle/publisher/uo;

    .line 18
    new-instance v0, Lcom/vungle/publisher/uo;

    const-string v1, "ehrpd"

    const/16 v2, 0xe

    const-string v3, "EHRPD"

    invoke-direct {v0, v1, v2, v3}, Lcom/vungle/publisher/uo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vungle/publisher/uo;->o:Lcom/vungle/publisher/uo;

    .line 19
    new-instance v0, Lcom/vungle/publisher/uo;

    const-string v1, "lte"

    const/16 v2, 0xf

    const-string v3, "LTE"

    invoke-direct {v0, v1, v2, v3}, Lcom/vungle/publisher/uo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/vungle/publisher/uo;->p:Lcom/vungle/publisher/uo;

    .line 20
    new-instance v0, Lcom/vungle/publisher/uo;

    const-string v1, "unknown"

    const/16 v2, 0x10

    const-string v3, "UNKNOWN"

    sget-object v4, Lcom/vungle/publisher/un;->c:Lcom/vungle/publisher/un;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/vungle/publisher/uo;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/vungle/publisher/un;)V

    sput-object v0, Lcom/vungle/publisher/uo;->q:Lcom/vungle/publisher/uo;

    .line 3
    const/16 v0, 0x11

    new-array v0, v0, [Lcom/vungle/publisher/uo;

    sget-object v1, Lcom/vungle/publisher/uo;->a:Lcom/vungle/publisher/uo;

    aput-object v1, v0, v5

    sget-object v1, Lcom/vungle/publisher/uo;->b:Lcom/vungle/publisher/uo;

    aput-object v1, v0, v6

    sget-object v1, Lcom/vungle/publisher/uo;->c:Lcom/vungle/publisher/uo;

    aput-object v1, v0, v7

    sget-object v1, Lcom/vungle/publisher/uo;->d:Lcom/vungle/publisher/uo;

    aput-object v1, v0, v8

    sget-object v1, Lcom/vungle/publisher/uo;->e:Lcom/vungle/publisher/uo;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lcom/vungle/publisher/uo;->f:Lcom/vungle/publisher/uo;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/vungle/publisher/uo;->g:Lcom/vungle/publisher/uo;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/vungle/publisher/uo;->h:Lcom/vungle/publisher/uo;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/vungle/publisher/uo;->i:Lcom/vungle/publisher/uo;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/vungle/publisher/uo;->j:Lcom/vungle/publisher/uo;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/vungle/publisher/uo;->k:Lcom/vungle/publisher/uo;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/vungle/publisher/uo;->l:Lcom/vungle/publisher/uo;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/vungle/publisher/uo;->m:Lcom/vungle/publisher/uo;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/vungle/publisher/uo;->n:Lcom/vungle/publisher/uo;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/vungle/publisher/uo;->o:Lcom/vungle/publisher/uo;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/vungle/publisher/uo;->p:Lcom/vungle/publisher/uo;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/vungle/publisher/uo;->q:Lcom/vungle/publisher/uo;

    aput-object v2, v0, v1

    sput-object v0, Lcom/vungle/publisher/uo;->t:[Lcom/vungle/publisher/uo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 31
    sget-object v0, Lcom/vungle/publisher/un;->a:Lcom/vungle/publisher/un;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/vungle/publisher/uo;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/vungle/publisher/un;)V

    .line 32
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/vungle/publisher/un;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/vungle/publisher/un;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 26
    iput-object p3, p0, Lcom/vungle/publisher/uo;->r:Ljava/lang/String;

    .line 27
    iput-object p4, p0, Lcom/vungle/publisher/uo;->s:Lcom/vungle/publisher/un;

    .line 28
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/publisher/uo;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/vungle/publisher/uo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/uo;

    return-object v0
.end method

.method public static values()[Lcom/vungle/publisher/uo;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/vungle/publisher/uo;->t:[Lcom/vungle/publisher/uo;

    invoke-virtual {v0}, [Lcom/vungle/publisher/uo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/publisher/uo;

    return-object v0
.end method
