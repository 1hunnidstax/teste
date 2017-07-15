.class Lcom/miniclip/newsfeed/NewsfeedGUI$8;
.super Ljava/lang/Object;
.source "NewsfeedGUI.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/newsfeed/NewsfeedGUI;->setupNextButton(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/newsfeed/NewsfeedGUI;

.field final synthetic val$button:Landroid/widget/ImageButton;


# direct methods
.method constructor <init>(Lcom/miniclip/newsfeed/NewsfeedGUI;Landroid/widget/ImageButton;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/newsfeed/NewsfeedGUI;

    .prologue
    .line 385
    iput-object p1, p0, Lcom/miniclip/newsfeed/NewsfeedGUI$8;->this$0:Lcom/miniclip/newsfeed/NewsfeedGUI;

    iput-object p2, p0, Lcom/miniclip/newsfeed/NewsfeedGUI$8;->val$button:Landroid/widget/ImageButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 388
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 396
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 390
    :pswitch_0
    iget-object v0, p0, Lcom/miniclip/newsfeed/NewsfeedGUI$8;->val$button:Landroid/widget/ImageButton;

    # getter for: Lcom/miniclip/newsfeed/NewsfeedGUI;->bottomButtonHighlightColor:I
    invoke-static {}, Lcom/miniclip/newsfeed/NewsfeedGUI;->access$200()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    goto :goto_0

    .line 393
    :pswitch_1
    iget-object v0, p0, Lcom/miniclip/newsfeed/NewsfeedGUI$8;->val$button:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->clearColorFilter()V

    goto :goto_0

    .line 388
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
