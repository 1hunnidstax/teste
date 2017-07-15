.class final Lcom/miniclip/input/MCKeyboard$8;
.super Ljava/lang/Object;
.source "MCKeyboard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/input/MCKeyboard;->setKeyboardInputPosition(FFFFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$anchorX:F

.field final synthetic val$anchorY:F

.field final synthetic val$height:F

.field final synthetic val$width:F

.field final synthetic val$x:F

.field final synthetic val$y:F


# direct methods
.method constructor <init>(FFFFFF)V
    .locals 0

    .prologue
    .line 286
    iput p1, p0, Lcom/miniclip/input/MCKeyboard$8;->val$height:F

    iput p2, p0, Lcom/miniclip/input/MCKeyboard$8;->val$width:F

    iput p3, p0, Lcom/miniclip/input/MCKeyboard$8;->val$x:F

    iput p4, p0, Lcom/miniclip/input/MCKeyboard$8;->val$anchorX:F

    iput p5, p0, Lcom/miniclip/input/MCKeyboard$8;->val$y:F

    iput p6, p0, Lcom/miniclip/input/MCKeyboard$8;->val$anchorY:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 288
    iget v0, p0, Lcom/miniclip/input/MCKeyboard$8;->val$height:F

    .line 289
    .local v0, "newHeight":F
    iget v2, p0, Lcom/miniclip/input/MCKeyboard$8;->val$height:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    .line 290
    # getter for: Lcom/miniclip/input/MCKeyboard;->mEditText:Landroid/widget/EditText;
    invoke-static {}, Lcom/miniclip/input/MCKeyboard;->access$100()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getHeight()I

    move-result v2

    int-to-float v0, v2

    .line 291
    :cond_0
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget v2, p0, Lcom/miniclip/input/MCKeyboard$8;->val$width:F

    float-to-int v2, v2

    float-to-int v3, v0

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 292
    .local v1, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, p0, Lcom/miniclip/input/MCKeyboard$8;->val$x:F

    iget v3, p0, Lcom/miniclip/input/MCKeyboard$8;->val$width:F

    iget v4, p0, Lcom/miniclip/input/MCKeyboard$8;->val$anchorX:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 293
    iget v2, p0, Lcom/miniclip/input/MCKeyboard$8;->val$y:F

    iget v3, p0, Lcom/miniclip/input/MCKeyboard$8;->val$anchorY:F

    mul-float/2addr v3, v0

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 294
    const-string v2, "setKeyboardInputPos"

    const-string v3, "newHeight: %f, anchorY: %f"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget v6, p0, Lcom/miniclip/input/MCKeyboard$8;->val$anchorY:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return-void
.end method
