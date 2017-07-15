.class final Lcom/vungle/publisher/ais$a;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ahr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ais;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lcom/vungle/publisher/ahr;"
    }
.end annotation


# instance fields
.field private final a:Lcom/vungle/publisher/ahu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/ahu",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator",
            "<+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/vungle/publisher/ahu;Ljava/util/Iterator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/ahu",
            "<-TT;>;",
            "Ljava/util/Iterator",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/vungle/publisher/ais$a;->a:Lcom/vungle/publisher/ahu;

    .line 76
    iput-object p2, p0, Lcom/vungle/publisher/ais$a;->b:Ljava/util/Iterator;

    .line 77
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 9

    .prologue
    const-wide v4, 0x7fffffffffffffffL

    const-wide/16 v2, 0x0

    .line 81
    invoke-virtual {p0}, Lcom/vungle/publisher/ais$a;->get()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-nez v0, :cond_1

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    cmp-long v0, p1, v4

    if-nez v0, :cond_3

    invoke-virtual {p0, v2, v3, v4, v5}, Lcom/vungle/publisher/ais$a;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86
    iget-object v0, p0, Lcom/vungle/publisher/ais$a;->a:Lcom/vungle/publisher/ahu;

    iget-object v1, p0, Lcom/vungle/publisher/ais$a;->b:Ljava/util/Iterator;

    :cond_2
    iget-object v2, v0, Lcom/vungle/publisher/ahu;->a:Lcom/vungle/publisher/akd;

    iget-boolean v2, v2, Lcom/vungle/publisher/akd;->b:Z

    if-nez v2, :cond_0

    :try_start_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vungle/publisher/ahu;->a(Ljava/lang/Object;)V

    iget-object v2, v0, Lcom/vungle/publisher/ahu;->a:Lcom/vungle/publisher/akd;

    iget-boolean v2, v2, Lcom/vungle/publisher/akd;->b:Z

    if-nez v2, :cond_0

    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    if-nez v2, :cond_2

    iget-object v1, v0, Lcom/vungle/publisher/ahu;->a:Lcom/vungle/publisher/akd;

    iget-boolean v1, v1, Lcom/vungle/publisher/akd;->b:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/vungle/publisher/ahu;->a()V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {v1, v0}, Lcom/vungle/publisher/ahx;->a(Ljava/lang/Throwable;Lcom/vungle/publisher/ahq;)V

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-static {v1, v0}, Lcom/vungle/publisher/ahx;->a(Ljava/lang/Throwable;Lcom/vungle/publisher/ahq;)V

    goto :goto_0

    .line 88
    :cond_3
    cmp-long v0, p1, v2

    if-lez v0, :cond_0

    invoke-static {p0, p1, p2}, Lcom/vungle/publisher/aim;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 89
    iget-object v4, p0, Lcom/vungle/publisher/ais$a;->a:Lcom/vungle/publisher/ahu;

    iget-object v5, p0, Lcom/vungle/publisher/ais$a;->b:Ljava/util/Iterator;

    move-wide v0, v2

    :cond_4
    :goto_1
    cmp-long v6, v0, p1

    if-eqz v6, :cond_6

    iget-object v6, v4, Lcom/vungle/publisher/ahu;->a:Lcom/vungle/publisher/akd;

    iget-boolean v6, v6, Lcom/vungle/publisher/akd;->b:Z

    if-nez v6, :cond_0

    :try_start_2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/vungle/publisher/ahu;->a(Ljava/lang/Object;)V

    iget-object v6, v4, Lcom/vungle/publisher/ahu;->a:Lcom/vungle/publisher/akd;

    iget-boolean v6, v6, Lcom/vungle/publisher/akd;->b:Z

    if-nez v6, :cond_0

    :try_start_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    move-result v6

    if-nez v6, :cond_5

    iget-object v0, v4, Lcom/vungle/publisher/ahu;->a:Lcom/vungle/publisher/akd;

    iget-boolean v0, v0, Lcom/vungle/publisher/akd;->b:Z

    if-nez v0, :cond_0

    invoke-virtual {v4}, Lcom/vungle/publisher/ahu;->a()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-static {v0, v4}, Lcom/vungle/publisher/ahx;->a(Ljava/lang/Throwable;Lcom/vungle/publisher/ahq;)V

    goto :goto_0

    :catch_3
    move-exception v0

    invoke-static {v0, v4}, Lcom/vungle/publisher/ahx;->a(Ljava/lang/Throwable;Lcom/vungle/publisher/ahq;)V

    goto :goto_0

    :cond_5
    const-wide/16 v6, 0x1

    add-long/2addr v0, v6

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/vungle/publisher/ais$a;->get()J

    move-result-wide p1

    cmp-long v6, v0, p1

    if-nez v6, :cond_4

    invoke-static {p0, v0, v1}, Lcom/vungle/publisher/aim;->b(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-eqz v0, :cond_0

    move-wide v0, v2

    goto :goto_1
.end method
