.class Lcom/miniclip/newsfeed/NewsfeedGUI$1;
.super Ljava/lang/Object;
.source "NewsfeedGUI.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/newsfeed/NewsfeedGUI;->showBoardInternal([I)Z
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
    .line 130
    iput-object p1, p0, Lcom/miniclip/newsfeed/NewsfeedGUI$1;->this$0:Lcom/miniclip/newsfeed/NewsfeedGUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/miniclip/newsfeed/NewsfeedGUI$1;->this$0:Lcom/miniclip/newsfeed/NewsfeedGUI;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/miniclip/newsfeed/NewsfeedGUI;->touchesBlockerPopup:Landroid/widget/PopupWindow;

    .line 134
    return-void
.end method
