.class public final enum Lcom/vungle/publisher/bt$b;
.super Ljava/lang/Enum;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/bt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vungle/publisher/bt$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/vungle/publisher/bt$b;

.field public static final enum b:Lcom/vungle/publisher/bt$b;

.field public static final enum c:Lcom/vungle/publisher/bt$b;

.field public static final enum d:Lcom/vungle/publisher/bt$b;

.field public static final enum e:Lcom/vungle/publisher/bt$b;

.field public static final enum f:Lcom/vungle/publisher/bt$b;

.field public static final enum g:Lcom/vungle/publisher/bt$b;

.field public static final enum h:Lcom/vungle/publisher/bt$b;

.field public static final enum i:Lcom/vungle/publisher/bt$b;

.field public static final enum j:Lcom/vungle/publisher/bt$b;

.field public static final enum k:Lcom/vungle/publisher/bt$b;

.field public static final enum l:Lcom/vungle/publisher/bt$b;

.field public static final enum m:Lcom/vungle/publisher/bt$b;

.field public static final enum n:Lcom/vungle/publisher/bt$b;

.field public static final enum o:Lcom/vungle/publisher/bt$b;

.field public static final enum p:Lcom/vungle/publisher/bt$b;

.field public static final enum q:Lcom/vungle/publisher/bt$b;

.field public static final enum r:Lcom/vungle/publisher/bt$b;

.field public static final enum s:Lcom/vungle/publisher/bt$b;

.field public static final enum t:Lcom/vungle/publisher/bt$b;

.field public static final enum u:Lcom/vungle/publisher/bt$b;

.field private static final synthetic v:[Lcom/vungle/publisher/bt$b;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 42
    new-instance v0, Lcom/vungle/publisher/bt$b;

    const-string v1, "deviceId"

    invoke-direct {v0, v1, v3}, Lcom/vungle/publisher/bt$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/bt$b;->a:Lcom/vungle/publisher/bt$b;

    .line 43
    new-instance v0, Lcom/vungle/publisher/bt$b;

    const-string v1, "databaseWrite"

    invoke-direct {v0, v1, v4}, Lcom/vungle/publisher/bt$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/bt$b;->b:Lcom/vungle/publisher/bt$b;

    .line 44
    new-instance v0, Lcom/vungle/publisher/bt$b;

    const-string v1, "requestStreamingAd"

    invoke-direct {v0, v1, v5}, Lcom/vungle/publisher/bt$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/bt$b;->c:Lcom/vungle/publisher/bt$b;

    .line 45
    new-instance v0, Lcom/vungle/publisher/bt$b;

    const-string v1, "reportAd"

    invoke-direct {v0, v1, v6}, Lcom/vungle/publisher/bt$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/bt$b;->d:Lcom/vungle/publisher/bt$b;

    .line 46
    new-instance v0, Lcom/vungle/publisher/bt$b;

    const-string v1, "reportInstall"

    invoke-direct {v0, v1, v7}, Lcom/vungle/publisher/bt$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/bt$b;->e:Lcom/vungle/publisher/bt$b;

    .line 47
    new-instance v0, Lcom/vungle/publisher/bt$b;

    const-string v1, "requestLocalAd"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/bt$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/bt$b;->f:Lcom/vungle/publisher/bt$b;

    .line 48
    new-instance v0, Lcom/vungle/publisher/bt$b;

    const-string v1, "prepareLocalAd"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/bt$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/bt$b;->g:Lcom/vungle/publisher/bt$b;

    .line 49
    new-instance v0, Lcom/vungle/publisher/bt$b;

    const-string v1, "prepareLocalViewable"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/bt$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/bt$b;->h:Lcom/vungle/publisher/bt$b;

    .line 50
    new-instance v0, Lcom/vungle/publisher/bt$b;

    const-string v1, "downloadLocalAd"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/bt$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/bt$b;->i:Lcom/vungle/publisher/bt$b;

    .line 51
    new-instance v0, Lcom/vungle/publisher/bt$b;

    const-string v1, "requestConfig"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/bt$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/bt$b;->j:Lcom/vungle/publisher/bt$b;

    .line 52
    new-instance v0, Lcom/vungle/publisher/bt$b;

    const-string v1, "sessionEndTimer"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/bt$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/bt$b;->k:Lcom/vungle/publisher/bt$b;

    .line 53
    new-instance v0, Lcom/vungle/publisher/bt$b;

    const-string v1, "sessionEnd"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/bt$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/bt$b;->l:Lcom/vungle/publisher/bt$b;

    .line 54
    new-instance v0, Lcom/vungle/publisher/bt$b;

    const-string v1, "sessionStart"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/bt$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/bt$b;->m:Lcom/vungle/publisher/bt$b;

    .line 55
    new-instance v0, Lcom/vungle/publisher/bt$b;

    const-string v1, "unfilledAd"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/bt$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/bt$b;->n:Lcom/vungle/publisher/bt$b;

    .line 56
    new-instance v0, Lcom/vungle/publisher/bt$b;

    const-string v1, "deleteExpiredAds"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/bt$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/bt$b;->o:Lcom/vungle/publisher/bt$b;

    .line 57
    new-instance v0, Lcom/vungle/publisher/bt$b;

    const-string v1, "otherTask"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/bt$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/bt$b;->p:Lcom/vungle/publisher/bt$b;

    .line 59
    new-instance v0, Lcom/vungle/publisher/bt$b;

    const-string v1, "externalNetworkRequest"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/bt$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/bt$b;->q:Lcom/vungle/publisher/bt$b;

    .line 61
    new-instance v0, Lcom/vungle/publisher/bt$b;

    const-string v1, "clientEvent"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/bt$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/bt$b;->r:Lcom/vungle/publisher/bt$b;

    .line 62
    new-instance v0, Lcom/vungle/publisher/bt$b;

    const-string v1, "appFingerprint"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/bt$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/bt$b;->s:Lcom/vungle/publisher/bt$b;

    .line 63
    new-instance v0, Lcom/vungle/publisher/bt$b;

    const-string v1, "reportExceptions"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/bt$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/bt$b;->t:Lcom/vungle/publisher/bt$b;

    .line 64
    new-instance v0, Lcom/vungle/publisher/bt$b;

    const-string v1, "sleepWakeup"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/bt$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/bt$b;->u:Lcom/vungle/publisher/bt$b;

    .line 38
    const/16 v0, 0x15

    new-array v0, v0, [Lcom/vungle/publisher/bt$b;

    sget-object v1, Lcom/vungle/publisher/bt$b;->a:Lcom/vungle/publisher/bt$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vungle/publisher/bt$b;->b:Lcom/vungle/publisher/bt$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vungle/publisher/bt$b;->c:Lcom/vungle/publisher/bt$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/vungle/publisher/bt$b;->d:Lcom/vungle/publisher/bt$b;

    aput-object v1, v0, v6

    sget-object v1, Lcom/vungle/publisher/bt$b;->e:Lcom/vungle/publisher/bt$b;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/vungle/publisher/bt$b;->f:Lcom/vungle/publisher/bt$b;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/vungle/publisher/bt$b;->g:Lcom/vungle/publisher/bt$b;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/vungle/publisher/bt$b;->h:Lcom/vungle/publisher/bt$b;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/vungle/publisher/bt$b;->i:Lcom/vungle/publisher/bt$b;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/vungle/publisher/bt$b;->j:Lcom/vungle/publisher/bt$b;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/vungle/publisher/bt$b;->k:Lcom/vungle/publisher/bt$b;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/vungle/publisher/bt$b;->l:Lcom/vungle/publisher/bt$b;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/vungle/publisher/bt$b;->m:Lcom/vungle/publisher/bt$b;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/vungle/publisher/bt$b;->n:Lcom/vungle/publisher/bt$b;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/vungle/publisher/bt$b;->o:Lcom/vungle/publisher/bt$b;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/vungle/publisher/bt$b;->p:Lcom/vungle/publisher/bt$b;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/vungle/publisher/bt$b;->q:Lcom/vungle/publisher/bt$b;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/vungle/publisher/bt$b;->r:Lcom/vungle/publisher/bt$b;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/vungle/publisher/bt$b;->s:Lcom/vungle/publisher/bt$b;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/vungle/publisher/bt$b;->t:Lcom/vungle/publisher/bt$b;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/vungle/publisher/bt$b;->u:Lcom/vungle/publisher/bt$b;

    aput-object v2, v0, v1

    sput-object v0, Lcom/vungle/publisher/bt$b;->v:[Lcom/vungle/publisher/bt$b;

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
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/publisher/bt$b;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    const-class v0, Lcom/vungle/publisher/bt$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/bt$b;

    return-object v0
.end method

.method public static values()[Lcom/vungle/publisher/bt$b;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/vungle/publisher/bt$b;->v:[Lcom/vungle/publisher/bt$b;

    invoke-virtual {v0}, [Lcom/vungle/publisher/bt$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/publisher/bt$b;

    return-object v0
.end method
