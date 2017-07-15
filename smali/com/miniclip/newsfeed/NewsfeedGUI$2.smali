.class Lcom/miniclip/newsfeed/NewsfeedGUI$2;
.super Ljava/lang/Object;
.source "NewsfeedGUI.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/newsfeed/NewsfeedGUI;->setupPopupWindow(Landroid/content/Context;Landroid/view/View;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/newsfeed/NewsfeedGUI;


# direct methods
.method constructor <init>(Lcom/miniclip/newsfeed/NewsfeedGUI;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/newsfeed/NewsfeedGUI;

    .prologue
    .line 287
    iput-object p1, p0, Lcom/miniclip/newsfeed/NewsfeedGUI$2;->this$0:Lcom/miniclip/newsfeed/NewsfeedGUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/miniclip/newsfeed/NewsfeedGUI$2;->this$0:Lcom/miniclip/newsfeed/NewsfeedGUI;

    const/4 v1, 0x0

    # setter for: Lcom/miniclip/newsfeed/NewsfeedGUI;->showingNews:Z
    invoke-static {v0, v1}, Lcom/miniclip/newsfeed/NewsfeedGUI;->access$002(Lcom/miniclip/newsfeed/NewsfeedGUI;Z)Z

    .line 291
    invoke-static {}, Lcom/miniclip/newsfeed/Newsfeed;->instance()Lcom/miniclip/newsfeed/Newsfeed;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miniclip/newsfeed/Newsfeed;->newsfeedBoardDidDisappear()V

    .line 292
    iget-object v0, p0, Lcom/miniclip/newsfeed/NewsfeedGUI$2;->this$0:Lcom/miniclip/newsfeed/NewsfeedGUI;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/miniclip/newsfeed/NewsfeedGUI;->popup:Landroid/widget/PopupWindow;

    .line 293
    return-void
.end method
