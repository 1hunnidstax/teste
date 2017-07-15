.class public Lcom/miniclip/externalappsmanager/ExternalAppsManager;
.super Lcom/miniclip/framework/AbstractActivityListener;
.source "ExternalAppsManager.java"


# static fields
.field private static MCActivity:Lcom/miniclip/framework/MiniclipAndroidActivity;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/miniclip/framework/AbstractActivityListener;-><init>()V

    return-void
.end method

.method public static init(Lcom/miniclip/framework/MiniclipAndroidActivity;)V
    .locals 0
    .param p0, "context"    # Lcom/miniclip/framework/MiniclipAndroidActivity;

    .prologue
    .line 22
    sput-object p0, Lcom/miniclip/externalappsmanager/ExternalAppsManager;->MCActivity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    .line 23
    return-void
.end method

.method public static isAppInstalled(Ljava/lang/String;)Z
    .locals 4
    .param p0, "appIdentifier"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 27
    sget-object v3, Lcom/miniclip/externalappsmanager/ExternalAppsManager;->MCActivity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    invoke-virtual {v3}, Lcom/miniclip/framework/MiniclipAndroidActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 30
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v1, p0, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    :goto_0
    return v2

    .line 32
    :catch_0
    move-exception v0

    .line 33
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static openApp(Ljava/lang/String;)Z
    .locals 3
    .param p0, "appIdentifier"    # Ljava/lang/String;

    .prologue
    .line 39
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 40
    .local v1, "i":Landroid/content/Intent;
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    invoke-virtual {v1, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 44
    :try_start_0
    sget-object v2, Lcom/miniclip/externalappsmanager/ExternalAppsManager;->MCActivity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    invoke-virtual {v2, v1}, Lcom/miniclip/framework/MiniclipAndroidActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    const/4 v2, 0x1

    .line 47
    :goto_0
    return v2

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method
