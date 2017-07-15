.class final Lcom/miniclip/facebook/MCFacebook$22;
.super Ljava/lang/Object;
.source "MCFacebook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/facebook/MCFacebook;->FBLB_setAuxiliaryPosition(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$likeControlAuxiliaryPosition:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 1294
    iput p1, p0, Lcom/miniclip/facebook/MCFacebook$22;->val$likeControlAuxiliaryPosition:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1297
    # getter for: Lcom/miniclip/facebook/MCFacebook;->mLikeView:Lcom/miniclip/facebook/MCLikeView;
    invoke-static {}, Lcom/miniclip/facebook/MCFacebook;->access$300()Lcom/miniclip/facebook/MCLikeView;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1314
    :goto_0
    return-void

    .line 1301
    :cond_0
    iget v1, p0, Lcom/miniclip/facebook/MCFacebook$22;->val$likeControlAuxiliaryPosition:I

    packed-switch v1, :pswitch_data_0

    .line 1305
    sget-object v0, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->INLINE:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    .line 1313
    .local v0, "auxiliaryPosition":Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;
    :goto_1
    # getter for: Lcom/miniclip/facebook/MCFacebook;->mLikeView:Lcom/miniclip/facebook/MCLikeView;
    invoke-static {}, Lcom/miniclip/facebook/MCFacebook;->access$300()Lcom/miniclip/facebook/MCLikeView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miniclip/facebook/MCLikeView;->setAuxiliaryViewPosition(Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;)V

    goto :goto_0

    .line 1308
    .end local v0    # "auxiliaryPosition":Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;
    :pswitch_0
    sget-object v0, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->TOP:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    .line 1309
    .restart local v0    # "auxiliaryPosition":Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;
    goto :goto_1

    .line 1311
    .end local v0    # "auxiliaryPosition":Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;
    :pswitch_1
    sget-object v0, Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;->BOTTOM:Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;

    .restart local v0    # "auxiliaryPosition":Lcom/facebook/widget/LikeView$AuxiliaryViewPosition;
    goto :goto_1

    .line 1301
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
