.class Lcom/miniclip/facebook/MCFacebook$14$1;
.super Ljava/lang/Object;
.source "MCFacebook.java"

# interfaces
.implements Lcom/facebook/widget/WebDialog$OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/facebook/MCFacebook$14;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/facebook/MCFacebook$14;


# direct methods
.method constructor <init>(Lcom/miniclip/facebook/MCFacebook$14;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/facebook/MCFacebook$14;

    .prologue
    .line 729
    iput-object p1, p0, Lcom/miniclip/facebook/MCFacebook$14$1;->this$0:Lcom/miniclip/facebook/MCFacebook$14;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
    .locals 3
    .param p1, "values"    # Landroid/os/Bundle;
    .param p2, "error"    # Lcom/facebook/FacebookException;

    .prologue
    .line 735
    if-eqz p2, :cond_1

    .line 736
    instance-of v1, p2, Lcom/facebook/FacebookOperationCanceledException;

    if-eqz v1, :cond_0

    .line 737
    sget-object v1, Lcom/miniclip/facebook/MCFacebook;->mGLView:Lcom/miniclip/facebook/MCFacebook$QueueEvent;

    new-instance v2, Lcom/miniclip/facebook/MCFacebook$14$1$1;

    invoke-direct {v2, p0, p2}, Lcom/miniclip/facebook/MCFacebook$14$1$1;-><init>(Lcom/miniclip/facebook/MCFacebook$14$1;Lcom/facebook/FacebookException;)V

    invoke-interface {v1, v2}, Lcom/miniclip/facebook/MCFacebook$QueueEvent;->queueEvent(Ljava/lang/Runnable;)V

    .line 782
    :goto_0
    return-void

    .line 744
    :cond_0
    sget-object v1, Lcom/miniclip/facebook/MCFacebook;->mGLView:Lcom/miniclip/facebook/MCFacebook$QueueEvent;

    new-instance v2, Lcom/miniclip/facebook/MCFacebook$14$1$2;

    invoke-direct {v2, p0, p2}, Lcom/miniclip/facebook/MCFacebook$14$1$2;-><init>(Lcom/miniclip/facebook/MCFacebook$14$1;Lcom/facebook/FacebookException;)V

    invoke-interface {v1, v2}, Lcom/miniclip/facebook/MCFacebook$QueueEvent;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 754
    :cond_1
    const-string v1, "request"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 755
    .local v0, "requestId":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 756
    sget-object v1, Lcom/miniclip/facebook/MCFacebook;->mGLView:Lcom/miniclip/facebook/MCFacebook$QueueEvent;

    new-instance v2, Lcom/miniclip/facebook/MCFacebook$14$1$3;

    invoke-direct {v2, p0, p1, v0}, Lcom/miniclip/facebook/MCFacebook$14$1$3;-><init>(Lcom/miniclip/facebook/MCFacebook$14$1;Landroid/os/Bundle;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/miniclip/facebook/MCFacebook$QueueEvent;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 774
    :cond_2
    sget-object v1, Lcom/miniclip/facebook/MCFacebook;->mGLView:Lcom/miniclip/facebook/MCFacebook$QueueEvent;

    new-instance v2, Lcom/miniclip/facebook/MCFacebook$14$1$4;

    invoke-direct {v2, p0}, Lcom/miniclip/facebook/MCFacebook$14$1$4;-><init>(Lcom/miniclip/facebook/MCFacebook$14$1;)V

    invoke-interface {v1, v2}, Lcom/miniclip/facebook/MCFacebook$QueueEvent;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
