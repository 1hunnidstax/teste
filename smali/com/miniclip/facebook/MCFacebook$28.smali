.class final Lcom/miniclip/facebook/MCFacebook$28;
.super Ljava/lang/Object;
.source "MCFacebook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/facebook/MCFacebook;->FBLB_update(Ljava/lang/String;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$foregroundColor:I

.field final synthetic val$likeControlAuxiliaryPosition:I

.field final synthetic val$likeControlHorizontalAlignment:I

.field final synthetic val$likeControlStyle:I

.field final synthetic val$objectId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;IIII)V
    .locals 0

    .prologue
    .line 1397
    iput-object p1, p0, Lcom/miniclip/facebook/MCFacebook$28;->val$objectId:Ljava/lang/String;

    iput p2, p0, Lcom/miniclip/facebook/MCFacebook$28;->val$likeControlStyle:I

    iput p3, p0, Lcom/miniclip/facebook/MCFacebook$28;->val$likeControlHorizontalAlignment:I

    iput p4, p0, Lcom/miniclip/facebook/MCFacebook$28;->val$likeControlAuxiliaryPosition:I

    iput p5, p0, Lcom/miniclip/facebook/MCFacebook$28;->val$foregroundColor:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, -0x2

    .line 1400
    const-string v1, "MCFacebook"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FBLB_update "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miniclip/facebook/MCFacebook$28;->val$objectId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1401
    # getter for: Lcom/miniclip/facebook/MCFacebook;->mLikeView:Lcom/miniclip/facebook/MCLikeView;
    invoke-static {}, Lcom/miniclip/facebook/MCFacebook;->access$300()Lcom/miniclip/facebook/MCLikeView;

    move-result-object v1

    if-eqz v1, :cond_0

    # getter for: Lcom/miniclip/facebook/MCFacebook;->mLikeView:Lcom/miniclip/facebook/MCLikeView;
    invoke-static {}, Lcom/miniclip/facebook/MCFacebook;->access$300()Lcom/miniclip/facebook/MCLikeView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miniclip/facebook/MCLikeView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1402
    invoke-static {}, Lcom/miniclip/platform/MCViewManager;->getMainLayout()Landroid/widget/RelativeLayout;

    move-result-object v1

    # getter for: Lcom/miniclip/facebook/MCFacebook;->mLikeView:Lcom/miniclip/facebook/MCLikeView;
    invoke-static {}, Lcom/miniclip/facebook/MCFacebook;->access$300()Lcom/miniclip/facebook/MCLikeView;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1403
    invoke-static {}, Lcom/miniclip/platform/MCViewManager;->getMainLayout()Landroid/widget/RelativeLayout;

    move-result-object v1

    # getter for: Lcom/miniclip/facebook/MCFacebook;->likeViewOverlay:Landroid/view/View;
    invoke-static {}, Lcom/miniclip/facebook/MCFacebook;->access$400()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1405
    :cond_0
    new-instance v1, Lcom/miniclip/facebook/MCLikeView;

    sget-object v2, Lcom/miniclip/facebook/MCFacebook;->mContext:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/miniclip/facebook/MCLikeView;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/miniclip/facebook/MCFacebook;->mLikeView:Lcom/miniclip/facebook/MCLikeView;
    invoke-static {v1}, Lcom/miniclip/facebook/MCFacebook;->access$302(Lcom/miniclip/facebook/MCLikeView;)Lcom/miniclip/facebook/MCLikeView;

    .line 1406
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1408
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    # getter for: Lcom/miniclip/facebook/MCFacebook;->mLikeView:Lcom/miniclip/facebook/MCLikeView;
    invoke-static {}, Lcom/miniclip/facebook/MCFacebook;->access$300()Lcom/miniclip/facebook/MCLikeView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miniclip/facebook/MCLikeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1411
    new-instance v1, Landroid/view/View;

    sget-object v2, Lcom/miniclip/facebook/MCFacebook;->mContext:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/miniclip/facebook/MCFacebook;->likeViewOverlay:Landroid/view/View;
    invoke-static {v1}, Lcom/miniclip/facebook/MCFacebook;->access$402(Landroid/view/View;)Landroid/view/View;

    .line 1412
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .end local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1413
    .restart local v0    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    sget v1, Lcom/miniclip/platform/MCViewManager;->displayWidth:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1414
    sget v1, Lcom/miniclip/platform/MCViewManager;->displayHeight:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 1415
    # getter for: Lcom/miniclip/facebook/MCFacebook;->likeViewOverlay:Landroid/view/View;
    invoke-static {}, Lcom/miniclip/facebook/MCFacebook;->access$400()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1416
    # getter for: Lcom/miniclip/facebook/MCFacebook;->likeViewOverlay:Landroid/view/View;
    invoke-static {}, Lcom/miniclip/facebook/MCFacebook;->access$400()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1418
    iget-object v1, p0, Lcom/miniclip/facebook/MCFacebook$28;->val$objectId:Ljava/lang/String;

    invoke-static {v1}, Lcom/miniclip/facebook/MCFacebook;->FBLB_setObjectId(Ljava/lang/String;)V

    .line 1419
    iget v1, p0, Lcom/miniclip/facebook/MCFacebook$28;->val$likeControlStyle:I

    invoke-static {v1}, Lcom/miniclip/facebook/MCFacebook;->FBLB_setStyle(I)V

    .line 1420
    iget v1, p0, Lcom/miniclip/facebook/MCFacebook$28;->val$likeControlHorizontalAlignment:I

    invoke-static {v1}, Lcom/miniclip/facebook/MCFacebook;->FBLB_setHorizontalAlignment(I)V

    .line 1421
    iget v1, p0, Lcom/miniclip/facebook/MCFacebook$28;->val$likeControlAuxiliaryPosition:I

    invoke-static {v1}, Lcom/miniclip/facebook/MCFacebook;->FBLB_setAuxiliaryPosition(I)V

    .line 1422
    iget v1, p0, Lcom/miniclip/facebook/MCFacebook$28;->val$foregroundColor:I

    invoke-static {v1}, Lcom/miniclip/facebook/MCFacebook;->FBLB_setForegroundColor(I)V

    .line 1424
    return-void
.end method
