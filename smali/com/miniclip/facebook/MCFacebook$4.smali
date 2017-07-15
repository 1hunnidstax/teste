.class final Lcom/miniclip/facebook/MCFacebook$4;
.super Ljava/lang/Object;
.source "MCFacebook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/facebook/MCFacebook;->faceBook_authorizeAndRun(Ljava/lang/String;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$permissionsArray:[Ljava/lang/String;

.field final synthetic val$runAfterLogin:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lcom/miniclip/facebook/MCFacebook$4;->val$runAfterLogin:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/miniclip/facebook/MCFacebook$4;->val$permissionsArray:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 298
    # getter for: Lcom/miniclip/facebook/MCFacebook;->mFB_Session:Lcom/facebook/Session;
    invoke-static {}, Lcom/miniclip/facebook/MCFacebook;->access$100()Lcom/facebook/Session;

    move-result-object v1

    if-eqz v1, :cond_0

    # getter for: Lcom/miniclip/facebook/MCFacebook;->mFB_Session:Lcom/facebook/Session;
    invoke-static {}, Lcom/miniclip/facebook/MCFacebook;->access$100()Lcom/facebook/Session;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    if-nez v1, :cond_0

    .line 299
    new-instance v1, Lcom/facebook/Session$OpenRequest;

    sget-object v2, Lcom/miniclip/facebook/MCFacebook;->mContext:Landroid/app/Activity;

    invoke-direct {v1, v2}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    new-instance v2, Lcom/miniclip/facebook/MCFacebook$4$1;

    invoke-direct {v2, p0}, Lcom/miniclip/facebook/MCFacebook$4$1;-><init>(Lcom/miniclip/facebook/MCFacebook$4;)V

    invoke-virtual {v1, v2}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    move-result-object v0

    .line 344
    .local v0, "openRequest":Lcom/facebook/Session$OpenRequest;
    if-eqz v0, :cond_0

    .line 345
    sget-object v1, Lcom/facebook/SessionDefaultAudience;->FRIENDS:Lcom/facebook/SessionDefaultAudience;

    invoke-virtual {v0, v1}, Lcom/facebook/Session$OpenRequest;->setDefaultAudience(Lcom/facebook/SessionDefaultAudience;)Lcom/facebook/Session$OpenRequest;

    .line 346
    iget-object v1, p0, Lcom/miniclip/facebook/MCFacebook$4;->val$permissionsArray:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;

    .line 347
    sget-boolean v1, Lcom/miniclip/facebook/MCFacebook;->mFORCE_FB_WEB:Z

    if-eqz v1, :cond_1

    .line 349
    sget-object v1, Lcom/facebook/SessionLoginBehavior;->SUPPRESS_SSO:Lcom/facebook/SessionLoginBehavior;

    invoke-virtual {v0, v1}, Lcom/facebook/Session$OpenRequest;->setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)Lcom/facebook/Session$OpenRequest;

    .line 355
    :goto_0
    # getter for: Lcom/miniclip/facebook/MCFacebook;->mFB_Session:Lcom/facebook/Session;
    invoke-static {}, Lcom/miniclip/facebook/MCFacebook;->access$100()Lcom/facebook/Session;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    .line 356
    # getter for: Lcom/miniclip/facebook/MCFacebook;->mFB_Session:Lcom/facebook/Session;
    invoke-static {}, Lcom/miniclip/facebook/MCFacebook;->access$100()Lcom/facebook/Session;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 359
    .end local v0    # "openRequest":Lcom/facebook/Session$OpenRequest;
    :cond_0
    return-void

    .line 353
    .restart local v0    # "openRequest":Lcom/facebook/Session$OpenRequest;
    :cond_1
    sget-object v1, Lcom/facebook/SessionLoginBehavior;->SSO_WITH_FALLBACK:Lcom/facebook/SessionLoginBehavior;

    invoke-virtual {v0, v1}, Lcom/facebook/Session$OpenRequest;->setLoginBehavior(Lcom/facebook/SessionLoginBehavior;)Lcom/facebook/Session$OpenRequest;

    goto :goto_0
.end method
