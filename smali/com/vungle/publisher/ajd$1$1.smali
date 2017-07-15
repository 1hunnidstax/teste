.class final Lcom/vungle/publisher/ajd$1$1;
.super Lcom/vungle/publisher/ahu;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/ajd$1;->d()V
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
.field final synthetic b:Ljava/lang/Thread;

.field final synthetic c:Lcom/vungle/publisher/ajd$1;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/ajd$1;Lcom/vungle/publisher/ahu;Ljava/lang/Thread;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/vungle/publisher/ajd$1$1;->c:Lcom/vungle/publisher/ajd$1;

    iput-object p3, p0, Lcom/vungle/publisher/ajd$1$1;->b:Ljava/lang/Thread;

    invoke-direct {p0, p2}, Lcom/vungle/publisher/ahu;-><init>(Lcom/vungle/publisher/ahu;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/ajd$1$1;->c:Lcom/vungle/publisher/ajd$1;

    iget-object v0, v0, Lcom/vungle/publisher/ajd$1;->a:Lcom/vungle/publisher/ahu;

    invoke-virtual {v0}, Lcom/vungle/publisher/ahu;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    iget-object v0, p0, Lcom/vungle/publisher/ajd$1$1;->c:Lcom/vungle/publisher/ajd$1;

    iget-object v0, v0, Lcom/vungle/publisher/ajd$1;->b:Lcom/vungle/publisher/ahs$a;

    invoke-virtual {v0}, Lcom/vungle/publisher/ahs$a;->b()V

    .line 71
    return-void

    .line 70
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/vungle/publisher/ajd$1$1;->c:Lcom/vungle/publisher/ajd$1;

    iget-object v1, v1, Lcom/vungle/publisher/ajd$1;->b:Lcom/vungle/publisher/ahs$a;

    invoke-virtual {v1}, Lcom/vungle/publisher/ahs$a;->b()V

    throw v0
.end method

.method public final a(Lcom/vungle/publisher/ahr;)V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/vungle/publisher/ajd$1$1;->c:Lcom/vungle/publisher/ajd$1;

    iget-object v0, v0, Lcom/vungle/publisher/ajd$1;->a:Lcom/vungle/publisher/ahu;

    new-instance v1, Lcom/vungle/publisher/ajd$1$1$1;

    invoke-direct {v1, p0, p1}, Lcom/vungle/publisher/ajd$1$1$1;-><init>(Lcom/vungle/publisher/ajd$1$1;Lcom/vungle/publisher/ahr;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ahu;->a(Lcom/vungle/publisher/ahr;)V

    .line 91
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/vungle/publisher/ajd$1$1;->c:Lcom/vungle/publisher/ajd$1;

    iget-object v0, v0, Lcom/vungle/publisher/ajd$1;->a:Lcom/vungle/publisher/ahu;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/ahu;->a(Ljava/lang/Object;)V

    .line 54
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/ajd$1$1;->c:Lcom/vungle/publisher/ajd$1;

    iget-object v0, v0, Lcom/vungle/publisher/ajd$1;->a:Lcom/vungle/publisher/ahu;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/ahu;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    iget-object v0, p0, Lcom/vungle/publisher/ajd$1$1;->c:Lcom/vungle/publisher/ajd$1;

    iget-object v0, v0, Lcom/vungle/publisher/ajd$1;->b:Lcom/vungle/publisher/ahs$a;

    invoke-virtual {v0}, Lcom/vungle/publisher/ahs$a;->b()V

    .line 62
    return-void

    .line 61
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/vungle/publisher/ajd$1$1;->c:Lcom/vungle/publisher/ajd$1;

    iget-object v1, v1, Lcom/vungle/publisher/ajd$1;->b:Lcom/vungle/publisher/ahs$a;

    invoke-virtual {v1}, Lcom/vungle/publisher/ahs$a;->b()V

    throw v0
.end method
