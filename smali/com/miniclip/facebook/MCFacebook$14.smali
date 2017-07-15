.class final Lcom/miniclip/facebook/MCFacebook$14;
.super Ljava/lang/Object;
.source "MCFacebook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/facebook/MCFacebook;->facebook_showRequestDialog(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$params:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 722
    iput-object p1, p0, Lcom/miniclip/facebook/MCFacebook$14;->val$params:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 725
    new-instance v1, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;

    sget-object v2, Lcom/miniclip/facebook/MCFacebook;->mContext:Landroid/app/Activity;

    .line 727
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v3

    iget-object v4, p0, Lcom/miniclip/facebook/MCFacebook$14;->val$params:Landroid/os/Bundle;

    invoke-direct {v1, v2, v3, v4}, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;-><init>(Landroid/content/Context;Lcom/facebook/Session;Landroid/os/Bundle;)V

    new-instance v2, Lcom/miniclip/facebook/MCFacebook$14$1;

    invoke-direct {v2, p0}, Lcom/miniclip/facebook/MCFacebook$14$1;-><init>(Lcom/miniclip/facebook/MCFacebook$14;)V

    .line 729
    invoke-virtual {v1, v2}, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;->setOnCompleteListener(Lcom/facebook/widget/WebDialog$OnCompleteListener;)Lcom/facebook/widget/WebDialog$BuilderBase;

    move-result-object v1

    check-cast v1, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;

    .line 785
    invoke-virtual {v1}, Lcom/facebook/widget/WebDialog$RequestsDialogBuilder;->build()Lcom/facebook/widget/WebDialog;

    move-result-object v0

    .line 786
    .local v0, "requestsDialog":Lcom/facebook/widget/WebDialog;
    invoke-virtual {v0}, Lcom/facebook/widget/WebDialog;->show()V

    .line 787
    return-void
.end method
