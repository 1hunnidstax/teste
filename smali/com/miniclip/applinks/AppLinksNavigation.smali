.class public Lcom/miniclip/applinks/AppLinksNavigation;
.super Ljava/lang/Object;
.source "AppLinksNavigation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miniclip/applinks/AppLinksNavigation$AppLinkBackgroundNavigator;
    }
.end annotation


# static fields
.field private static logTag:Ljava/lang/String;


# instance fields
.field private context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-string v0, "MCApplinks"

    sput-object v0, Lcom/miniclip/applinks/AppLinksNavigation;->logTag:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {}, Lcom/miniclip/framework/Miniclip;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/miniclip/applinks/AppLinksNavigation;->context:Landroid/content/Context;

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcom/miniclip/applinks/AppLinksNavigation;->context:Landroid/content/Context;

    .line 45
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/miniclip/applinks/AppLinksNavigation;->logTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miniclip/applinks/AppLinksNavigation;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/miniclip/applinks/AppLinksNavigation;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miniclip/applinks/AppLinksNavigation;->context:Landroid/content/Context;

    return-object v0
.end method

.method protected static createAppLinkData(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2
    .param p0, "targetURL"    # Ljava/lang/String;

    .prologue
    .line 49
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {p0, v1}, Lcom/miniclip/applinks/AppLinksNavigation;->createAppLinkData(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 50
    .local v0, "appLinkData":Landroid/os/Bundle;
    return-object v0
.end method

.method protected static createAppLinkData(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .param p0, "targetURL"    # Ljava/lang/String;
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-static {p0, p1, v0, v0}, Lcom/miniclip/applinks/AppLinksNavigation;->createAppLinkData(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected static createAppLinkData(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 4
    .param p0, "targetURL"    # Ljava/lang/String;
    .param p1, "extras"    # Landroid/os/Bundle;
    .param p2, "refererURL"    # Ljava/lang/String;
    .param p3, "refererAppName"    # Ljava/lang/String;

    .prologue
    .line 60
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 61
    .local v0, "appLinkData":Landroid/os/Bundle;
    const-string v2, "target_url"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 64
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 65
    .local v1, "refererAppLink":Landroid/os/Bundle;
    const-string v2, "url"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v2, "app_name"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v2, "referer_app_link"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 69
    .end local v1    # "refererAppLink":Landroid/os/Bundle;
    :cond_0
    const-string v2, "version"

    const-string v3, "1.0"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v2, "user_agent"

    const-string v3, "MCAppLinks Android 2.0"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    const-string v2, "extras"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 73
    return-object v0
.end method

.method public static jsonToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;
    .locals 10
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 382
    sget-object v7, Lcom/miniclip/applinks/AppLinksNavigation;->logTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "json object ---> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 385
    .local v2, "bundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v5

    .line 387
    .local v5, "keys":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 388
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 390
    .local v4, "key":Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    .line 391
    .local v6, "val":Ljava/lang/Object;
    instance-of v7, v6, Lorg/json/JSONObject;

    if-eqz v7, :cond_1

    .line 392
    move-object v0, v6

    check-cast v0, Lorg/json/JSONObject;

    move-object v7, v0

    invoke-static {v7}, Lcom/miniclip/applinks/AppLinksNavigation;->jsonToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v2, v4, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 402
    :cond_0
    :goto_1
    sget-object v7, Lcom/miniclip/applinks/AppLinksNavigation;->logTag:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Value in extras: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 404
    .end local v6    # "val":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 405
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 394
    .end local v3    # "e":Lorg/json/JSONException;
    .restart local v6    # "val":Ljava/lang/Object;
    :cond_1
    :try_start_1
    instance-of v7, v6, Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 395
    move-object v0, v6

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    invoke-virtual {v2, v4, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 397
    :cond_2
    instance-of v7, v6, Ljava/lang/Integer;

    if-eqz v7, :cond_0

    .line 398
    move-object v0, v6

    check-cast v0, Ljava/lang/Integer;

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-double v8, v7

    invoke-virtual {v2, v4, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 409
    .end local v4    # "key":Ljava/lang/String;
    .end local v6    # "val":Ljava/lang/Object;
    :cond_3
    return-object v2
.end method

.method private static openAppLinkURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p0, "url"    # Ljava/lang/String;
    .param p1, "extrasJson"    # Ljava/lang/String;
    .param p2, "refererURL"    # Ljava/lang/String;
    .param p3, "refererAppName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 415
    invoke-static {}, Lcom/miniclip/framework/Miniclip;->getActivity()Landroid/app/Activity;

    move-result-object v8

    if-nez v8, :cond_0

    .line 416
    sget-object v7, Lcom/miniclip/applinks/AppLinksNavigation;->logTag:Ljava/lang/String;

    const-string v8, "Miniclip context not initialized -- cannot open URL"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const/4 v7, 0x0

    .line 435
    :goto_0
    return v7

    .line 420
    :cond_0
    new-instance v4, Lcom/miniclip/applinks/AppLinksNavigation;

    invoke-static {}, Lcom/miniclip/framework/Miniclip;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-direct {v4, v8}, Lcom/miniclip/applinks/AppLinksNavigation;-><init>(Landroid/content/Context;)V

    .line 421
    .local v4, "nav":Lcom/miniclip/applinks/AppLinksNavigation;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 423
    .local v2, "json":Lorg/json/JSONObject;
    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, "null"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 424
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "json":Lorg/json/JSONObject;
    .local v3, "json":Lorg/json/JSONObject;
    move-object v2, v3

    .line 430
    .end local v3    # "json":Lorg/json/JSONObject;
    .restart local v2    # "json":Lorg/json/JSONObject;
    :cond_1
    :goto_1
    invoke-static {v2}, Lcom/miniclip/applinks/AppLinksNavigation;->jsonToBundle(Lorg/json/JSONObject;)Landroid/os/Bundle;

    move-result-object v1

    .line 431
    .local v1, "extras":Landroid/os/Bundle;
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    move-object v6, v7

    .line 432
    .local v6, "refURL":Ljava/lang/String;
    :goto_2
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3

    move-object v5, v7

    .line 433
    .local v5, "refAppName":Ljava/lang/String;
    :goto_3
    invoke-virtual {v4, p0, v1, v6, v5}, Lcom/miniclip/applinks/AppLinksNavigation;->openURL(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const/4 v7, 0x1

    goto :goto_0

    .line 426
    .end local v1    # "extras":Landroid/os/Bundle;
    .end local v5    # "refAppName":Ljava/lang/String;
    .end local v6    # "refURL":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 427
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .end local v0    # "e":Lorg/json/JSONException;
    .restart local v1    # "extras":Landroid/os/Bundle;
    :cond_2
    move-object v6, p2

    .line 431
    goto :goto_2

    .restart local v6    # "refURL":Ljava/lang/String;
    :cond_3
    move-object v5, p3

    .line 432
    goto :goto_3
.end method


# virtual methods
.method public openURL(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 78
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, p1, v0, v1, v1}, Lcom/miniclip/applinks/AppLinksNavigation;->openURL(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public openURL(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 83
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/miniclip/applinks/AppLinksNavigation;->openURL(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public openURL(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "refererURL"    # Ljava/lang/String;
    .param p4, "refererAppName"    # Ljava/lang/String;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/miniclip/applinks/AppLinksNavigation;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/miniclip/framework/Miniclip;->getActivity()Landroid/app/Activity;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/miniclip/applinks/AppLinksNavigation;->context:Landroid/content/Context;

    .line 89
    iget-object v0, p0, Lcom/miniclip/applinks/AppLinksNavigation;->context:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 90
    sget-object v0, Lcom/miniclip/applinks/AppLinksNavigation;->logTag:Ljava/lang/String;

    const-string v1, "Miniclip context NOT INITIALIZED -- cannot openURL"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :goto_1
    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/miniclip/applinks/AppLinksNavigation;->context:Landroid/content/Context;

    goto :goto_0

    .line 94
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miniclip/applinks/AppLinksNavigation;->resolveAppLink(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method protected resolveAppLink(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v0, 0x0

    .line 357
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/miniclip/applinks/AppLinksNavigation;->resolveAppLink(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    return-void
.end method

.method protected resolveAppLink(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "refererURL"    # Ljava/lang/String;
    .param p4, "refererAppName"    # Ljava/lang/String;

    .prologue
    .line 362
    const-string v3, "https://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "http://"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 363
    :cond_0
    new-instance v2, Lcom/miniclip/applinks/AppLinksNavigation$AppLinkBackgroundNavigator;

    invoke-direct {v2, p0}, Lcom/miniclip/applinks/AppLinksNavigation$AppLinkBackgroundNavigator;-><init>(Lcom/miniclip/applinks/AppLinksNavigation;)V

    .line 364
    .local v2, "task":Lcom/miniclip/applinks/AppLinksNavigation$AppLinkBackgroundNavigator;
    iput-object p2, v2, Lcom/miniclip/applinks/AppLinksNavigation$AppLinkBackgroundNavigator;->extras:Landroid/os/Bundle;

    .line 365
    iput-object p3, v2, Lcom/miniclip/applinks/AppLinksNavigation$AppLinkBackgroundNavigator;->refererURL:Ljava/lang/String;

    .line 366
    iput-object p4, v2, Lcom/miniclip/applinks/AppLinksNavigation$AppLinkBackgroundNavigator;->refererAppName:Ljava/lang/String;

    .line 367
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v2, v3}, Lcom/miniclip/applinks/AppLinksNavigation$AppLinkBackgroundNavigator;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 378
    .end local v2    # "task":Lcom/miniclip/applinks/AppLinksNavigation$AppLinkBackgroundNavigator;
    :goto_0
    return-void

    .line 372
    :cond_1
    sget-object v3, Lcom/miniclip/applinks/AppLinksNavigation;->logTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Target url \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' is not an applink"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 374
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p1, p2, p3, p4}, Lcom/miniclip/applinks/AppLinksNavigation;->createAppLinkData(Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 375
    .local v0, "appLinkData":Landroid/os/Bundle;
    const-string v3, "al_applink_data"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 376
    iget-object v3, p0, Lcom/miniclip/applinks/AppLinksNavigation;->context:Landroid/content/Context;

    invoke-virtual {v3, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
