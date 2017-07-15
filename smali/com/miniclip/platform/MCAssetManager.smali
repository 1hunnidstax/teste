.class public Lcom/miniclip/platform/MCAssetManager;
.super Ljava/lang/Object;
.source "MCAssetManager.java"


# static fields
.field private static MCActivity:Lcom/miniclip/framework/MiniclipAndroidActivity; = null

.field private static final TAG:Ljava/lang/String; = "MCAssetManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static filePathToAssetsPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/miniclip/platform/MCAssetManager;->getFilesPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Contents/Resources/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "virtualPath":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unpack/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 39
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static firstRun()V
    .locals 5

    .prologue
    .line 45
    :try_start_0
    sget-object v2, Lcom/miniclip/platform/MCAssetManager;->MCActivity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    invoke-virtual {v2}, Lcom/miniclip/framework/MiniclipAndroidActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lcom/miniclip/platform/MCAssetManager;->MCActivity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    invoke-virtual {v3}, Lcom/miniclip/framework/MiniclipAndroidActivity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 46
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-static {v2}, Lcom/miniclip/platform/MCAssetManager;->nativeSetAPKPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :goto_0
    invoke-static {}, Lcom/miniclip/platform/MCAssetManager;->getFilesPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/miniclip/platform/MCAssetManager;->nativeSetFilesPath(Ljava/lang/String;)V

    .line 53
    const-string v2, "MCAssetManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Files Path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/miniclip/platform/MCAssetManager;->getFilesPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    return-void

    .line 47
    :catch_0
    move-exception v1

    .line 48
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getFilesPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/miniclip/platform/MCAssetManager;->MCActivity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    invoke-virtual {v0}, Lcom/miniclip/framework/MiniclipAndroidActivity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static init(Lcom/miniclip/framework/MiniclipAndroidActivity;)V
    .locals 0
    .param p0, "context"    # Lcom/miniclip/framework/MiniclipAndroidActivity;

    .prologue
    .line 24
    sput-object p0, Lcom/miniclip/platform/MCAssetManager;->MCActivity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    .line 25
    return-void
.end method

.method private static native nativeSetAPKPath(Ljava/lang/String;)V
.end method

.method private static native nativeSetFilesPath(Ljava/lang/String;)V
.end method
