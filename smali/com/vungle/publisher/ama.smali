.class final Lcom/vungle/publisher/ama;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ahp$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/ama$b;,
        Lcom/vungle/publisher/ama$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Lcom/vungle/publisher/ama$a",
        "<TT;>;>;",
        "Lcom/vungle/publisher/ahp$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field volatile a:Ljava/lang/Object;

.field b:Z

.field c:Lcom/vungle/publisher/aif;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/aif",
            "<",
            "Lcom/vungle/publisher/ama$b",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field d:Lcom/vungle/publisher/aif;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/aif",
            "<",
            "Lcom/vungle/publisher/ama$b",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field e:Lcom/vungle/publisher/aif;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/aif",
            "<",
            "Lcom/vungle/publisher/ama$b",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field public final f:Lcom/vungle/publisher/aio;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/aio",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/vungle/publisher/ama$a;->e:Lcom/vungle/publisher/ama$a;

    invoke-direct {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 42
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/publisher/ama;->b:Z

    .line 44
    invoke-static {}, Lcom/vungle/publisher/aig;->a()Lcom/vungle/publisher/aig$a;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/ama;->c:Lcom/vungle/publisher/aif;

    .line 46
    invoke-static {}, Lcom/vungle/publisher/aig;->a()Lcom/vungle/publisher/aig$a;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/ama;->d:Lcom/vungle/publisher/aif;

    .line 48
    invoke-static {}, Lcom/vungle/publisher/aig;->a()Lcom/vungle/publisher/aig$a;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/ama;->e:Lcom/vungle/publisher/aif;

    .line 50
    invoke-static {}, Lcom/vungle/publisher/aio;->a()Lcom/vungle/publisher/aio;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/ama;->f:Lcom/vungle/publisher/aio;

    .line 54
    return-void
.end method


# virtual methods
.method final a(Lcom/vungle/publisher/ama$b;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/ama$b",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/vungle/publisher/ama;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ama$a;

    .line 114
    iget-boolean v1, v0, Lcom/vungle/publisher/ama$a;->a:Z

    if-eqz v1, :cond_2

    .line 119
    :cond_1
    :goto_0
    return-void

    .line 117
    :cond_2
    iget-object v6, v0, Lcom/vungle/publisher/ama$a;->b:[Lcom/vungle/publisher/ama$b;

    array-length v7, v6

    const/4 v1, 0x1

    if-ne v7, v1, :cond_3

    aget-object v1, v6, v5

    if-ne v1, p1, :cond_3

    sget-object v1, Lcom/vungle/publisher/ama$a;->e:Lcom/vungle/publisher/ama$a;

    .line 118
    :goto_1
    if-eq v1, v0, :cond_1

    invoke-virtual {p0, v0, v1}, Lcom/vungle/publisher/ama;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 117
    :cond_3
    if-nez v7, :cond_4

    move-object v1, v0

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v7, -0x1

    new-array v3, v1, [Lcom/vungle/publisher/ama$b;

    move v4, v5

    move v2, v5

    :goto_2
    if-ge v4, v7, :cond_6

    aget-object v8, v6, v4

    if-eq v8, p1, :cond_9

    add-int/lit8 v1, v7, -0x1

    if-ne v2, v1, :cond_5

    move-object v1, v0

    goto :goto_1

    :cond_5
    add-int/lit8 v1, v2, 0x1

    aput-object v8, v3, v2

    :goto_3
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    move v2, v1

    goto :goto_2

    :cond_6
    if-nez v2, :cond_7

    sget-object v1, Lcom/vungle/publisher/ama$a;->e:Lcom/vungle/publisher/ama$a;

    goto :goto_1

    :cond_7
    add-int/lit8 v1, v7, -0x1

    if-ge v2, v1, :cond_8

    new-array v1, v2, [Lcom/vungle/publisher/ama$b;

    invoke-static {v3, v5, v1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_4
    new-instance v2, Lcom/vungle/publisher/ama$a;

    iget-boolean v3, v0, Lcom/vungle/publisher/ama$a;->a:Z

    invoke-direct {v2, v3, v1}, Lcom/vungle/publisher/ama$a;-><init>(Z[Lcom/vungle/publisher/ama$b;)V

    move-object v1, v2

    goto :goto_1

    :cond_8
    move-object v1, v3

    goto :goto_4

    :cond_9
    move v1, v2

    goto :goto_3
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 35
    check-cast p1, Lcom/vungle/publisher/ahu;

    new-instance v2, Lcom/vungle/publisher/ama$b;

    invoke-direct {v2, p1}, Lcom/vungle/publisher/ama$b;-><init>(Lcom/vungle/publisher/ahu;)V

    new-instance v0, Lcom/vungle/publisher/ama$1;

    invoke-direct {v0, p0, v2}, Lcom/vungle/publisher/ama$1;-><init>(Lcom/vungle/publisher/ama;Lcom/vungle/publisher/ama$b;)V

    invoke-static {v0}, Lcom/vungle/publisher/ame;->a(Lcom/vungle/publisher/aie;)Lcom/vungle/publisher/ahv;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vungle/publisher/ahu;->a(Lcom/vungle/publisher/ahv;)V

    iget-object v0, p0, Lcom/vungle/publisher/ama;->c:Lcom/vungle/publisher/aif;

    invoke-interface {v0, v2}, Lcom/vungle/publisher/aif;->a(Ljava/lang/Object;)V

    iget-object v0, p1, Lcom/vungle/publisher/ahu;->a:Lcom/vungle/publisher/akd;

    iget-boolean v0, v0, Lcom/vungle/publisher/akd;->b:Z

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/vungle/publisher/ama;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ama$a;

    iget-boolean v3, v0, Lcom/vungle/publisher/ama$a;->a:Z

    if-eqz v3, :cond_2

    iget-object v0, p0, Lcom/vungle/publisher/ama;->e:Lcom/vungle/publisher/aif;

    invoke-interface {v0, v2}, Lcom/vungle/publisher/aif;->a(Ljava/lang/Object;)V

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/vungle/publisher/ahu;->a:Lcom/vungle/publisher/akd;

    iget-boolean v0, v0, Lcom/vungle/publisher/akd;->b:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/vungle/publisher/ama;->a(Lcom/vungle/publisher/ama$b;)V

    :cond_1
    return-void

    :cond_2
    iget-object v3, v0, Lcom/vungle/publisher/ama$a;->b:[Lcom/vungle/publisher/ama$b;

    array-length v3, v3

    add-int/lit8 v4, v3, 0x1

    new-array v4, v4, [Lcom/vungle/publisher/ama$b;

    iget-object v5, v0, Lcom/vungle/publisher/ama$a;->b:[Lcom/vungle/publisher/ama$b;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-object v2, v4, v3

    new-instance v3, Lcom/vungle/publisher/ama$a;

    iget-boolean v5, v0, Lcom/vungle/publisher/ama$a;->a:Z

    invoke-direct {v3, v5, v4}, Lcom/vungle/publisher/ama$a;-><init>(Z[Lcom/vungle/publisher/ama$b;)V

    invoke-virtual {p0, v0, v3}, Lcom/vungle/publisher/ama;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vungle/publisher/ama;->d:Lcom/vungle/publisher/aif;

    invoke-interface {v0, v2}, Lcom/vungle/publisher/aif;->a(Ljava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method final b(Ljava/lang/Object;)[Lcom/vungle/publisher/ama$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")[",
            "Lcom/vungle/publisher/ama$b",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 139
    iput-object p1, p0, Lcom/vungle/publisher/ama;->a:Ljava/lang/Object;

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vungle/publisher/ama;->b:Z

    .line 142
    invoke-virtual {p0}, Lcom/vungle/publisher/ama;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ama$a;

    .line 143
    iget-boolean v0, v0, Lcom/vungle/publisher/ama$a;->a:Z

    if-eqz v0, :cond_0

    .line 144
    sget-object v0, Lcom/vungle/publisher/ama$a;->c:[Lcom/vungle/publisher/ama$b;

    .line 146
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/vungle/publisher/ama$a;->d:Lcom/vungle/publisher/ama$a;

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/ama;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ama$a;

    iget-object v0, v0, Lcom/vungle/publisher/ama$a;->b:[Lcom/vungle/publisher/ama$b;

    goto :goto_0
.end method
