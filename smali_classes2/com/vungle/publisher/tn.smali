.class public final enum Lcom/vungle/publisher/tn;
.super Ljava/lang/Enum;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ji;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vungle/publisher/tn;",
        ">;",
        "Lcom/vungle/publisher/ji;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/vungle/publisher/tn;

.field public static final enum b:Lcom/vungle/publisher/tn;

.field private static final synthetic c:[Lcom/vungle/publisher/tn;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 6
    new-instance v0, Lcom/vungle/publisher/tn;

    const-string v1, "mraidOpen"

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/tn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/tn;->a:Lcom/vungle/publisher/tn;

    .line 7
    new-instance v0, Lcom/vungle/publisher/tn;

    const-string v1, "mraidClose"

    invoke-direct {v0, v1, v3}, Lcom/vungle/publisher/tn;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/tn;->b:Lcom/vungle/publisher/tn;

    .line 5
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/vungle/publisher/tn;

    sget-object v1, Lcom/vungle/publisher/tn;->a:Lcom/vungle/publisher/tn;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/publisher/tn;->b:Lcom/vungle/publisher/tn;

    aput-object v1, v0, v3

    sput-object v0, Lcom/vungle/publisher/tn;->c:[Lcom/vungle/publisher/tn;

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
    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/publisher/tn;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5
    const-class v0, Lcom/vungle/publisher/tn;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/tn;

    return-object v0
.end method

.method public static values()[Lcom/vungle/publisher/tn;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/vungle/publisher/tn;->c:[Lcom/vungle/publisher/tn;

    invoke-virtual {v0}, [Lcom/vungle/publisher/tn;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/publisher/tn;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    return v0
.end method
