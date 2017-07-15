.class final Lcom/miniclip/facebook/MCFacebook$18;
.super Ljava/lang/Object;
.source "MCFacebook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/facebook/MCFacebook;->faceBook_requestFields(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$fields:Ljava/lang/String;

.field final synthetic val$graphPath:Ljava/lang/String;

.field final synthetic val$object:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1019
    iput-object p1, p0, Lcom/miniclip/facebook/MCFacebook$18;->val$fields:Ljava/lang/String;

    iput-object p2, p0, Lcom/miniclip/facebook/MCFacebook$18;->val$graphPath:Ljava/lang/String;

    iput p3, p0, Lcom/miniclip/facebook/MCFacebook$18;->val$object:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1021
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1022
    .local v0, "params":Landroid/os/Bundle;
    const-string v1, "fields"

    iget-object v2, p0, Lcom/miniclip/facebook/MCFacebook$18;->val$fields:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    sget-object v1, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    iget-object v2, p0, Lcom/miniclip/facebook/MCFacebook$18;->val$graphPath:Ljava/lang/String;

    iget v3, p0, Lcom/miniclip/facebook/MCFacebook$18;->val$object:I

    invoke-static {v1, v2, v0, v3}, Lcom/miniclip/facebook/MCFacebook;->facebookRequestHelper(Lcom/facebook/HttpMethod;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 1024
    return-void
.end method
