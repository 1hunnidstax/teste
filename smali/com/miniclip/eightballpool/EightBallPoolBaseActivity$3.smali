.class Lcom/miniclip/eightballpool/EightBallPoolBaseActivity$3;
.super Ljava/lang/Object;
.source "EightBallPoolBaseActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/eightballpool/EightBallPoolBaseActivity;->registerKeyboardUpdateCallback()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/eightballpool/EightBallPoolBaseActivity;

.field final synthetic val$rootView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/miniclip/eightballpool/EightBallPoolBaseActivity;Landroid/view/View;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/eightballpool/EightBallPoolBaseActivity;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/miniclip/eightballpool/EightBallPoolBaseActivity$3;->this$0:Lcom/miniclip/eightballpool/EightBallPoolBaseActivity;

    iput-object p2, p0, Lcom/miniclip/eightballpool/EightBallPoolBaseActivity$3;->val$rootView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 8

    .prologue
    .line 212
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 213
    .local v0, "r":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/miniclip/eightballpool/EightBallPoolBaseActivity$3;->val$rootView:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 215
    iget-object v6, p0, Lcom/miniclip/eightballpool/EightBallPoolBaseActivity$3;->val$rootView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    int-to-float v4, v6

    .line 216
    .local v4, "screenHeight":F
    iget-object v6, p0, Lcom/miniclip/eightballpool/EightBallPoolBaseActivity$3;->val$rootView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v5, v6

    .line 218
    .local v5, "screenWidth":F
    const/high16 v6, 0x3f800000    # 1.0f

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    div-float/2addr v7, v4

    sub-float v1, v6, v7

    .line 219
    .local v1, "relativeBottom":F
    iget v6, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    div-float v2, v6, v5

    .line 220
    .local v2, "relativeLeft":F
    iget v6, v0, Landroid/graphics/Rect;->right:I

    int-to-float v6, v6

    div-float v3, v6, v5

    .line 222
    .local v3, "relativeRight":F
    sget-object v6, Lcom/miniclip/framework/ThreadingContext;->Main:Lcom/miniclip/framework/ThreadingContext;

    new-instance v7, Lcom/miniclip/eightballpool/EightBallPoolBaseActivity$3$1;

    invoke-direct {v7, p0}, Lcom/miniclip/eightballpool/EightBallPoolBaseActivity$3$1;-><init>(Lcom/miniclip/eightballpool/EightBallPoolBaseActivity$3;)V

    invoke-static {v6, v7}, Lcom/miniclip/framework/Miniclip;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 228
    return-void
.end method
