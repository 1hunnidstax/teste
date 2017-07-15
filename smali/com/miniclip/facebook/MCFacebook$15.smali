.class final Lcom/miniclip/facebook/MCFacebook$15;
.super Ljava/lang/Object;
.source "MCFacebook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/facebook/MCFacebook;->deleteRequest(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$delegate:I

.field final synthetic val$requestId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 866
    iput-object p1, p0, Lcom/miniclip/facebook/MCFacebook$15;->val$requestId:Ljava/lang/String;

    iput p2, p0, Lcom/miniclip/facebook/MCFacebook$15;->val$delegate:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 868
    sget-object v0, Lcom/facebook/HttpMethod;->DELETE:Lcom/facebook/HttpMethod;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miniclip/facebook/MCFacebook$15;->val$requestId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Lcom/miniclip/facebook/MCFacebook$15;->val$delegate:I

    invoke-static {v0, v1, v2, v3}, Lcom/miniclip/facebook/MCFacebook;->facebookRequestHelper(Lcom/facebook/HttpMethod;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 869
    return-void
.end method
