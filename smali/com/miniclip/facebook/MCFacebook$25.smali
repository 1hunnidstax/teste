.class final Lcom/miniclip/facebook/MCFacebook$25;
.super Ljava/lang/Object;
.source "MCFacebook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/facebook/MCFacebook;->FBLB_setVisible(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0

    .prologue
    .line 1348
    iput-boolean p1, p0, Lcom/miniclip/facebook/MCFacebook$25;->val$visible:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1351
    # getter for: Lcom/miniclip/facebook/MCFacebook;->mLikeView:Lcom/miniclip/facebook/MCLikeView;
    invoke-static {}, Lcom/miniclip/facebook/MCFacebook;->access$300()Lcom/miniclip/facebook/MCLikeView;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1364
    :cond_0
    :goto_0
    return-void

    .line 1354
    :cond_1
    const-string v0, "FBLB_setVisible: "

    const-string v1, "%b"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/miniclip/facebook/MCFacebook$25;->val$visible:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    iget-boolean v0, p0, Lcom/miniclip/facebook/MCFacebook$25;->val$visible:Z

    if-eqz v0, :cond_2

    # getter for: Lcom/miniclip/facebook/MCFacebook;->mLikeView:Lcom/miniclip/facebook/MCLikeView;
    invoke-static {}, Lcom/miniclip/facebook/MCFacebook;->access$300()Lcom/miniclip/facebook/MCLikeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miniclip/facebook/MCLikeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1357
    invoke-static {}, Lcom/miniclip/platform/MCViewManager;->getMainLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    # getter for: Lcom/miniclip/facebook/MCFacebook;->mLikeView:Lcom/miniclip/facebook/MCLikeView;
    invoke-static {}, Lcom/miniclip/facebook/MCFacebook;->access$300()Lcom/miniclip/facebook/MCLikeView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 1358
    invoke-static {}, Lcom/miniclip/platform/MCViewManager;->getMainLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    # getter for: Lcom/miniclip/facebook/MCFacebook;->likeViewOverlay:Landroid/view/View;
    invoke-static {}, Lcom/miniclip/facebook/MCFacebook;->access$400()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 1360
    :cond_2
    iget-boolean v0, p0, Lcom/miniclip/facebook/MCFacebook$25;->val$visible:Z

    if-nez v0, :cond_0

    # getter for: Lcom/miniclip/facebook/MCFacebook;->mLikeView:Lcom/miniclip/facebook/MCLikeView;
    invoke-static {}, Lcom/miniclip/facebook/MCFacebook;->access$300()Lcom/miniclip/facebook/MCLikeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miniclip/facebook/MCLikeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1361
    invoke-static {}, Lcom/miniclip/platform/MCViewManager;->getMainLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    # getter for: Lcom/miniclip/facebook/MCFacebook;->mLikeView:Lcom/miniclip/facebook/MCLikeView;
    invoke-static {}, Lcom/miniclip/facebook/MCFacebook;->access$300()Lcom/miniclip/facebook/MCLikeView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 1362
    invoke-static {}, Lcom/miniclip/platform/MCViewManager;->getMainLayout()Landroid/widget/RelativeLayout;

    move-result-object v0

    # getter for: Lcom/miniclip/facebook/MCFacebook;->likeViewOverlay:Landroid/view/View;
    invoke-static {}, Lcom/miniclip/facebook/MCFacebook;->access$400()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method
