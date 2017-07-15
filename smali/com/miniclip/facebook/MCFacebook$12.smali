.class final Lcom/miniclip/facebook/MCFacebook$12;
.super Ljava/lang/Object;
.source "MCFacebook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/facebook/MCFacebook;->facebook_postOpenGraphObject(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$delegate:I

.field final synthetic val$objParams:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 644
    iput-object p1, p0, Lcom/miniclip/facebook/MCFacebook$12;->val$objParams:Ljava/lang/String;

    iput p2, p0, Lcom/miniclip/facebook/MCFacebook$12;->val$delegate:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 648
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 650
    .local v9, "params":Landroid/os/Bundle;
    const/4 v6, 0x0

    .line 654
    .local v6, "obj":Lorg/json/JSONObject;
    :try_start_0
    new-instance v7, Lorg/json/JSONObject;

    iget-object v11, p0, Lcom/miniclip/facebook/MCFacebook$12;->val$objParams:Ljava/lang/String;

    invoke-direct {v7, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .end local v6    # "obj":Lorg/json/JSONObject;
    .local v7, "obj":Lorg/json/JSONObject;
    move-object v6, v7

    .line 658
    .end local v7    # "obj":Lorg/json/JSONObject;
    .restart local v6    # "obj":Lorg/json/JSONObject;
    :goto_0
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 659
    .local v5, "keys":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    .line 660
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 661
    .local v4, "key":Ljava/lang/String;
    const/4 v10, 0x0

    .line 665
    .local v10, "value":Ljava/lang/String;
    :try_start_1
    invoke-virtual {v6, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v10

    .line 669
    :goto_2
    invoke-virtual {v9, v4, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 672
    .end local v4    # "key":Ljava/lang/String;
    .end local v10    # "value":Ljava/lang/String;
    :cond_0
    const-string v11, "type"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/facebook/model/OpenGraphObject$Factory;->createForPost(Ljava/lang/String;)Lcom/facebook/model/OpenGraphObject;

    move-result-object v1

    .line 673
    .local v1, "graphObj":Lcom/facebook/model/OpenGraphObject;
    const-string v11, "title"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v11}, Lcom/facebook/model/OpenGraphObject;->setTitle(Ljava/lang/String;)V

    .line 674
    const-string v11, "description"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v11}, Lcom/facebook/model/OpenGraphObject;->setDescription(Ljava/lang/String;)V

    .line 678
    const-string v11, "image"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 679
    .local v2, "imgUrl":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 680
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v2, v11, v12

    invoke-static {v11}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v1, v11}, Lcom/facebook/model/OpenGraphObject;->setImageUrls(Ljava/util/List;)V

    .line 681
    const-string v11, "image"

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 684
    :cond_1
    invoke-virtual {v9}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 686
    .local v3, "it":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 687
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 689
    .restart local v4    # "key":Ljava/lang/String;
    invoke-interface {v1}, Lcom/facebook/model/OpenGraphObject;->getData()Lcom/facebook/model/GraphObject;

    move-result-object v11

    invoke-virtual {v9, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v4, v12}, Lcom/facebook/model/GraphObject;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    .line 692
    .end local v4    # "key":Ljava/lang/String;
    :cond_2
    const-string v11, "FACEBOOK"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "graph object is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    iget v11, p0, Lcom/miniclip/facebook/MCFacebook$12;->val$delegate:I

    invoke-static {v11}, Lcom/miniclip/facebook/MCFacebook;->facebookRequestCallback(I)Lcom/facebook/Request$Callback;

    move-result-object v0

    .line 697
    .local v0, "c":Lcom/facebook/Request$Callback;
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v11

    .line 696
    invoke-static {v11, v1, v0}, Lcom/facebook/Request;->newPostOpenGraphObjectRequest(Lcom/facebook/Session;Lcom/facebook/model/OpenGraphObject;Lcom/facebook/Request$Callback;)Lcom/facebook/Request;

    move-result-object v8

    .line 698
    .local v8, "objectRequest":Lcom/facebook/Request;
    invoke-virtual {v8}, Lcom/facebook/Request;->executeAsync()Lcom/facebook/RequestAsyncTask;

    .line 699
    return-void

    .line 667
    .end local v0    # "c":Lcom/facebook/Request$Callback;
    .end local v1    # "graphObj":Lcom/facebook/model/OpenGraphObject;
    .end local v2    # "imgUrl":Ljava/lang/String;
    .end local v3    # "it":Ljava/util/Iterator;
    .end local v8    # "objectRequest":Lcom/facebook/Request;
    .restart local v4    # "key":Ljava/lang/String;
    .restart local v10    # "value":Ljava/lang/String;
    :catch_0
    move-exception v11

    goto/16 :goto_2

    .line 656
    .end local v4    # "key":Ljava/lang/String;
    .end local v5    # "keys":Ljava/util/Iterator;
    .end local v10    # "value":Ljava/lang/String;
    :catch_1
    move-exception v11

    goto/16 :goto_0
.end method
