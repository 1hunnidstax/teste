.class final Lcom/vungle/publisher/aiw$4$1;
.super Lcom/vungle/publisher/ahu;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/aiw$4;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/ahu",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/vungle/publisher/aiw$4;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/aiw$4;Lcom/vungle/publisher/ahu;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/vungle/publisher/aiw$4$1;->b:Lcom/vungle/publisher/aiw$4;

    invoke-direct {p0, p2}, Lcom/vungle/publisher/ahu;-><init>(Lcom/vungle/publisher/ahu;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/vungle/publisher/aiw$4$1;->b:Lcom/vungle/publisher/aiw$4;

    iget-object v0, v0, Lcom/vungle/publisher/aiw$4;->b:Lcom/vungle/publisher/ahu;

    invoke-virtual {v0}, Lcom/vungle/publisher/ahu;->a()V

    .line 322
    return-void
.end method

.method public final a(Lcom/vungle/publisher/ahr;)V
    .locals 2

    .prologue
    .line 347
    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lcom/vungle/publisher/ahr;->a(J)V

    .line 348
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 331
    iget-object v0, p0, Lcom/vungle/publisher/aiw$4$1;->b:Lcom/vungle/publisher/aiw$4;

    iget-object v0, v0, Lcom/vungle/publisher/aiw$4;->b:Lcom/vungle/publisher/ahu;

    iget-object v0, v0, Lcom/vungle/publisher/ahu;->a:Lcom/vungle/publisher/akd;

    iget-boolean v0, v0, Lcom/vungle/publisher/akd;->b:Z

    if-nez v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/vungle/publisher/aiw$4$1;->b:Lcom/vungle/publisher/aiw$4;

    iget-object v0, v0, Lcom/vungle/publisher/aiw$4;->c:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 336
    iget-object v0, p0, Lcom/vungle/publisher/aiw$4$1;->b:Lcom/vungle/publisher/aiw$4;

    iget-object v0, v0, Lcom/vungle/publisher/aiw$4;->d:Lcom/vungle/publisher/ahs$a;

    iget-object v1, p0, Lcom/vungle/publisher/aiw$4$1;->b:Lcom/vungle/publisher/aiw$4;

    iget-object v1, v1, Lcom/vungle/publisher/aiw$4;->e:Lcom/vungle/publisher/aie;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ahs$a;->a(Lcom/vungle/publisher/aie;)Lcom/vungle/publisher/ahv;

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 340
    :cond_1
    iget-object v0, p0, Lcom/vungle/publisher/aiw$4$1;->b:Lcom/vungle/publisher/aiw$4;

    iget-object v0, v0, Lcom/vungle/publisher/aiw$4;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    goto :goto_0
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Lcom/vungle/publisher/aiw$4$1;->b:Lcom/vungle/publisher/aiw$4;

    iget-object v0, v0, Lcom/vungle/publisher/aiw$4;->b:Lcom/vungle/publisher/ahu;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/ahu;->a(Ljava/lang/Throwable;)V

    .line 327
    return-void
.end method
