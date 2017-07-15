.class final Lcom/miniclip/facebook/MCFacebook$6;
.super Ljava/lang/Object;
.source "MCFacebook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/facebook/MCFacebook;->faceBook_reauthorizeWithPublishPermissions(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$permissionsArray:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 395
    iput-object p1, p0, Lcom/miniclip/facebook/MCFacebook$6;->val$permissionsArray:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 398
    # getter for: Lcom/miniclip/facebook/MCFacebook;->mFB_Session:Lcom/facebook/Session;
    invoke-static {}, Lcom/miniclip/facebook/MCFacebook;->access$100()Lcom/facebook/Session;

    move-result-object v1

    if-eqz v1, :cond_0

    # getter for: Lcom/miniclip/facebook/MCFacebook;->mFB_Session:Lcom/facebook/Session;
    invoke-static {}, Lcom/miniclip/facebook/MCFacebook;->access$100()Lcom/facebook/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/Session;->getState()Lcom/facebook/SessionState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/SessionState;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 399
    new-instance v0, Lcom/facebook/Session$NewPermissionsRequest;

    sget-object v1, Lcom/miniclip/facebook/MCFacebook;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/miniclip/facebook/MCFacebook$6;->val$permissionsArray:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/facebook/Session$NewPermissionsRequest;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    .line 400
    .local v0, "newPermissionsRequest":Lcom/facebook/Session$NewPermissionsRequest;
    sget-boolean v1, Lcom/miniclip/facebook/MCFacebook;->mFORCE_FB_WEB:Z

    if-eqz v1, :cond_1

    .line 402
    sget-object v1, Lcom/facebook/SessionLoginBehavior;->SUPPRESS_SSO:Lcom/facebook/SessionLoginBehavior;

    invoke-virtual {v0, v1}, Lcom/facebook/Session$NewPermissionsRequest;->setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)Lcom/facebook/Session$NewPermissionsRequest;

    .line 408
    :goto_0
    # getter for: Lcom/miniclip/facebook/MCFacebook;->mFB_Session:Lcom/facebook/Session;
    invoke-static {}, Lcom/miniclip/facebook/MCFacebook;->access$100()Lcom/facebook/Session;

    move-result-object v1

    new-instance v2, Lcom/miniclip/facebook/MCFacebook$6$1;

    invoke-direct {v2, p0}, Lcom/miniclip/facebook/MCFacebook$6$1;-><init>(Lcom/miniclip/facebook/MCFacebook$6;)V

    invoke-virtual {v1, v2}, Lcom/facebook/Session;->addCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 428
    # getter for: Lcom/miniclip/facebook/MCFacebook;->mFB_Session:Lcom/facebook/Session;
    invoke-static {}, Lcom/miniclip/facebook/MCFacebook;->access$100()Lcom/facebook/Session;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/Session;->requestNewPublishPermissions(Lcom/facebook/Session$NewPermissionsRequest;)V

    .line 431
    .end local v0    # "newPermissionsRequest":Lcom/facebook/Session$NewPermissionsRequest;
    :cond_0
    return-void

    .line 406
    .restart local v0    # "newPermissionsRequest":Lcom/facebook/Session$NewPermissionsRequest;
    :cond_1
    sget-object v1, Lcom/facebook/SessionLoginBehavior;->SSO_WITH_FALLBACK:Lcom/facebook/SessionLoginBehavior;

    invoke-virtual {v0, v1}, Lcom/facebook/Session$NewPermissionsRequest;->setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)Lcom/facebook/Session$NewPermissionsRequest;

    goto :goto_0
.end method
