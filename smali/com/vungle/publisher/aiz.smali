.class public final Lcom/vungle/publisher/aiz;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ahp$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/aiz$b;,
        Lcom/vungle/publisher/aiz$c;,
        Lcom/vungle/publisher/aiz$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/vungle/publisher/ahp$b",
        "<",
        "Ljava/util/List",
        "<TT;>;TT;>;"
    }
.end annotation


# instance fields
.field final a:I

.field final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    if-gtz p1, :cond_0

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "count must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_0
    if-gtz p2, :cond_1

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "skip must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_1
    iput p1, p0, Lcom/vungle/publisher/aiz;->a:I

    .line 61
    iput p2, p0, Lcom/vungle/publisher/aiz;->b:I

    .line 62
    return-void
.end method

.method private a(Lcom/vungle/publisher/ahu;)Lcom/vungle/publisher/ahu;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/ahu",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;)",
            "Lcom/vungle/publisher/ahu",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 66
    iget v0, p0, Lcom/vungle/publisher/aiz;->b:I

    iget v1, p0, Lcom/vungle/publisher/aiz;->a:I

    if-ne v0, v1, :cond_0

    .line 67
    new-instance v0, Lcom/vungle/publisher/aiz$a;

    iget v1, p0, Lcom/vungle/publisher/aiz;->a:I

    invoke-direct {v0, p1, v1}, Lcom/vungle/publisher/aiz$a;-><init>(Lcom/vungle/publisher/ahu;I)V

    .line 69
    invoke-virtual {p1, v0}, Lcom/vungle/publisher/ahu;->a(Lcom/vungle/publisher/ahv;)V

    .line 70
    new-instance v1, Lcom/vungle/publisher/aiz$a$1;

    invoke-direct {v1, v0}, Lcom/vungle/publisher/aiz$a$1;-><init>(Lcom/vungle/publisher/aiz$a;)V

    invoke-virtual {p1, v1}, Lcom/vungle/publisher/ahu;->a(Lcom/vungle/publisher/ahr;)V

    .line 87
    :goto_0
    return-object v0

    .line 74
    :cond_0
    iget v0, p0, Lcom/vungle/publisher/aiz;->b:I

    iget v1, p0, Lcom/vungle/publisher/aiz;->a:I

    if-le v0, v1, :cond_1

    .line 75
    new-instance v0, Lcom/vungle/publisher/aiz$c;

    iget v1, p0, Lcom/vungle/publisher/aiz;->a:I

    iget v2, p0, Lcom/vungle/publisher/aiz;->b:I

    invoke-direct {v0, p1, v1, v2}, Lcom/vungle/publisher/aiz$c;-><init>(Lcom/vungle/publisher/ahu;II)V

    .line 77
    invoke-virtual {p1, v0}, Lcom/vungle/publisher/ahu;->a(Lcom/vungle/publisher/ahv;)V

    .line 78
    new-instance v1, Lcom/vungle/publisher/aiz$c$a;

    invoke-direct {v1, v0}, Lcom/vungle/publisher/aiz$c$a;-><init>(Lcom/vungle/publisher/aiz$c;)V

    invoke-virtual {p1, v1}, Lcom/vungle/publisher/ahu;->a(Lcom/vungle/publisher/ahr;)V

    goto :goto_0

    .line 82
    :cond_1
    new-instance v0, Lcom/vungle/publisher/aiz$b;

    iget v1, p0, Lcom/vungle/publisher/aiz;->a:I

    iget v2, p0, Lcom/vungle/publisher/aiz;->b:I

    invoke-direct {v0, p1, v1, v2}, Lcom/vungle/publisher/aiz$b;-><init>(Lcom/vungle/publisher/ahu;II)V

    .line 84
    invoke-virtual {p1, v0}, Lcom/vungle/publisher/ahu;->a(Lcom/vungle/publisher/ahv;)V

    .line 85
    new-instance v1, Lcom/vungle/publisher/aiz$b$a;

    invoke-direct {v1, v0}, Lcom/vungle/publisher/aiz$b$a;-><init>(Lcom/vungle/publisher/aiz$b;)V

    invoke-virtual {p1, v1}, Lcom/vungle/publisher/ahu;->a(Lcom/vungle/publisher/ahr;)V

    goto :goto_0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 39
    check-cast p1, Lcom/vungle/publisher/ahu;

    invoke-direct {p0, p1}, Lcom/vungle/publisher/aiz;->a(Lcom/vungle/publisher/ahu;)Lcom/vungle/publisher/ahu;

    move-result-object v0

    return-object v0
.end method
