.class final Lcom/miniclip/ads/FyberWrapper$1;
.super Ljava/lang/Object;
.source "FyberWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/ads/FyberWrapper;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$appId:Ljava/lang/String;

.field final synthetic val$securityToken:Ljava/lang/String;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/miniclip/ads/FyberWrapper$1;->val$appId:Ljava/lang/String;

    iput-object p2, p0, Lcom/miniclip/ads/FyberWrapper$1;->val$userId:Ljava/lang/String;

    iput-object p3, p0, Lcom/miniclip/ads/FyberWrapper$1;->val$securityToken:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 105
    # getter for: Lcom/miniclip/ads/FyberWrapper;->initialized:Z
    invoke-static {}, Lcom/miniclip/ads/FyberWrapper;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 126
    :goto_0
    return-void

    .line 110
    :cond_0
    new-instance v0, Lcom/miniclip/ads/FyberActivityListener;

    invoke-direct {v0}, Lcom/miniclip/ads/FyberActivityListener;-><init>()V

    .line 111
    .local v0, "activityListener":Lcom/miniclip/ads/FyberActivityListener;
    invoke-static {v0}, Lcom/miniclip/framework/Miniclip;->addListener(Lcom/miniclip/framework/ActivityListener;)Z

    .line 113
    invoke-virtual {v0}, Lcom/miniclip/ads/FyberActivityListener;->onResume()V

    .line 116
    :try_start_0
    iget-object v2, p0, Lcom/miniclip/ads/FyberWrapper$1;->val$appId:Ljava/lang/String;

    invoke-static {}, Lcom/miniclip/framework/Miniclip;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/fyber/Fyber;->with(Ljava/lang/String;Landroid/app/Activity;)Lcom/fyber/Fyber;

    move-result-object v2

    iget-object v3, p0, Lcom/miniclip/ads/FyberWrapper$1;->val$userId:Ljava/lang/String;

    .line 117
    invoke-virtual {v2, v3}, Lcom/fyber/Fyber;->withUserId(Ljava/lang/String;)Lcom/fyber/Fyber;

    move-result-object v2

    iget-object v3, p0, Lcom/miniclip/ads/FyberWrapper$1;->val$securityToken:Ljava/lang/String;

    .line 118
    invoke-virtual {v2, v3}, Lcom/fyber/Fyber;->withSecurityToken(Ljava/lang/String;)Lcom/fyber/Fyber;

    move-result-object v2

    .line 119
    invoke-virtual {v2}, Lcom/fyber/Fyber;->start()Lcom/fyber/Fyber$Settings;

    move-result-object v2

    .line 116
    # setter for: Lcom/miniclip/ads/FyberWrapper;->fyberSettings:Lcom/fyber/Fyber$Settings;
    invoke-static {v2}, Lcom/miniclip/ads/FyberWrapper;->access$102(Lcom/fyber/Fyber$Settings;)Lcom/fyber/Fyber$Settings;

    .line 121
    const/4 v2, 0x1

    # setter for: Lcom/miniclip/ads/FyberWrapper;->initialized:Z
    invoke-static {v2}, Lcom/miniclip/ads/FyberWrapper;->access$002(Z)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v1

    .line 124
    .local v1, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method
