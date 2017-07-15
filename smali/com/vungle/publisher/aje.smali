.class public final Lcom/vungle/publisher/aje;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ahp$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/aje$a;,
        Lcom/vungle/publisher/aje$b;,
        Lcom/vungle/publisher/aje$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/vungle/publisher/ahp$b",
        "<TR;[",
        "Lcom/vungle/publisher/ahp",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/vungle/publisher/aik;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/aik",
            "<+TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/aij;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/vungle/publisher/ail$1;

    invoke-direct {v0, p1}, Lcom/vungle/publisher/ail$1;-><init>(Lcom/vungle/publisher/aij;)V

    iput-object v0, p0, Lcom/vungle/publisher/aje;->a:Lcom/vungle/publisher/aik;

    .line 59
    return-void
.end method

.method private a(Lcom/vungle/publisher/ahu;)Lcom/vungle/publisher/ahu;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/ahu",
            "<-TR;>;)",
            "Lcom/vungle/publisher/ahu",
            "<-[",
            "Lcom/vungle/publisher/ahp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    new-instance v0, Lcom/vungle/publisher/aje$a;

    iget-object v1, p0, Lcom/vungle/publisher/aje;->a:Lcom/vungle/publisher/aik;

    invoke-direct {v0, p1, v1}, Lcom/vungle/publisher/aje$a;-><init>(Lcom/vungle/publisher/ahu;Lcom/vungle/publisher/aik;)V

    .line 100
    new-instance v1, Lcom/vungle/publisher/aje$b;

    invoke-direct {v1, v0}, Lcom/vungle/publisher/aje$b;-><init>(Lcom/vungle/publisher/aje$a;)V

    .line 101
    new-instance v2, Lcom/vungle/publisher/aje$c;

    invoke-direct {v2, p0, p1, v0, v1}, Lcom/vungle/publisher/aje$c;-><init>(Lcom/vungle/publisher/aje;Lcom/vungle/publisher/ahu;Lcom/vungle/publisher/aje$a;Lcom/vungle/publisher/aje$b;)V

    .line 103
    invoke-virtual {p1, v2}, Lcom/vungle/publisher/ahu;->a(Lcom/vungle/publisher/ahv;)V

    .line 104
    invoke-virtual {p1, v1}, Lcom/vungle/publisher/ahu;->a(Lcom/vungle/publisher/ahr;)V

    .line 106
    return-object v2
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 44
    check-cast p1, Lcom/vungle/publisher/ahu;

    invoke-direct {p0, p1}, Lcom/vungle/publisher/aje;->a(Lcom/vungle/publisher/ahu;)Lcom/vungle/publisher/ahu;

    move-result-object v0

    return-object v0
.end method
