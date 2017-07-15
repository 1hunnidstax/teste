.class final Lcom/vungle/publisher/aiv$a;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ahr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/aiv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/vungle/publisher/ahu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/ahu",
            "<-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final b:I

.field private c:J


# direct methods
.method constructor <init>(Lcom/vungle/publisher/ahu;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/ahu",
            "<-",
            "Ljava/lang/Integer;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/vungle/publisher/aiv$a;->a:Lcom/vungle/publisher/ahu;

    .line 51
    int-to-long v0, p2

    iput-wide v0, p0, Lcom/vungle/publisher/aiv$a;->c:J

    .line 52
    iput p3, p0, Lcom/vungle/publisher/aiv$a;->b:I

    .line 53
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 13

    .prologue
    const-wide v2, 0x7fffffffffffffffL

    const-wide/16 v10, 0x1

    const-wide/16 v4, 0x0

    .line 57
    invoke-virtual {p0}, Lcom/vungle/publisher/aiv$a;->get()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 61
    :cond_1
    cmp-long v0, p1, v2

    if-nez v0, :cond_3

    invoke-virtual {p0, v4, v5, v2, v3}, Lcom/vungle/publisher/aiv$a;->compareAndSet(JJ)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 63
    iget v0, p0, Lcom/vungle/publisher/aiv$a;->b:I

    int-to-long v0, v0

    add-long v2, v0, v10

    iget-object v4, p0, Lcom/vungle/publisher/aiv$a;->a:Lcom/vungle/publisher/ahu;

    iget-wide v0, p0, Lcom/vungle/publisher/aiv$a;->c:J

    :goto_1
    cmp-long v5, v0, v2

    if-eqz v5, :cond_2

    iget-object v5, v4, Lcom/vungle/publisher/ahu;->a:Lcom/vungle/publisher/akd;

    iget-boolean v5, v5, Lcom/vungle/publisher/akd;->b:Z

    if-nez v5, :cond_0

    long-to-int v5, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/vungle/publisher/ahu;->a(Ljava/lang/Object;)V

    add-long/2addr v0, v10

    goto :goto_1

    :cond_2
    iget-object v0, v4, Lcom/vungle/publisher/ahu;->a:Lcom/vungle/publisher/akd;

    iget-boolean v0, v0, Lcom/vungle/publisher/akd;->b:Z

    if-nez v0, :cond_0

    invoke-virtual {v4}, Lcom/vungle/publisher/ahu;->a()V

    goto :goto_0

    .line 64
    :cond_3
    cmp-long v0, p1, v4

    if-lez v0, :cond_0

    .line 65
    invoke-static {p0, p1, p2}, Lcom/vungle/publisher/aim;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    move-result-wide v0

    .line 66
    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    .line 68
    iget v0, p0, Lcom/vungle/publisher/aiv$a;->b:I

    int-to-long v0, v0

    add-long v6, v0, v10

    iget-wide v0, p0, Lcom/vungle/publisher/aiv$a;->c:J

    iget-object v8, p0, Lcom/vungle/publisher/aiv$a;->a:Lcom/vungle/publisher/ahu;

    move-wide v2, v4

    :cond_4
    :goto_2
    cmp-long v9, v2, p1

    if-eqz v9, :cond_5

    cmp-long v9, v0, v6

    if-eqz v9, :cond_5

    iget-object v9, v8, Lcom/vungle/publisher/ahu;->a:Lcom/vungle/publisher/akd;

    iget-boolean v9, v9, Lcom/vungle/publisher/akd;->b:Z

    if-nez v9, :cond_0

    long-to-int v9, v0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/vungle/publisher/ahu;->a(Ljava/lang/Object;)V

    add-long/2addr v0, v10

    add-long/2addr v2, v10

    goto :goto_2

    :cond_5
    iget-object v9, v8, Lcom/vungle/publisher/ahu;->a:Lcom/vungle/publisher/akd;

    iget-boolean v9, v9, Lcom/vungle/publisher/akd;->b:Z

    if-nez v9, :cond_0

    cmp-long v9, v0, v6

    if-nez v9, :cond_6

    invoke-virtual {v8}, Lcom/vungle/publisher/ahu;->a()V

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/vungle/publisher/aiv$a;->get()J

    move-result-wide p1

    cmp-long v9, p1, v2

    if-nez v9, :cond_4

    iput-wide v0, p0, Lcom/vungle/publisher/aiv$a;->c:J

    neg-long v2, v2

    invoke-virtual {p0, v2, v3}, Lcom/vungle/publisher/aiv$a;->addAndGet(J)J

    move-result-wide p1

    cmp-long v2, p1, v4

    if-eqz v2, :cond_0

    move-wide v2, v4

    goto :goto_2
.end method
