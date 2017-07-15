.class Lcom/miniclip/ads/FyberActivityListener;
.super Lcom/miniclip/framework/AbstractActivityListener;
.source "FyberWrapper.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/miniclip/framework/AbstractActivityListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 25
    const/16 v1, 0x2466

    if-ne p1, v1, :cond_0

    .line 26
    if-eqz p3, :cond_1

    const-string v1, "ENGAGEMENT_STATUS"

    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "engagementResult":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_2

    .line 29
    :goto_1
    const/4 v1, -0x1

    if-ne p2, v1, :cond_4

    .line 30
    const-string v1, "CLOSE_FINISHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 31
    invoke-static {}, Lcom/miniclip/ads/NativeFyberListener;->onAdDisplayFinished()V

    .line 41
    .end local v0    # "engagementResult":Ljava/lang/String;
    :cond_0
    :goto_2
    return-void

    .line 26
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 27
    .restart local v0    # "engagementResult":Ljava/lang/String;
    :cond_2
    const-string v0, ""

    goto :goto_1

    .line 33
    :cond_3
    const-string v1, "CLOSE_ABORTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 34
    invoke-static {}, Lcom/miniclip/ads/NativeFyberListener;->onAdDisplayAborted()V

    goto :goto_2

    .line 39
    :cond_4
    invoke-static {}, Lcom/miniclip/ads/NativeFyberListener;->onAdDisplayError()V

    goto :goto_2
.end method
