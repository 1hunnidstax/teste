.class Lcom/miniclip/facebook/MCFacebook$8$1$1;
.super Ljava/lang/Object;
.source "MCFacebook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/facebook/MCFacebook$8$1;->call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miniclip/facebook/MCFacebook$8$1;

.field final synthetic val$exception:Ljava/lang/Exception;


# direct methods
.method constructor <init>(Lcom/miniclip/facebook/MCFacebook$8$1;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miniclip/facebook/MCFacebook$8$1;

    .prologue
    .line 508
    iput-object p1, p0, Lcom/miniclip/facebook/MCFacebook$8$1$1;->this$1:Lcom/miniclip/facebook/MCFacebook$8$1;

    iput-object p2, p0, Lcom/miniclip/facebook/MCFacebook$8$1$1;->val$exception:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 511
    const/4 v0, 0x1

    .line 513
    .local v0, "hasAllPermissions":Z
    iget-object v2, p0, Lcom/miniclip/facebook/MCFacebook$8$1$1;->this$1:Lcom/miniclip/facebook/MCFacebook$8$1;

    iget-object v2, v2, Lcom/miniclip/facebook/MCFacebook$8$1;->this$0:Lcom/miniclip/facebook/MCFacebook$8;

    iget-object v4, v2, Lcom/miniclip/facebook/MCFacebook$8;->val$permissionsArray:[Ljava/lang/String;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_0

    aget-object v1, v4, v2

    .line 515
    .local v1, "permission":Ljava/lang/String;
    invoke-static {v1}, Lcom/miniclip/facebook/MCFacebook;->faceBook_hasPermission(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_1

    .line 517
    const/4 v0, 0x0

    .line 522
    .end local v1    # "permission":Ljava/lang/String;
    :cond_0
    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/miniclip/facebook/MCFacebook$8$1$1;->val$exception:Ljava/lang/Exception;

    if-nez v2, :cond_2

    .line 524
    invoke-static {}, Lcom/miniclip/facebook/MCFacebook;->MfacebookLoginComplete()V

    .line 530
    :goto_1
    return-void

    .line 513
    .restart local v1    # "permission":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 528
    .end local v1    # "permission":Ljava/lang/String;
    :cond_2
    const-string v2, ""

    invoke-static {v2, v3, v3}, Lcom/miniclip/facebook/MCFacebook;->MfacebookLoginFailed(Ljava/lang/String;II)V

    goto :goto_1
.end method
