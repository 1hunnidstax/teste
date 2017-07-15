.class public final enum Lcom/vungle/publisher/ain;
.super Ljava/lang/Enum;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ahp$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vungle/publisher/ain;",
        ">;",
        "Lcom/vungle/publisher/ahp$a",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/vungle/publisher/ain;

.field static final b:Lcom/vungle/publisher/ahp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/ahp",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final synthetic c:[Lcom/vungle/publisher/ain;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 27
    new-instance v0, Lcom/vungle/publisher/ain;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1}, Lcom/vungle/publisher/ain;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/vungle/publisher/ain;->a:Lcom/vungle/publisher/ain;

    .line 26
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/vungle/publisher/ain;

    const/4 v1, 0x0

    sget-object v2, Lcom/vungle/publisher/ain;->a:Lcom/vungle/publisher/ain;

    aput-object v2, v0, v1

    sput-object v0, Lcom/vungle/publisher/ain;->c:[Lcom/vungle/publisher/ain;

    .line 31
    sget-object v0, Lcom/vungle/publisher/ain;->a:Lcom/vungle/publisher/ain;

    invoke-static {v0}, Lcom/vungle/publisher/ahp;->a(Lcom/vungle/publisher/ahp$a;)Lcom/vungle/publisher/ahp;

    move-result-object v0

    sput-object v0, Lcom/vungle/publisher/ain;->b:Lcom/vungle/publisher/ahp;

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
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()Lcom/vungle/publisher/ahp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/vungle/publisher/ahp",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 41
    sget-object v0, Lcom/vungle/publisher/ain;->b:Lcom/vungle/publisher/ahp;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vungle/publisher/ain;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lcom/vungle/publisher/ain;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ain;

    return-object v0
.end method

.method public static values()[Lcom/vungle/publisher/ain;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/vungle/publisher/ain;->c:[Lcom/vungle/publisher/ain;

    invoke-virtual {v0}, [Lcom/vungle/publisher/ain;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/publisher/ain;

    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Lcom/vungle/publisher/ahu;

    invoke-virtual {p1}, Lcom/vungle/publisher/ahu;->a()V

    return-void
.end method
