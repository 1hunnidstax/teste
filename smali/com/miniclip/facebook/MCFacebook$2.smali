.class final Lcom/miniclip/facebook/MCFacebook$2;
.super Ljava/lang/Object;
.source "MCFacebook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/facebook/MCFacebook;->facebookLoginSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 248
    const/4 v0, 0x0

    # setter for: Lcom/miniclip/facebook/MCFacebook;->mFB_AuthenticationRequested:Z
    invoke-static {v0}, Lcom/miniclip/facebook/MCFacebook;->access$002(Z)Z

    .line 249
    invoke-static {}, Lcom/miniclip/facebook/MCFacebook;->MfacebookLoginComplete()V

    .line 250
    return-void
.end method
