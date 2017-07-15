.class Lcom/miniclip/newsfeed/NewsfeedGUI$5;
.super Ljava/lang/Object;
.source "NewsfeedGUI.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/newsfeed/NewsfeedGUI;->setupPreviousButton(Landroid/view/View;)V
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
    .line 336
    iput-object p1, p0, Lcom/miniclip/newsfeed/NewsfeedGUI$5;->this$0:Lcom/miniclip/newsfeed/NewsfeedGUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 339
    iget-object v0, p0, Lcom/miniclip/newsfeed/NewsfeedGUI$5;->this$0:Lcom/miniclip/newsfeed/NewsfeedGUI;

    invoke-virtual {v0}, Lcom/miniclip/newsfeed/NewsfeedGUI;->onClickedPreviousButton()V

    .line 340
    return-void
.end method
