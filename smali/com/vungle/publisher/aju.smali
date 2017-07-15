.class public final enum Lcom/vungle/publisher/aju;
.super Ljava/lang/Enum;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ahv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vungle/publisher/aju;",
        ">;",
        "Lcom/vungle/publisher/ahv;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/vungle/publisher/aju;

.field private static final synthetic b:[Lcom/vungle/publisher/aju;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    new-instance v0, Lcom/vungle/publisher/aju;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1}, Lcom/vungle/publisher/aju;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vungle/publisher/aju;->a:Lcom/vungle/publisher/aju;

    .line 23
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/vungle/publisher/aju;

    const/4 v1, 0x0

    sget-object v2, Lcom/vungle/publisher/aju;->a:Lcom/vungle/publisher/aju;

    aput-object v2, v0, v1

    sput-object v0, Lcom/vungle/publisher/aju;->b:[Lcom/vungle/publisher/aju;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 23
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/publisher/aju;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 23
    const-class v0, Lcom/vungle/publisher/aju;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/aju;

    return-object v0
.end method

.method public static values()[Lcom/vungle/publisher/aju;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/vungle/publisher/aju;->b:[Lcom/vungle/publisher/aju;

    invoke-virtual {v0}, [Lcom/vungle/publisher/aju;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/publisher/aju;

    return-object v0
.end method


# virtual methods
.method public final b()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x1

    return v0
.end method
