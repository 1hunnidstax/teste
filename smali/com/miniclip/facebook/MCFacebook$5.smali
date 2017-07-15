.class final Lcom/miniclip/facebook/MCFacebook$5;
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
.field final synthetic val$accessToken:Lcom/facebook/AccessToken;

.field final synthetic val$runAfterLogin:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/facebook/AccessToken;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/miniclip/facebook/MCFacebook$5;->val$accessToken:Lcom/facebook/AccessToken;

    iput-object p2, p0, Lcom/miniclip/facebook/MCFacebook$5;->val$runAfterLogin:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 376
    # getter for: Lcom/miniclip/facebook/MCFacebook;->mFB_Session:Lcom/facebook/Session;
    invoke-static {}, Lcom/miniclip/facebook/MCFacebook;->access$100()Lcom/facebook/Session;

    move-result-object v0

    iget-object v1, p0, Lcom/miniclip/facebook/MCFacebook$5;->val$accessToken:Lcom/facebook/AccessToken;

    new-instance v2, Lcom/miniclip/facebook/MCFacebook$5$1;

    invoke-direct {v2, p0}, Lcom/miniclip/facebook/MCFacebook$5$1;-><init>(Lcom/miniclip/facebook/MCFacebook$5;)V

    invoke-virtual {v0, v1, v2}, Lcom/facebook/Session;->open(Lcom/facebook/AccessToken;Lcom/facebook/Session$StatusCallback;)V

    .line 382
    # getter for: Lcom/miniclip/facebook/MCFacebook;->mFB_Session:Lcom/facebook/Session;
    invoke-static {}, Lcom/miniclip/facebook/MCFacebook;->access$100()Lcom/facebook/Session;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 383
    # getter for: Lcom/miniclip/facebook/MCFacebook;->mFacebookHandler:Landroid/os/Handler;
    invoke-static {}, Lcom/miniclip/facebook/MCFacebook;->access$200()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/miniclip/facebook/MCFacebook$5;->val$runAfterLogin:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 384
    return-void
.end method
