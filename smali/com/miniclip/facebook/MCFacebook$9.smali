.class final Lcom/miniclip/facebook/MCFacebook$9;
.super Ljava/lang/Object;
.source "MCFacebook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/facebook/MCFacebook;->faceBook_request(Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$graphPath:Ljava/lang/String;

.field final synthetic val$objParams:Ljava/lang/String;

.field final synthetic val$object:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 557
    iput-object p1, p0, Lcom/miniclip/facebook/MCFacebook$9;->val$objParams:Ljava/lang/String;

    iput-object p2, p0, Lcom/miniclip/facebook/MCFacebook$9;->val$graphPath:Ljava/lang/String;

    iput p3, p0, Lcom/miniclip/facebook/MCFacebook$9;->val$object:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 559
    const/4 v4, 0x0

    .line 561
    .local v4, "params":Landroid/os/Bundle;
    iget-object v7, p0, Lcom/miniclip/facebook/MCFacebook$9;->val$objParams:Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 563
    const/4 v2, 0x0

    .line 567
    .local v2, "obj":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    iget-object v7, p0, Lcom/miniclip/facebook/MCFacebook$9;->val$objParams:Ljava/lang/String;

    invoke-direct {v3, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 569
    .end local v2    # "obj":Lorg/json/JSONObject;
    .local v3, "obj":Lorg/json/JSONObject;
    :try_start_1
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 571
    .end local v4    # "params":Landroid/os/Bundle;
    .local v5, "params":Landroid/os/Bundle;
    :try_start_2
    invoke-virtual {v3}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 572
    .local v1, "keys":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 573
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 574
    .local v0, "key":Ljava/lang/String;
    const/4 v6, 0x0

    .line 578
    .local v6, "value":Ljava/lang/String;
    :try_start_3
    invoke-virtual {v3, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v6

    .line 582
    :goto_1
    :try_start_4
    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 585
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "keys":Ljava/util/Iterator;
    .end local v6    # "value":Ljava/lang/String;
    :catch_0
    move-exception v7

    move-object v2, v3

    .end local v3    # "obj":Lorg/json/JSONObject;
    .restart local v2    # "obj":Lorg/json/JSONObject;
    move-object v4, v5

    .line 588
    .end local v2    # "obj":Lorg/json/JSONObject;
    .end local v5    # "params":Landroid/os/Bundle;
    .restart local v4    # "params":Landroid/os/Bundle;
    :cond_0
    :goto_2
    sget-object v7, Lcom/facebook/HttpMethod;->GET:Lcom/facebook/HttpMethod;

    iget-object v8, p0, Lcom/miniclip/facebook/MCFacebook$9;->val$graphPath:Ljava/lang/String;

    iget v9, p0, Lcom/miniclip/facebook/MCFacebook$9;->val$object:I

    invoke-static {v7, v8, v4, v9}, Lcom/miniclip/facebook/MCFacebook;->facebookRequestHelper(Lcom/facebook/HttpMethod;Ljava/lang/String;Landroid/os/Bundle;I)V

    .line 589
    return-void

    .end local v4    # "params":Landroid/os/Bundle;
    .restart local v1    # "keys":Ljava/util/Iterator;
    .restart local v3    # "obj":Lorg/json/JSONObject;
    .restart local v5    # "params":Landroid/os/Bundle;
    :cond_1
    move-object v4, v5

    .line 585
    .end local v5    # "params":Landroid/os/Bundle;
    .restart local v4    # "params":Landroid/os/Bundle;
    goto :goto_2

    .line 580
    .end local v4    # "params":Landroid/os/Bundle;
    .restart local v0    # "key":Ljava/lang/String;
    .restart local v5    # "params":Landroid/os/Bundle;
    .restart local v6    # "value":Ljava/lang/String;
    :catch_1
    move-exception v7

    goto :goto_1

    .line 585
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "keys":Ljava/util/Iterator;
    .end local v3    # "obj":Lorg/json/JSONObject;
    .end local v5    # "params":Landroid/os/Bundle;
    .end local v6    # "value":Ljava/lang/String;
    .restart local v2    # "obj":Lorg/json/JSONObject;
    .restart local v4    # "params":Landroid/os/Bundle;
    :catch_2
    move-exception v7

    goto :goto_2

    .end local v2    # "obj":Lorg/json/JSONObject;
    .restart local v3    # "obj":Lorg/json/JSONObject;
    :catch_3
    move-exception v7

    move-object v2, v3

    .end local v3    # "obj":Lorg/json/JSONObject;
    .restart local v2    # "obj":Lorg/json/JSONObject;
    goto :goto_2
.end method
