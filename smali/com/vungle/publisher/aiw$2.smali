.class final Lcom/vungle/publisher/aiw$2;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/aie;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/aiw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/ahu;

.field final synthetic b:Lcom/vungle/publisher/alz;

.field final synthetic c:Lcom/vungle/publisher/ajf;

.field final synthetic d:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic e:Lcom/vungle/publisher/amd;

.field final synthetic f:Lcom/vungle/publisher/aiw;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/aiw;Lcom/vungle/publisher/ahu;Lcom/vungle/publisher/alz;Lcom/vungle/publisher/ajf;Ljava/util/concurrent/atomic/AtomicLong;Lcom/vungle/publisher/amd;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/vungle/publisher/aiw$2;->f:Lcom/vungle/publisher/aiw;

    iput-object p2, p0, Lcom/vungle/publisher/aiw$2;->a:Lcom/vungle/publisher/ahu;

    iput-object p3, p0, Lcom/vungle/publisher/aiw$2;->b:Lcom/vungle/publisher/alz;

    iput-object p4, p0, Lcom/vungle/publisher/aiw$2;->c:Lcom/vungle/publisher/ajf;

    iput-object p5, p0, Lcom/vungle/publisher/aiw$2;->d:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p6, p0, Lcom/vungle/publisher/aiw$2;->e:Lcom/vungle/publisher/amd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 4

    .prologue
    .line 216
    iget-object v0, p0, Lcom/vungle/publisher/aiw$2;->a:Lcom/vungle/publisher/ahu;

    iget-object v0, v0, Lcom/vungle/publisher/ahu;->a:Lcom/vungle/publisher/akd;

    iget-boolean v0, v0, Lcom/vungle/publisher/akd;->b:Z

    if-eqz v0, :cond_0

    .line 274
    :goto_0
    return-void

    .line 220
    :cond_0
    new-instance v1, Lcom/vungle/publisher/aiw$2$1;

    invoke-direct {v1, p0}, Lcom/vungle/publisher/aiw$2$1;-><init>(Lcom/vungle/publisher/aiw$2;)V

    .line 272
    iget-object v0, p0, Lcom/vungle/publisher/aiw$2;->e:Lcom/vungle/publisher/amd;

    iget-object v2, v0, Lcom/vungle/publisher/amd;->a:Lcom/vungle/publisher/ajt;

    :cond_1
    invoke-virtual {v2}, Lcom/vungle/publisher/ajt;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ahv;

    sget-object v3, Lcom/vungle/publisher/aju;->a:Lcom/vungle/publisher/aju;

    if-ne v0, v3, :cond_3

    invoke-interface {v1}, Lcom/vungle/publisher/ahv;->b()V

    .line 273
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/vungle/publisher/aiw$2;->f:Lcom/vungle/publisher/aiw;

    iget-object v0, v0, Lcom/vungle/publisher/aiw;->a:Lcom/vungle/publisher/ahp;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ahp;->a(Lcom/vungle/publisher/ahu;)Lcom/vungle/publisher/ahv;

    goto :goto_0

    .line 272
    :cond_3
    invoke-virtual {v2, v0, v1}, Lcom/vungle/publisher/ajt;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/vungle/publisher/ahv;->b()V

    goto :goto_1
.end method
