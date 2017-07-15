.class public final Lcom/vungle/publisher/op;
.super Lcom/vungle/publisher/ms;
.source "vungle"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/op$a;,
        Lcom/vungle/publisher/op$c;,
        Lcom/vungle/publisher/op$d;,
        Lcom/vungle/publisher/op$b;
    }
.end annotation


# instance fields
.field private A:Landroid/widget/VideoView;

.field private B:Landroid/view/ViewGroup;

.field private C:Landroid/graphics/Bitmap;

.field private D:Landroid/graphics/Bitmap;

.field private final E:Landroid/os/Handler;

.field private final F:Ljava/lang/Runnable;

.field private G:Lcom/vungle/publisher/op$c;

.field private H:Ljava/lang/String;

.field private I:I

.field private J:Z

.field private K:I

.field private L:Z

.field private M:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private N:I

.field e:Lcom/vungle/publisher/jj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/jj",
            "<*>;"
        }
    .end annotation
.end field

.field f:Landroid/widget/ImageView;

.field g:Landroid/widget/ImageView;

.field h:Landroid/view/TouchDelegate;

.field i:Ljava/util/concurrent/atomic/AtomicBoolean;

.field j:I

.field k:Ljava/util/concurrent/atomic/AtomicBoolean;

.field l:I

.field m:Lcom/vungle/publisher/nb;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field n:Lcom/vungle/publisher/ql;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field o:Lcom/vungle/publisher/op$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field p:Lcom/vungle/publisher/og$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field q:Lcom/vungle/publisher/oj$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field r:Lcom/vungle/publisher/nx$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field s:Lcom/vungle/publisher/pn;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field t:Lcom/vungle/publisher/agw;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field u:Lcom/vungle/publisher/by;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field v:Lcom/vungle/publisher/op$c$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field w:Lcom/vungle/publisher/lr;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private x:Lcom/vungle/publisher/oj;

.field private y:Lcom/vungle/publisher/nx;

.field private z:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/vungle/publisher/ms;-><init>()V

    .line 89
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/op;->E:Landroid/os/Handler;

    .line 90
    new-instance v0, Lcom/vungle/publisher/op$d;

    invoke-direct {v0, p0}, Lcom/vungle/publisher/op$d;-><init>(Lcom/vungle/publisher/op;)V

    iput-object v0, p0, Lcom/vungle/publisher/op;->F:Ljava/lang/Runnable;

    .line 97
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/op;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 100
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/op;->M:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 101
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/op;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 138
    return-void
.end method

.method static synthetic a(Lcom/vungle/publisher/op;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/vungle/publisher/op;->H:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic a(Lcom/vungle/publisher/op;)Z
    .locals 1

    .prologue
    .line 60
    iget-boolean v0, p0, Lcom/vungle/publisher/op;->J:Z

    return v0
.end method

.method static synthetic b(Lcom/vungle/publisher/op;)V
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/vungle/publisher/op;->f(Z)V

    return-void
.end method

.method static synthetic c(Lcom/vungle/publisher/op;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/vungle/publisher/op;->f()V

    return-void
.end method

.method static synthetic d(Lcom/vungle/publisher/op;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vungle/publisher/op;->M:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private d()V
    .locals 2

    .prologue
    .line 443
    iget-object v0, p0, Lcom/vungle/publisher/op;->E:Landroid/os/Handler;

    iget-object v1, p0, Lcom/vungle/publisher/op;->F:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 444
    return-void
.end method

.method private d(Z)V
    .locals 4

    .prologue
    .line 535
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/vungle/publisher/op;->H:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 536
    :goto_0
    const-string v2, "VungleAd"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v1, "cta button "

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const-string v1, "enabled"

    :goto_1
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    iput-boolean v0, p0, Lcom/vungle/publisher/op;->J:Z

    .line 538
    iget-object v1, p0, Lcom/vungle/publisher/op;->f:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/vungle/publisher/op;->C:Landroid/graphics/Bitmap;

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 539
    return-void

    .line 535
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 536
    :cond_1
    const-string v1, "disabled"

    goto :goto_1

    .line 538
    :cond_2
    iget-object v0, p0, Lcom/vungle/publisher/op;->D:Landroid/graphics/Bitmap;

    goto :goto_2
.end method

.method static synthetic e(Lcom/vungle/publisher/op;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vungle/publisher/op;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private e()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 447
    iget-object v2, p0, Lcom/vungle/publisher/op;->A:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v2

    if-nez v2, :cond_0

    .line 448
    iget-object v2, p0, Lcom/vungle/publisher/op;->a:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/vungle/publisher/op;->a:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    :goto_0
    if-eqz v2, :cond_2

    .line 449
    const-string v0, "VungleAd"

    const-string v1, "Confirm dialog showing. Starting video briefly."

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    iget-object v0, p0, Lcom/vungle/publisher/op;->A:Landroid/widget/VideoView;

    iget v1, p0, Lcom/vungle/publisher/op;->N:I

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->seekTo(I)V

    .line 451
    iget-object v0, p0, Lcom/vungle/publisher/op;->A:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 452
    iget-object v0, p0, Lcom/vungle/publisher/op;->A:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    .line 453
    iget v0, p0, Lcom/vungle/publisher/op;->N:I

    iput v0, p0, Lcom/vungle/publisher/op;->l:I

    .line 469
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v2, v0

    .line 448
    goto :goto_0

    .line 456
    :cond_2
    const-string v2, "VungleAd"

    const-string v3, "Starting video"

    invoke-static {v2, v3}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    iget-boolean v2, p0, Lcom/vungle/publisher/op;->L:Z

    if-nez v2, :cond_3

    move v0, v1

    .line 458
    :cond_3
    iput-boolean v1, p0, Lcom/vungle/publisher/op;->L:Z

    .line 459
    iget-object v1, p0, Lcom/vungle/publisher/op;->A:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->requestFocus()Z

    .line 460
    iget-object v1, p0, Lcom/vungle/publisher/op;->A:Landroid/widget/VideoView;

    iget v2, p0, Lcom/vungle/publisher/op;->N:I

    invoke-virtual {v1, v2}, Landroid/widget/VideoView;->seekTo(I)V

    .line 461
    iget-object v1, p0, Lcom/vungle/publisher/op;->A:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->start()V

    .line 462
    iget v1, p0, Lcom/vungle/publisher/op;->N:I

    iput v1, p0, Lcom/vungle/publisher/op;->l:I

    .line 463
    invoke-virtual {p0}, Lcom/vungle/publisher/op;->c()V

    .line 464
    iget-object v1, p0, Lcom/vungle/publisher/op;->E:Landroid/os/Handler;

    iget-object v2, p0, Lcom/vungle/publisher/op;->F:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 465
    if-eqz v0, :cond_0

    .line 466
    iget-object v0, p0, Lcom/vungle/publisher/op;->n:Lcom/vungle/publisher/ql;

    new-instance v1, Lcom/vungle/publisher/ar;

    invoke-direct {v1}, Lcom/vungle/publisher/ar;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private e(Z)V
    .locals 1

    .prologue
    .line 542
    iget-boolean v0, p0, Lcom/vungle/publisher/op;->J:Z

    if-eq p1, v0, :cond_0

    .line 543
    invoke-direct {p0, p1}, Lcom/vungle/publisher/op;->d(Z)V

    .line 545
    :cond_0
    return-void
.end method

.method static synthetic f(Lcom/vungle/publisher/op;)Landroid/widget/VideoView;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vungle/publisher/op;->A:Landroid/widget/VideoView;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 570
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/op;->b(Z)V

    .line 571
    iget-object v0, p0, Lcom/vungle/publisher/op;->A:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 572
    iget-object v0, p0, Lcom/vungle/publisher/op;->n:Lcom/vungle/publisher/ql;

    new-instance v1, Lcom/vungle/publisher/av;

    invoke-direct {v1}, Lcom/vungle/publisher/av;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V

    .line 573
    return-void
.end method

.method private f(Z)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 576
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/vungle/publisher/op;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/vungle/publisher/op;->b:Lcom/vungle/publisher/n;

    invoke-interface {v0}, Lcom/vungle/publisher/n;->isBackButtonImmediatelyEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 577
    :goto_1
    iget-object v0, p0, Lcom/vungle/publisher/op;->M:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 578
    const-string v0, "VungleAd"

    const-string v1, "exiting video"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    iget-object v0, p0, Lcom/vungle/publisher/op;->b:Lcom/vungle/publisher/n;

    invoke-interface {v0}, Lcom/vungle/publisher/n;->isIncentivized()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 582
    invoke-virtual {p0}, Lcom/vungle/publisher/op;->onPause()V

    .line 583
    iget-object v0, p0, Lcom/vungle/publisher/op;->a:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/vungle/publisher/op;->a:Landroid/app/AlertDialog;

    :goto_2
    iput-object v0, p0, Lcom/vungle/publisher/op;->a:Landroid/app/AlertDialog;

    .line 584
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 592
    :cond_1
    :goto_3
    return-void

    :cond_2
    move v0, v1

    .line 576
    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/vungle/publisher/op;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 583
    :cond_4
    iget-object v0, p0, Lcom/vungle/publisher/op;->d:Lcom/vungle/publisher/mz;

    invoke-virtual {p0}, Lcom/vungle/publisher/op;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/publisher/op;->b:Lcom/vungle/publisher/n;

    new-instance v3, Lcom/vungle/publisher/op$4;

    invoke-direct {v3, p0}, Lcom/vungle/publisher/op$4;-><init>(Lcom/vungle/publisher/op;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/vungle/publisher/mz;->a(Landroid/content/Context;Lcom/vungle/publisher/n;Lcom/vungle/publisher/mz$a;)Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_2

    .line 587
    :cond_5
    iget-object v0, p0, Lcom/vungle/publisher/op;->g:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 588
    invoke-direct {p0}, Lcom/vungle/publisher/op;->f()V

    goto :goto_3
.end method

.method static synthetic g(Lcom/vungle/publisher/op;)Lcom/vungle/publisher/oj;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vungle/publisher/op;->x:Lcom/vungle/publisher/oj;

    return-object v0
.end method

.method static synthetic h(Lcom/vungle/publisher/op;)I
    .locals 1

    .prologue
    .line 60
    iget v0, p0, Lcom/vungle/publisher/op;->l:I

    return v0
.end method

.method static synthetic i(Lcom/vungle/publisher/op;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vungle/publisher/op;->E:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic j(Lcom/vungle/publisher/op;)Lcom/vungle/publisher/nx;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vungle/publisher/op;->y:Lcom/vungle/publisher/nx;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 510
    const-string v0, "VungleAd"

    const-string v1, "back button pressed"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/vungle/publisher/op;->f(Z)V

    .line 512
    return-void
.end method

.method public final a(Z)V
    .locals 0

    .prologue
    .line 425
    invoke-super {p0, p1}, Lcom/vungle/publisher/ms;->a(Z)V

    .line 426
    if-eqz p1, :cond_0

    .line 427
    invoke-virtual {p0}, Lcom/vungle/publisher/op;->onResume()V

    .line 432
    :goto_0
    return-void

    .line 430
    :cond_0
    invoke-virtual {p0}, Lcom/vungle/publisher/op;->onPause()V

    goto :goto_0
.end method

.method public final a(I)Z
    .locals 2

    .prologue
    .line 596
    const/16 v0, 0x18

    if-ne p1, v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/vungle/publisher/op;->w:Lcom/vungle/publisher/lr;

    invoke-virtual {v0}, Lcom/vungle/publisher/lr;->b()I

    move-result v0

    if-nez v0, :cond_0

    .line 598
    const-string v0, "VungleAd"

    const-string v1, "volume up - unmuting"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    iget-object v0, p0, Lcom/vungle/publisher/op;->w:Lcom/vungle/publisher/lr;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/lr;->a(Z)V

    .line 602
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 668
    const-string v0, "videoFragment"

    return-object v0
.end method

.method final b(Z)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 481
    invoke-direct {p0}, Lcom/vungle/publisher/op;->d()V

    .line 482
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/op;->c(Z)V

    .line 483
    iget-object v1, p0, Lcom/vungle/publisher/op;->n:Lcom/vungle/publisher/ql;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/vungle/publisher/aa;

    iget v2, p0, Lcom/vungle/publisher/op;->l:I

    invoke-direct {v0, v2}, Lcom/vungle/publisher/aa;-><init>(I)V

    :goto_0
    invoke-virtual {v1, v0}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V

    .line 485
    iput-boolean v3, p0, Lcom/vungle/publisher/op;->L:Z

    iget-object v0, p0, Lcom/vungle/publisher/op;->A:Landroid/widget/VideoView;

    invoke-virtual {v0, v3}, Landroid/widget/VideoView;->seekTo(I)V

    iput v3, p0, Lcom/vungle/publisher/op;->l:I

    iput v3, p0, Lcom/vungle/publisher/op;->N:I

    iget-object v0, p0, Lcom/vungle/publisher/op;->M:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 486
    return-void

    .line 483
    :cond_0
    new-instance v0, Lcom/vungle/publisher/ad;

    iget v2, p0, Lcom/vungle/publisher/op;->l:I

    invoke-direct {v0, v2}, Lcom/vungle/publisher/ad;-><init>(I)V

    goto :goto_0
.end method

.method final c()V
    .locals 6

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 519
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/vungle/publisher/op;->e:Lcom/vungle/publisher/jj;

    iget-object v3, v3, Lcom/vungle/publisher/jj;->h:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 521
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/vungle/publisher/op;->e:Lcom/vungle/publisher/jj;

    iget-object v3, v3, Lcom/vungle/publisher/jj;->i:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 522
    iget-object v2, p0, Lcom/vungle/publisher/op;->f:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getAlpha()F

    move-result v2

    cmpl-float v2, v2, v5

    if-ltz v2, :cond_1

    :goto_0
    invoke-direct {p0, v0}, Lcom/vungle/publisher/op;->e(Z)V

    .line 532
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 522
    goto :goto_0

    .line 524
    :cond_2
    iget v2, p0, Lcom/vungle/publisher/op;->K:I

    mul-int/lit16 v2, v2, 0x3e8

    add-int/lit16 v2, v2, -0x2ee

    .line 525
    iget v3, p0, Lcom/vungle/publisher/op;->l:I

    if-le v3, v2, :cond_3

    iget-object v2, p0, Lcom/vungle/publisher/op;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 526
    iget-object v2, p0, Lcom/vungle/publisher/op;->f:Landroid/widget/ImageView;

    const-string v3, "alpha"

    new-array v4, v0, [F

    aput v5, v4, v1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v4, 0x2ee

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->start()V

    .line 528
    :cond_3
    iget v2, p0, Lcom/vungle/publisher/op;->l:I

    iget v3, p0, Lcom/vungle/publisher/op;->I:I

    mul-int/lit16 v3, v3, 0x3e8

    if-lt v2, v3, :cond_4

    :goto_2
    invoke-direct {p0, v0}, Lcom/vungle/publisher/op;->e(Z)V

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_2
.end method

.method final c(Z)V
    .locals 2

    .prologue
    .line 490
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/vungle/publisher/op;->A:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    .line 491
    :goto_0
    iget v1, p0, Lcom/vungle/publisher/op;->l:I

    if-le v0, v1, :cond_0

    .line 492
    iput v0, p0, Lcom/vungle/publisher/op;->l:I

    .line 494
    :cond_0
    return-void

    .line 490
    :cond_1
    iget-object v0, p0, Lcom/vungle/publisher/op;->A:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    goto :goto_0
.end method

.method public final onActivityCreated(Landroid/os/Bundle;)V
    .locals 12
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 150
    :try_start_0
    invoke-super {p0, p1}, Lcom/vungle/publisher/ms;->onActivityCreated(Landroid/os/Bundle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 152
    :try_start_1
    invoke-static {}, Lcom/vungle/publisher/inject/Injector;->b()Lcom/vungle/publisher/sc;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/vungle/publisher/sc;->a(Lcom/vungle/publisher/op;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 156
    :goto_0
    if-eqz p1, :cond_0

    :try_start_2
    const-string v0, "VungleAd"

    const-string v3, "Restoring saved state"

    invoke-static {v0, v3}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "adConfig"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/n;

    iput-object v0, p0, Lcom/vungle/publisher/op;->b:Lcom/vungle/publisher/n;

    const-string v0, "adStarted"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/vungle/publisher/op;->L:Z

    const-string v0, "currentVideoPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/vungle/publisher/op;->N:I

    .line 157
    :cond_0
    iget-boolean v0, p0, Lcom/vungle/publisher/op;->L:Z

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/vungle/publisher/op;->n:Lcom/vungle/publisher/ql;

    new-instance v3, Lcom/vungle/publisher/ax;

    invoke-direct {v3}, Lcom/vungle/publisher/ax;-><init>()V

    invoke-virtual {v0, v3}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V

    .line 160
    :cond_1
    invoke-virtual {p0}, Lcom/vungle/publisher/op;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 161
    iget-object v0, p0, Lcom/vungle/publisher/op;->v:Lcom/vungle/publisher/op$c$a;

    iget-object v4, v0, Lcom/vungle/publisher/op$c$a;->a:Lcom/vungle/publisher/op$c;

    iput-object p0, v4, Lcom/vungle/publisher/op$c;->a:Lcom/vungle/publisher/op;

    iget-object v0, v0, Lcom/vungle/publisher/op$c$a;->a:Lcom/vungle/publisher/op$c;

    iput-object v0, p0, Lcom/vungle/publisher/op;->G:Lcom/vungle/publisher/op$c;

    .line 163
    new-instance v4, Landroid/widget/VideoView;

    invoke-direct {v4, v3}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/vungle/publisher/op;->A:Landroid/widget/VideoView;

    .line 164
    new-instance v5, Lcom/vungle/publisher/oa;

    invoke-direct {v5, v3}, Lcom/vungle/publisher/oa;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/vungle/publisher/op;->g:Landroid/widget/ImageView;

    .line 165
    iget-object v0, p0, Lcom/vungle/publisher/op;->r:Lcom/vungle/publisher/nx$a;

    iget-object v6, p0, Lcom/vungle/publisher/op;->b:Lcom/vungle/publisher/n;

    invoke-interface {v6}, Lcom/vungle/publisher/n;->isSoundEnabled()Z

    move-result v6

    new-instance v7, Lcom/vungle/publisher/nx;

    iget-object v8, v0, Lcom/vungle/publisher/nx$a;->a:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Lcom/vungle/publisher/nx;-><init>(Landroid/content/Context;B)V

    iget-object v8, v0, Lcom/vungle/publisher/nx$a;->b:Lcom/vungle/publisher/agw;

    sget-object v9, Lcom/vungle/publisher/rb$a;->d:Lcom/vungle/publisher/rb$a;

    invoke-virtual {v8, v9}, Lcom/vungle/publisher/agw;->a(Lcom/vungle/publisher/rb$a;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vungle/publisher/nx;->a(Lcom/vungle/publisher/nx;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v8, v0, Lcom/vungle/publisher/nx$a;->b:Lcom/vungle/publisher/agw;

    sget-object v9, Lcom/vungle/publisher/rb$a;->e:Lcom/vungle/publisher/rb$a;

    invoke-virtual {v8, v9}, Lcom/vungle/publisher/agw;->a(Lcom/vungle/publisher/rb$a;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/vungle/publisher/nx;->b(Lcom/vungle/publisher/nx;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v8, v0, Lcom/vungle/publisher/nx$a;->c:Lcom/vungle/publisher/lr;

    invoke-static {v7, v8}, Lcom/vungle/publisher/nx;->a(Lcom/vungle/publisher/nx;Lcom/vungle/publisher/lr;)Lcom/vungle/publisher/lr;

    invoke-static {v7, v6}, Lcom/vungle/publisher/nx;->a(Lcom/vungle/publisher/nx;Z)Z

    iget-object v6, v0, Lcom/vungle/publisher/nx$a;->d:Lcom/vungle/publisher/ql;

    invoke-static {v7, v6}, Lcom/vungle/publisher/nx;->a(Lcom/vungle/publisher/nx;Lcom/vungle/publisher/ql;)Lcom/vungle/publisher/ql;

    new-instance v6, Lcom/vungle/publisher/nx$a$1;

    invoke-direct {v6, v0, v7}, Lcom/vungle/publisher/nx$a$1;-><init>(Lcom/vungle/publisher/nx$a;Lcom/vungle/publisher/nx;)V

    invoke-virtual {v7, v6}, Lcom/vungle/publisher/nx;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v7, p0, Lcom/vungle/publisher/op;->y:Lcom/vungle/publisher/nx;

    .line 166
    iget-object v0, p0, Lcom/vungle/publisher/op;->p:Lcom/vungle/publisher/og$a;

    const/4 v6, 0x0

    invoke-virtual {v0, v3, v6}, Lcom/vungle/publisher/og$a;->a(Landroid/content/Context;Z)Lcom/vungle/publisher/og;

    move-result-object v6

    .line 167
    iget-object v0, p0, Lcom/vungle/publisher/op;->q:Lcom/vungle/publisher/oj$a;

    new-instance v8, Lcom/vungle/publisher/oj;

    iget-object v9, v0, Lcom/vungle/publisher/oj$a;->a:Landroid/content/Context;

    const/4 v10, 0x0

    invoke-direct {v8, v9, v10}, Lcom/vungle/publisher/oj;-><init>(Landroid/content/Context;B)V

    invoke-static {v8}, Lcom/vungle/publisher/oj;->a(Lcom/vungle/publisher/oj;)I

    iget-object v0, v0, Lcom/vungle/publisher/oj$a;->b:Lcom/vungle/publisher/nb;

    const/4 v9, 0x2

    invoke-virtual {v0, v9}, Lcom/vungle/publisher/nb;->a(I)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v8, v0}, Lcom/vungle/publisher/oj;->a(Lcom/vungle/publisher/oj;I)I

    iput-object v8, p0, Lcom/vungle/publisher/op;->x:Lcom/vungle/publisher/oj;

    .line 169
    iget-object v0, p0, Lcom/vungle/publisher/op;->B:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 171
    invoke-virtual {v4}, Landroid/widget/VideoView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 172
    const/4 v9, -0x1

    iput v9, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 173
    const/4 v9, -0x1

    iput v9, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 174
    const/16 v9, 0xd

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 177
    new-instance v9, Landroid/widget/RelativeLayout;

    invoke-direct {v9, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 178
    iget-object v0, p0, Lcom/vungle/publisher/op;->B:Landroid/view/ViewGroup;

    invoke-virtual {v0, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 179
    invoke-virtual {v9}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 180
    const/4 v10, -0x1

    iput v10, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 181
    const/4 v10, -0x2

    iput v10, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 182
    const/16 v10, 0xa

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 185
    invoke-virtual {v9, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 186
    iget-object v0, p0, Lcom/vungle/publisher/op;->t:Lcom/vungle/publisher/agw;

    sget-object v10, Lcom/vungle/publisher/rb$a;->a:Lcom/vungle/publisher/rb$a;

    invoke-virtual {v0, v5, v10}, Lcom/vungle/publisher/agw;->a(Landroid/widget/ImageView;Lcom/vungle/publisher/rb$a;)V

    .line 187
    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 188
    const/16 v10, 0x9

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 189
    const/16 v10, 0xf

    invoke-virtual {v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 192
    invoke-virtual {v9, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 193
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lcom/vungle/publisher/og;->setVisibility(I)V

    .line 194
    invoke-virtual {v6}, Lcom/vungle/publisher/og;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 195
    const/16 v6, 0xb

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 196
    const/16 v6, 0xf

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 199
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v6, -0x1

    .line 200
    invoke-virtual {v8}, Lcom/vungle/publisher/oj;->getProgressBarHeight()I

    move-result v10

    invoke-direct {v0, v6, v10}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 201
    iget-object v6, p0, Lcom/vungle/publisher/op;->B:Landroid/view/ViewGroup;

    invoke-virtual {v6, v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    const/16 v6, 0xc

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 205
    new-instance v6, Landroid/widget/RelativeLayout;

    invoke-direct {v6, v3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/vungle/publisher/op;->z:Landroid/widget/RelativeLayout;

    .line 206
    iget-object v0, p0, Lcom/vungle/publisher/op;->B:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 207
    invoke-virtual {v6}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 208
    const/4 v3, -0x1

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 209
    const/4 v3, -0x2

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 210
    const/4 v3, 0x2

    const/4 v8, 0x1

    invoke-virtual {v0, v3, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 213
    invoke-virtual {v6, v7}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 214
    invoke-virtual {v7}, Lcom/vungle/publisher/nx;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 215
    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 216
    const/16 v3, 0xf

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 219
    iget-object v0, p0, Lcom/vungle/publisher/op;->m:Lcom/vungle/publisher/nb;

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/vungle/publisher/nb;->a(I)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 220
    iget-object v3, p0, Lcom/vungle/publisher/op;->m:Lcom/vungle/publisher/nb;

    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Lcom/vungle/publisher/nb;->a(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 221
    invoke-virtual {v9, v0, v3, v0, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 222
    invoke-virtual {v6, v0, v3, v0, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 223
    iget-object v0, p0, Lcom/vungle/publisher/op;->g:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/vungle/publisher/op;->y:Lcom/vungle/publisher/nx;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 225
    const-string v0, "VungleAd"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "video play URI = "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/vungle/publisher/op;->e:Lcom/vungle/publisher/jj;

    invoke-virtual {v6}, Lcom/vungle/publisher/jj;->q()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/vungle/publisher/op;->e:Lcom/vungle/publisher/jj;

    invoke-virtual {v0}, Lcom/vungle/publisher/jj;->q()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 228
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/vungle/publisher/op;->e:Lcom/vungle/publisher/jj;

    iget-object v3, v3, Lcom/vungle/publisher/jj;->h:Ljava/lang/Boolean;

    invoke-virtual {v0, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/vungle/publisher/op;->t:Lcom/vungle/publisher/agw;

    sget-object v3, Lcom/vungle/publisher/rb$a;->b:Lcom/vungle/publisher/rb$a;

    invoke-virtual {v0, v3}, Lcom/vungle/publisher/agw;->a(Lcom/vungle/publisher/rb$a;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/op;->C:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/vungle/publisher/op;->t:Lcom/vungle/publisher/agw;

    sget-object v3, Lcom/vungle/publisher/rb$a;->c:Lcom/vungle/publisher/rb$a;

    invoke-virtual {v0, v3}, Lcom/vungle/publisher/agw;->a(Lcom/vungle/publisher/rb$a;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/op;->D:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/vungle/publisher/op;->e:Lcom/vungle/publisher/jj;

    iget-object v3, v0, Lcom/vungle/publisher/jj;->f:Ljava/lang/Integer;

    iget-object v0, p0, Lcom/vungle/publisher/op;->e:Lcom/vungle/publisher/jj;

    iget-object v0, v0, Lcom/vungle/publisher/jj;->j:Ljava/lang/Integer;

    if-nez v3, :cond_4

    if-eqz v0, :cond_d

    const-string v3, "VungleAd"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "overriding cta enabled from null to "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v0

    :goto_1
    const-string v6, "VungleAd"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "cta shown at "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " seconds; enabled at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " seconds"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_6

    move v0, v2

    :goto_2
    iput v0, p0, Lcom/vungle/publisher/op;->I:I

    if-nez v3, :cond_7

    move v0, v2

    :goto_3
    iput v0, p0, Lcom/vungle/publisher/op;->K:I

    new-instance v3, Lcom/vungle/publisher/oa;

    invoke-virtual {p0}, Lcom/vungle/publisher/op;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/vungle/publisher/oa;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/vungle/publisher/op;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/vungle/publisher/op;->z:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v6, 0x9

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v6, 0xf

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/vungle/publisher/op;->e:Lcom/vungle/publisher/jj;

    iget-object v0, v0, Lcom/vungle/publisher/jj;->e:Ljava/lang/Float;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_8

    :cond_2
    const-string v0, "VungleAd"

    const-string v6, "cta clickable area not scaled"

    invoke-static {v0, v6}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v6, p0, Lcom/vungle/publisher/op;->e:Lcom/vungle/publisher/jj;

    iget-object v6, v6, Lcom/vungle/publisher/jj;->i:Ljava/lang/Boolean;

    invoke-virtual {v0, v6}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/vungle/publisher/op;->C:Landroid/graphics/Bitmap;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_5
    new-instance v0, Lcom/vungle/publisher/op$3;

    invoke-direct {v0, p0, v3}, Lcom/vungle/publisher/op$3;-><init>(Lcom/vungle/publisher/op;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 230
    :cond_3
    iget-object v0, p0, Lcom/vungle/publisher/op;->b:Lcom/vungle/publisher/n;

    invoke-interface {v0}, Lcom/vungle/publisher/n;->isIncentivized()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/vungle/publisher/op;->e:Lcom/vungle/publisher/jj;

    iget-object v0, v0, Lcom/vungle/publisher/jj;->k:Ljava/lang/Integer;

    .line 231
    :goto_6
    if-nez v0, :cond_c

    .line 232
    const/4 v0, 0x0

    iput v0, p0, Lcom/vungle/publisher/op;->j:I

    .line 233
    iget-object v0, p0, Lcom/vungle/publisher/op;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 239
    :goto_7
    new-instance v0, Lcom/vungle/publisher/op$b;

    invoke-direct {v0, p0}, Lcom/vungle/publisher/op$b;-><init>(Lcom/vungle/publisher/op;)V

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 240
    new-instance v0, Lcom/vungle/publisher/op$1;

    invoke-direct {v0, p0}, Lcom/vungle/publisher/op$1;-><init>(Lcom/vungle/publisher/op;)V

    invoke-virtual {v4, v0}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 250
    invoke-virtual {v4, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 251
    invoke-virtual {v4, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 252
    invoke-virtual {v4, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 256
    :goto_8
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    const-string v3, "VungleAd"

    const-string v4, "Unexpected error in fragment injection"

    invoke-static {v3, v4, v0}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 253
    :catch_1
    move-exception v0

    .line 254
    const-string v1, "VungleAd"

    const-string v2, "exception in onActivityCreated"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_8

    .line 228
    :cond_4
    if-nez v0, :cond_5

    :try_start_3
    const-string v0, "VungleAd"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "overriding cta shown from null to "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    goto/16 :goto_1

    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-le v6, v7, :cond_d

    const-string v6, "VungleAd"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "overriding cta shown from "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " to "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v3

    goto/16 :goto_1

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_2

    :cond_7
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto/16 :goto_3

    :cond_8
    new-instance v6, Lcom/vungle/publisher/op$2;

    invoke-direct {v6, p0, v0, v3}, Lcom/vungle/publisher/op$2;-><init>(Lcom/vungle/publisher/op;Ljava/lang/Float;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_4

    :cond_9
    iget v0, p0, Lcom/vungle/publisher/op;->K:I

    iget v6, p0, Lcom/vungle/publisher/op;->I:I

    if-lt v0, v6, :cond_a

    move v0, v1

    :goto_9
    invoke-direct {p0, v0}, Lcom/vungle/publisher/op;->d(Z)V

    goto/16 :goto_5

    :cond_a
    move v0, v2

    goto :goto_9

    .line 230
    :cond_b
    iget-object v0, p0, Lcom/vungle/publisher/op;->e:Lcom/vungle/publisher/jj;

    iget-object v0, v0, Lcom/vungle/publisher/jj;->l:Ljava/lang/Integer;

    goto/16 :goto_6

    .line 235
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/vungle/publisher/op;->j:I

    .line 236
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 237
    iget-object v0, p0, Lcom/vungle/publisher/op;->k:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_7

    :cond_d
    move-object v11, v0

    move-object v0, v3

    move-object v3, v11

    goto/16 :goto_1
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2

    .prologue
    .line 556
    const-string v0, "VungleAd"

    const-string v1, "video.onCompletion"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/op;->b(Z)V

    .line 558
    iget-object v0, p0, Lcom/vungle/publisher/op;->n:Lcom/vungle/publisher/ql;

    new-instance v1, Lcom/vungle/publisher/aw;

    invoke-direct {v1}, Lcom/vungle/publisher/aw;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V

    .line 559
    return-void
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 142
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/vungle/publisher/op;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/vungle/publisher/op;->B:Landroid/view/ViewGroup;

    .line 143
    iget-object v0, p0, Lcom/vungle/publisher/op;->B:Landroid/view/ViewGroup;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 144
    iget-object v0, p0, Lcom/vungle/publisher/op;->B:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    .line 563
    const-string v0, "VungleAd"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "video.onError: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/op;->b(Z)V

    .line 565
    iget-object v0, p0, Lcom/vungle/publisher/op;->n:Lcom/vungle/publisher/ql;

    new-instance v1, Lcom/vungle/publisher/aw;

    invoke-direct {v1}, Lcom/vungle/publisher/aw;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V

    .line 566
    const/4 v0, 0x1

    return v0
.end method

.method public final onPause()V
    .locals 4

    .prologue
    .line 404
    const-string v0, "VungleAd"

    const-string v1, "video onPause"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    :try_start_0
    invoke-super {p0}, Lcom/vungle/publisher/ms;->onPause()V

    .line 407
    iget-object v0, p0, Lcom/vungle/publisher/op;->A:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "VungleAd"

    const-string v1, "Pausing video"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vungle/publisher/op;->A:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/vungle/publisher/op;->N:I

    iget-object v0, p0, Lcom/vungle/publisher/op;->A:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->pause()V

    invoke-direct {p0}, Lcom/vungle/publisher/op;->d()V

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/op;->u:Lcom/vungle/publisher/by;

    iget-object v1, v0, Lcom/vungle/publisher/by;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 410
    iget-object v0, p0, Lcom/vungle/publisher/op;->G:Lcom/vungle/publisher/op$c;

    invoke-virtual {v0}, Lcom/vungle/publisher/op$c;->unregister()V

    .line 411
    iget-object v0, p0, Lcom/vungle/publisher/op;->w:Lcom/vungle/publisher/lr;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/lr;->a(Z)V

    .line 413
    iget-boolean v0, p0, Lcom/vungle/publisher/op;->L:Z

    if-eqz v0, :cond_1

    .line 414
    iget-object v0, p0, Lcom/vungle/publisher/op;->n:Lcom/vungle/publisher/ql;

    new-instance v1, Lcom/vungle/publisher/al;

    iget-object v2, p0, Lcom/vungle/publisher/op;->A:Landroid/widget/VideoView;

    invoke-virtual {v2}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/vungle/publisher/al;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    :cond_1
    :goto_0
    return-void

    .line 417
    :catch_0
    move-exception v0

    .line 418
    iget-object v1, p0, Lcom/vungle/publisher/op;->c:Lcom/vungle/publisher/gm$a;

    const-string v2, "VungleAd"

    const-string v3, "error in VideoFragment.onPause()"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/gm$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 419
    invoke-direct {p0}, Lcom/vungle/publisher/op;->d()V

    goto :goto_0
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 375
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 376
    const-string v1, "VungleAd"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "video ready: duration "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object v1, p0, Lcom/vungle/publisher/op;->x:Lcom/vungle/publisher/oj;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/oj;->setMaxTimeMillis(I)V

    .line 378
    iget-object v1, p0, Lcom/vungle/publisher/op;->n:Lcom/vungle/publisher/ql;

    new-instance v2, Lcom/vungle/publisher/ac;

    invoke-direct {v2, v0}, Lcom/vungle/publisher/ac;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V

    .line 379
    iget-object v0, p0, Lcom/vungle/publisher/op;->s:Lcom/vungle/publisher/pn;

    invoke-virtual {p0}, Lcom/vungle/publisher/op;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/vungle/publisher/pn;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 380
    invoke-direct {p0}, Lcom/vungle/publisher/op;->e()V

    .line 382
    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 387
    :try_start_0
    invoke-super {p0}, Lcom/vungle/publisher/ms;->onResume()V

    .line 388
    const-string v1, "VungleAd"

    const-string v2, "video onResume"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    iget-object v1, p0, Lcom/vungle/publisher/op;->y:Lcom/vungle/publisher/nx;

    const-string v2, "VungleAd"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "refresh mute state. is muted? "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v4, v1, Lcom/vungle/publisher/nx;->a:Z

    if-nez v4, :cond_1

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, v1, Lcom/vungle/publisher/nx;->a:Z

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/nx;->setSoundEnabled(Z)V

    iget-object v0, v1, Lcom/vungle/publisher/nx;->c:Lcom/vungle/publisher/ql;

    new-instance v2, Lcom/vungle/publisher/az;

    iget-object v1, v1, Lcom/vungle/publisher/nx;->b:Lcom/vungle/publisher/lr;

    invoke-virtual {v1}, Lcom/vungle/publisher/lr;->c()F

    move-result v1

    invoke-direct {v2, v1}, Lcom/vungle/publisher/az;-><init>(F)V

    invoke-virtual {v0, v2}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V

    .line 392
    iget-object v0, p0, Lcom/vungle/publisher/op;->u:Lcom/vungle/publisher/by;

    iget-boolean v1, v0, Lcom/vungle/publisher/by;->b:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/vungle/publisher/by;->c:Lcom/vungle/publisher/lr;

    invoke-virtual {v1}, Lcom/vungle/publisher/lr;->b()I

    move-result v1

    iput v1, v0, Lcom/vungle/publisher/by;->a:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/vungle/publisher/by;->b:Z

    :cond_0
    iget-object v1, v0, Lcom/vungle/publisher/by;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 393
    iget-object v0, p0, Lcom/vungle/publisher/op;->G:Lcom/vungle/publisher/op$c;

    invoke-virtual {v0}, Lcom/vungle/publisher/op$c;->register()V

    .line 394
    invoke-direct {p0}, Lcom/vungle/publisher/op;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    :goto_1
    return-void

    .line 391
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 396
    :catch_0
    move-exception v0

    .line 397
    iget-object v1, p0, Lcom/vungle/publisher/op;->c:Lcom/vungle/publisher/gm$a;

    const-string v2, "VungleAd"

    const-string v3, "error resuming VideoFragment"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/gm$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 398
    invoke-direct {p0}, Lcom/vungle/publisher/op;->d()V

    goto :goto_1
.end method

.method public final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 261
    :try_start_0
    invoke-super {p0, p1}, Lcom/vungle/publisher/ms;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 262
    const-string v1, "adConfig"

    iget-object v0, p0, Lcom/vungle/publisher/op;->b:Lcom/vungle/publisher/n;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 263
    const-string v0, "adStarted"

    iget-boolean v1, p0, Lcom/vungle/publisher/op;->L:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 264
    const-string v0, "currentVideoPosition"

    iget v1, p0, Lcom/vungle/publisher/op;->N:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v0

    .line 266
    iget-object v1, p0, Lcom/vungle/publisher/op;->c:Lcom/vungle/publisher/gm$a;

    const-string v2, "VungleAd"

    const-string v3, "exception in onSaveInstanceState"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/gm$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
