.class Lcom/miniclip/facebook/MCFacebook$8$1;
.super Ljava/lang/Object;
.source "MCFacebook.java"

# interfaces
.implements Lcom/facebook/Session$StatusCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/facebook/MCFacebook$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/facebook/MCFacebook$8;


# direct methods
.method constructor <init>(Lcom/miniclip/facebook/MCFacebook$8;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/facebook/MCFacebook$8;

    .prologue
    .line 505
    iput-object p1, p0, Lcom/miniclip/facebook/MCFacebook$8$1;->this$0:Lcom/miniclip/facebook/MCFacebook$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
    .locals 2
    .param p1, "session"    # Lcom/facebook/Session;
    .param p2, "state"    # Lcom/facebook/SessionState;
    .param p3, "exception"    # Ljava/lang/Exception;

    .prologue
    .line 508
    sget-object v0, Lcom/miniclip/facebook/MCFacebook;->mGLView:Lcom/miniclip/facebook/MCFacebook$QueueEvent;

    new-instance v1, Lcom/miniclip/facebook/MCFacebook$8$1$1;

    invoke-direct {v1, p0, p3}, Lcom/miniclip/facebook/MCFacebook$8$1$1;-><init>(Lcom/miniclip/facebook/MCFacebook$8$1;Ljava/lang/Exception;)V

    invoke-interface {v0, v1}, Lcom/miniclip/facebook/MCFacebook$QueueEvent;->queueEvent(Ljava/lang/Runnable;)V

    .line 533
    return-void
.end method
