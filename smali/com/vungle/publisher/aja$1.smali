.class final Lcom/vungle/publisher/aja$1;
.super Lcom/vungle/publisher/ahu;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/aja;->a(Lcom/vungle/publisher/ahu;)Lcom/vungle/publisher/ahu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/ahu",
        "<TT;>;"
    }
.end annotation


# instance fields
.field b:Z

.field final synthetic c:Lcom/vungle/publisher/ahs$a;

.field final synthetic d:Lcom/vungle/publisher/ahu;

.field final synthetic e:Lcom/vungle/publisher/aja;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/aja;Lcom/vungle/publisher/ahu;Lcom/vungle/publisher/ahs$a;Lcom/vungle/publisher/ahu;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/vungle/publisher/aja$1;->e:Lcom/vungle/publisher/aja;

    iput-object p3, p0, Lcom/vungle/publisher/aja$1;->c:Lcom/vungle/publisher/ahs$a;

    iput-object p4, p0, Lcom/vungle/publisher/aja$1;->d:Lcom/vungle/publisher/ahu;

    invoke-direct {p0, p2}, Lcom/vungle/publisher/ahu;-><init>(Lcom/vungle/publisher/ahu;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vungle/publisher/aja$1;->c:Lcom/vungle/publisher/ahs$a;

    new-instance v1, Lcom/vungle/publisher/aja$1$1;

    invoke-direct {v1, p0}, Lcom/vungle/publisher/aja$1$1;-><init>(Lcom/vungle/publisher/aja$1;)V

    iget-object v2, p0, Lcom/vungle/publisher/aja$1;->e:Lcom/vungle/publisher/aja;

    iget-wide v2, v2, Lcom/vungle/publisher/aja;->a:J

    iget-object v4, p0, Lcom/vungle/publisher/aja$1;->e:Lcom/vungle/publisher/aja;

    iget-object v4, v4, Lcom/vungle/publisher/aja;->b:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vungle/publisher/ahs$a;->a(Lcom/vungle/publisher/aie;JLjava/util/concurrent/TimeUnit;)Lcom/vungle/publisher/ahv;

    .line 64
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 82
    iget-object v0, p0, Lcom/vungle/publisher/aja$1;->c:Lcom/vungle/publisher/ahs$a;

    new-instance v1, Lcom/vungle/publisher/aja$1$3;

    invoke-direct {v1, p0, p1}, Lcom/vungle/publisher/aja$1$3;-><init>(Lcom/vungle/publisher/aja$1;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/vungle/publisher/aja$1;->e:Lcom/vungle/publisher/aja;

    iget-wide v2, v2, Lcom/vungle/publisher/aja;->a:J

    iget-object v4, p0, Lcom/vungle/publisher/aja$1;->e:Lcom/vungle/publisher/aja;

    iget-object v4, v4, Lcom/vungle/publisher/aja;->b:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/vungle/publisher/ahs$a;->a(Lcom/vungle/publisher/aie;JLjava/util/concurrent/TimeUnit;)Lcom/vungle/publisher/ahv;

    .line 92
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/vungle/publisher/aja$1;->c:Lcom/vungle/publisher/ahs$a;

    new-instance v1, Lcom/vungle/publisher/aja$1$2;

    invoke-direct {v1, p0, p1}, Lcom/vungle/publisher/aja$1$2;-><init>(Lcom/vungle/publisher/aja$1;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ahs$a;->a(Lcom/vungle/publisher/aie;)Lcom/vungle/publisher/ahv;

    .line 78
    return-void
.end method
