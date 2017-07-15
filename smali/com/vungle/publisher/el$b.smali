.class public final enum Lcom/vungle/publisher/el$b;
.super Ljava/lang/Enum;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/el;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vungle/publisher/el$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/vungle/publisher/el$b;

.field public static final enum b:Lcom/vungle/publisher/el$b;

.field public static final enum c:Lcom/vungle/publisher/el$b;

.field public static final enum d:Lcom/vungle/publisher/el$b;

.field public static final enum e:Lcom/vungle/publisher/el$b;

.field private static final synthetic f:[Lcom/vungle/publisher/el$b;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/vungle/publisher/el$b;

    const-string v1, "localVideo"

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/el$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/el$b;->a:Lcom/vungle/publisher/el$b;

    .line 22
    new-instance v0, Lcom/vungle/publisher/el$b;

    const-string v1, "postRoll"

    invoke-direct {v0, v1, v3}, Lcom/vungle/publisher/el$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/el$b;->b:Lcom/vungle/publisher/el$b;

    .line 23
    new-instance v0, Lcom/vungle/publisher/el$b;

    const-string v1, "streamingVideo"

    invoke-direct {v0, v1, v4}, Lcom/vungle/publisher/el$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/el$b;->c:Lcom/vungle/publisher/el$b;

    .line 24
    new-instance v0, Lcom/vungle/publisher/el$b;

    const-string v1, "template"

    invoke-direct {v0, v1, v5}, Lcom/vungle/publisher/el$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/el$b;->d:Lcom/vungle/publisher/el$b;

    .line 25
    new-instance v0, Lcom/vungle/publisher/el$b;

    const-string v1, "asset"

    invoke-direct {v0, v1, v6}, Lcom/vungle/publisher/el$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/el$b;->e:Lcom/vungle/publisher/el$b;

    .line 20
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/vungle/publisher/el$b;

    sget-object v1, Lcom/vungle/publisher/el$b;->a:Lcom/vungle/publisher/el$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/publisher/el$b;->b:Lcom/vungle/publisher/el$b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vungle/publisher/el$b;->c:Lcom/vungle/publisher/el$b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/vungle/publisher/el$b;->d:Lcom/vungle/publisher/el$b;

    aput-object v1, v0, v5

    sget-object v1, Lcom/vungle/publisher/el$b;->e:Lcom/vungle/publisher/el$b;

    aput-object v1, v0, v6

    sput-object v0, Lcom/vungle/publisher/el$b;->f:[Lcom/vungle/publisher/el$b;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/publisher/el$b;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/vungle/publisher/el$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/el$b;

    return-object v0
.end method

.method public static values()[Lcom/vungle/publisher/el$b;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/vungle/publisher/el$b;->f:[Lcom/vungle/publisher/el$b;

    invoke-virtual {v0}, [Lcom/vungle/publisher/el$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/publisher/el$b;

    return-object v0
.end method
