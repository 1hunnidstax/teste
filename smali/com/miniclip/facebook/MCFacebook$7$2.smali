.class Lcom/miniclip/facebook/MCFacebook$7$2;
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

.field final synthetic val$data:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miniclip/facebook/MCFacebook$7;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/facebook/MCFacebook$7;

    .prologue
    .line 465
    iput-object p1, p0, Lcom/miniclip/facebook/MCFacebook$7$2;->this$0:Lcom/miniclip/facebook/MCFacebook$7;

    iput-object p2, p0, Lcom/miniclip/facebook/MCFacebook$7$2;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 468
    iget-object v0, p0, Lcom/miniclip/facebook/MCFacebook$7$2;->this$0:Lcom/miniclip/facebook/MCFacebook$7;

    iget v0, v0, Lcom/miniclip/facebook/MCFacebook$7;->val$delegate:I

    iget-object v1, p0, Lcom/miniclip/facebook/MCFacebook$7$2;->val$data:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    iget-object v2, p0, Lcom/miniclip/facebook/MCFacebook$7$2;->val$data:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miniclip/facebook/MCFacebook;->MfacebookRequestComplete(II[B)V

    .line 469
    return-void
.end method
