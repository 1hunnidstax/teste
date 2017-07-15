.class Lcom/miniclip/facebook/MCLikeView$2;
.super Ljava/lang/Object;
.source "MCFacebook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/facebook/MCLikeView;->reposition()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/facebook/MCLikeView;


# direct methods
.method constructor <init>(Lcom/miniclip/facebook/MCLikeView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/facebook/MCLikeView;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/miniclip/facebook/MCLikeView$2;->this$0:Lcom/miniclip/facebook/MCLikeView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f000000    # 0.5f

    .line 102
    iget-object v5, p0, Lcom/miniclip/facebook/MCLikeView$2;->this$0:Lcom/miniclip/facebook/MCLikeView;

    invoke-virtual {v5}, Lcom/miniclip/facebook/MCLikeView;->getWidth()I

    move-result v3

    .line 103
    .local v3, "width":I
    iget-object v5, p0, Lcom/miniclip/facebook/MCLikeView$2;->this$0:Lcom/miniclip/facebook/MCLikeView;

    invoke-virtual {v5}, Lcom/miniclip/facebook/MCLikeView;->getHeight()I

    move-result v0

    .line 104
    .local v0, "height":I
    iget-object v5, p0, Lcom/miniclip/facebook/MCLikeView$2;->this$0:Lcom/miniclip/facebook/MCLikeView;

    # getter for: Lcom/miniclip/facebook/MCLikeView;->targetHeight:F
    invoke-static {v5}, Lcom/miniclip/facebook/MCLikeView;->access$000(Lcom/miniclip/facebook/MCLikeView;)F

    move-result v5

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_1

    if-eqz v0, :cond_1

    iget-object v5, p0, Lcom/miniclip/facebook/MCLikeView$2;->this$0:Lcom/miniclip/facebook/MCLikeView;

    # getter for: Lcom/miniclip/facebook/MCLikeView;->targetHeight:F
    invoke-static {v5}, Lcom/miniclip/facebook/MCLikeView;->access$000(Lcom/miniclip/facebook/MCLikeView;)F

    move-result v5

    int-to-float v6, v0

    div-float v2, v5, v6

    .line 106
    .local v2, "scale":F
    :goto_0
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xb

    if-lt v5, v6, :cond_0

    .line 107
    iget-object v5, p0, Lcom/miniclip/facebook/MCLikeView$2;->this$0:Lcom/miniclip/facebook/MCLikeView;

    invoke-virtual {v5, v4}, Lcom/miniclip/facebook/MCLikeView;->setScaleX(F)V

    .line 108
    iget-object v5, p0, Lcom/miniclip/facebook/MCLikeView$2;->this$0:Lcom/miniclip/facebook/MCLikeView;

    invoke-virtual {v5, v4}, Lcom/miniclip/facebook/MCLikeView;->setScaleY(F)V

    .line 109
    cmpl-float v4, v2, v4

    if-eqz v4, :cond_0

    .line 110
    iget-object v4, p0, Lcom/miniclip/facebook/MCLikeView$2;->this$0:Lcom/miniclip/facebook/MCLikeView;

    int-to-float v5, v3

    mul-float/2addr v5, v7

    invoke-virtual {v4, v5}, Lcom/miniclip/facebook/MCLikeView;->setPivotX(F)V

    .line 111
    iget-object v4, p0, Lcom/miniclip/facebook/MCLikeView$2;->this$0:Lcom/miniclip/facebook/MCLikeView;

    int-to-float v5, v0

    mul-float/2addr v5, v7

    invoke-virtual {v4, v5}, Lcom/miniclip/facebook/MCLikeView;->setPivotY(F)V

    .line 112
    iget-object v4, p0, Lcom/miniclip/facebook/MCLikeView$2;->this$0:Lcom/miniclip/facebook/MCLikeView;

    invoke-virtual {v4, v2}, Lcom/miniclip/facebook/MCLikeView;->setScaleX(F)V

    .line 113
    iget-object v4, p0, Lcom/miniclip/facebook/MCLikeView$2;->this$0:Lcom/miniclip/facebook/MCLikeView;

    invoke-virtual {v4, v2}, Lcom/miniclip/facebook/MCLikeView;->setScaleY(F)V

    .line 117
    :cond_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v4, p0, Lcom/miniclip/facebook/MCLikeView$2;->this$0:Lcom/miniclip/facebook/MCLikeView;

    invoke-virtual {v4}, Lcom/miniclip/facebook/MCLikeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lcom/miniclip/facebook/MCLikeView$2;->this$0:Lcom/miniclip/facebook/MCLikeView;

    # getter for: Lcom/miniclip/facebook/MCLikeView;->targetX:F
    invoke-static {v4}, Lcom/miniclip/facebook/MCLikeView;->access$100(Lcom/miniclip/facebook/MCLikeView;)F

    move-result v4

    int-to-float v5, v3

    mul-float/2addr v5, v7

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 119
    iget-object v4, p0, Lcom/miniclip/facebook/MCLikeView$2;->this$0:Lcom/miniclip/facebook/MCLikeView;

    # getter for: Lcom/miniclip/facebook/MCLikeView;->targetY:F
    invoke-static {v4}, Lcom/miniclip/facebook/MCLikeView;->access$200(Lcom/miniclip/facebook/MCLikeView;)F

    move-result v4

    int-to-float v5, v0

    mul-float/2addr v5, v7

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 120
    iput v8, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 121
    iput v8, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 123
    iget-object v4, p0, Lcom/miniclip/facebook/MCLikeView$2;->this$0:Lcom/miniclip/facebook/MCLikeView;

    invoke-virtual {v4, v1}, Lcom/miniclip/facebook/MCLikeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 124
    iget-object v4, p0, Lcom/miniclip/facebook/MCLikeView$2;->this$0:Lcom/miniclip/facebook/MCLikeView;

    invoke-virtual {v4}, Lcom/miniclip/facebook/MCLikeView;->postInvalidate()V

    .line 125
    return-void

    .end local v1    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v2    # "scale":F
    :cond_1
    move v2, v4

    .line 104
    goto :goto_0
.end method
