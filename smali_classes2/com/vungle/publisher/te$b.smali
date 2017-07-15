.class public final enum Lcom/vungle/publisher/te$b;
.super Ljava/lang/Enum;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/te;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vungle/publisher/te$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/vungle/publisher/te$b;

.field public static final enum b:Lcom/vungle/publisher/te$b;

.field public static final enum c:Lcom/vungle/publisher/te$b;

.field private static final synthetic d:[Lcom/vungle/publisher/te$b;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 22
    new-instance v0, Lcom/vungle/publisher/te$b;

    const-string v1, "visible"

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/te$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/te$b;->a:Lcom/vungle/publisher/te$b;

    .line 23
    new-instance v0, Lcom/vungle/publisher/te$b;

    const-string v1, "invisible"

    invoke-direct {v0, v1, v3}, Lcom/vungle/publisher/te$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/te$b;->b:Lcom/vungle/publisher/te$b;

    .line 24
    new-instance v0, Lcom/vungle/publisher/te$b;

    const-string v1, "gone"

    invoke-direct {v0, v1, v4}, Lcom/vungle/publisher/te$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/te$b;->c:Lcom/vungle/publisher/te$b;

    .line 21
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/vungle/publisher/te$b;

    sget-object v1, Lcom/vungle/publisher/te$b;->a:Lcom/vungle/publisher/te$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/publisher/te$b;->b:Lcom/vungle/publisher/te$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vungle/publisher/te$b;->c:Lcom/vungle/publisher/te$b;

    aput-object v1, v0, v4

    sput-object v0, Lcom/vungle/publisher/te$b;->d:[Lcom/vungle/publisher/te$b;

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
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/publisher/te$b;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lcom/vungle/publisher/te$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/te$b;

    return-object v0
.end method

.method public static values()[Lcom/vungle/publisher/te$b;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/vungle/publisher/te$b;->d:[Lcom/vungle/publisher/te$b;

    invoke-virtual {v0}, [Lcom/vungle/publisher/te$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/publisher/te$b;

    return-object v0
.end method
