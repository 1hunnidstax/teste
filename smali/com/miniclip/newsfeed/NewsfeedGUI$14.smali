.class final Lcom/miniclip/newsfeed/NewsfeedGUI$14;
.super Ljava/lang/Object;
.source "NewsfeedGUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/newsfeed/NewsfeedGUI;->showBoard([I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$messages:[I


# direct methods
.method constructor <init>([I)V
    .locals 0

    .prologue
    .line 803
    iput-object p1, p0, Lcom/miniclip/newsfeed/NewsfeedGUI$14;->val$messages:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 806
    invoke-static {}, Lcom/miniclip/newsfeed/Newsfeed;->instance()Lcom/miniclip/newsfeed/Newsfeed;

    move-result-object v0

    iget-object v0, v0, Lcom/miniclip/newsfeed/Newsfeed;->gui:Lcom/miniclip/newsfeed/NewsfeedGUI;

    iget-object v1, p0, Lcom/miniclip/newsfeed/NewsfeedGUI$14;->val$messages:[I

    invoke-virtual {v0, v1}, Lcom/miniclip/newsfeed/NewsfeedGUI;->showBoardInternal([I)Z

    .line 807
    return-void
.end method
