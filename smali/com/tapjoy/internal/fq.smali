.class public final Lcom/tapjoy/internal/fq;
.super Lcom/tapjoy/internal/gb;
.source "SourceFile"


# static fields
.field public static a:Lcom/tapjoy/internal/fq;


# instance fields
.field final b:Lcom/tapjoy/internal/fu;

.field final c:Ljava/lang/String;

.field final d:Lcom/tapjoy/internal/gn;

.field private e:Z

.field private f:Z

.field private g:J

.field private l:Landroid/content/Context;

.field private m:Lcom/tapjoy/internal/hf;

.field private n:Landroid/app/Activity;

.field private o:Lcom/tapjoy/internal/fv;

.field private p:Landroid/os/Handler;

.field private q:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/tapjoy/internal/fu;Ljava/lang/String;Lcom/tapjoy/internal/gn;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/tapjoy/internal/gb;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/tapjoy/internal/fq;->b:Lcom/tapjoy/internal/fu;

    .line 64
    iput-object p2, p0, Lcom/tapjoy/internal/fq;->c:Ljava/lang/String;

    .line 65
    iput-object p3, p0, Lcom/tapjoy/internal/fq;->d:Lcom/tapjoy/internal/gn;

    .line 66
    iput-object p4, p0, Lcom/tapjoy/internal/fq;->l:Landroid/content/Context;

    .line 67
    return-void
.end method

.method private a(Landroid/app/Activity;Lcom/tapjoy/internal/fv;Lcom/tapjoy/internal/eq;)V
    .locals 5

    .prologue
    const/4 v4, -0x1

    const/4 v1, 0x1

    .line 120
    iget-boolean v0, p0, Lcom/tapjoy/internal/fq;->e:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/tapjoy/internal/cq;->a(Z)V

    .line 121
    iput-boolean v1, p0, Lcom/tapjoy/internal/fq;->e:Z

    .line 122
    iput-boolean v1, p0, Lcom/tapjoy/internal/fq;->f:Z

    .line 123
    sput-object p0, Lcom/tapjoy/internal/fq;->a:Lcom/tapjoy/internal/fq;

    .line 125
    new-instance v0, Lcom/tapjoy/internal/hf;

    iget-object v1, p0, Lcom/tapjoy/internal/fq;->d:Lcom/tapjoy/internal/gn;

    new-instance v2, Lcom/tapjoy/internal/fq$2;

    invoke-direct {v2, p0, p1, p2}, Lcom/tapjoy/internal/fq$2;-><init>(Lcom/tapjoy/internal/fq;Landroid/app/Activity;Lcom/tapjoy/internal/fv;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/tapjoy/internal/hf;-><init>(Landroid/content/Context;Lcom/tapjoy/internal/gn;Lcom/tapjoy/internal/hf$a;)V

    iput-object v0, p0, Lcom/tapjoy/internal/fq;->m:Lcom/tapjoy/internal/hf;

    .line 151
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget-object v1, p0, Lcom/tapjoy/internal/fq;->m:Lcom/tapjoy/internal/hf;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    invoke-direct {v2, v4, v4, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 5033
    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v3

    .line 5034
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 5035
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 5036
    invoke-virtual {v0, v3}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 155
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tapjoy/internal/fq;->g:J

    .line 156
    iget-object v0, p0, Lcom/tapjoy/internal/fq;->b:Lcom/tapjoy/internal/fu;

    iget-object v1, p0, Lcom/tapjoy/internal/fq;->d:Lcom/tapjoy/internal/gn;

    iget-object v1, v1, Lcom/tapjoy/internal/gn;->b:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/tapjoy/internal/fu;->a(Ljava/util/Map;)V

    .line 157
    invoke-virtual {p3}, Lcom/tapjoy/internal/eq;->a()V

    .line 158
    iget-object v0, p0, Lcom/tapjoy/internal/fq;->c:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/tapjoy/internal/fv;->c(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/tapjoy/internal/fq;->d:Lcom/tapjoy/internal/gn;

    iget v0, v0, Lcom/tapjoy/internal/gn;->c:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 161
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/tapjoy/internal/fq;->p:Landroid/os/Handler;

    .line 162
    new-instance v0, Lcom/tapjoy/internal/fq$3;

    invoke-direct {v0, p0}, Lcom/tapjoy/internal/fq$3;-><init>(Lcom/tapjoy/internal/fq;)V

    iput-object v0, p0, Lcom/tapjoy/internal/fq;->q:Ljava/lang/Runnable;

    .line 168
    iget-object v0, p0, Lcom/tapjoy/internal/fq;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tapjoy/internal/fq;->q:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/tapjoy/internal/fq;->d:Lcom/tapjoy/internal/gn;

    iget v2, v2, Lcom/tapjoy/internal/gn;->c:F

    const/high16 v3, 0x447a0000    # 1000.0f

    mul-float/2addr v2, v3

    float-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 170
    :cond_0
    return-void

    .line 120
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/tapjoy/internal/fq;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 30
    .line 5173
    iget-boolean v0, p0, Lcom/tapjoy/internal/fq;->f:Z

    if-eqz v0, :cond_5

    .line 5176
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tapjoy/internal/fq;->f:Z

    .line 5178
    iget-object v0, p0, Lcom/tapjoy/internal/fq;->p:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 5179
    iget-object v0, p0, Lcom/tapjoy/internal/fq;->p:Landroid/os/Handler;

    iget-object v1, p0, Lcom/tapjoy/internal/fq;->q:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5180
    iput-object v6, p0, Lcom/tapjoy/internal/fq;->q:Ljava/lang/Runnable;

    .line 5181
    iput-object v6, p0, Lcom/tapjoy/internal/fq;->p:Landroid/os/Handler;

    .line 5184
    :cond_0
    sget-object v0, Lcom/tapjoy/internal/fq;->a:Lcom/tapjoy/internal/fq;

    if-ne v0, p0, :cond_1

    .line 5185
    sput-object v6, Lcom/tapjoy/internal/fq;->a:Lcom/tapjoy/internal/fq;

    .line 5188
    :cond_1
    iget-object v0, p0, Lcom/tapjoy/internal/fq;->b:Lcom/tapjoy/internal/fu;

    iget-object v1, p0, Lcom/tapjoy/internal/fq;->d:Lcom/tapjoy/internal/gn;

    iget-object v1, v1, Lcom/tapjoy/internal/gn;->b:Ljava/util/Map;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tapjoy/internal/fq;->g:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lcom/tapjoy/internal/fu;->a(Ljava/util/Map;J)V

    .line 5190
    iget-boolean v0, p0, Lcom/tapjoy/internal/fq;->i:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/tapjoy/internal/fq;->o:Lcom/tapjoy/internal/fv;

    if-eqz v0, :cond_2

    .line 5191
    iget-object v0, p0, Lcom/tapjoy/internal/fq;->o:Lcom/tapjoy/internal/fv;

    iget-object v1, p0, Lcom/tapjoy/internal/fq;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/tapjoy/internal/fq;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v6}, Lcom/tapjoy/internal/fv;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/fg;)V

    .line 5192
    iput-object v6, p0, Lcom/tapjoy/internal/fq;->o:Lcom/tapjoy/internal/fv;

    .line 5204
    :cond_2
    iget-object v0, p0, Lcom/tapjoy/internal/fq;->m:Lcom/tapjoy/internal/hf;

    invoke-virtual {v0}, Lcom/tapjoy/internal/hf;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 5205
    if-eqz v0, :cond_3

    .line 5206
    iget-object v1, p0, Lcom/tapjoy/internal/fq;->m:Lcom/tapjoy/internal/hf;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5208
    :cond_3
    iput-object v6, p0, Lcom/tapjoy/internal/fq;->m:Lcom/tapjoy/internal/hf;

    .line 5197
    iget-object v0, p0, Lcom/tapjoy/internal/fq;->n:Landroid/app/Activity;

    instance-of v0, v0, Lcom/tapjoy/TJContentActivity;

    if-eqz v0, :cond_4

    .line 5198
    iget-object v0, p0, Lcom/tapjoy/internal/fq;->n:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 5200
    :cond_4
    iput-object v6, p0, Lcom/tapjoy/internal/fq;->n:Landroid/app/Activity;

    .line 30
    :cond_5
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 71
    iget-object v0, p0, Lcom/tapjoy/internal/fq;->d:Lcom/tapjoy/internal/gn;

    .line 1070
    iget-object v0, v0, Lcom/tapjoy/internal/gn;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gw;

    .line 1084
    iget-object v0, v0, Lcom/tapjoy/internal/gw;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gv;

    .line 1085
    iget-object v3, v0, Lcom/tapjoy/internal/gv;->l:Lcom/tapjoy/internal/gt;

    if-eqz v3, :cond_2

    .line 1086
    iget-object v3, v0, Lcom/tapjoy/internal/gv;->l:Lcom/tapjoy/internal/gt;

    invoke-virtual {v3}, Lcom/tapjoy/internal/gt;->a()V

    .line 1088
    :cond_2
    iget-object v3, v0, Lcom/tapjoy/internal/gv;->m:Lcom/tapjoy/internal/gt;

    if-eqz v3, :cond_1

    .line 1089
    iget-object v0, v0, Lcom/tapjoy/internal/gv;->m:Lcom/tapjoy/internal/gt;

    invoke-virtual {v0}, Lcom/tapjoy/internal/gt;->a()V

    goto :goto_0

    .line 72
    :cond_3
    return-void
.end method

.method public final a(Lcom/tapjoy/internal/fv;Lcom/tapjoy/internal/eq;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 82
    iput-object p1, p0, Lcom/tapjoy/internal/fq;->o:Lcom/tapjoy/internal/fv;

    .line 85
    iget-object v0, p0, Lcom/tapjoy/internal/fq;->l:Landroid/content/Context;

    invoke-static {v0}, Lcom/tapjoy/internal/c;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/fq;->n:Landroid/app/Activity;

    .line 86
    iget-object v0, p0, Lcom/tapjoy/internal/fq;->n:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tapjoy/internal/fq;->n:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    :try_start_0
    iget-object v0, p0, Lcom/tapjoy/internal/fq;->n:Landroid/app/Activity;

    invoke-direct {p0, v0, p1, p2}, Lcom/tapjoy/internal/fq;->a(Landroid/app/Activity;Lcom/tapjoy/internal/fv;Lcom/tapjoy/internal/eq;)V

    .line 89
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tapjoy/internal/fq;->c:Ljava/lang/String;

    aput-object v2, v0, v1
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .line 97
    :cond_0
    invoke-static {}, Lcom/tapjoy/internal/fm;->a()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/tapjoy/internal/fq;->n:Landroid/app/Activity;

    .line 100
    iget-object v0, p0, Lcom/tapjoy/internal/fq;->n:Landroid/app/Activity;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/tapjoy/internal/fq;->n:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 102
    :try_start_1
    iget-object v0, p0, Lcom/tapjoy/internal/fq;->n:Landroid/app/Activity;

    invoke-direct {p0, v0, p1, p2}, Lcom/tapjoy/internal/fq;->a(Landroid/app/Activity;Lcom/tapjoy/internal/fv;Lcom/tapjoy/internal/eq;)V

    .line 103
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/tapjoy/internal/fq;->c:Ljava/lang/String;

    aput-object v2, v0, v1
    :try_end_1
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 111
    :cond_1
    const-string v0, "Failed to show the content for \"{}\" caused by no registration of TJContentActivity"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/tapjoy/internal/fq;->c:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/tapjoy/internal/fr;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    iget-object v0, p0, Lcom/tapjoy/internal/fq;->c:Ljava/lang/String;

    iget-object v1, p0, Lcom/tapjoy/internal/fq;->k:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Lcom/tapjoy/internal/fv;->a(Ljava/lang/String;Ljava/lang/String;Lcom/tapjoy/internal/fg;)V

    goto :goto_0
.end method

.method public final b()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 76
    iget-object v0, p0, Lcom/tapjoy/internal/fq;->d:Lcom/tapjoy/internal/gn;

    .line 2077
    iget-object v0, v0, Lcom/tapjoy/internal/gn;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v0, v1

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gw;

    .line 2096
    iget-object v0, v0, Lcom/tapjoy/internal/gw;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tapjoy/internal/gv;

    .line 2097
    iget-object v5, v0, Lcom/tapjoy/internal/gv;->l:Lcom/tapjoy/internal/gt;

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/tapjoy/internal/gv;->l:Lcom/tapjoy/internal/gt;

    .line 3037
    iget-object v5, v5, Lcom/tapjoy/internal/gt;->b:Landroid/graphics/Bitmap;

    .line 2097
    if-eqz v5, :cond_3

    :cond_2
    iget-object v5, v0, Lcom/tapjoy/internal/gv;->m:Lcom/tapjoy/internal/gt;

    if-eqz v5, :cond_1

    iget-object v0, v0, Lcom/tapjoy/internal/gv;->m:Lcom/tapjoy/internal/gt;

    .line 4037
    iget-object v0, v0, Lcom/tapjoy/internal/gt;->b:Landroid/graphics/Bitmap;

    .line 2098
    if-nez v0, :cond_1

    :cond_3
    move v0, v2

    .line 2079
    :goto_0
    if-nez v0, :cond_0

    move v0, v2

    .line 2080
    :cond_4
    return v0

    :cond_5
    move v0, v1

    goto :goto_0
.end method
