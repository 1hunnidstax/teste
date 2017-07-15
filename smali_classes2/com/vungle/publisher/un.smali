.class public final enum Lcom/vungle/publisher/un;
.super Ljava/lang/Enum;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vungle/publisher/un;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/vungle/publisher/un;

.field public static final enum b:Lcom/vungle/publisher/un;

.field public static final enum c:Lcom/vungle/publisher/un;

.field private static final synthetic d:[Lcom/vungle/publisher/un;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/vungle/publisher/un;

    const-string v1, "mobile"

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/un;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/un;->a:Lcom/vungle/publisher/un;

    .line 5
    new-instance v0, Lcom/vungle/publisher/un;

    const-string v1, "wifi"

    invoke-direct {v0, v1, v3}, Lcom/vungle/publisher/un;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/un;->b:Lcom/vungle/publisher/un;

    .line 6
    new-instance v0, Lcom/vungle/publisher/un;

    const-string v1, "unknown"

    invoke-direct {v0, v1, v4}, Lcom/vungle/publisher/un;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/un;->c:Lcom/vungle/publisher/un;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/vungle/publisher/un;

    sget-object v1, Lcom/vungle/publisher/un;->a:Lcom/vungle/publisher/un;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/publisher/un;->b:Lcom/vungle/publisher/un;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vungle/publisher/un;->c:Lcom/vungle/publisher/un;

    aput-object v1, v0, v4

    sput-object v0, Lcom/vungle/publisher/un;->d:[Lcom/vungle/publisher/un;

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

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/publisher/un;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3
    const-class v0, Lcom/vungle/publisher/un;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/un;

    return-object v0
.end method

.method public static values()[Lcom/vungle/publisher/un;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/vungle/publisher/un;->d:[Lcom/vungle/publisher/un;

    invoke-virtual {v0}, [Lcom/vungle/publisher/un;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/publisher/un;

    return-object v0
.end method
