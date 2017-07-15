.class final Lcom/miniclip/facebook/MCFacebook$13;
.super Ljava/lang/Object;
.source "MCFacebook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/facebook/MCFacebook;->facebook_postOpenGraphAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$actionPath:Ljava/lang/String;

.field final synthetic val$delegate:I

.field final synthetic val$objId:Ljava/lang/String;

.field final synthetic val$objKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 707
    iput-object p1, p0, Lcom/miniclip/facebook/MCFacebook$13;->val$objId:Ljava/lang/String;

    iput-object p2, p0, Lcom/miniclip/facebook/MCFacebook$13;->val$objKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/miniclip/facebook/MCFacebook$13;->val$actionPath:Ljava/lang/String;

    iput p4, p0, Lcom/miniclip/facebook/MCFacebook$13;->val$delegate:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 710
    const-string v1, "FACEBOOK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "graph object id and key "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miniclip/facebook/MCFacebook$13;->val$objId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miniclip/facebook/MCFacebook$13;->val$objKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " actionPath "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/miniclip/facebook/MCFacebook$13;->val$actionPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 713
    .local v0, "params":Landroid/os/Bundle;
    iget-object v1, p0, Lcom/miniclip/facebook/MCFacebook$13;->val$objKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/miniclip/facebook/MCFacebook$13;->val$objId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    sget-object v1, Lcom/facebook/HttpMethod;->POST:Lcom/facebook/HttpMethod;

    iget-object v2, p0, Lcom/miniclip/facebook/MCFacebook$13;->val$actionPath:Ljava/lang/String;

    iget v3, p0, Lcom/miniclip/facebook/MCFacebook$13;->val$delegate:I

    invoke-static {v1, v2, v0, v3}, Lcom/miniclip/facebook/MCFacebook;->facebookRequestHelper(Lcom/facebook/HttpMethod;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 716
    return-void
.end method
