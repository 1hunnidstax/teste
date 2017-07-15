.class public Lcom/miniclip/applinks/AppLinksHandler;
.super Ljava/lang/Object;
.source "AppLinksHandler.java"


# static fields
.field private static logTag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-string v0, "MCApplinks"

    sput-object v0, Lcom/miniclip/applinks/AppLinksHandler;->logTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-static {p0, p1}, Lcom/miniclip/applinks/AppLinksHandler;->handleAppLink(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static bundleToJson(Landroid/os/Bundle;)Lorg/json/JSONObject;
    .locals 1
    .param p0, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 23
    invoke-static {p0}, Lcom/miniclip/utils/JSONUtils;->wrap(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    return-object v0
.end method

.method public static handle(Landroid/content/Intent;)V
    .locals 8
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 28
    if-nez p0, :cond_0

    .line 29
    sget-object v6, Lcom/miniclip/applinks/AppLinksHandler;->logTag:Ljava/lang/String;

    const-string v7, "Failed to handle intent (was null)"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :goto_0
    return-void

    .line 33
    :cond_0
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    .line 35
    .local v3, "data":Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    .line 39
    .local v4, "extras":Landroid/os/Bundle;
    if-nez v3, :cond_1

    .line 40
    sget-object v6, Lcom/miniclip/applinks/AppLinksHandler;->logTag:Ljava/lang/String;

    const-string v7, "Handle: Not a link -- skipping."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 45
    :cond_1
    if-nez v4, :cond_3

    .line 46
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 51
    .local v1, "appLinkData":Landroid/os/Bundle;
    :goto_1
    const-string v2, ""

    .line 52
    .local v2, "appLinkDataJsonString":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 53
    invoke-static {v1}, Lcom/miniclip/applinks/AppLinksHandler;->bundleToJson(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    .line 56
    :cond_2
    move-object v5, v2

    .line 57
    .local v5, "finalAppLinkDataJsonString":Ljava/lang/String;
    sget-object v6, Lcom/miniclip/framework/ThreadingContext;->Main:Lcom/miniclip/framework/ThreadingContext;

    new-instance v7, Lcom/miniclip/applinks/AppLinksHandler$1;

    invoke-direct {v7, v3, v5}, Lcom/miniclip/applinks/AppLinksHandler$1;-><init>(Landroid/net/Uri;Ljava/lang/String;)V

    invoke-static {v6, v7}, Lcom/miniclip/framework/Miniclip;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 49
    .end local v1    # "appLinkData":Landroid/os/Bundle;
    .end local v2    # "appLinkDataJsonString":Ljava/lang/String;
    .end local v5    # "finalAppLinkDataJsonString":Ljava/lang/String;
    :cond_3
    const-string v6, "al_applink_data"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .restart local v1    # "appLinkData":Landroid/os/Bundle;
    goto :goto_1
.end method

.method private static native handleAppLink(Ljava/lang/String;Ljava/lang/String;)Z
.end method
