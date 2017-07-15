.class final Lcom/miniclip/facebook/MCFacebook$27;
.super Ljava/lang/Object;
.source "MCFacebook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/facebook/MCFacebook;->FBLB_setHeight(FF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$height:F

.field final synthetic val$virtualScreenHeight:F


# direct methods
.method constructor <init>(FF)V
    .locals 0

    .prologue
    .line 1384
    iput p1, p0, Lcom/miniclip/facebook/MCFacebook$27;->val$height:F

    iput p2, p0, Lcom/miniclip/facebook/MCFacebook$27;->val$virtualScreenHeight:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1387
    # getter for: Lcom/miniclip/facebook/MCFacebook;->mLikeView:Lcom/miniclip/facebook/MCLikeView;
    invoke-static {}, Lcom/miniclip/facebook/MCFacebook;->access$300()Lcom/miniclip/facebook/MCLikeView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1391
    :goto_0
    return-void

    .line 1390
    :cond_0
    # getter for: Lcom/miniclip/facebook/MCFacebook;->mLikeView:Lcom/miniclip/facebook/MCLikeView;
    invoke-static {}, Lcom/miniclip/facebook/MCFacebook;->access$300()Lcom/miniclip/facebook/MCLikeView;

    move-result-object v0

    iget v1, p0, Lcom/miniclip/facebook/MCFacebook$27;->val$height:F

    iget v2, p0, Lcom/miniclip/facebook/MCFacebook$27;->val$virtualScreenHeight:F

    invoke-virtual {v0, v1, v2}, Lcom/miniclip/facebook/MCLikeView;->setHeight(FF)V

    goto :goto_0
.end method
