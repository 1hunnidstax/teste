.class Lcom/miniclip/facebook/MCFacebook$6$1$1;
.super Ljava/lang/Object;
.source "MCFacebook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/facebook/MCFacebook$6$1;->call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miniclip/facebook/MCFacebook$6$1;

.field final synthetic val$exception:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/miniclip/facebook/MCFacebook$6$1;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miniclip/facebook/MCFacebook$6$1;

    .prologue
    .line 411
    iput-object p1, p0, Lcom/miniclip/facebook/MCFacebook$6$1$1;->this$1:Lcom/miniclip/facebook/MCFacebook$6$1;

    iput-object p2, p0, Lcom/miniclip/facebook/MCFacebook$6$1$1;->val$exception:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 414
    const-string v1, "publish_actions"

    invoke-static {v1}, Lcom/miniclip/facebook/MCFacebook;->faceBook_hasPermission(Ljava/lang/String;)I

    move-result v0

    .line 415
    .local v0, "hasPermissions":I
    const-string v1, "FACEBOOK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "the has permission value is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/miniclip/facebook/MCFacebook$6$1$1;->val$exception:Ljava/lang/Exception;

    if-nez v1, :cond_0

    .line 417
    const-string v1, "FACEBOOK"

    const-string v2, "GOT PUBLISH PERMISSION "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-static {}, Lcom/miniclip/facebook/MCFacebook;->MfacebookLoginComplete()V

    .line 424
    :goto_0
    return-void

    .line 422
    :cond_0
    const-string v1, ""

    invoke-static {v1, v4, v4}, Lcom/miniclip/facebook/MCFacebook;->MfacebookLoginFailed(Ljava/lang/String;II)V

    goto :goto_0
.end method
