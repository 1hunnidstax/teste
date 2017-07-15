.class final Lcom/vungle/publisher/aiw$4;
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
.field final synthetic a:Lcom/vungle/publisher/ahp;

.field final synthetic b:Lcom/vungle/publisher/ahu;

.field final synthetic c:Ljava/util/concurrent/atomic/AtomicLong;

.field final synthetic d:Lcom/vungle/publisher/ahs$a;

.field final synthetic e:Lcom/vungle/publisher/aie;

.field final synthetic f:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic g:Lcom/vungle/publisher/aiw;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/aiw;Lcom/vungle/publisher/ahp;Lcom/vungle/publisher/ahu;Ljava/util/concurrent/atomic/AtomicLong;Lcom/vungle/publisher/ahs$a;Lcom/vungle/publisher/aie;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .prologue
    .line 315
    iput-object p1, p0, Lcom/vungle/publisher/aiw$4;->g:Lcom/vungle/publisher/aiw;

    iput-object p2, p0, Lcom/vungle/publisher/aiw$4;->a:Lcom/vungle/publisher/ahp;

    iput-object p3, p0, Lcom/vungle/publisher/aiw$4;->b:Lcom/vungle/publisher/ahu;

    iput-object p4, p0, Lcom/vungle/publisher/aiw$4;->c:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p5, p0, Lcom/vungle/publisher/aiw$4;->d:Lcom/vungle/publisher/ahs$a;

    iput-object p6, p0, Lcom/vungle/publisher/aiw$4;->e:Lcom/vungle/publisher/aie;

    iput-object p7, p0, Lcom/vungle/publisher/aiw$4;->f:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final d()V
    .locals 3

    .prologue
    .line 318
    iget-object v0, p0, Lcom/vungle/publisher/aiw$4;->a:Lcom/vungle/publisher/ahp;

    new-instance v1, Lcom/vungle/publisher/aiw$4$1;

    iget-object v2, p0, Lcom/vungle/publisher/aiw$4;->b:Lcom/vungle/publisher/ahu;

    invoke-direct {v1, p0, v2}, Lcom/vungle/publisher/aiw$4$1;-><init>(Lcom/vungle/publisher/aiw$4;Lcom/vungle/publisher/ahu;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ahp;->a(Lcom/vungle/publisher/ahu;)Lcom/vungle/publisher/ahv;

    .line 350
    return-void
.end method
