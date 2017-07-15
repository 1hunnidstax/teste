.class final Lcom/vungle/publisher/aiw$5;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ahr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/aiw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic b:Lcom/vungle/publisher/ajf;

.field final synthetic c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic d:Lcom/vungle/publisher/ahs$a;

.field final synthetic e:Lcom/vungle/publisher/aie;

.field final synthetic f:Lcom/vungle/publisher/aiw;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/aiw;Ljava/util/concurrent/atomic/AtomicLong;Lcom/vungle/publisher/ajf;Ljava/util/concurrent/atomic/AtomicBoolean;Lcom/vungle/publisher/ahs$a;Lcom/vungle/publisher/aie;)V
    .locals 0

    .prologue
    .line 353
    iput-object p1, p0, Lcom/vungle/publisher/aiw$5;->f:Lcom/vungle/publisher/aiw;

    iput-object p2, p0, Lcom/vungle/publisher/aiw$5;->a:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p3, p0, Lcom/vungle/publisher/aiw$5;->b:Lcom/vungle/publisher/ajf;

    iput-object p4, p0, Lcom/vungle/publisher/aiw$5;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p5, p0, Lcom/vungle/publisher/aiw$5;->d:Lcom/vungle/publisher/ahs$a;

    iput-object p6, p0, Lcom/vungle/publisher/aiw$5;->e:Lcom/vungle/publisher/aie;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 3

    .prologue
    .line 357
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/vungle/publisher/aiw$5;->a:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lcom/vungle/publisher/aim;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 359
    iget-object v0, p0, Lcom/vungle/publisher/aiw$5;->b:Lcom/vungle/publisher/ajf;

    invoke-virtual {v0, p1, p2}, Lcom/vungle/publisher/ajf;->a(J)V

    .line 360
    iget-object v0, p0, Lcom/vungle/publisher/aiw$5;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/vungle/publisher/aiw$5;->d:Lcom/vungle/publisher/ahs$a;

    iget-object v1, p0, Lcom/vungle/publisher/aiw$5;->e:Lcom/vungle/publisher/aie;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ahs$a;->a(Lcom/vungle/publisher/aie;)Lcom/vungle/publisher/ahv;

    .line 364
    :cond_0
    return-void
.end method
