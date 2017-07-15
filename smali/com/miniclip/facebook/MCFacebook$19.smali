.class final Lcom/miniclip/facebook/MCFacebook$19;
.super Ljava/lang/Object;
.source "MCFacebook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/facebook/MCFacebook;->FBLB_setStyle(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$likeControlStyle:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 1229
    iput p1, p0, Lcom/miniclip/facebook/MCFacebook$19;->val$likeControlStyle:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1232
    # getter for: Lcom/miniclip/facebook/MCFacebook;->mLikeView:Lcom/miniclip/facebook/MCLikeView;
    invoke-static {}, Lcom/miniclip/facebook/MCFacebook;->access$300()Lcom/miniclip/facebook/MCLikeView;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1249
    :goto_0
    return-void

    .line 1236
    :cond_0
    iget v1, p0, Lcom/miniclip/facebook/MCFacebook$19;->val$likeControlStyle:I

    packed-switch v1, :pswitch_data_0

    .line 1240
    sget-object v0, Lcom/facebook/widget/LikeView$Style;->STANDARD:Lcom/facebook/widget/LikeView$Style;

    .line 1248
    .local v0, "style":Lcom/facebook/widget/LikeView$Style;
    :goto_1
    # getter for: Lcom/miniclip/facebook/MCFacebook;->mLikeView:Lcom/miniclip/facebook/MCLikeView;
    invoke-static {}, Lcom/miniclip/facebook/MCFacebook;->access$300()Lcom/miniclip/facebook/MCLikeView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miniclip/facebook/MCLikeView;->setLikeViewStyle(Lcom/facebook/widget/LikeView$Style;)V

    goto :goto_0

    .line 1243
    .end local v0    # "style":Lcom/facebook/widget/LikeView$Style;
    :pswitch_0
    sget-object v0, Lcom/facebook/widget/LikeView$Style;->BOX_COUNT:Lcom/facebook/widget/LikeView$Style;

    .line 1244
    .restart local v0    # "style":Lcom/facebook/widget/LikeView$Style;
    goto :goto_1

    .line 1246
    .end local v0    # "style":Lcom/facebook/widget/LikeView$Style;
    :pswitch_1
    sget-object v0, Lcom/facebook/widget/LikeView$Style;->BUTTON:Lcom/facebook/widget/LikeView$Style;

    .restart local v0    # "style":Lcom/facebook/widget/LikeView$Style;
    goto :goto_1

    .line 1236
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
