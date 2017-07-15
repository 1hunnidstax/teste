.class Lcom/miniclip/newsfeed/NewsfeedGUI$10;
.super Ljava/lang/Object;
.source "NewsfeedGUI.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/newsfeed/NewsfeedGUI;->setupGetItNowButton(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/newsfeed/NewsfeedGUI;

.field final synthetic val$buttonImageLeft:Landroid/widget/ImageView;

.field final synthetic val$buttonImageMiddle:Landroid/widget/ImageView;

.field final synthetic val$buttonImageRight:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/miniclip/newsfeed/NewsfeedGUI;Landroid/widget/ImageView;Landroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/newsfeed/NewsfeedGUI;

    .prologue
    .line 524
    iput-object p1, p0, Lcom/miniclip/newsfeed/NewsfeedGUI$10;->this$0:Lcom/miniclip/newsfeed/NewsfeedGUI;

    iput-object p2, p0, Lcom/miniclip/newsfeed/NewsfeedGUI$10;->val$buttonImageLeft:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/miniclip/newsfeed/NewsfeedGUI$10;->val$buttonImageMiddle:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/miniclip/newsfeed/NewsfeedGUI$10;->val$buttonImageRight:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 527
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 539
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 529
    :pswitch_0
    iget-object v0, p0, Lcom/miniclip/newsfeed/NewsfeedGUI$10;->val$buttonImageLeft:Landroid/widget/ImageView;

    # getter for: Lcom/miniclip/newsfeed/NewsfeedGUI;->bottomButtonHighlightColor:I
    invoke-static {}, Lcom/miniclip/newsfeed/NewsfeedGUI;->access$200()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 530
    iget-object v0, p0, Lcom/miniclip/newsfeed/NewsfeedGUI$10;->val$buttonImageMiddle:Landroid/widget/ImageView;

    # getter for: Lcom/miniclip/newsfeed/NewsfeedGUI;->bottomButtonHighlightColor:I
    invoke-static {}, Lcom/miniclip/newsfeed/NewsfeedGUI;->access$200()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 531
    iget-object v0, p0, Lcom/miniclip/newsfeed/NewsfeedGUI$10;->val$buttonImageRight:Landroid/widget/ImageView;

    # getter for: Lcom/miniclip/newsfeed/NewsfeedGUI;->bottomButtonHighlightColor:I
    invoke-static {}, Lcom/miniclip/newsfeed/NewsfeedGUI;->access$200()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    .line 534
    :pswitch_1
    iget-object v0, p0, Lcom/miniclip/newsfeed/NewsfeedGUI$10;->val$buttonImageLeft:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 535
    iget-object v0, p0, Lcom/miniclip/newsfeed/NewsfeedGUI$10;->val$buttonImageMiddle:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 536
    iget-object v0, p0, Lcom/miniclip/newsfeed/NewsfeedGUI$10;->val$buttonImageRight:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_0

    .line 527
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
