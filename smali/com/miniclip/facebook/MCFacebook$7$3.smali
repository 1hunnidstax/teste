.class Lcom/miniclip/facebook/MCFacebook$7$3;
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

.field final synthetic val$errorCode:I

.field final synthetic val$errorSubcode:I

.field final synthetic val$errorType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miniclip/facebook/MCFacebook$7;Ljava/lang/String;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/facebook/MCFacebook$7;

    .prologue
    .line 477
    iput-object p1, p0, Lcom/miniclip/facebook/MCFacebook$7$3;->this$0:Lcom/miniclip/facebook/MCFacebook$7;

    iput-object p2, p0, Lcom/miniclip/facebook/MCFacebook$7$3;->val$errorType:Ljava/lang/String;

    iput p3, p0, Lcom/miniclip/facebook/MCFacebook$7$3;->val$errorCode:I

    iput p4, p0, Lcom/miniclip/facebook/MCFacebook$7$3;->val$errorSubcode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 480
    iget-object v0, p0, Lcom/miniclip/facebook/MCFacebook$7$3;->val$errorType:Ljava/lang/String;

    iget v1, p0, Lcom/miniclip/facebook/MCFacebook$7$3;->val$errorCode:I

    iget v2, p0, Lcom/miniclip/facebook/MCFacebook$7$3;->val$errorSubcode:I

    iget-object v3, p0, Lcom/miniclip/facebook/MCFacebook$7$3;->this$0:Lcom/miniclip/facebook/MCFacebook$7;

    iget v3, v3, Lcom/miniclip/facebook/MCFacebook$7;->val$delegate:I

    invoke-static {v0, v1, v2, v3}, Lcom/miniclip/facebook/MCFacebook;->MfacebookRequestFailed(Ljava/lang/String;III)V

    .line 481
    return-void
.end method
