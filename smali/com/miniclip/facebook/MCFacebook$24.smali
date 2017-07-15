.class final Lcom/miniclip/facebook/MCFacebook$24;
.super Ljava/lang/Object;
.source "MCFacebook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/facebook/MCFacebook;->FBLB_setPosition(FFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$virtualScreenHeight:F

.field final synthetic val$x:F

.field final synthetic val$y:F


# direct methods
.method constructor <init>(FFF)V
    .locals 0

    .prologue
    .line 1335
    iput p1, p0, Lcom/miniclip/facebook/MCFacebook$24;->val$x:F

    iput p2, p0, Lcom/miniclip/facebook/MCFacebook$24;->val$y:F

    iput p3, p0, Lcom/miniclip/facebook/MCFacebook$24;->val$virtualScreenHeight:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1338
    # getter for: Lcom/miniclip/facebook/MCFacebook;->mLikeView:Lcom/miniclip/facebook/MCLikeView;
    invoke-static {}, Lcom/miniclip/facebook/MCFacebook;->access$300()Lcom/miniclip/facebook/MCLikeView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1342
    :goto_0
    return-void

    .line 1341
    :cond_0
    # getter for: Lcom/miniclip/facebook/MCFacebook;->mLikeView:Lcom/miniclip/facebook/MCLikeView;
    invoke-static {}, Lcom/miniclip/facebook/MCFacebook;->access$300()Lcom/miniclip/facebook/MCLikeView;

    move-result-object v0

    iget v1, p0, Lcom/miniclip/facebook/MCFacebook$24;->val$x:F

    iget v2, p0, Lcom/miniclip/facebook/MCFacebook$24;->val$y:F

    iget v3, p0, Lcom/miniclip/facebook/MCFacebook$24;->val$virtualScreenHeight:F

    invoke-virtual {v0, v1, v2, v3}, Lcom/miniclip/facebook/MCLikeView;->setPosition(FFF)V

    goto :goto_0
.end method
