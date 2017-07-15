.class Lcom/miniclip/facebook/MCFacebook$17$1;
.super Ljava/lang/Object;
.source "MCFacebook.java"

# interfaces
.implements Lcom/facebook/widget/WebDialog$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/facebook/MCFacebook$17;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/facebook/MCFacebook$17;


# direct methods
.method constructor <init>(Lcom/miniclip/facebook/MCFacebook$17;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/facebook/MCFacebook$17;

    .prologue
    .line 957
    iput-object p1, p0, Lcom/miniclip/facebook/MCFacebook$17$1;->this$0:Lcom/miniclip/facebook/MCFacebook$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .locals 3
    .param p1, "values"    # Landroid/os/Bundle;
    .param p2, "error"    # Lcom/facebook/FacebookException;

    .prologue
    .line 961
    const/4 v0, 0x0

    .line 962
    .local v0, "posted":Z
    if-nez p2, :cond_2

    .line 966
    const-string v1, "request"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "post_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 968
    :cond_0
    const/4 v0, 0x1

    .line 987
    :goto_0
    if-eqz v0, :cond_4

    .line 989
    sget-object v1, Lcom/miniclip/facebook/MCFacebook;->mGLView:Lcom/miniclip/facebook/MCFacebook$QueueEvent;

    new-instance v2, Lcom/miniclip/facebook/MCFacebook$17$1$1;

    invoke-direct {v2, p0}, Lcom/miniclip/facebook/MCFacebook$17$1$1;-><init>(Lcom/miniclip/facebook/MCFacebook$17$1;)V

    invoke-interface {v1, v2}, Lcom/miniclip/facebook/MCFacebook$QueueEvent;->queueEvent(Ljava/lang/Runnable;)V

    .line 1007
    :goto_1
    return-void

    .line 973
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 976
    :cond_2
    instance-of v1, p2, Lcom/facebook/FacebookOperationCanceledException;

    if-eqz v1, :cond_3

    .line 979
    const/4 v0, 0x0

    goto :goto_0

    .line 984
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 998
    :cond_4
    sget-object v1, Lcom/miniclip/facebook/MCFacebook;->mGLView:Lcom/miniclip/facebook/MCFacebook$QueueEvent;

    new-instance v2, Lcom/miniclip/facebook/MCFacebook$17$1$2;

    invoke-direct {v2, p0}, Lcom/miniclip/facebook/MCFacebook$17$1$2;-><init>(Lcom/miniclip/facebook/MCFacebook$17$1;)V

    invoke-interface {v1, v2}, Lcom/miniclip/facebook/MCFacebook$QueueEvent;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_1
.end method
