.class final Lcom/miniclip/facebook/MCFacebook$21;
.super Ljava/lang/Object;
.source "MCFacebook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/facebook/MCFacebook;->FBLB_setHorizontalAlignment(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$likeControlHorizontalAlignment:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 1268
    iput p1, p0, Lcom/miniclip/facebook/MCFacebook$21;->val$likeControlHorizontalAlignment:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1271
    # getter for: Lcom/miniclip/facebook/MCFacebook;->mLikeView:Lcom/miniclip/facebook/MCLikeView;
    invoke-static {}, Lcom/miniclip/facebook/MCFacebook;->access$300()Lcom/miniclip/facebook/MCLikeView;

    move-result-object v1

    if-nez v1, :cond_0

    .line 1288
    :goto_0
    return-void

    .line 1275
    :cond_0
    iget v1, p0, Lcom/miniclip/facebook/MCFacebook$21;->val$likeControlHorizontalAlignment:I

    packed-switch v1, :pswitch_data_0

    .line 1279
    sget-object v0, Lcom/facebook/widget/LikeView$HorizontalAlignment;->LEFT:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    .line 1287
    .local v0, "horizontalAlignment":Lcom/facebook/widget/LikeView$HorizontalAlignment;
    :goto_1
    # getter for: Lcom/miniclip/facebook/MCFacebook;->mLikeView:Lcom/miniclip/facebook/MCLikeView;
    invoke-static {}, Lcom/miniclip/facebook/MCFacebook;->access$300()Lcom/miniclip/facebook/MCLikeView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miniclip/facebook/MCLikeView;->setHorizontalAlignment(Lcom/facebook/widget/LikeView$HorizontalAlignment;)V

    goto :goto_0

    .line 1282
    .end local v0    # "horizontalAlignment":Lcom/facebook/widget/LikeView$HorizontalAlignment;
    :pswitch_0
    sget-object v0, Lcom/facebook/widget/LikeView$HorizontalAlignment;->CENTER:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    .line 1283
    .restart local v0    # "horizontalAlignment":Lcom/facebook/widget/LikeView$HorizontalAlignment;
    goto :goto_1

    .line 1285
    .end local v0    # "horizontalAlignment":Lcom/facebook/widget/LikeView$HorizontalAlignment;
    :pswitch_1
    sget-object v0, Lcom/facebook/widget/LikeView$HorizontalAlignment;->RIGHT:Lcom/facebook/widget/LikeView$HorizontalAlignment;

    .restart local v0    # "horizontalAlignment":Lcom/facebook/widget/LikeView$HorizontalAlignment;
    goto :goto_1

    .line 1275
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
