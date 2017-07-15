.class final Lcom/vungle/publisher/ajp$c;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ahv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ajp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field final a:Lcom/vungle/publisher/ajp;

.field final b:Lcom/vungle/publisher/akd;


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/ajp;Lcom/vungle/publisher/akd;)V
    .locals 0

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 184
    iput-object p1, p0, Lcom/vungle/publisher/ajp$c;->a:Lcom/vungle/publisher/ajp;

    .line 185
    iput-object p2, p0, Lcom/vungle/publisher/ajp$c;->b:Lcom/vungle/publisher/akd;

    .line 186
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 4

    .prologue
    .line 195
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vungle/publisher/ajp$c;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 196
    iget-object v1, p0, Lcom/vungle/publisher/ajp$c;->b:Lcom/vungle/publisher/akd;

    iget-object v0, p0, Lcom/vungle/publisher/ajp$c;->a:Lcom/vungle/publisher/ajp;

    iget-boolean v2, v1, Lcom/vungle/publisher/akd;->b:Z

    if-nez v2, :cond_1

    monitor-enter v1

    :try_start_0
    iget-object v2, v1, Lcom/vungle/publisher/akd;->a:Ljava/util/List;

    iget-boolean v3, v1, Lcom/vungle/publisher/akd;->b:Z

    if-nez v3, :cond_0

    if-nez v2, :cond_2

    :cond_0
    monitor-exit v1

    .line 198
    :cond_1
    :goto_0
    return-void

    .line 196
    :cond_2
    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    invoke-interface {v0}, Lcom/vungle/publisher/ahv;->b()V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/vungle/publisher/ajp$c;->a:Lcom/vungle/publisher/ajp;

    iget-object v0, v0, Lcom/vungle/publisher/ajp;->a:Lcom/vungle/publisher/akd;

    iget-boolean v0, v0, Lcom/vungle/publisher/akd;->b:Z

    return v0
.end method
