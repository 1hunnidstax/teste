.class public Lcom/miniclip/storeview/StoreView;
.super Lcom/miniclip/framework/AbstractActivityListener;
.source "StoreView.java"


# static fields
.field private static MCActivity:Lcom/miniclip/framework/MiniclipAndroidActivity; = null

.field private static final SHOW_APP_STORE:I = 0x4d2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/miniclip/framework/AbstractActivityListener;-><init>()V

    return-void
.end method

.method public static closeAppStore()V
    .locals 2

    .prologue
    .line 57
    sget-object v0, Lcom/miniclip/storeview/StoreView;->MCActivity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    const/16 v1, 0x4d2

    invoke-virtual {v0, v1}, Lcom/miniclip/framework/MiniclipAndroidActivity;->finishActivity(I)V

    .line 58
    return-void
.end method

.method public static init(Lcom/miniclip/framework/MiniclipAndroidActivity;)V
    .locals 0
    .param p0, "context"    # Lcom/miniclip/framework/MiniclipAndroidActivity;

    .prologue
    .line 25
    sput-object p0, Lcom/miniclip/storeview/StoreView;->MCActivity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    .line 26
    return-void
.end method

.method public static openAppStore(Ljava/lang/String;)Z
    .locals 7
    .param p0, "packageName"    # Ljava/lang/String;

    .prologue
    .line 30
    const/4 v1, 0x0

    .line 34
    .local v1, "result":Z
    :try_start_0
    sget-object v2, Lcom/miniclip/storeview/StoreView;->MCActivity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "market://details?id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v4, 0x4d2

    invoke-virtual {v2, v3, v4}, Lcom/miniclip/framework/MiniclipAndroidActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    const/4 v1, 0x1

    .line 52
    :goto_0
    return v1

    .line 38
    :catch_0
    move-exception v0

    .line 42
    .local v0, "ex":Landroid/content/ActivityNotFoundException;
    :try_start_1
    sget-object v2, Lcom/miniclip/storeview/StoreView;->MCActivity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://play.google.com/store/apps/details?id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v4, 0x4d2

    invoke-virtual {v2, v3, v4}, Lcom/miniclip/framework/MiniclipAndroidActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 44
    const/4 v1, 0x1

    goto :goto_0

    .line 46
    :catch_1
    move-exception v2

    goto :goto_0
.end method
