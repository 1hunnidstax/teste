.class public final enum Lcom/vungle/publisher/jo$a;
.super Ljava/lang/Enum;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ji;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/jo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vungle/publisher/jo$a;",
        ">;",
        "Lcom/vungle/publisher/ji;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/vungle/publisher/jo$a;

.field public static final enum b:Lcom/vungle/publisher/jo$a;

.field public static final enum c:Lcom/vungle/publisher/jo$a;

.field public static final enum d:Lcom/vungle/publisher/jo$a;

.field public static final enum e:Lcom/vungle/publisher/jo$a;

.field public static final enum f:Lcom/vungle/publisher/jo$a;

.field public static final enum g:Lcom/vungle/publisher/jo$a;

.field public static final enum h:Lcom/vungle/publisher/jo$a;

.field public static final enum i:Lcom/vungle/publisher/jo$a;

.field public static final enum j:Lcom/vungle/publisher/jo$a;

.field public static final enum k:Lcom/vungle/publisher/jo$a;

.field public static final enum l:Lcom/vungle/publisher/jo$a;

.field public static final enum m:Lcom/vungle/publisher/jo$a;

.field private static final synthetic o:[Lcom/vungle/publisher/jo$a;


# instance fields
.field private final n:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/vungle/publisher/jo$a;

    const-string v1, "back"

    invoke-direct {v0, v1, v3}, Lcom/vungle/publisher/jo$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/jo$a;->a:Lcom/vungle/publisher/jo$a;

    .line 11
    new-instance v0, Lcom/vungle/publisher/jo$a;

    const-string v1, "close"

    invoke-direct {v0, v1, v4}, Lcom/vungle/publisher/jo$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/jo$a;->b:Lcom/vungle/publisher/jo$a;

    .line 12
    new-instance v0, Lcom/vungle/publisher/jo$a;

    const-string v1, "custom"

    invoke-direct {v0, v1, v5}, Lcom/vungle/publisher/jo$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/jo$a;->c:Lcom/vungle/publisher/jo$a;

    .line 13
    new-instance v0, Lcom/vungle/publisher/jo$a;

    const-string v1, "download"

    invoke-direct {v0, v1, v6}, Lcom/vungle/publisher/jo$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/jo$a;->d:Lcom/vungle/publisher/jo$a;

    .line 14
    new-instance v0, Lcom/vungle/publisher/jo$a;

    const-string v1, "cta"

    invoke-direct {v0, v1, v7}, Lcom/vungle/publisher/jo$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/jo$a;->e:Lcom/vungle/publisher/jo$a;

    .line 15
    new-instance v0, Lcom/vungle/publisher/jo$a;

    const-string v1, "muted"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/jo$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/jo$a;->f:Lcom/vungle/publisher/jo$a;

    .line 16
    new-instance v0, Lcom/vungle/publisher/jo$a;

    const-string v1, "replay"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/jo$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/jo$a;->g:Lcom/vungle/publisher/jo$a;

    .line 17
    new-instance v0, Lcom/vungle/publisher/jo$a;

    const-string v1, "unmuted"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/jo$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/jo$a;->h:Lcom/vungle/publisher/jo$a;

    .line 18
    new-instance v0, Lcom/vungle/publisher/jo$a;

    const-string v1, "videoerror"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/jo$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/jo$a;->i:Lcom/vungle/publisher/jo$a;

    .line 19
    new-instance v0, Lcom/vungle/publisher/jo$a;

    const-string v1, "videoreset"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/jo$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/jo$a;->j:Lcom/vungle/publisher/jo$a;

    .line 20
    new-instance v0, Lcom/vungle/publisher/jo$a;

    const-string v1, "volume"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/jo$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/jo$a;->k:Lcom/vungle/publisher/jo$a;

    .line 21
    new-instance v0, Lcom/vungle/publisher/jo$a;

    const-string v1, "volumedown"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/jo$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/jo$a;->l:Lcom/vungle/publisher/jo$a;

    .line 22
    new-instance v0, Lcom/vungle/publisher/jo$a;

    const-string v1, "volumeup"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/jo$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/jo$a;->m:Lcom/vungle/publisher/jo$a;

    .line 9
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/vungle/publisher/jo$a;

    sget-object v1, Lcom/vungle/publisher/jo$a;->a:Lcom/vungle/publisher/jo$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vungle/publisher/jo$a;->b:Lcom/vungle/publisher/jo$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vungle/publisher/jo$a;->c:Lcom/vungle/publisher/jo$a;

    aput-object v1, v0, v5

    sget-object v1, Lcom/vungle/publisher/jo$a;->d:Lcom/vungle/publisher/jo$a;

    aput-object v1, v0, v6

    sget-object v1, Lcom/vungle/publisher/jo$a;->e:Lcom/vungle/publisher/jo$a;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/vungle/publisher/jo$a;->f:Lcom/vungle/publisher/jo$a;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/vungle/publisher/jo$a;->g:Lcom/vungle/publisher/jo$a;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/vungle/publisher/jo$a;->h:Lcom/vungle/publisher/jo$a;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/vungle/publisher/jo$a;->i:Lcom/vungle/publisher/jo$a;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/vungle/publisher/jo$a;->j:Lcom/vungle/publisher/jo$a;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/vungle/publisher/jo$a;->k:Lcom/vungle/publisher/jo$a;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/vungle/publisher/jo$a;->l:Lcom/vungle/publisher/jo$a;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/vungle/publisher/jo$a;->m:Lcom/vungle/publisher/jo$a;

    aput-object v2, v0, v1

    sput-object v0, Lcom/vungle/publisher/jo$a;->o:[Lcom/vungle/publisher/jo$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vungle/publisher/jo$a;-><init>(Ljava/lang/String;IB)V

    .line 28
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "BB)V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vungle/publisher/jo$a;->n:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/publisher/jo$a;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/vungle/publisher/jo$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/jo$a;

    return-object v0
.end method

.method public static values()[Lcom/vungle/publisher/jo$a;
    .locals 1

    .prologue
    .line 9
    sget-object v0, Lcom/vungle/publisher/jo$a;->o:[Lcom/vungle/publisher/jo$a;

    invoke-virtual {v0}, [Lcom/vungle/publisher/jo$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/publisher/jo$a;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vungle/publisher/jo$a;->n:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/vungle/publisher/jo$a;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/jo$a;->n:Ljava/lang/String;

    goto :goto_0
.end method
