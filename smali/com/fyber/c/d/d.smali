.class public final Lcom/fyber/c/d/d;
.super Landroid/widget/FrameLayout;
.source "VideoPlayerView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/fyber/c/d/a/a$a;
.implements Lcom/fyber/mediation/MediationUserActivityListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/c/d/d$a;,
        Lcom/fyber/c/d/d$b;,
        Lcom/fyber/c/d/d$d;,
        Lcom/fyber/c/d/d$c;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:I

.field private C:I

.field private D:Lcom/fyber/c/d/a/a;

.field private E:Lcom/fyber/c/d/d$d;

.field private F:Z

.field private G:Z

.field private H:Z

.field private I:Landroid/widget/FrameLayout;

.field private J:Z

.field private a:Landroid/app/Activity;

.field private b:Ljava/lang/String;

.field private c:Landroid/widget/VideoView;

.field private d:Landroid/media/MediaPlayer;

.field private e:I

.field private f:Lcom/fyber/c/e/b;

.field private g:Lcom/fyber/c/b/a;

.field private h:Ljava/lang/Integer;

.field private i:Ljava/lang/Float;

.field private j:Lcom/fyber/c/c/b;

.field private k:J

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Landroid/widget/TextView;

.field private o:Ljava/lang/String;

.field private volatile p:Z

.field private volatile q:I

.field private r:Z

.field private s:Ljava/lang/String;

.field private t:Lcom/fyber/c/a/a;

.field private u:Lcom/fyber/c/d/d$b;

.field private v:I

.field private w:Ljava/util/concurrent/ScheduledExecutorService;

.field private x:Lcom/fyber/c/d/b;

.field private final y:Lcom/fyber/c/d/d$c;

.field private z:Z


# direct methods
.method private constructor <init>(Landroid/app/Activity;Lcom/fyber/c/d/d$a;)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 160
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 113
    iput-boolean v0, p0, Lcom/fyber/c/d/d;->l:Z

    .line 122
    iput-boolean v0, p0, Lcom/fyber/c/d/d;->p:Z

    .line 133
    const/4 v2, -0x1

    iput v2, p0, Lcom/fyber/c/d/d;->v:I

    .line 139
    iput-boolean v0, p0, Lcom/fyber/c/d/d;->z:Z

    .line 140
    iput-boolean v0, p0, Lcom/fyber/c/d/d;->A:Z

    .line 143
    iput v0, p0, Lcom/fyber/c/d/d;->B:I

    .line 153
    iput-boolean v1, p0, Lcom/fyber/c/d/d;->F:Z

    .line 154
    iput-boolean v0, p0, Lcom/fyber/c/d/d;->G:Z

    .line 155
    iput-boolean v0, p0, Lcom/fyber/c/d/d;->H:Z

    .line 161
    iput-object p1, p0, Lcom/fyber/c/d/d;->a:Landroid/app/Activity;

    .line 163
    invoke-static {p2}, Lcom/fyber/c/d/d$a;->a(Lcom/fyber/c/d/d$a;)Lcom/fyber/c/d/b;

    move-result-object v2

    iput-object v2, p0, Lcom/fyber/c/d/d;->x:Lcom/fyber/c/d/b;

    .line 164
    invoke-static {p2}, Lcom/fyber/c/d/d$a;->b(Lcom/fyber/c/d/d$a;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/fyber/c/d/d;->b:Ljava/lang/String;

    .line 166
    invoke-static {p2}, Lcom/fyber/c/d/d$a;->c(Lcom/fyber/c/d/d$a;)Ljava/lang/String;

    move-result-object v2

    .line 1996
    invoke-static {v2}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 166
    :goto_0
    if-eqz v0, :cond_0

    .line 167
    invoke-static {p2}, Lcom/fyber/c/d/d$a;->c(Lcom/fyber/c/d/d$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/c/d/d;->m:Ljava/lang/String;

    .line 168
    invoke-static {p2}, Lcom/fyber/c/d/d$a;->d(Lcom/fyber/c/d/d$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/c/d/d;->o:Ljava/lang/String;

    .line 171
    :cond_0
    invoke-static {p2}, Lcom/fyber/c/d/d$a;->e(Lcom/fyber/c/d/d$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/c/d/d;->s:Ljava/lang/String;

    .line 172
    invoke-static {p2}, Lcom/fyber/c/d/d$a;->f(Lcom/fyber/c/d/d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fyber/c/d/d;->r:Z

    .line 174
    invoke-static {p2}, Lcom/fyber/c/d/d$a;->g(Lcom/fyber/c/d/d$a;)Lcom/fyber/c/d/d$d;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/c/d/d;->E:Lcom/fyber/c/d/d$d;

    .line 176
    invoke-static {p2}, Lcom/fyber/c/d/d$a;->h(Lcom/fyber/c/d/d$a;)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/c/d/d;->i:Ljava/lang/Float;

    .line 178
    invoke-static {p2}, Lcom/fyber/c/d/d$a;->i(Lcom/fyber/c/d/d$a;)Lcom/fyber/c/d/d$b;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/c/d/d;->u:Lcom/fyber/c/d/d$b;

    .line 180
    invoke-static {p2}, Lcom/fyber/c/d/d$a;->j(Lcom/fyber/c/d/d$a;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/fyber/c/d/d;->J:Z

    .line 181
    new-instance v0, Lcom/fyber/c/d/d$c;

    invoke-direct {v0, p0}, Lcom/fyber/c/d/d$c;-><init>(Lcom/fyber/c/d/d;)V

    iput-object v0, p0, Lcom/fyber/c/d/d;->y:Lcom/fyber/c/d/d$c;

    .line 182
    return-void

    .line 1999
    :cond_1
    invoke-static {v2}, Lcom/fyber/utils/w;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 2000
    goto :goto_0

    .line 2002
    :cond_2
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2003
    invoke-virtual {p0}, Lcom/fyber/c/d/d;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v1, v2, v0}, Lcom/fyber/utils/l;->a(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Z

    move-result v0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/app/Activity;Lcom/fyber/c/d/d$a;B)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/fyber/c/d/d;-><init>(Landroid/app/Activity;Lcom/fyber/c/d/d$a;)V

    return-void
.end method

.method static synthetic a(Lcom/fyber/c/d/d;)Lcom/fyber/c/d/d$b;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/fyber/c/d/d;->u:Lcom/fyber/c/d/d$b;

    return-object v0
.end method

.method private a(I)V
    .locals 2

    .prologue
    .line 875
    iget-object v0, p0, Lcom/fyber/c/d/d;->y:Lcom/fyber/c/d/d$c;

    add-int/lit8 v1, p1, -0x1

    invoke-virtual {v0, v1}, Lcom/fyber/c/d/d$c;->sendEmptyMessage(I)Z

    .line 876
    return-void
.end method

.method private a(ILjava/lang/String;)V
    .locals 1

    .prologue
    .line 659
    iget-object v0, p0, Lcom/fyber/c/d/d;->E:Lcom/fyber/c/d/d$d;

    if-eqz v0, :cond_0

    .line 660
    iget-object v0, p0, Lcom/fyber/c/d/d;->E:Lcom/fyber/c/d/d$d;

    invoke-interface {v0, p1, p2}, Lcom/fyber/c/d/d$d;->a(ILjava/lang/String;)V

    .line 661
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fyber/c/d/d;->E:Lcom/fyber/c/d/d$d;

    .line 663
    :cond_0
    return-void
.end method

.method private static a(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 887
    if-eqz p0, :cond_0

    .line 888
    invoke-virtual {p0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 890
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/fyber/c/d/d;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/fyber/c/d/d;->a(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/fyber/c/d/d;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 78
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/fyber/c/d/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 828
    iget-object v0, p0, Lcom/fyber/c/d/d;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 829
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/fyber/c/d/d;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 831
    invoke-static {p4}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 832
    new-instance v1, Lcom/fyber/c/d/d$5;

    invoke-direct {v1, p0}, Lcom/fyber/c/d/d$5;-><init>(Lcom/fyber/c/d/d;)V

    invoke-virtual {v0, p4, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 849
    :cond_0
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 850
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 851
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/fyber/c/d/d$6;

    invoke-direct {v1, p0, p5}, Lcom/fyber/c/d/d$6;-><init>(Lcom/fyber/c/d/d;Ljava/lang/String;)V

    .line 852
    invoke-virtual {v0, p3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 858
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 859
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 861
    :cond_1
    return-void
.end method

.method private static a(Landroid/view/View;)Z
    .locals 1

    .prologue
    .line 867
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/fyber/c/d/d;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/fyber/c/d/d;->n:Landroid/widget/TextView;

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 789
    iget-boolean v0, p0, Lcom/fyber/c/d/d;->r:Z

    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/fyber/c/d/d;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 792
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/c/d/d;->G:Z

    .line 794
    sget-object v0, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_ALERT_DIALOG_EXIT_VIDEO_TEXT:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-static {v0}, Lcom/fyber/utils/t;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fyber/c/d/d;->s:Ljava/lang/String;

    sget-object v0, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_ALERT_DIALOG_CLOSE_VIDEO_TEXT:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    .line 795
    invoke-static {v0}, Lcom/fyber/utils/t;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_ALERT_DIALOG_RESUME_VIDEO_TEXT:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    .line 796
    invoke-static {v0}, Lcom/fyber/utils/t;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v5, p1

    .line 794
    invoke-direct/range {v0 .. v5}, Lcom/fyber/c/d/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 800
    :goto_0
    return-void

    .line 798
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/fyber/c/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic c(Lcom/fyber/c/d/d;)Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/c/d/d;->G:Z

    return v0
.end method

.method static synthetic d(Lcom/fyber/c/d/d;)Z
    .locals 1

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/fyber/c/d/d;->F:Z

    return v0
.end method

.method static synthetic e(Lcom/fyber/c/d/d;)Landroid/media/MediaPlayer;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/fyber/c/d/d;->d:Landroid/media/MediaPlayer;

    return-object v0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 536
    iget-object v0, p0, Lcom/fyber/c/d/d;->w:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_0

    .line 537
    iget-object v0, p0, Lcom/fyber/c/d/d;->w:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/fyber/c/d/d;->w:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 542
    :cond_0
    invoke-static {}, Lcom/fyber/cache/CacheManager;->a()Lcom/fyber/cache/CacheManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/fyber/c/d/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fyber/cache/CacheManager;->c(Landroid/content/Context;)V

    .line 543
    return-void
.end method

.method static synthetic f(Lcom/fyber/c/d/d;)V
    .locals 1

    .prologue
    .line 78
    .line 6704
    iget-object v0, p0, Lcom/fyber/c/d/d;->I:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/fyber/c/d/d;->removeView(Landroid/view/View;)V

    .line 78
    return-void
.end method

.method private g()V
    .locals 0

    .prologue
    .line 626
    invoke-direct {p0}, Lcom/fyber/c/d/d;->m()V

    .line 627
    invoke-direct {p0}, Lcom/fyber/c/d/d;->f()V

    .line 628
    invoke-direct {p0}, Lcom/fyber/c/d/d;->h()V

    .line 629
    return-void
.end method

.method static synthetic g(Lcom/fyber/c/d/d;)V
    .locals 2

    .prologue
    .line 78
    .line 6775
    iget-object v0, p0, Lcom/fyber/c/d/d;->f:Lcom/fyber/c/e/b;

    if-eqz v0, :cond_0

    .line 6776
    iget-object v0, p0, Lcom/fyber/c/d/d;->f:Lcom/fyber/c/e/b;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fyber/c/e/b;->setVisibility(I)V

    .line 78
    :cond_0
    return-void
.end method

.method private h()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 632
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/c/d/d;->A:Z

    .line 634
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 635
    invoke-direct {p0}, Lcom/fyber/c/d/d;->i()V

    .line 5644
    :goto_0
    iput-object v2, p0, Lcom/fyber/c/d/d;->c:Landroid/widget/VideoView;

    .line 5645
    iput-object v2, p0, Lcom/fyber/c/d/d;->n:Landroid/widget/TextView;

    .line 5646
    iput-object v2, p0, Lcom/fyber/c/d/d;->g:Lcom/fyber/c/b/a;

    .line 5647
    iput-object v2, p0, Lcom/fyber/c/d/d;->j:Lcom/fyber/c/c/b;

    .line 5648
    iput-object v2, p0, Lcom/fyber/c/d/d;->d:Landroid/media/MediaPlayer;

    .line 5649
    iput-object v2, p0, Lcom/fyber/c/d/d;->f:Lcom/fyber/c/e/b;

    .line 5650
    iput-object v2, p0, Lcom/fyber/c/d/d;->a:Landroid/app/Activity;

    .line 5652
    iget-object v0, p0, Lcom/fyber/c/d/d;->t:Lcom/fyber/c/a/a;

    if-eqz v0, :cond_0

    .line 5653
    iget-object v0, p0, Lcom/fyber/c/d/d;->t:Lcom/fyber/c/a/a;

    invoke-virtual {v0}, Lcom/fyber/c/a/a;->b()V

    .line 5654
    iput-object v2, p0, Lcom/fyber/c/d/d;->t:Lcom/fyber/c/a/a;

    .line 641
    :cond_0
    return-void

    .line 637
    :cond_1
    sget v0, Lcom/fyber/c/d/c;->i:I

    invoke-direct {p0, v0}, Lcom/fyber/c/d/d;->a(I)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/fyber/c/d/d;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/fyber/c/d/d;->l()V

    return-void
.end method

.method static synthetic i(Lcom/fyber/c/d/d;)Lcom/fyber/c/c/b;
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/fyber/c/d/d;->j:Lcom/fyber/c/c/b;

    return-object v0
.end method

.method private i()V
    .locals 5
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 672
    iget-object v0, p0, Lcom/fyber/c/d/d;->c:Landroid/widget/VideoView;

    if-eqz v0, :cond_0

    .line 673
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/fyber/utils/n;->a(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5692
    const-string v0, "#10000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 5693
    const-string v1, "#000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 5694
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    new-instance v4, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v4, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v0, 0x1

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    aput-object v3, v2, v0

    .line 5695
    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {v0, v2}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 675
    iget-object v1, p0, Lcom/fyber/c/d/d;->c:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 676
    const/16 v1, 0x190

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 682
    :cond_0
    :goto_0
    sget v0, Lcom/fyber/c/d/c;->j:I

    .line 5879
    iget-object v1, p0, Lcom/fyber/c/d/d;->y:Lcom/fyber/c/d/d$c;

    add-int/lit8 v0, v0, -0x1

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v0, v2, v3}, Lcom/fyber/c/d/d$c;->sendEmptyMessageDelayed(IJ)Z

    .line 685
    iget-object v0, p0, Lcom/fyber/c/d/d;->f:Lcom/fyber/c/e/b;

    if-eqz v0, :cond_1

    .line 686
    iget-object v0, p0, Lcom/fyber/c/d/d;->f:Lcom/fyber/c/e/b;

    invoke-virtual {v0}, Lcom/fyber/c/e/b;->b()V

    .line 688
    :cond_1
    return-void

    .line 679
    :cond_2
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/fyber/c/d/d;->setVisibility(I)V

    goto :goto_0
.end method

.method static synthetic j(Lcom/fyber/c/d/d;)I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/fyber/c/d/d;->q:I

    return v0
.end method

.method private j()V
    .locals 2

    .prologue
    .line 709
    iget-object v0, p0, Lcom/fyber/c/d/d;->g:Lcom/fyber/c/b/a;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fyber/c/b/a;->setTag(Ljava/lang/Object;)V

    .line 710
    iget-object v0, p0, Lcom/fyber/c/d/d;->g:Lcom/fyber/c/b/a;

    invoke-static {v0}, Lcom/fyber/c/d/d;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 711
    iget-object v0, p0, Lcom/fyber/c/d/d;->g:Lcom/fyber/c/b/a;

    invoke-virtual {p0, v0}, Lcom/fyber/c/d/d;->addView(Landroid/view/View;)V

    .line 713
    :cond_0
    return-void
.end method

.method private k()F
    .locals 4

    .prologue
    .line 738
    :try_start_0
    iget-object v0, p0, Lcom/fyber/c/d/d;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/c/d/d;->a:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 739
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 741
    const-string v1, "FYBVideoPlayerOptionCloseButtonDelay"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 742
    if-eqz v0, :cond_0

    .line 743
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 748
    :goto_0
    return v0

    .line 745
    :catch_0
    move-exception v0

    .line 746
    :goto_1
    const-string v1, "VideoPlayerView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to load meta-data from Manifest: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 745
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method static synthetic k(Lcom/fyber/c/d/d;)Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/c/d/d;->z:Z

    return v0
.end method

.method private l()V
    .locals 2

    .prologue
    .line 781
    iget-object v0, p0, Lcom/fyber/c/d/d;->f:Lcom/fyber/c/e/b;

    if-eqz v0, :cond_0

    .line 782
    iget-object v0, p0, Lcom/fyber/c/d/d;->f:Lcom/fyber/c/e/b;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/fyber/c/e/b;->setVisibility(I)V

    .line 784
    :cond_0
    return-void
.end method

.method static synthetic l(Lcom/fyber/c/d/d;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/fyber/c/d/d;->j()V

    return-void
.end method

.method private m()V
    .locals 2

    .prologue
    .line 871
    iget-object v0, p0, Lcom/fyber/c/d/d;->y:Lcom/fyber/c/d/d$c;

    sget v1, Lcom/fyber/c/d/c;->g:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/fyber/c/d/d$c;->removeMessages(I)V

    .line 872
    return-void
.end method

.method static synthetic m(Lcom/fyber/c/d/d;)V
    .locals 4

    .prologue
    .line 78
    .line 7753
    iget-object v0, p0, Lcom/fyber/c/d/d;->n:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 7755
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3f333333    # 0.7f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 7756
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 7757
    new-instance v1, Lcom/fyber/c/d/d$4;

    invoke-direct {v1, p0}, Lcom/fyber/c/d/d$4;-><init>(Lcom/fyber/c/d/d;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 7771
    iget-object v1, p0, Lcom/fyber/c/d/d;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 78
    return-void
.end method

.method private n()Z
    .locals 1

    .prologue
    .line 883
    iget-boolean v0, p0, Lcom/fyber/c/d/d;->l:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/fyber/c/d/d;->G:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic n(Lcom/fyber/c/d/d;)Z
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/c/d/d;->p:Z

    return v0
.end method

.method static synthetic o(Lcom/fyber/c/d/d;)V
    .locals 1

    .prologue
    .line 78
    .line 7992
    iget-object v0, p0, Lcom/fyber/c/d/d;->x:Lcom/fyber/c/d/b;

    invoke-interface {v0}, Lcom/fyber/c/d/b;->a()V

    .line 78
    return-void
.end method

.method static synthetic p(Lcom/fyber/c/d/d;)Z
    .locals 1

    .prologue
    .line 78
    .line 8988
    iget-boolean v0, p0, Lcom/fyber/c/d/d;->J:Z

    .line 78
    return v0
.end method

.method static synthetic q(Lcom/fyber/c/d/d;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/fyber/c/d/d;->g()V

    return-void
.end method

.method static synthetic r(Lcom/fyber/c/d/d;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/fyber/c/d/d;->i()V

    return-void
.end method

.method static synthetic s(Lcom/fyber/c/d/d;)V
    .locals 1

    .prologue
    .line 78
    .line 9981
    invoke-virtual {p0}, Lcom/fyber/c/d/d;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 9982
    if-eqz v0, :cond_0

    .line 9983
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 78
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    .prologue
    const/4 v8, -0x2

    const/high16 v7, -0x1000000

    const/16 v6, 0x11

    const/4 v5, 0x1

    const/4 v4, -0x1

    .line 185
    .line 2208
    new-instance v0, Landroid/widget/VideoView;

    iget-object v1, p0, Lcom/fyber/c/d/d;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fyber/c/d/d;->c:Landroid/widget/VideoView;

    .line 2209
    iget-object v0, p0, Lcom/fyber/c/d/d;->c:Landroid/widget/VideoView;

    const-string v1, "videoPlayer"

    invoke-virtual {v0, v1}, Landroid/widget/VideoView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2211
    new-instance v0, Lcom/fyber/c/b/a;

    iget-object v1, p0, Lcom/fyber/c/d/d;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/fyber/c/b/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fyber/c/d/d;->g:Lcom/fyber/c/b/a;

    .line 2212
    iget-object v0, p0, Lcom/fyber/c/d/d;->g:Lcom/fyber/c/b/a;

    invoke-virtual {v0}, Lcom/fyber/c/b/a;->a()I

    move-result v0

    .line 2213
    iget-object v1, p0, Lcom/fyber/c/d/d;->g:Lcom/fyber/c/b/a;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x35

    invoke-direct {v2, v0, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2}, Lcom/fyber/c/b/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2216
    iget-object v0, p0, Lcom/fyber/c/d/d;->g:Lcom/fyber/c/b/a;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fyber/c/b/a;->setTag(Ljava/lang/Object;)V

    .line 2218
    new-instance v0, Lcom/fyber/c/e/b;

    iget-object v1, p0, Lcom/fyber/c/d/d;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/fyber/c/e/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fyber/c/d/d;->f:Lcom/fyber/c/e/b;

    .line 2219
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v8, v8, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 2220
    iget-object v1, p0, Lcom/fyber/c/d/d;->f:Lcom/fyber/c/e/b;

    invoke-virtual {v1, v0}, Lcom/fyber/c/e/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2223
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2224
    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 2225
    iget-object v1, p0, Lcom/fyber/c/d/d;->c:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2229
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/fyber/c/d/d;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fyber/c/d/d;->I:Landroid/widget/FrameLayout;

    .line 2230
    iget-object v0, p0, Lcom/fyber/c/d/d;->I:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 2231
    iget-object v0, p0, Lcom/fyber/c/d/d;->I:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2232
    iget-object v0, p0, Lcom/fyber/c/d/d;->I:Landroid/widget/FrameLayout;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 2235
    invoke-virtual {p0, v7}, Lcom/fyber/c/d/d;->setBackgroundColor(I)V

    .line 2237
    iget-object v0, p0, Lcom/fyber/c/d/d;->c:Landroid/widget/VideoView;

    invoke-virtual {p0, v0}, Lcom/fyber/c/d/d;->addView(Landroid/view/View;)V

    .line 2238
    iget-object v0, p0, Lcom/fyber/c/d/d;->I:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Lcom/fyber/c/d/d;->addView(Landroid/view/View;)V

    .line 2239
    iget-object v0, p0, Lcom/fyber/c/d/d;->f:Lcom/fyber/c/e/b;

    invoke-virtual {p0, v0}, Lcom/fyber/c/d/d;->addView(Landroid/view/View;)V

    .line 2305
    iget-object v0, p0, Lcom/fyber/c/d/d;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2306
    new-instance v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fyber/c/d/d;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fyber/c/d/d;->n:Landroid/widget/TextView;

    .line 2308
    iget-object v0, p0, Lcom/fyber/c/d/d;->n:Landroid/widget/TextView;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 2309
    iget-object v0, p0, Lcom/fyber/c/d/d;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setGravity(I)V

    .line 2311
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/high16 v1, 0x41f00000    # 30.0f

    .line 2312
    invoke-virtual {p0}, Lcom/fyber/c/d/d;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v5, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    float-to-int v1, v1

    const/16 v2, 0x50

    invoke-direct {v0, v4, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 2313
    iget-object v1, p0, Lcom/fyber/c/d/d;->n:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2314
    iget-object v0, p0, Lcom/fyber/c/d/d;->o:Ljava/lang/String;

    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2315
    iget-object v0, p0, Lcom/fyber/c/d/d;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fyber/c/d/d;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2319
    :goto_0
    iget-object v0, p0, Lcom/fyber/c/d/d;->n:Landroid/widget/TextView;

    const v1, -0x4dc1c1c2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 2320
    iget-object v0, p0, Lcom/fyber/c/d/d;->n:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 2321
    iget-object v0, p0, Lcom/fyber/c/d/d;->n:Landroid/widget/TextView;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v5, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 2322
    iget-object v0, p0, Lcom/fyber/c/d/d;->n:Landroid/widget/TextView;

    const-string v1, "clickThroughHint"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 187
    :cond_0
    invoke-static {}, Lcom/fyber/cache/CacheManager;->a()Lcom/fyber/cache/CacheManager;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/c/d/d;->b:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/fyber/c/d/d;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fyber/cache/CacheManager;->a(Ljava/lang/String;Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/fyber/c/d/d;->c:Landroid/widget/VideoView;

    invoke-virtual {v1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 190
    iget-object v1, p0, Lcom/fyber/c/d/d;->x:Lcom/fyber/c/d/b;

    iget-object v2, p0, Lcom/fyber/c/d/d;->b:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/fyber/cache/CacheManager;->a()Lcom/fyber/cache/CacheManager;

    move-result-object v3

    .line 191
    invoke-virtual {v3}, Lcom/fyber/cache/CacheManager;->b()Lcom/fyber/cache/internal/a;

    move-result-object v3

    .line 192
    invoke-virtual {v3}, Lcom/fyber/cache/internal/a;->a()Ljava/lang/String;

    move-result-object v3

    .line 190
    invoke-interface {v1, v2, v0, v3}, Lcom/fyber/c/d/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    new-instance v0, Lcom/fyber/c/d/a/a;

    invoke-direct {v0, p0}, Lcom/fyber/c/d/a/a;-><init>(Lcom/fyber/c/d/a/a$a;)V

    iput-object v0, p0, Lcom/fyber/c/d/d;->D:Lcom/fyber/c/d/a/a;

    .line 195
    iget-object v0, p0, Lcom/fyber/c/d/d;->c:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->requestFocus()Z

    .line 198
    iget-object v0, p0, Lcom/fyber/c/d/d;->y:Lcom/fyber/c/d/d$c;

    sget v1, Lcom/fyber/c/d/c;->g:I

    add-int/lit8 v1, v1, -0x1

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v1, v2, v3}, Lcom/fyber/c/d/d$c;->sendEmptyMessageDelayed(IJ)Z

    .line 3246
    iget-object v0, p0, Lcom/fyber/c/d/d;->c:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 3247
    iget-object v0, p0, Lcom/fyber/c/d/d;->c:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 3248
    iget-object v0, p0, Lcom/fyber/c/d/d;->c:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 3249
    iget-object v0, p0, Lcom/fyber/c/d/d;->c:Landroid/widget/VideoView;

    invoke-virtual {v0, p0}, Landroid/widget/VideoView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3250
    iget-object v0, p0, Lcom/fyber/c/d/d;->g:Lcom/fyber/c/b/a;

    invoke-virtual {v0, p0}, Lcom/fyber/c/b/a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 201
    return-void

    .line 2317
    :cond_1
    iget-object v0, p0, Lcom/fyber/c/d/d;->n:Landroid/widget/TextView;

    sget-object v1, Lcom/fyber/Fyber$Settings$UIStringIdentifier;->RV_CLICKTHROUGH_HINT:Lcom/fyber/Fyber$Settings$UIStringIdentifier;

    invoke-static {v1}, Lcom/fyber/utils/t;->a(Lcom/fyber/Fyber$Settings$UIStringIdentifier;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 619
    const-string v0, "VideoPlayerView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "video cancelling: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    iget-object v0, p0, Lcom/fyber/c/d/d;->x:Lcom/fyber/c/d/b;

    invoke-interface {v0, p1}, Lcom/fyber/c/d/b;->a(Ljava/lang/String;)V

    .line 621
    invoke-direct {p0}, Lcom/fyber/c/d/d;->g()V

    .line 622
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lcom/fyber/c/d/d;->a(ILjava/lang/String;)V

    .line 623
    return-void
.end method

.method public final a(Z)V
    .locals 3

    .prologue
    .line 805
    const-string v0, "VideoPlayerView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onBufferingStateChanged - state = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 806
    if-eqz p1, :cond_1

    .line 807
    sget v0, Lcom/fyber/c/d/c;->b:I

    invoke-direct {p0, v0}, Lcom/fyber/c/d/d;->a(I)V

    .line 809
    invoke-static {}, Lcom/fyber/utils/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/fyber/c/d/d;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 811
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/c/d/d;->F:Z

    .line 824
    :cond_0
    :goto_0
    return-void

    .line 814
    :cond_1
    sget v0, Lcom/fyber/c/d/c;->a:I

    invoke-direct {p0, v0}, Lcom/fyber/c/d/d;->a(I)V

    .line 816
    invoke-direct {p0}, Lcom/fyber/c/d/d;->n()Z

    move-result v0

    if-nez v0, :cond_2

    .line 817
    iget-object v0, p0, Lcom/fyber/c/d/d;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 820
    :cond_2
    invoke-static {}, Lcom/fyber/utils/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 821
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/c/d/d;->F:Z

    goto :goto_0
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/fyber/c/d/d;->f:Lcom/fyber/c/e/b;

    invoke-virtual {v0}, Lcom/fyber/c/e/b;->a()V

    .line 205
    return-void
.end method

.method public final c()V
    .locals 2

    .prologue
    .line 505
    iget-object v0, p0, Lcom/fyber/c/d/d;->t:Lcom/fyber/c/a/a;

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/fyber/c/d/d;->t:Lcom/fyber/c/a/a;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/fyber/c/a/a;->setVisibility(I)V

    .line 508
    iget-object v0, p0, Lcom/fyber/c/d/d;->t:Lcom/fyber/c/a/a;

    invoke-virtual {v0}, Lcom/fyber/c/a/a;->a()V

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/fyber/c/d/d;->d:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 513
    iget-object v0, p0, Lcom/fyber/c/d/d;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 518
    :cond_1
    iget-object v0, p0, Lcom/fyber/c/d/d;->g:Lcom/fyber/c/b/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fyber/c/d/d;->a(Landroid/view/View;Z)V

    .line 520
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/c/d/d;->l:Z

    .line 521
    return-void
.end method

.method public final d()V
    .locals 1

    .prologue
    .line 895
    iget-object v0, p0, Lcom/fyber/c/d/d;->d:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/fyber/c/d/d;->H:Z

    if-nez v0, :cond_0

    .line 896
    iget-object v0, p0, Lcom/fyber/c/d/d;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 898
    :cond_0
    return-void
.end method

.method public final e()V
    .locals 1

    .prologue
    .line 901
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/c/d/d;->H:Z

    .line 902
    return-void
.end method

.method public final notifyOnBackPressed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 475
    iget-boolean v1, p0, Lcom/fyber/c/d/d;->A:Z

    if-nez v1, :cond_1

    .line 478
    iget-boolean v1, p0, Lcom/fyber/c/d/d;->l:Z

    if-nez v1, :cond_3

    .line 479
    iget-boolean v1, p0, Lcom/fyber/c/d/d;->z:Z

    if-eqz v1, :cond_0

    .line 481
    const-string v1, "back button was pressed"

    .line 482
    invoke-virtual {p0}, Lcom/fyber/c/d/d;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/fyber/c/d/d;->d:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_2

    .line 483
    const-string v0, "back_btn"

    invoke-direct {p0, v0, v1}, Lcom/fyber/c/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 499
    :cond_1
    :goto_1
    return v0

    .line 489
    :cond_2
    const-string v2, "back_btn"

    invoke-virtual {p0, v2, v1}, Lcom/fyber/c/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 493
    :cond_3
    iget-object v0, p0, Lcom/fyber/c/d/d;->t:Lcom/fyber/c/a/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/c/d/d;->t:Lcom/fyber/c/a/a;

    invoke-virtual {v0}, Lcom/fyber/c/a/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 495
    invoke-virtual {p0}, Lcom/fyber/c/d/d;->c()V

    goto :goto_0
.end method

.method public final notifyOnUserLeft()V
    .locals 2

    .prologue
    .line 470
    const-string v0, "app_background"

    const-string v1, "notifyOnUserLeft()"

    invoke-virtual {p0, v0, v1}, Lcom/fyber/c/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 463
    iget-boolean v0, p0, Lcom/fyber/c/d/d;->l:Z

    if-nez v0, :cond_0

    .line 464
    const-string v0, "abort_btn"

    const-string v1, "closed button was pressed"

    invoke-direct {p0, v0, v1}, Lcom/fyber/c/d/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    :cond_0
    return-void
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    .prologue
    .line 332
    const-string v0, "VideoPlayerView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCompletion() - mediaPlayer = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-object v0, p0, Lcom/fyber/c/d/d;->c:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 335
    invoke-direct {p0}, Lcom/fyber/c/d/d;->h()V

    .line 336
    invoke-direct {p0}, Lcom/fyber/c/d/d;->f()V

    .line 339
    if-eqz p1, :cond_0

    .line 340
    iget-object v0, p0, Lcom/fyber/c/d/d;->x:Lcom/fyber/c/d/b;

    invoke-interface {v0}, Lcom/fyber/c/d/b;->b()V

    .line 341
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/fyber/c/d/d;->a(ILjava/lang/String;)V

    .line 345
    :goto_0
    return-void

    .line 343
    :cond_0
    const-string v0, "unknown"

    const-string v1, "onCompletion - video playing more than total duration"

    invoke-virtual {p0, v0, v1}, Lcom/fyber/c/d/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final onError(Landroid/media/MediaPlayer;II)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 353
    iput-boolean v3, p0, Lcom/fyber/c/d/d;->H:Z

    .line 354
    const-string v0, "VideoPlayerView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "An error occurred, error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/fyber/c/d/d;->c:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->stopPlayback()V

    .line 5370
    sparse-switch p3, :sswitch_data_0

    .line 5387
    const-string v0, "media_error_unknown"

    .line 359
    :goto_0
    iget-object v1, p0, Lcom/fyber/c/d/d;->x:Lcom/fyber/c/d/b;

    invoke-interface {v1, v0}, Lcom/fyber/c/d/b;->b(Ljava/lang/String;)V

    .line 361
    invoke-direct {p0}, Lcom/fyber/c/d/d;->m()V

    .line 362
    sget v0, Lcom/fyber/c/d/c;->f:I

    invoke-direct {p0, v0}, Lcom/fyber/c/d/d;->a(I)V

    .line 364
    return v3

    .line 5373
    :sswitch_0
    const-string v0, "media_error_io"

    goto :goto_0

    .line 5376
    :sswitch_1
    const-string v0, "media_error_malformed"

    goto :goto_0

    .line 5379
    :sswitch_2
    const-string v0, "media_error_unsupported"

    goto :goto_0

    .line 5382
    :sswitch_3
    const-string v0, "media_error_time_out"

    goto :goto_0

    .line 5385
    :sswitch_4
    const-string v0, "media_error_system"

    goto :goto_0

    .line 5370
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_4
        -0x3f2 -> :sswitch_2
        -0x3ef -> :sswitch_1
        -0x3ec -> :sswitch_0
        -0x6e -> :sswitch_3
    .end sparse-switch
.end method

.method protected final onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 1010
    invoke-direct {p0}, Lcom/fyber/c/d/d;->n()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1011
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 1013
    :cond_0
    return-void
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    .line 255
    const-string v0, "VideoPlayerView"

    const-string v1, "onPrepared()"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-direct {p0}, Lcom/fyber/c/d/d;->m()V

    .line 262
    iget-boolean v0, p0, Lcom/fyber/c/d/d;->p:Z

    if-nez v0, :cond_2

    .line 264
    iput-object p1, p0, Lcom/fyber/c/d/d;->d:Landroid/media/MediaPlayer;

    .line 266
    iget-object v0, p0, Lcom/fyber/c/d/d;->c:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->start()V

    .line 267
    iget-object v0, p0, Lcom/fyber/c/d/d;->D:Lcom/fyber/c/d/a/a;

    invoke-virtual {v0}, Lcom/fyber/c/d/a/a;->a()V

    .line 270
    invoke-direct {p0}, Lcom/fyber/c/d/d;->l()V

    .line 272
    iget-object v0, p0, Lcom/fyber/c/d/d;->c:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getDuration()I

    move-result v0

    iput v0, p0, Lcom/fyber/c/d/d;->e:I

    .line 273
    iget-object v0, p0, Lcom/fyber/c/d/d;->D:Lcom/fyber/c/d/a/a;

    iget v1, p0, Lcom/fyber/c/d/d;->e:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/fyber/c/d/a/a;->a(J)V

    .line 275
    new-instance v0, Lcom/fyber/c/c/b;

    iget-object v1, p0, Lcom/fyber/c/d/d;->a:Landroid/app/Activity;

    iget v2, p0, Lcom/fyber/c/d/d;->e:I

    invoke-direct {v0, v1, v2}, Lcom/fyber/c/c/b;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/fyber/c/d/d;->j:Lcom/fyber/c/c/b;

    .line 276
    const/high16 v0, 0x42700000    # 60.0f

    invoke-virtual {p0}, Lcom/fyber/c/d/d;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v5, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    .line 277
    iget-object v1, p0, Lcom/fyber/c/d/d;->j:Lcom/fyber/c/c/b;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x33

    invoke-direct {v2, v0, v0, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v2}, Lcom/fyber/c/c/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 279
    iget-object v0, p0, Lcom/fyber/c/d/d;->x:Lcom/fyber/c/d/b;

    iget v1, p0, Lcom/fyber/c/d/d;->e:I

    invoke-interface {v0, v1}, Lcom/fyber/c/d/b;->a(I)V

    .line 281
    iget v0, p0, Lcom/fyber/c/d/d;->e:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v0, v2

    const-wide v2, 0x40cd4c0000000000L    # 15000.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/fyber/c/d/d;->k:J

    .line 284
    iget-object v0, p0, Lcom/fyber/c/d/d;->j:Lcom/fyber/c/c/b;

    invoke-virtual {p0, v0}, Lcom/fyber/c/d/d;->addView(Landroid/view/View;)V

    .line 3716
    iget-object v0, p0, Lcom/fyber/c/d/d;->i:Ljava/lang/Float;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/fyber/c/d/d;->i:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    move v1, v0

    .line 3719
    :goto_0
    const/4 v0, 0x0

    .line 3720
    const/high16 v2, -0x40800000    # -1.0f

    cmpl-float v2, v1, v2

    if-nez v2, :cond_4

    .line 3722
    iget v0, p0, Lcom/fyber/c/d/d;->e:I

    add-int/lit16 v0, v0, 0x3e8

    .line 3731
    :cond_0
    :goto_1
    const-string v1, "VideoPlayerView"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Delay for close button - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/c/d/d;->h:Ljava/lang/Integer;

    .line 288
    iget-object v0, p0, Lcom/fyber/c/d/d;->h:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 289
    invoke-direct {p0}, Lcom/fyber/c/d/d;->j()V

    .line 290
    iput-boolean v5, p0, Lcom/fyber/c/d/d;->z:Z

    .line 4527
    :cond_1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/c/d/d;->w:Ljava/util/concurrent/ScheduledExecutorService;

    .line 4529
    iget-object v0, p0, Lcom/fyber/c/d/d;->w:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x32

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    .line 295
    iget-object v0, p0, Lcom/fyber/c/d/d;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 296
    iget-object v0, p0, Lcom/fyber/c/d/d;->n:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/fyber/c/d/d;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 297
    iget-object v0, p0, Lcom/fyber/c/d/d;->n:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/fyber/c/d/d;->addView(Landroid/view/View;)V

    .line 301
    :cond_2
    return-void

    .line 3716
    :cond_3
    invoke-direct {p0}, Lcom/fyber/c/d/d;->k()F

    move-result v0

    move v1, v0

    goto :goto_0

    .line 3723
    :cond_4
    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_5

    cmpg-float v2, v1, v4

    if-gez v2, :cond_5

    .line 3725
    iget v0, p0, Lcom/fyber/c/d/d;->e:I

    int-to-float v0, v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_1

    .line 3726
    :cond_5
    cmpl-float v2, v1, v4

    if-ltz v2, :cond_0

    .line 3728
    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    goto :goto_1
.end method

.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 393
    const-string v0, "VideoPlayerView"

    const-string v3, "onTouch()"

    invoke-static {v0, v3}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lcom/fyber/c/d/d;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/fyber/c/d/d;->l:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/fyber/c/d/d;->d:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_3

    .line 401
    iget-object v0, p0, Lcom/fyber/c/d/d;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 403
    iput-boolean v1, p0, Lcom/fyber/c/d/d;->l:Z

    .line 405
    iget-object v0, p0, Lcom/fyber/c/d/d;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/fyber/c/d/d;->n:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 407
    iget-object v0, p0, Lcom/fyber/c/d/d;->n:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 410
    :cond_0
    iget-object v0, p0, Lcom/fyber/c/d/d;->x:Lcom/fyber/c/d/b;

    invoke-interface {v0}, Lcom/fyber/c/d/b;->c()V

    .line 413
    iget-object v0, p0, Lcom/fyber/c/d/d;->m:Ljava/lang/String;

    invoke-static {v0}, Lcom/fyber/utils/w;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 419
    iget-object v0, p0, Lcom/fyber/c/d/d;->t:Lcom/fyber/c/a/a;

    if-eqz v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/fyber/c/d/d;->t:Lcom/fyber/c/a/a;

    invoke-virtual {v0, v2}, Lcom/fyber/c/a/a;->setVisibility(I)V

    .line 445
    :goto_0
    iget-object v0, p0, Lcom/fyber/c/d/d;->g:Lcom/fyber/c/b/a;

    invoke-static {v0, v2}, Lcom/fyber/c/d/d;->a(Landroid/view/View;Z)V

    move v0, v1

    .line 452
    :goto_1
    return v0

    .line 422
    :cond_1
    new-instance v0, Lcom/fyber/c/a/a;

    iget-object v3, p0, Lcom/fyber/c/d/d;->a:Landroid/app/Activity;

    iget-object v4, p0, Lcom/fyber/c/d/d;->m:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Lcom/fyber/c/a/a;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/fyber/c/d/d;->t:Lcom/fyber/c/a/a;

    .line 423
    iget-object v0, p0, Lcom/fyber/c/d/d;->t:Lcom/fyber/c/a/a;

    new-instance v3, Lcom/fyber/c/d/d$1;

    invoke-direct {v3, p0}, Lcom/fyber/c/d/d$1;-><init>(Lcom/fyber/c/d/d;)V

    invoke-virtual {v0, v3}, Lcom/fyber/c/a/a;->a(Lcom/fyber/c/a/a$b;)V

    .line 429
    iget-object v0, p0, Lcom/fyber/c/d/d;->t:Lcom/fyber/c/a/a;

    new-instance v3, Lcom/fyber/c/d/d$2;

    invoke-direct {v3, p0}, Lcom/fyber/c/d/d$2;-><init>(Lcom/fyber/c/d/d;)V

    invoke-virtual {v0, v3}, Lcom/fyber/c/a/a;->a(Lcom/fyber/c/a/a$a;)V

    .line 435
    iget-object v0, p0, Lcom/fyber/c/d/d;->t:Lcom/fyber/c/a/a;

    new-instance v3, Lcom/fyber/c/d/d$3;

    invoke-direct {v3, p0}, Lcom/fyber/c/d/d$3;-><init>(Lcom/fyber/c/d/d;)V

    invoke-virtual {v0, v3}, Lcom/fyber/c/a/a;->a(Lcom/fyber/c/a/a$c;)V

    .line 441
    iget-object v0, p0, Lcom/fyber/c/d/d;->a:Landroid/app/Activity;

    iget-object v3, p0, Lcom/fyber/c/d/d;->t:Lcom/fyber/c/a/a;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 447
    :cond_2
    iget-object v0, p0, Lcom/fyber/c/d/d;->u:Lcom/fyber/c/d/d$b;

    if-eqz v0, :cond_3

    .line 448
    iget-object v0, p0, Lcom/fyber/c/d/d;->u:Lcom/fyber/c/d/d$b;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fyber/c/d/d;->m:Ljava/lang/String;

    invoke-interface {v0, p0, v2, v3}, Lcom/fyber/c/d/d$b;->a(Lcom/fyber/c/d/d;Lcom/fyber/c/a/a;Ljava/lang/String;)Z

    move v0, v1

    .line 449
    goto :goto_1

    :cond_3
    move v0, v2

    .line 452
    goto :goto_1
.end method

.method public final run()V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 548
    iget-object v0, p0, Lcom/fyber/c/d/d;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    .line 549
    iget v1, p0, Lcom/fyber/c/d/d;->C:I

    if-eq v1, v0, :cond_1

    .line 550
    iget v1, p0, Lcom/fyber/c/d/d;->B:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/fyber/c/d/d;->B:I

    .line 552
    iget v1, p0, Lcom/fyber/c/d/d;->B:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_0

    .line 553
    iput v3, p0, Lcom/fyber/c/d/d;->B:I

    .line 554
    iput v0, p0, Lcom/fyber/c/d/d;->C:I

    .line 608
    :cond_0
    :goto_0
    return-void

    .line 562
    :cond_1
    iget-boolean v0, p0, Lcom/fyber/c/d/d;->H:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/fyber/c/d/d;->d:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/fyber/utils/n;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 566
    :cond_2
    iget v0, p0, Lcom/fyber/c/d/d;->q:I

    iget v1, p0, Lcom/fyber/c/d/d;->e:I

    add-int/lit16 v1, v1, 0x1f4

    if-le v0, v1, :cond_3

    .line 567
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fyber/c/d/d;->onCompletion(Landroid/media/MediaPlayer;)V

    .line 570
    :cond_3
    iget-object v0, p0, Lcom/fyber/c/d/d;->c:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/fyber/c/d/d;->q:I

    .line 575
    iget-object v0, p0, Lcom/fyber/c/d/d;->I:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/fyber/c/d/d;->q:I

    const/16 v1, 0x78

    if-le v0, v1, :cond_4

    .line 576
    iget-object v0, p0, Lcom/fyber/c/d/d;->I:Landroid/widget/FrameLayout;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 577
    sget v0, Lcom/fyber/c/d/c;->h:I

    invoke-direct {p0, v0}, Lcom/fyber/c/d/d;->a(I)V

    .line 583
    :cond_4
    iget v0, p0, Lcom/fyber/c/d/d;->v:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/fyber/c/d/d;->v:I

    .line 584
    iget v0, p0, Lcom/fyber/c/d/d;->v:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_5

    .line 585
    iput v3, p0, Lcom/fyber/c/d/d;->v:I

    .line 588
    :cond_5
    iget v0, p0, Lcom/fyber/c/d/d;->v:I

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/fyber/c/d/d;->v:I

    const/16 v1, 0xa

    if-ne v0, v1, :cond_7

    .line 590
    :cond_6
    iget-object v0, p0, Lcom/fyber/c/d/d;->D:Lcom/fyber/c/d/a/a;

    iget v1, p0, Lcom/fyber/c/d/d;->q:I

    int-to-long v2, v1

    iget-boolean v1, p0, Lcom/fyber/c/d/d;->F:Z

    invoke-direct {p0}, Lcom/fyber/c/d/d;->n()Z

    move-result v4

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/fyber/c/d/a/a;->a(JZZ)Z

    move-result v0

    if-nez v0, :cond_0

    .line 595
    :cond_7
    sget v0, Lcom/fyber/c/d/c;->c:I

    invoke-direct {p0, v0}, Lcom/fyber/c/d/d;->a(I)V

    .line 596
    iget v0, p0, Lcom/fyber/c/d/d;->v:I

    if-nez v0, :cond_8

    .line 597
    iget-object v0, p0, Lcom/fyber/c/d/d;->x:Lcom/fyber/c/d/b;

    iget v1, p0, Lcom/fyber/c/d/d;->q:I

    invoke-interface {v0, v1}, Lcom/fyber/c/d/b;->b(I)V

    .line 600
    :cond_8
    iget-object v0, p0, Lcom/fyber/c/d/d;->n:Landroid/widget/TextView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/fyber/c/d/d;->n:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, p0, Lcom/fyber/c/d/d;->q:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/fyber/c/d/d;->k:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_9

    .line 601
    sget v0, Lcom/fyber/c/d/c;->e:I

    invoke-direct {p0, v0}, Lcom/fyber/c/d/d;->a(I)V

    .line 604
    :cond_9
    iget-object v0, p0, Lcom/fyber/c/d/d;->g:Lcom/fyber/c/b/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fyber/c/d/d;->g:Lcom/fyber/c/b/a;

    invoke-virtual {v0}, Lcom/fyber/c/b/a;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/fyber/c/d/d;->q:I

    iget-object v1, p0, Lcom/fyber/c/d/d;->h:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 605
    sget v0, Lcom/fyber/c/d/c;->d:I

    invoke-direct {p0, v0}, Lcom/fyber/c/d/d;->a(I)V

    goto/16 :goto_0
.end method
