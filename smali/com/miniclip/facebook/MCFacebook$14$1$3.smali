.class Lcom/miniclip/facebook/MCFacebook$14$1$3;
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

.field final synthetic val$requestId:Ljava/lang/String;

.field final synthetic val$values:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/miniclip/facebook/MCFacebook$14$1;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miniclip/facebook/MCFacebook$14$1;

    .prologue
    .line 756
    iput-object p1, p0, Lcom/miniclip/facebook/MCFacebook$14$1$3;->this$1:Lcom/miniclip/facebook/MCFacebook$14$1;

    iput-object p2, p0, Lcom/miniclip/facebook/MCFacebook$14$1$3;->val$values:Landroid/os/Bundle;

    iput-object p3, p0, Lcom/miniclip/facebook/MCFacebook$14$1$3;->val$requestId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 759
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 760
    .local v1, "userIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/miniclip/facebook/MCFacebook$14$1$3;->val$values:Landroid/os/Bundle;

    invoke-virtual {v2}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 762
    .local v0, "key":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v4, "to"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 764
    iget-object v3, p0, Lcom/miniclip/facebook/MCFacebook$14$1$3;->val$values:Landroid/os/Bundle;

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 768
    .end local v0    # "key":Ljava/lang/String;
    :cond_1
    const-string v2, "FACEBOOK:"

    const-string v3, ","

    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    iget-object v2, p0, Lcom/miniclip/facebook/MCFacebook$14$1$3;->val$requestId:Ljava/lang/String;

    const-string v3, ","

    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/miniclip/facebook/MCFacebook;->MfacebookWebRequestComplete(Ljava/lang/String;Ljava/lang/String;)V

    .line 771
    return-void
.end method
