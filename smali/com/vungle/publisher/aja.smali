.class public final Lcom/vungle/publisher/aja;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ahp$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/vungle/publisher/ahp$b",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field final a:J

.field final b:Ljava/util/concurrent/TimeUnit;

.field final c:Lcom/vungle/publisher/ahs;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lcom/vungle/publisher/ahs;)V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-wide p1, p0, Lcom/vungle/publisher/aja;->a:J

    .line 39
    iput-object p3, p0, Lcom/vungle/publisher/aja;->b:Ljava/util/concurrent/TimeUnit;

    .line 40
    iput-object p4, p0, Lcom/vungle/publisher/aja;->c:Lcom/vungle/publisher/ahs;

    .line 41
    return-void
.end method

.method private a(Lcom/vungle/publisher/ahu;)Lcom/vungle/publisher/ahu;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/ahu",
            "<-TT;>;)",
            "Lcom/vungle/publisher/ahu",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lcom/vungle/publisher/aja;->c:Lcom/vungle/publisher/ahs;

    invoke-virtual {v0}, Lcom/vungle/publisher/ahs;->a()Lcom/vungle/publisher/ahs$a;

    move-result-object v0

    .line 46
    invoke-virtual {p1, v0}, Lcom/vungle/publisher/ahu;->a(Lcom/vungle/publisher/ahv;)V

    .line 47
    new-instance v1, Lcom/vungle/publisher/aja$1;

    invoke-direct {v1, p0, p1, v0, p1}, Lcom/vungle/publisher/aja$1;-><init>(Lcom/vungle/publisher/aja;Lcom/vungle/publisher/ahu;Lcom/vungle/publisher/ahs$a;Lcom/vungle/publisher/ahu;)V

    return-object v1
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 31
    check-cast p1, Lcom/vungle/publisher/ahu;

    invoke-direct {p0, p1}, Lcom/vungle/publisher/aja;->a(Lcom/vungle/publisher/ahu;)Lcom/vungle/publisher/ahu;

    move-result-object v0

    return-object v0
.end method
