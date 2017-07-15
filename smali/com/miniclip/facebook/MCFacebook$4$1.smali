.class Lcom/miniclip/facebook/MCFacebook$4$1;
.super Ljava/lang/Object;
.source "MCFacebook.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/facebook/MCFacebook$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/facebook/MCFacebook$4;


# direct methods
.method constructor <init>(Lcom/miniclip/facebook/MCFacebook$4;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/facebook/MCFacebook$4;

    .prologue
    .line 299
    iput-object p1, p0, Lcom/miniclip/facebook/MCFacebook$4$1;->this$0:Lcom/miniclip/facebook/MCFacebook$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 6
    .param p1, "session"    # Lcom/facebook/Session;
    .param p2, "state"    # Lcom/facebook/SessionState;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 302
    # getter for: Lcom/miniclip/facebook/MCFacebook;->mFB_AuthenticationRequested:Z
    invoke-static {}, Lcom/miniclip/facebook/MCFacebook;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lcom/facebook/SessionState;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 304
    # getter for: Lcom/miniclip/facebook/MCFacebook;->mFacebookHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/miniclip/facebook/MCFacebook;->access$200()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/miniclip/facebook/MCFacebook$4$1;->this$0:Lcom/miniclip/facebook/MCFacebook$4;

    iget-object v2, v2, Lcom/miniclip/facebook/MCFacebook$4;->val$runAfterLogin:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 307
    :cond_0
    if-eqz p3, :cond_1

    .line 310
    const/4 v0, 0x0

    .line 312
    .local v0, "response":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    sget-object v1, Lcom/miniclip/facebook/MCFacebook;->mGLView:Lcom/miniclip/facebook/MCFacebook$QueueEvent;

    new-instance v2, Lcom/miniclip/facebook/MCFacebook$4$1$1;

    invoke-direct {v2, p0, v0}, Lcom/miniclip/facebook/MCFacebook$4$1$1;-><init>(Lcom/miniclip/facebook/MCFacebook$4$1;Ljava/util/HashMap;)V

    invoke-interface {v1, v2}, Lcom/miniclip/facebook/MCFacebook$QueueEvent;->queueEvent(Ljava/lang/Runnable;)V

    .line 342
    .end local v0    # "response":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_1
    return-void
.end method
