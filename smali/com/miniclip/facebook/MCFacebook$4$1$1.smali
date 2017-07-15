.class Lcom/miniclip/facebook/MCFacebook$4$1$1;
.super Ljava/lang/Object;
.source "MCFacebook.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/facebook/MCFacebook$4$1;->call(Lcom/facebook/Session;Lcom/facebook/SessionState;Ljava/lang/Exception;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miniclip/facebook/MCFacebook$4$1;

.field final synthetic val$response:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/miniclip/facebook/MCFacebook$4$1;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "this$1"    # Lcom/miniclip/facebook/MCFacebook$4$1;

    .prologue
    .line 312
    iput-object p1, p0, Lcom/miniclip/facebook/MCFacebook$4$1$1;->this$1:Lcom/miniclip/facebook/MCFacebook$4$1;

    iput-object p2, p0, Lcom/miniclip/facebook/MCFacebook$4$1$1;->val$response:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 315
    const/4 v6, 0x0

    # setter for: Lcom/miniclip/facebook/MCFacebook;->mFB_AuthenticationRequested:Z
    invoke-static {v6}, Lcom/miniclip/facebook/MCFacebook;->access$002(Z)Z

    .line 317
    const-string v5, ""

    .line 318
    .local v5, "type":Ljava/lang/String;
    const/4 v1, 0x0

    .line 319
    .local v1, "code":I
    const/4 v4, 0x0

    .line 321
    .local v4, "subCode":I
    iget-object v6, p0, Lcom/miniclip/facebook/MCFacebook$4$1$1;->val$response:Ljava/util/HashMap;

    if-eqz v6, :cond_0

    .line 325
    :try_start_0
    iget-object v6, p0, Lcom/miniclip/facebook/MCFacebook$4$1$1;->val$response:Ljava/util/HashMap;

    const-string v7, "com.facebook.platform.status.ERROR_TYPE"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 326
    iget-object v6, p0, Lcom/miniclip/facebook/MCFacebook$4$1$1;->val$response:Ljava/util/HashMap;

    const-string v7, "com.facebook.platform.status.ERROR_JSON"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 328
    .local v3, "jsonString":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 330
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 332
    .local v2, "jError":Lorg/json/JSONObject;
    const-string v6, "error_code"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 333
    const-string v6, "error_subcode"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 338
    .end local v2    # "jError":Lorg/json/JSONObject;
    .end local v3    # "jsonString":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {v5, v1, v4}, Lcom/miniclip/facebook/MCFacebook;->MfacebookLoginFailed(Ljava/lang/String;II)V

    .line 339
    return-void

    .line 336
    :catch_0
    move-exception v6

    goto :goto_0
.end method
