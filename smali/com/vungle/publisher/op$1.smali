.class final Lcom/vungle/publisher/op$1;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/op;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/op;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/op;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/vungle/publisher/op$1;->a:Lcom/vungle/publisher/op;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 243
    const-string v2, "VungleAd"

    const-string v3, "video onTouch"

    invoke-static {v2, v3}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v2, p0, Lcom/vungle/publisher/op$1;->a:Lcom/vungle/publisher/op;

    iget-object v2, v2, Lcom/vungle/publisher/op;->h:Landroid/view/TouchDelegate;

    if-eqz v2, :cond_0

    .line 245
    iget-object v2, p0, Lcom/vungle/publisher/op$1;->a:Lcom/vungle/publisher/op;

    iget-object v2, v2, Lcom/vungle/publisher/op;->h:Landroid/view/TouchDelegate;

    invoke-virtual {v2, p2}, Landroid/view/TouchDelegate;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 247
    :cond_0
    iget-object v2, p0, Lcom/vungle/publisher/op$1;->a:Lcom/vungle/publisher/op;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, v2, Lcom/vungle/publisher/op;->f:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    iget-object v3, v2, Lcom/vungle/publisher/op;->i:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, v2, Lcom/vungle/publisher/op;->f:Landroid/widget/ImageView;

    const-string v3, "alpha"

    new-array v4, v0, [F

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v4, v1

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v2, 0x2ee

    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0
.end method
