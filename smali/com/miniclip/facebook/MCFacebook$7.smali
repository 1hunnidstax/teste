.class final Lcom/miniclip/facebook/MCFacebook$7;
.super Ljava/lang/Object;
.source "MCFacebook.java"

# interfaces
.implements Lcom/facebook/Request$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/facebook/MCFacebook;->facebookRequestCallback(I)Lcom/facebook/Request$Callback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$delegate:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 436
    iput p1, p0, Lcom/miniclip/facebook/MCFacebook$7;->val$delegate:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted(Lcom/facebook/Response;)V
    .locals 8
    .param p1, "response"    # Lcom/facebook/Response;

    .prologue
    .line 441
    const-string v5, "FACEBOOK"

    const-string v6, "facebookRequestHelper REQUEST COMPLETE "

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    if-nez p1, :cond_0

    .line 443
    sget-object v5, Lcom/miniclip/facebook/MCFacebook;->mGLView:Lcom/miniclip/facebook/MCFacebook$QueueEvent;

    new-instance v6, Lcom/miniclip/facebook/MCFacebook$7$1;

    invoke-direct {v6, p0}, Lcom/miniclip/facebook/MCFacebook$7$1;-><init>(Lcom/miniclip/facebook/MCFacebook$7;)V

    invoke-interface {v5, v6}, Lcom/miniclip/facebook/MCFacebook$QueueEvent;->queueEvent(Ljava/lang/Runnable;)V

    .line 484
    :goto_0
    return-void

    .line 451
    :cond_0
    const-string v4, ""

    .line 455
    .local v4, "json":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/Response;->getGraphObject()Lcom/facebook/model/GraphObject;

    move-result-object v5

    invoke-interface {v5}, Lcom/facebook/model/GraphObject;->getInnerJSONObject()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 459
    :goto_1
    move-object v0, v4

    .line 461
    .local v0, "data":Ljava/lang/String;
    const-string v5, "FACEBOOK"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Facebook: request: response: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v5

    if-nez v5, :cond_1

    .line 465
    sget-object v5, Lcom/miniclip/facebook/MCFacebook;->mGLView:Lcom/miniclip/facebook/MCFacebook$QueueEvent;

    new-instance v6, Lcom/miniclip/facebook/MCFacebook$7$2;

    invoke-direct {v6, p0, v0}, Lcom/miniclip/facebook/MCFacebook$7$2;-><init>(Lcom/miniclip/facebook/MCFacebook$7;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Lcom/miniclip/facebook/MCFacebook$QueueEvent;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 473
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/FacebookRequestError;->getErrorCode()I

    move-result v1

    .line 474
    .local v1, "errorCode":I
    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/FacebookRequestError;->getSubErrorCode()I

    move-result v2

    .line 475
    .local v2, "errorSubcode":I
    invoke-virtual {p1}, Lcom/facebook/Response;->getError()Lcom/facebook/FacebookRequestError;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/FacebookRequestError;->getErrorType()Ljava/lang/String;

    move-result-object v3

    .line 477
    .local v3, "errorType":Ljava/lang/String;
    sget-object v5, Lcom/miniclip/facebook/MCFacebook;->mGLView:Lcom/miniclip/facebook/MCFacebook$QueueEvent;

    new-instance v6, Lcom/miniclip/facebook/MCFacebook$7$3;

    invoke-direct {v6, p0, v3, v1, v2}, Lcom/miniclip/facebook/MCFacebook$7$3;-><init>(Lcom/miniclip/facebook/MCFacebook$7;Ljava/lang/String;II)V

    invoke-interface {v5, v6}, Lcom/miniclip/facebook/MCFacebook$QueueEvent;->queueEvent(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 457
    .end local v0    # "data":Ljava/lang/String;
    .end local v1    # "errorCode":I
    .end local v2    # "errorSubcode":I
    .end local v3    # "errorType":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_1
.end method
