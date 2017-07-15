.class public final Lcom/vungle/publisher/ajb;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ahp$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/ajb$b;,
        Lcom/vungle/publisher/ajb$d;,
        Lcom/vungle/publisher/ajb$c;,
        Lcom/vungle/publisher/ajb$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/vungle/publisher/ahp$b",
        "<TT;",
        "Lcom/vungle/publisher/ahp",
        "<+TT;>;>;"
    }
.end annotation


# instance fields
.field final a:Z

.field final b:I


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vungle/publisher/ajb;->a:Z

    .line 101
    const v0, 0x7fffffff

    iput v0, p0, Lcom/vungle/publisher/ajb;->b:I

    .line 102
    return-void
.end method

.method private a(Lcom/vungle/publisher/ahu;)Lcom/vungle/publisher/ahu;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/ahu",
            "<-TT;>;)",
            "Lcom/vungle/publisher/ahu",
            "<",
            "Lcom/vungle/publisher/ahp",
            "<+TT;>;>;"
        }
    .end annotation

    .prologue
    .line 106
    new-instance v0, Lcom/vungle/publisher/ajb$d;

    iget-boolean v1, p0, Lcom/vungle/publisher/ajb;->a:Z

    iget v2, p0, Lcom/vungle/publisher/ajb;->b:I

    invoke-direct {v0, p1, v1, v2}, Lcom/vungle/publisher/ajb$d;-><init>(Lcom/vungle/publisher/ahu;ZI)V

    .line 107
    new-instance v1, Lcom/vungle/publisher/ajb$c;

    invoke-direct {v1, v0}, Lcom/vungle/publisher/ajb$c;-><init>(Lcom/vungle/publisher/ajb$d;)V

    .line 108
    iput-object v1, v0, Lcom/vungle/publisher/ajb$d;->e:Lcom/vungle/publisher/ajb$c;

    .line 110
    invoke-virtual {p1, v0}, Lcom/vungle/publisher/ahu;->a(Lcom/vungle/publisher/ahv;)V

    .line 111
    invoke-virtual {p1, v1}, Lcom/vungle/publisher/ahu;->a(Lcom/vungle/publisher/ahr;)V

    .line 113
    return-object v0
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 55
    check-cast p1, Lcom/vungle/publisher/ahu;

    invoke-direct {p0, p1}, Lcom/vungle/publisher/ajb;->a(Lcom/vungle/publisher/ahu;)Lcom/vungle/publisher/ahu;

    move-result-object v0

    return-object v0
.end method
