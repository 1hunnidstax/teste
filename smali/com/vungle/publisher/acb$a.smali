.class public abstract Lcom/vungle/publisher/acb$a;
.super Lcom/vungle/publisher/abw;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/acb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Lcom/vungle/publisher/cp",
        "<*TP;TE;>;E:",
        "Lcom/vungle/publisher/cr",
        "<TP;>;",
        "L:Lcom/vungle/publisher/acb;",
        ">",
        "Lcom/vungle/publisher/abw",
        "<T",
        "L;",
        ">;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/vungle/publisher/abw;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/vungle/publisher/cp;)Lcom/vungle/publisher/acb;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TP;)T",
            "L;"
        }
    .end annotation

    .prologue
    .line 44
    const/4 v0, 0x0

    .line 45
    if-eqz p1, :cond_0

    .line 46
    invoke-virtual {p0}, Lcom/vungle/publisher/acb$a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/acb;

    .line 47
    invoke-virtual {p1}, Lcom/vungle/publisher/cp;->e()[Lcom/vungle/publisher/cr;

    move-result-object v1

    invoke-static {v1}, Lcom/vungle/publisher/acb$b$a;->a([Lcom/vungle/publisher/cr;)[Lcom/vungle/publisher/acb$b;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/acb;->c:[Lcom/vungle/publisher/acb$b;

    .line 48
    iget-object v1, p1, Lcom/vungle/publisher/cp;->c:Ljava/lang/Long;

    iput-object v1, v0, Lcom/vungle/publisher/acb;->b:Ljava/lang/Long;

    .line 50
    :cond_0
    return-object v0
.end method

.method protected final a([Lcom/vungle/publisher/cp;)[Lcom/vungle/publisher/acb;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TP;)[T",
            "L;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 31
    const/4 v0, 0x0

    .line 32
    if-nez p1, :cond_0

    move v2, v1

    .line 33
    :goto_0
    if-lez v2, :cond_1

    .line 34
    invoke-virtual {p0, v2}, Lcom/vungle/publisher/acb$a;->a(I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/publisher/acb;

    .line 36
    array-length v4, p1

    move v2, v1

    :goto_1
    if-ge v1, v4, :cond_1

    aget-object v5, p1, v1

    .line 37
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v5}, Lcom/vungle/publisher/acb$a;->a(Lcom/vungle/publisher/cp;)Lcom/vungle/publisher/acb;

    move-result-object v5

    aput-object v5, v0, v2

    .line 36
    add-int/lit8 v1, v1, 0x1

    move v2, v3

    goto :goto_1

    .line 32
    :cond_0
    array-length v2, p1

    goto :goto_0

    .line 40
    :cond_1
    return-object v0
.end method
