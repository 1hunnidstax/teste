.class public final enum Lcom/vungle/publisher/lu;
.super Ljava/lang/Enum;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vungle/publisher/lu;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/vungle/publisher/lu;

.field public static final enum b:Lcom/vungle/publisher/lu;

.field public static final enum c:Lcom/vungle/publisher/lu;

.field public static final enum d:Lcom/vungle/publisher/lu;

.field public static final enum e:Lcom/vungle/publisher/lu;

.field public static final enum f:Lcom/vungle/publisher/lu;

.field public static final enum g:Lcom/vungle/publisher/lu;

.field private static final synthetic h:[Lcom/vungle/publisher/lu;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/vungle/publisher/lu;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v3}, Lcom/vungle/publisher/lu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/lu;->a:Lcom/vungle/publisher/lu;

    .line 5
    new-instance v0, Lcom/vungle/publisher/lu;

    const-string v1, "NOT_CHARGING"

    invoke-direct {v0, v1, v4}, Lcom/vungle/publisher/lu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/lu;->b:Lcom/vungle/publisher/lu;

    .line 6
    new-instance v0, Lcom/vungle/publisher/lu;

    const-string v1, "BATTERY_PLUGGED_USB"

    invoke-direct {v0, v1, v5}, Lcom/vungle/publisher/lu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/lu;->c:Lcom/vungle/publisher/lu;

    .line 7
    new-instance v0, Lcom/vungle/publisher/lu;

    const-string v1, "BATTERY_PLUGGED_AC"

    invoke-direct {v0, v1, v6}, Lcom/vungle/publisher/lu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/lu;->d:Lcom/vungle/publisher/lu;

    .line 8
    new-instance v0, Lcom/vungle/publisher/lu;

    const-string v1, "BATTERY_PLUGGED_WIRELESS"

    invoke-direct {v0, v1, v7}, Lcom/vungle/publisher/lu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/lu;->e:Lcom/vungle/publisher/lu;

    .line 9
    new-instance v0, Lcom/vungle/publisher/lu;

    const-string v1, "BATTERY_PLUGGED_OTHERS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/lu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/lu;->f:Lcom/vungle/publisher/lu;

    .line 10
    new-instance v0, Lcom/vungle/publisher/lu;

    const-string v1, "BATTERY_STATUS_FULL"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/lu;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/lu;->g:Lcom/vungle/publisher/lu;

    .line 3
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/vungle/publisher/lu;

    sget-object v1, Lcom/vungle/publisher/lu;->a:Lcom/vungle/publisher/lu;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vungle/publisher/lu;->b:Lcom/vungle/publisher/lu;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vungle/publisher/lu;->c:Lcom/vungle/publisher/lu;

    aput-object v1, v0, v5

    sget-object v1, Lcom/vungle/publisher/lu;->d:Lcom/vungle/publisher/lu;

    aput-object v1, v0, v6

    sget-object v1, Lcom/vungle/publisher/lu;->e:Lcom/vungle/publisher/lu;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/vungle/publisher/lu;->f:Lcom/vungle/publisher/lu;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/vungle/publisher/lu;->g:Lcom/vungle/publisher/lu;

    aput-object v2, v0, v1

    sput-object v0, Lcom/vungle/publisher/lu;->h:[Lcom/vungle/publisher/lu;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/publisher/lu;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/vungle/publisher/lu;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/lu;

    return-object v0
.end method

.method public static values()[Lcom/vungle/publisher/lu;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/vungle/publisher/lu;->h:[Lcom/vungle/publisher/lu;

    invoke-virtual {v0}, [Lcom/vungle/publisher/lu;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/publisher/lu;

    return-object v0
.end method
