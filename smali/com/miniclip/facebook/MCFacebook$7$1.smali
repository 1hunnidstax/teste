.class Lcom/miniclip/facebook/MCFacebook$7$1;
.super Ljava/lang/Object;
.source "MCFacebook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/facebook/MCFacebook$7;->onCompleted(Lcom/facebook/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/facebook/MCFacebook$7;


# direct methods
.method constructor <init>(Lcom/miniclip/facebook/MCFacebook$7;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/facebook/MCFacebook$7;

    .prologue
    .line 443
    iput-object p1, p0, Lcom/miniclip/facebook/MCFacebook$7$1;->this$0:Lcom/miniclip/facebook/MCFacebook$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 446
    const-string v0, ""

    iget-object v1, p0, Lcom/miniclip/facebook/MCFacebook$7$1;->this$0:Lcom/miniclip/facebook/MCFacebook$7;

    iget v1, v1, Lcom/miniclip/facebook/MCFacebook$7;->val$delegate:I

    invoke-static {v0, v2, v2, v1}, Lcom/miniclip/facebook/MCFacebook;->MfacebookRequestFailed(Ljava/lang/String;III)V

    .line 447
    return-void
.end method
