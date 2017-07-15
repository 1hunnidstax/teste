.class final Lcom/miniclip/facebook/MCFacebook$17;
.super Ljava/lang/Object;
.source "MCFacebook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/facebook/MCFacebook;->faceBook_dialog(Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$parBundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 953
    iput-object p1, p0, Lcom/miniclip/facebook/MCFacebook$17;->val$parBundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 956
    new-instance v1, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;

    sget-object v2, Lcom/miniclip/facebook/MCFacebook;->mContext:Landroid/app/Activity;

    # getter for: Lcom/miniclip/facebook/MCFacebook;->mFB_Session:Lcom/facebook/Session;
    invoke-static {}, Lcom/miniclip/facebook/MCFacebook;->access$100()Lcom/facebook/Session;

    move-result-object v3

    iget-object v4, p0, Lcom/miniclip/facebook/MCFacebook$17;->val$parBundle:Landroid/os/Bundle;

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;-><init>(Landroid/content/Context;Lcom/facebook/Session;Landroid/os/Bundle;)V

    new-instance v2, Lcom/miniclip/facebook/MCFacebook$17$1;

    invoke-direct {v2, p0}, Lcom/miniclip/facebook/MCFacebook$17$1;-><init>(Lcom/miniclip/facebook/MCFacebook$17;)V

    .line 957
    invoke-virtual {v1, v2}, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;->setOnCompleteListener(Lcom/facebook/widget/WebDialog$OnCompleteListener;)Lcom/facebook/widget/WebDialog$BuilderBase;

    move-result-object v1

    check-cast v1, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;

    .line 1008
    invoke-virtual {v1}, Lcom/facebook/widget/WebDialog$FeedDialogBuilder;->build()Lcom/facebook/widget/WebDialog;

    move-result-object v0

    .line 1009
    .local v0, "dialog":Lcom/facebook/widget/WebDialog;
    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog;->show()V

    .line 1010
    return-void
.end method
