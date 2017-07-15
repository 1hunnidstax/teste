.class final Lcom/vungle/publisher/aje$c;
.super Lcom/vungle/publisher/ahu;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/aje;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/ahu",
        "<[",
        "Lcom/vungle/publisher/ahp;",
        ">;"
    }
.end annotation


# instance fields
.field final b:Lcom/vungle/publisher/ahu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/ahu",
            "<-TR;>;"
        }
    .end annotation
.end field

.field final c:Lcom/vungle/publisher/aje$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/aje$a",
            "<TR;>;"
        }
    .end annotation
.end field

.field final d:Lcom/vungle/publisher/aje$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/aje$b",
            "<TR;>;"
        }
    .end annotation
.end field

.field e:Z

.field final synthetic f:Lcom/vungle/publisher/aje;


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/aje;Lcom/vungle/publisher/ahu;Lcom/vungle/publisher/aje$a;Lcom/vungle/publisher/aje$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/ahu",
            "<-TR;>;",
            "Lcom/vungle/publisher/aje$a",
            "<TR;>;",
            "Lcom/vungle/publisher/aje$b",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 118
    iput-object p1, p0, Lcom/vungle/publisher/aje$c;->f:Lcom/vungle/publisher/aje;

    invoke-direct {p0}, Lcom/vungle/publisher/ahu;-><init>()V

    .line 119
    iput-object p2, p0, Lcom/vungle/publisher/aje$c;->b:Lcom/vungle/publisher/ahu;

    .line 120
    iput-object p3, p0, Lcom/vungle/publisher/aje$c;->c:Lcom/vungle/publisher/aje$a;

    .line 121
    iput-object p4, p0, Lcom/vungle/publisher/aje$c;->d:Lcom/vungle/publisher/aje$b;

    .line 122
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 126
    iget-boolean v0, p0, Lcom/vungle/publisher/aje$c;->e:Z

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/vungle/publisher/aje$c;->b:Lcom/vungle/publisher/ahu;

    invoke-virtual {v0}, Lcom/vungle/publisher/ahu;->a()V

    .line 130
    :cond_0
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 109
    check-cast p1, [Lcom/vungle/publisher/ahp;

    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/aje$c;->b:Lcom/vungle/publisher/ahu;

    invoke-virtual {v0}, Lcom/vungle/publisher/ahu;->a()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/publisher/aje$c;->e:Z

    iget-object v2, p0, Lcom/vungle/publisher/aje$c;->c:Lcom/vungle/publisher/aje$a;

    iget-object v3, p0, Lcom/vungle/publisher/aje$c;->d:Lcom/vungle/publisher/aje$b;

    array-length v0, p1

    new-array v4, v0, [Ljava/lang/Object;

    move v0, v1

    :goto_0
    array-length v5, p1

    if-ge v0, v5, :cond_3

    new-instance v5, Lcom/vungle/publisher/aje$a$a;

    invoke-direct {v5, v2}, Lcom/vungle/publisher/aje$a$a;-><init>(Lcom/vungle/publisher/aje$a;)V

    aput-object v5, v4, v0

    iget-object v6, v2, Lcom/vungle/publisher/aje$a;->b:Lcom/vungle/publisher/amc;

    invoke-virtual {v6, v5}, Lcom/vungle/publisher/amc;->a(Lcom/vungle/publisher/ahv;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    iput-object v3, v2, Lcom/vungle/publisher/aje$a;->f:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object v4, v2, Lcom/vungle/publisher/aje$a;->e:[Ljava/lang/Object;

    :goto_1
    array-length v0, p1

    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    aget-object v0, v4, v1

    check-cast v0, Lcom/vungle/publisher/aje$a$a;

    invoke-virtual {v2, v0}, Lcom/vungle/publisher/ahp;->a(Lcom/vungle/publisher/ahu;)Lcom/vungle/publisher/ahv;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/vungle/publisher/aje$c;->b:Lcom/vungle/publisher/ahu;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/ahu;->a(Ljava/lang/Throwable;)V

    .line 135
    return-void
.end method
