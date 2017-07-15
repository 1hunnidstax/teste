.class final Lcom/vungle/publisher/aiw$3$1;
.super Lcom/vungle/publisher/ahu;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/aiw$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/ahu",
        "<",
        "Lcom/vungle/publisher/aho",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/vungle/publisher/ahu;

.field final synthetic c:Lcom/vungle/publisher/aiw$3;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/aiw$3;Lcom/vungle/publisher/ahu;Lcom/vungle/publisher/ahu;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/vungle/publisher/aiw$3$1;->c:Lcom/vungle/publisher/aiw$3;

    iput-object p3, p0, Lcom/vungle/publisher/aiw$3$1;->b:Lcom/vungle/publisher/ahu;

    invoke-direct {p0, p2}, Lcom/vungle/publisher/ahu;-><init>(Lcom/vungle/publisher/ahu;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/vungle/publisher/aiw$3$1;->b:Lcom/vungle/publisher/ahu;

    invoke-virtual {v0}, Lcom/vungle/publisher/ahu;->a()V

    .line 288
    return-void
.end method

.method public final a(Lcom/vungle/publisher/ahr;)V
    .locals 2

    .prologue
    .line 308
    const-wide v0, 0x7fffffffffffffffL

    invoke-interface {p1, v0, v1}, Lcom/vungle/publisher/ahr;->a(J)V

    .line 309
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 284
    check-cast p1, Lcom/vungle/publisher/aho;

    iget-object v0, p1, Lcom/vungle/publisher/aho;->a:Lcom/vungle/publisher/aho$a;

    sget-object v1, Lcom/vungle/publisher/aho$a;->c:Lcom/vungle/publisher/aho$a;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vungle/publisher/aiw$3$1;->c:Lcom/vungle/publisher/aiw$3;

    iget-object v0, v0, Lcom/vungle/publisher/aiw$3;->a:Lcom/vungle/publisher/aiw;

    iget-boolean v0, v0, Lcom/vungle/publisher/aiw;->b:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vungle/publisher/aiw$3$1;->b:Lcom/vungle/publisher/ahu;

    invoke-virtual {v0}, Lcom/vungle/publisher/ahu;->a()V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/vungle/publisher/aho;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vungle/publisher/aiw$3$1;->c:Lcom/vungle/publisher/aiw$3;

    iget-object v0, v0, Lcom/vungle/publisher/aiw$3;->a:Lcom/vungle/publisher/aiw;

    iget-boolean v0, v0, Lcom/vungle/publisher/aiw;->c:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vungle/publisher/aiw$3$1;->b:Lcom/vungle/publisher/ahu;

    iget-object v1, p1, Lcom/vungle/publisher/aho;->b:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ahu;->a(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/vungle/publisher/aiw$3$1;->b:Lcom/vungle/publisher/ahu;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/ahu;->a(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 292
    iget-object v0, p0, Lcom/vungle/publisher/aiw$3$1;->b:Lcom/vungle/publisher/ahu;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/ahu;->a(Ljava/lang/Throwable;)V

    .line 293
    return-void
.end method
