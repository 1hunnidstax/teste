.class final Lcom/vungle/publisher/op$d;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/op;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/op;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/op;)V
    .locals 0

    .prologue
    .line 645
    iput-object p1, p0, Lcom/vungle/publisher/op$d;->a:Lcom/vungle/publisher/op;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x32

    .line 649
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/op$d;->a:Lcom/vungle/publisher/op;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/op;->c(Z)V

    .line 650
    iget-object v0, p0, Lcom/vungle/publisher/op$d;->a:Lcom/vungle/publisher/op;

    invoke-virtual {v0}, Lcom/vungle/publisher/op;->c()V

    .line 651
    iget-object v0, p0, Lcom/vungle/publisher/op$d;->a:Lcom/vungle/publisher/op;

    invoke-static {v0}, Lcom/vungle/publisher/op;->e(Lcom/vungle/publisher/op;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    .line 652
    iget-object v0, p0, Lcom/vungle/publisher/op$d;->a:Lcom/vungle/publisher/op;

    iget v1, v0, Lcom/vungle/publisher/op;->j:I

    mul-int/lit16 v1, v1, 0x3e8

    add-int/lit16 v1, v1, -0x2ee

    iget v2, v0, Lcom/vungle/publisher/op;->l:I

    if-le v2, v1, :cond_0

    iget-object v1, v0, Lcom/vungle/publisher/op;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Lcom/vungle/publisher/op;->g:Landroid/widget/ImageView;

    const-string v1, "alpha"

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    aput v4, v2, v3

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x2ee

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 654
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/op$d;->a:Lcom/vungle/publisher/op;

    invoke-static {v0}, Lcom/vungle/publisher/op;->g(Lcom/vungle/publisher/op;)Lcom/vungle/publisher/oj;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/publisher/op$d;->a:Lcom/vungle/publisher/op;

    invoke-static {v1}, Lcom/vungle/publisher/op;->f(Lcom/vungle/publisher/op;)Landroid/widget/VideoView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/oj;->setCurrentTimeMillis(I)V

    .line 655
    iget-object v0, p0, Lcom/vungle/publisher/op$d;->a:Lcom/vungle/publisher/op;

    iget-object v0, v0, Lcom/vungle/publisher/op;->n:Lcom/vungle/publisher/ql;

    new-instance v1, Lcom/vungle/publisher/al;

    iget-object v2, p0, Lcom/vungle/publisher/op$d;->a:Lcom/vungle/publisher/op;

    invoke-static {v2}, Lcom/vungle/publisher/op;->h(Lcom/vungle/publisher/op;)I

    move-result v2

    invoke-direct {v1, v2}, Lcom/vungle/publisher/al;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 661
    iget-object v0, p0, Lcom/vungle/publisher/op$d;->a:Lcom/vungle/publisher/op;

    invoke-static {v0}, Lcom/vungle/publisher/op;->i(Lcom/vungle/publisher/op;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 662
    :goto_0
    return-void

    .line 657
    :catch_0
    move-exception v0

    .line 658
    :try_start_1
    const-string v1, "VungleAd"

    invoke-static {v1, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 661
    iget-object v0, p0, Lcom/vungle/publisher/op$d;->a:Lcom/vungle/publisher/op;

    invoke-static {v0}, Lcom/vungle/publisher/op;->i(Lcom/vungle/publisher/op;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/vungle/publisher/op$d;->a:Lcom/vungle/publisher/op;

    invoke-static {v1}, Lcom/vungle/publisher/op;->i(Lcom/vungle/publisher/op;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    throw v0
.end method
