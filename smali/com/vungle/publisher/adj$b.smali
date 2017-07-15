.class public final enum Lcom/vungle/publisher/adj$b;
.super Ljava/lang/Enum;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/adj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vungle/publisher/adj$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/vungle/publisher/adj$b;

.field public static final enum b:Lcom/vungle/publisher/adj$b;

.field private static final synthetic c:[Lcom/vungle/publisher/adj$b;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/vungle/publisher/adj$b;

    const-string v1, "all"

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/adj$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/adj$b;->a:Lcom/vungle/publisher/adj$b;

    .line 22
    new-instance v0, Lcom/vungle/publisher/adj$b;

    const-string v1, "wifi"

    invoke-direct {v0, v1, v3}, Lcom/vungle/publisher/adj$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vungle/publisher/adj$b;->b:Lcom/vungle/publisher/adj$b;

    .line 20
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/vungle/publisher/adj$b;

    sget-object v1, Lcom/vungle/publisher/adj$b;->a:Lcom/vungle/publisher/adj$b;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vungle/publisher/adj$b;->b:Lcom/vungle/publisher/adj$b;

    aput-object v1, v0, v3

    sput-object v0, Lcom/vungle/publisher/adj$b;->c:[Lcom/vungle/publisher/adj$b;

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

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/publisher/adj$b;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 20
    const-class v0, Lcom/vungle/publisher/adj$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/adj$b;

    return-object v0
.end method

.method public static values()[Lcom/vungle/publisher/adj$b;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/vungle/publisher/adj$b;->c:[Lcom/vungle/publisher/adj$b;

    invoke-virtual {v0}, [Lcom/vungle/publisher/adj$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/publisher/adj$b;

    return-object v0
.end method
