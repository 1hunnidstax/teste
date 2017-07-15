.class Lcom/miniclip/facebook/MCFacebook$14$1$1;
.super Ljava/lang/Object;
.source "MCFacebook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/facebook/MCFacebook$14$1;->onComplete(Landroid/os/Bundle;Lcom/facebook/FacebookException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miniclip/facebook/MCFacebook$14$1;

.field final synthetic val$error:Lcom/facebook/FacebookException;


# direct methods
.method constructor <init>(Lcom/miniclip/facebook/MCFacebook$14$1;Lcom/facebook/FacebookException;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miniclip/facebook/MCFacebook$14$1;

    .prologue
    .line 737
    iput-object p1, p0, Lcom/miniclip/facebook/MCFacebook$14$1$1;->this$1:Lcom/miniclip/facebook/MCFacebook$14$1;

    iput-object p2, p0, Lcom/miniclip/facebook/MCFacebook$14$1$1;->val$error:Lcom/facebook/FacebookException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 740
    iget-object v0, p0, Lcom/miniclip/facebook/MCFacebook$14$1$1;->val$error:Lcom/facebook/FacebookException;

    invoke-virtual {v0}, Lcom/facebook/FacebookException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v1, v1}, Lcom/miniclip/facebook/MCFacebook;->MfacebookWebRequestFailed(Ljava/lang/String;II)V

    .line 741
    return-void
.end method
