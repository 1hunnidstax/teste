.class final Lcom/vungle/publisher/ajb$b;
.super Lcom/vungle/publisher/ahu;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ajb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/vungle/publisher/ahu",
        "<TT;>;"
    }
.end annotation


# static fields
.field static final g:I


# instance fields
.field final b:Lcom/vungle/publisher/ajb$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/ajb$d",
            "<TT;>;"
        }
    .end annotation
.end field

.field final c:J

.field volatile d:Z

.field volatile e:Lcom/vungle/publisher/aka;

.field f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 836
    sget v0, Lcom/vungle/publisher/aka;->b:I

    div-int/lit8 v0, v0, 0x4

    sput v0, Lcom/vungle/publisher/ajb$b;->g:I

    return-void
.end method

.method public constructor <init>(Lcom/vungle/publisher/ajb$d;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/ajb$d",
            "<TT;>;J)V"
        }
    .end annotation

    .prologue
    .line 838
    invoke-direct {p0}, Lcom/vungle/publisher/ahu;-><init>()V

    .line 839
    iput-object p1, p0, Lcom/vungle/publisher/ajb$b;->b:Lcom/vungle/publisher/ajb$d;

    .line 840
    iput-wide p2, p0, Lcom/vungle/publisher/ajb$b;->c:J

    .line 841
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 859
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/publisher/ajb$b;->d:Z

    .line 860
    iget-object v0, p0, Lcom/vungle/publisher/ajb$b;->b:Lcom/vungle/publisher/ajb$d;

    invoke-virtual {v0}, Lcom/vungle/publisher/ajb$d;->f()V

    .line 861
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 849
    iget-object v3, p0, Lcom/vungle/publisher/ajb$b;->b:Lcom/vungle/publisher/ajb$d;

    iget-object v0, v3, Lcom/vungle/publisher/ajb$d;->e:Lcom/vungle/publisher/ajb$c;

    invoke-virtual {v0}, Lcom/vungle/publisher/ajb$c;->get()J

    move-result-wide v4

    cmp-long v0, v4, v6

    if-eqz v0, :cond_8

    monitor-enter v3

    :try_start_0
    iget-object v0, v3, Lcom/vungle/publisher/ajb$d;->e:Lcom/vungle/publisher/ajb$c;

    invoke-virtual {v0}, Lcom/vungle/publisher/ajb$c;->get()J

    move-result-wide v4

    iget-boolean v0, v3, Lcom/vungle/publisher/ajb$d;->k:Z

    if-nez v0, :cond_7

    cmp-long v0, v4, v6

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, v3, Lcom/vungle/publisher/ajb$d;->k:Z

    move v0, v2

    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/vungle/publisher/ajb$b;->e:Lcom/vungle/publisher/aka;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/vungle/publisher/aka;->f()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    :try_start_1
    iget-object v0, v3, Lcom/vungle/publisher/ajb$d;->b:Lcom/vungle/publisher/ahu;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/ahu;->a(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_2
    const-wide v6, 0x7fffffffffffffffL

    cmp-long v0, v4, v6

    if-eqz v0, :cond_1

    :try_start_2
    iget-object v0, v3, Lcom/vungle/publisher/ajb$d;->e:Lcom/vungle/publisher/ajb$c;

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v4, v5}, Lcom/vungle/publisher/ajb$c;->addAndGet(J)J

    :cond_1
    const-wide/16 v4, 0x1

    invoke-virtual {p0, v4, v5}, Lcom/vungle/publisher/ajb$b;->b(J)V

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-boolean v0, v3, Lcom/vungle/publisher/ajb$d;->l:Z

    if-nez v0, :cond_4

    const/4 v0, 0x0

    iput-boolean v0, v3, Lcom/vungle/publisher/ajb$d;->k:Z

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 850
    :goto_3
    return-void

    .line 849
    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_5
    iget-boolean v6, v3, Lcom/vungle/publisher/ajb$d;->c:Z

    if-nez v6, :cond_3

    invoke-static {v0}, Lcom/vungle/publisher/ahx;->b(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    iget-object v1, p0, Lcom/vungle/publisher/ahu;->a:Lcom/vungle/publisher/akd;

    invoke-virtual {v1}, Lcom/vungle/publisher/akd;->b()V

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/ajb$b;->a(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    move v1, v2

    :goto_4
    if-nez v1, :cond_2

    monitor-enter v3

    const/4 v1, 0x0

    :try_start_7
    iput-boolean v1, v3, Lcom/vungle/publisher/ajb$d;->k:Z

    monitor-exit v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :cond_2
    throw v0

    :cond_3
    :try_start_8
    invoke-virtual {v3}, Lcom/vungle/publisher/ajb$d;->e()Ljava/util/Queue;

    move-result-object v6

    invoke-interface {v6, v0}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_4

    :cond_4
    const/4 v0, 0x0

    :try_start_9
    iput-boolean v0, v3, Lcom/vungle/publisher/ajb$d;->l:Z

    monitor-exit v3
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    invoke-virtual {v3}, Lcom/vungle/publisher/ajb$d;->g()V

    goto :goto_3

    :catchall_3
    move-exception v0

    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catchall_4
    move-exception v0

    :try_start_c
    monitor-exit v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    throw v0

    :cond_5
    invoke-static {p0, p1}, Lcom/vungle/publisher/ajb$d;->a(Lcom/vungle/publisher/ajb$b;Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/vungle/publisher/ajb$d;->g()V

    goto :goto_3

    :cond_6
    invoke-static {p0, p1}, Lcom/vungle/publisher/ajb$d;->a(Lcom/vungle/publisher/ajb$b;Ljava/lang/Object;)V

    invoke-virtual {v3}, Lcom/vungle/publisher/ajb$d;->f()V

    goto :goto_3

    :cond_7
    move v0, v1

    goto :goto_0

    :cond_8
    move-wide v4, v6

    move v0, v1

    goto :goto_1
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 853
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/publisher/ajb$b;->d:Z

    .line 854
    iget-object v0, p0, Lcom/vungle/publisher/ajb$b;->b:Lcom/vungle/publisher/ajb$d;

    invoke-virtual {v0}, Lcom/vungle/publisher/ajb$d;->e()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 855
    iget-object v0, p0, Lcom/vungle/publisher/ajb$b;->b:Lcom/vungle/publisher/ajb$d;

    invoke-virtual {v0}, Lcom/vungle/publisher/ajb$d;->f()V

    .line 856
    return-void
.end method

.method public final b(J)V
    .locals 3

    .prologue
    .line 863
    iget v0, p0, Lcom/vungle/publisher/ajb$b;->f:I

    long-to-int v1, p1

    sub-int/2addr v0, v1

    .line 864
    sget v1, Lcom/vungle/publisher/ajb$b;->g:I

    if-le v0, v1, :cond_1

    .line 865
    iput v0, p0, Lcom/vungle/publisher/ajb$b;->f:I

    .line 873
    :cond_0
    :goto_0
    return-void

    .line 868
    :cond_1
    sget v1, Lcom/vungle/publisher/aka;->b:I

    iput v1, p0, Lcom/vungle/publisher/ajb$b;->f:I

    .line 869
    sget v1, Lcom/vungle/publisher/aka;->b:I

    sub-int v0, v1, v0

    .line 870
    if-lez v0, :cond_0

    .line 871
    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/vungle/publisher/ajb$b;->a(J)V

    goto :goto_0
.end method

.method public final k_()V
    .locals 2

    .prologue
    .line 844
    sget v0, Lcom/vungle/publisher/aka;->b:I

    iput v0, p0, Lcom/vungle/publisher/ajb$b;->f:I

    .line 845
    sget v0, Lcom/vungle/publisher/aka;->b:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/vungle/publisher/ajb$b;->a(J)V

    .line 846
    return-void
.end method
