.class Lcom/miniclip/facebook/MCLikeView;
.super Lcom/facebook/widget/LikeView;
.source "MCFacebook.java"


# instance fields
.field private targetHeight:F

.field private targetX:F

.field private targetY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 54
    invoke-direct {p0, p1}, Lcom/facebook/widget/LikeView;-><init>(Landroid/content/Context;)V

    .line 49
    iput v0, p0, Lcom/miniclip/facebook/MCLikeView;->targetX:F

    .line 50
    iput v0, p0, Lcom/miniclip/facebook/MCLikeView;->targetY:F

    .line 51
    iput v0, p0, Lcom/miniclip/facebook/MCLikeView;->targetHeight:F

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/miniclip/facebook/MCLikeView;)F
    .locals 1
    .param p0, "x0"    # Lcom/miniclip/facebook/MCLikeView;

    .prologue
    .line 48
    iget v0, p0, Lcom/miniclip/facebook/MCLikeView;->targetHeight:F

    return v0
.end method

.method static synthetic access$100(Lcom/miniclip/facebook/MCLikeView;)F
    .locals 1
    .param p0, "x0"    # Lcom/miniclip/facebook/MCLikeView;

    .prologue
    .line 48
    iget v0, p0, Lcom/miniclip/facebook/MCLikeView;->targetX:F

    return v0
.end method

.method static synthetic access$200(Lcom/miniclip/facebook/MCLikeView;)F
    .locals 1
    .param p0, "x0"    # Lcom/miniclip/facebook/MCLikeView;

    .prologue
    .line 48
    iget v0, p0, Lcom/miniclip/facebook/MCLikeView;->targetY:F

    return v0
.end method

.method private reposition()V
    .locals 1

    .prologue
    .line 99
    new-instance v0, Lcom/miniclip/facebook/MCLikeView$2;

    invoke-direct {v0, p0}, Lcom/miniclip/facebook/MCLikeView$2;-><init>(Lcom/miniclip/facebook/MCLikeView;)V

    invoke-virtual {p0, v0}, Lcom/miniclip/facebook/MCLikeView;->post(Ljava/lang/Runnable;)Z

    .line 127
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/facebook/widget/LikeView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 62
    .local v0, "retVal":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    sparse-switch v1, :sswitch_data_0

    .line 75
    :goto_0
    return v0

    .line 65
    :sswitch_0
    sget-object v1, Lcom/miniclip/facebook/MCFacebook;->mGLView:Lcom/miniclip/facebook/MCFacebook$QueueEvent;

    new-instance v2, Lcom/miniclip/facebook/MCLikeView$1;

    invoke-direct {v2, p0}, Lcom/miniclip/facebook/MCLikeView$1;-><init>(Lcom/miniclip/facebook/MCLikeView;)V

    invoke-interface {v1, v2}, Lcom/miniclip/facebook/MCFacebook$QueueEvent;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 62
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 131
    invoke-super/range {p0 .. p5}, Lcom/facebook/widget/LikeView;->onLayout(ZIIII)V

    .line 133
    if-eqz p1, :cond_0

    .line 134
    invoke-direct {p0}, Lcom/miniclip/facebook/MCLikeView;->reposition()V

    .line 136
    :cond_0
    return-void
.end method

.method public setHeight(FF)V
    .locals 1
    .param p1, "height"    # F
    .param p2, "virtualScreenHeight"    # F

    .prologue
    .line 90
    sget v0, Lcom/miniclip/platform/MCViewManager;->displayHeight:I

    int-to-float v0, v0

    mul-float/2addr v0, p1

    div-float/2addr v0, p2

    iput v0, p0, Lcom/miniclip/facebook/MCLikeView;->targetHeight:F

    .line 92
    invoke-direct {p0}, Lcom/miniclip/facebook/MCLikeView;->reposition()V

    .line 94
    invoke-virtual {p0}, Lcom/miniclip/facebook/MCLikeView;->requestLayout()V

    .line 95
    invoke-virtual {p0}, Lcom/miniclip/facebook/MCLikeView;->postInvalidate()V

    .line 96
    return-void
.end method

.method public setPosition(FFF)V
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "virtualScreenHeight"    # F

    .prologue
    .line 79
    sget v1, Lcom/miniclip/platform/MCViewManager;->displayWidth:I

    int-to-float v1, v1

    sget v2, Lcom/miniclip/platform/MCViewManager;->displayHeight:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    mul-float v0, p3, v1

    .line 80
    .local v0, "virtualWidth":F
    sget v1, Lcom/miniclip/platform/MCViewManager;->displayWidth:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    div-float/2addr v1, v0

    iput v1, p0, Lcom/miniclip/facebook/MCLikeView;->targetX:F

    .line 81
    sget v1, Lcom/miniclip/platform/MCViewManager;->displayHeight:I

    int-to-float v1, v1

    mul-float/2addr v1, p2

    div-float/2addr v1, p3

    iput v1, p0, Lcom/miniclip/facebook/MCLikeView;->targetY:F

    .line 83
    invoke-direct {p0}, Lcom/miniclip/facebook/MCLikeView;->reposition()V

    .line 85
    invoke-virtual {p0}, Lcom/miniclip/facebook/MCLikeView;->requestLayout()V

    .line 86
    invoke-virtual {p0}, Lcom/miniclip/facebook/MCLikeView;->postInvalidate()V

    .line 87
    return-void
.end method
