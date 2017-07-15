.class final Lcom/miniclip/newsfeed/NewsfeedGUI$16;
.super Ljava/lang/Object;
.source "NewsfeedGUI.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/newsfeed/NewsfeedGUI;->showPrevious()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 861
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 864
    invoke-static {}, Lcom/miniclip/newsfeed/Newsfeed;->instance()Lcom/miniclip/newsfeed/Newsfeed;

    move-result-object v0

    iget-object v0, v0, Lcom/miniclip/newsfeed/Newsfeed;->gui:Lcom/miniclip/newsfeed/NewsfeedGUI;

    invoke-virtual {v0}, Lcom/miniclip/newsfeed/NewsfeedGUI;->onClickedPreviousButton()V

    .line 865
    return-void
.end method
