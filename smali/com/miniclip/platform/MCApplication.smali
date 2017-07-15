.class public Lcom/miniclip/platform/MCApplication;
.super Lcom/miniclip/framework/AbstractActivityListener;
.source "MCApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miniclip/platform/MCApplication$RequestSelfPermissionCallback;
    }
.end annotation


# static fields
.field public static final FATAL_ERROR_INITIALIZATION:I = 0x3eb

.field public static final FATAL_ERROR_LIBRARY_LOAD:I = 0x3ea

.field public static final FATAL_ERROR_LOW_STORAGE:I = 0x3ed

.field public static final FATAL_ERROR_MULTIDEX_INSTALL:I = 0x3e9

.field public static final FATAL_ERROR_RESOURCE_LOADING:I = 0x3ec

.field private static MCActivity:Landroid/app/Activity; = null

.field private static final TAG:Ljava/lang/String; = "MCApplication"

.field private static currentIntentDataString:Ljava/lang/String;

.field private static fatalErrorCode:I

.field private static fatalErrorOccurred:Z

.field private static isInitialized:Z

.field private static numMemoryWarnings:I

.field private static permissionSettingsRedirectExplanation:Ljava/lang/String;

.field private static requestSelfPermissionResultCallback:Lcom/miniclip/platform/MCApplication$RequestSelfPermissionCallback;

.field private static requestSelfPermissionResultCallbackNative:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 50
    sput-boolean v0, Lcom/miniclip/platform/MCApplication;->isInitialized:Z

    .line 52
    sput v0, Lcom/miniclip/platform/MCApplication;->numMemoryWarnings:I

    .line 53
    sput-boolean v0, Lcom/miniclip/platform/MCApplication;->fatalErrorOccurred:Z

    .line 54
    sput v0, Lcom/miniclip/platform/MCApplication;->fatalErrorCode:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/miniclip/framework/AbstractActivityListener;-><init>()V

    return-void
.end method

.method static synthetic access$000()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/miniclip/platform/MCApplication;->MCActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$100(JZ)V
    .locals 0
    .param p0, "x0"    # J
    .param p2, "x1"    # Z

    .prologue
    .line 36
    invoke-static {p0, p1, p2}, Lcom/miniclip/platform/MCApplication;->onRequestSelfPermissionResult(JZ)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/miniclip/platform/MCApplication;->currentIntentDataString:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {p0}, Lcom/miniclip/platform/MCApplication;->nativeNewIntentDataString(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400()V
    .locals 0

    .prologue
    .line 36
    invoke-static {}, Lcom/miniclip/platform/MCApplication;->nativeLowMemory()V

    return-void
.end method

.method static synthetic access$500()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    sget-object v0, Lcom/miniclip/platform/MCApplication;->permissionSettingsRedirectExplanation:Ljava/lang/String;

    return-object v0
.end method

.method private static callOnRequestSelfPermissionResult(Z)V
    .locals 8
    .param p0, "granted"    # Z

    .prologue
    const-wide/16 v6, 0x0

    const/4 v4, 0x0

    .line 358
    sput-object v4, Lcom/miniclip/platform/MCApplication;->permissionSettingsRedirectExplanation:Ljava/lang/String;

    .line 360
    sget-object v1, Lcom/miniclip/platform/MCApplication;->requestSelfPermissionResultCallback:Lcom/miniclip/platform/MCApplication$RequestSelfPermissionCallback;

    if-eqz v1, :cond_0

    .line 361
    sget-object v0, Lcom/miniclip/platform/MCApplication;->requestSelfPermissionResultCallback:Lcom/miniclip/platform/MCApplication$RequestSelfPermissionCallback;

    .line 362
    .local v0, "callback":Lcom/miniclip/platform/MCApplication$RequestSelfPermissionCallback;
    sput-object v4, Lcom/miniclip/platform/MCApplication;->requestSelfPermissionResultCallback:Lcom/miniclip/platform/MCApplication$RequestSelfPermissionCallback;

    .line 364
    invoke-interface {v0, p0}, Lcom/miniclip/platform/MCApplication$RequestSelfPermissionCallback;->response(Z)V

    .line 366
    .end local v0    # "callback":Lcom/miniclip/platform/MCApplication$RequestSelfPermissionCallback;
    :cond_0
    sget-wide v4, Lcom/miniclip/platform/MCApplication;->requestSelfPermissionResultCallbackNative:J

    cmp-long v1, v4, v6

    if-eqz v1, :cond_1

    .line 367
    sget-wide v2, Lcom/miniclip/platform/MCApplication;->requestSelfPermissionResultCallbackNative:J

    .line 368
    .local v2, "callbackNative":J
    sput-wide v6, Lcom/miniclip/platform/MCApplication;->requestSelfPermissionResultCallbackNative:J

    .line 370
    sget-object v1, Lcom/miniclip/framework/ThreadingContext;->Main:Lcom/miniclip/framework/ThreadingContext;

    new-instance v4, Lcom/miniclip/platform/MCApplication$2;

    invoke-direct {v4, v2, v3, p0}, Lcom/miniclip/platform/MCApplication$2;-><init>(JZ)V

    invoke-static {v1, v4}, Lcom/miniclip/framework/Miniclip;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 376
    .end local v2    # "callbackNative":J
    :cond_1
    return-void
.end method

.method public static checkSelfPermission(Ljava/lang/String;)Z
    .locals 3
    .param p0, "permission"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 379
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 380
    sget-object v1, Lcom/miniclip/platform/MCApplication;->MCActivity:Landroid/app/Activity;

    invoke-virtual {v1, p0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 382
    :cond_0
    :goto_0
    return v0

    .line 380
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static firstRun()V
    .locals 3

    .prologue
    .line 93
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miniclip/platform/MCApplication;->nativeSetCountryCode(Ljava/lang/String;)V

    .line 95
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 96
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miniclip/platform/MCApplication;->nativeSetLanguage(Ljava/lang/String;)V

    .line 103
    :goto_0
    invoke-static {}, Lcom/miniclip/platform/MCApplication;->getApplicationVersionNumber()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miniclip/platform/MCApplication;->nativeSetApplicationVersionNumber(Ljava/lang/String;)V

    .line 104
    return-void

    .line 99
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x5f

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/miniclip/platform/MCApplication;->nativeSetLanguage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getApplicationName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 107
    sget-object v1, Lcom/miniclip/platform/MCApplication;->MCActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->labelRes:I

    .line 108
    .local v0, "stringId":I
    sget-object v1, Lcom/miniclip/platform/MCApplication;->MCActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getApplicationPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    sget-object v0, Lcom/miniclip/platform/MCApplication;->MCActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getApplicationVersionCode()I
    .locals 5

    .prologue
    .line 165
    const/4 v1, 0x0

    .line 166
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    const/4 v0, 0x0

    .line 168
    .local v0, "app_version_code":I
    :try_start_0
    sget-object v2, Lcom/miniclip/platform/MCApplication;->MCActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lcom/miniclip/platform/MCApplication;->MCActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 169
    if-eqz v1, :cond_0

    .line 170
    iget v0, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :cond_0
    :goto_0
    return v0

    .line 172
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getApplicationVersionNumber()Ljava/lang/String;
    .locals 5

    .prologue
    .line 79
    const/4 v1, 0x0

    .line 80
    .local v1, "pi":Landroid/content/pm/PackageInfo;
    const-string v0, ""

    .line 82
    .local v0, "app_version_name":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/miniclip/platform/MCApplication;->MCActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lcom/miniclip/platform/MCApplication;->MCActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 83
    if-eqz v1, :cond_0

    .line 84
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    :cond_0
    :goto_0
    return-object v0

    .line 86
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getCpuCoreCount()I
    .locals 4

    .prologue
    .line 148
    const/4 v0, 0x1

    .line 153
    .local v0, "cores":I
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v3, "/sys/devices/system/cpu/"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 155
    .local v1, "dir":Ljava/io/File;
    new-instance v3, Lcom/miniclip/platform/MCApplication$1CpuFilter;

    invoke-direct {v3}, Lcom/miniclip/platform/MCApplication$1CpuFilter;-><init>()V

    invoke-virtual {v1, v3}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v2

    .line 157
    .local v2, "files":[Ljava/io/File;
    array-length v0, v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    .end local v1    # "dir":Ljava/io/File;
    .end local v2    # "files":[Ljava/io/File;
    :goto_0
    return v0

    .line 159
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private static getCurrentOrientation()I
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 219
    sget-object v2, Lcom/miniclip/platform/MCApplication;->MCActivity:Landroid/app/Activity;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 221
    .local v0, "d":Landroid/view/Display;
    const/4 v1, 0x0

    .line 223
    .local v1, "orientation":I
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x8

    if-le v2, v3, :cond_0

    .line 225
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 243
    :cond_0
    :goto_0
    return v1

    .line 230
    :pswitch_0
    const/4 v1, 0x0

    .line 231
    goto :goto_0

    .line 237
    :pswitch_1
    const/16 v1, 0x8

    goto :goto_0

    .line 225
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getFatalErrorCode()I
    .locals 1

    .prologue
    .line 124
    sget-boolean v0, Lcom/miniclip/platform/MCApplication;->fatalErrorOccurred:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/miniclip/platform/MCApplication;->fatalErrorCode:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getIntentDataString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lcom/miniclip/platform/MCApplication;->currentIntentDataString:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 195
    sget-object v0, Lcom/miniclip/platform/MCApplication;->currentIntentDataString:Ljava/lang/String;

    .line 196
    :goto_0
    return-object v0

    :cond_0
    const-string v0, ""

    goto :goto_0
.end method

.method public static getScreenDPI()F
    .locals 2

    .prologue
    .line 213
    sget-object v1, Lcom/miniclip/platform/MCApplication;->MCActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->ydpi:F

    .line 214
    .local v0, "dpi":F
    return v0
.end method

.method public static getScreenDensity()F
    .locals 2

    .prologue
    .line 208
    sget-object v1, Lcom/miniclip/platform/MCApplication;->MCActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 209
    .local v0, "density":F
    return v0
.end method

.method public static getStringValWithKeyFromMetadata(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 179
    const/4 v2, 0x0

    .line 181
    .local v2, "metadataValue":Ljava/lang/String;
    :try_start_0
    sget-object v3, Lcom/miniclip/platform/MCApplication;->MCActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    sget-object v4, Lcom/miniclip/platform/MCApplication;->MCActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 182
    .local v0, "app":Landroid/content/pm/ApplicationInfo;
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 183
    .local v1, "bundle":Landroid/os/Bundle;
    if-eqz v1, :cond_0

    .line 184
    invoke-virtual {v1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 189
    .end local v0    # "app":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "bundle":Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-object v2

    .line 186
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public static hasFatalErrorOccurred()Z
    .locals 1

    .prologue
    .line 127
    sget-boolean v0, Lcom/miniclip/platform/MCApplication;->fatalErrorOccurred:Z

    return v0
.end method

.method private static hasVibrator()Z
    .locals 4

    .prologue
    .line 388
    sget-object v2, Lcom/miniclip/platform/MCApplication;->MCActivity:Landroid/app/Activity;

    const-string v3, "vibrator"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 391
    .local v1, "vib":Landroid/os/Vibrator;
    if-eqz v1, :cond_1

    .line 392
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    .line 393
    invoke-virtual {v1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    .line 402
    .local v0, "hasVibrator":Z
    :goto_0
    return v0

    .line 396
    .end local v0    # "hasVibrator":Z
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "hasVibrator":Z
    goto :goto_0

    .line 400
    .end local v0    # "hasVibrator":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "hasVibrator":Z
    goto :goto_0
.end method

.method public static init()V
    .locals 1

    .prologue
    .line 68
    sget-boolean v0, Lcom/miniclip/platform/MCApplication;->isInitialized:Z

    if-eqz v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/miniclip/platform/MCApplication;->isInitialized:Z

    .line 73
    invoke-static {}, Lcom/miniclip/framework/Miniclip;->getActivity()Landroid/app/Activity;

    move-result-object v0

    sput-object v0, Lcom/miniclip/platform/MCApplication;->MCActivity:Landroid/app/Activity;

    .line 74
    sget-object v0, Lcom/miniclip/platform/MCApplication;->MCActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miniclip/platform/MCApplication;->currentIntentDataString:Ljava/lang/String;

    .line 75
    new-instance v0, Lcom/miniclip/platform/MCApplication;

    invoke-direct {v0}, Lcom/miniclip/platform/MCApplication;-><init>()V

    invoke-static {v0}, Lcom/miniclip/framework/Miniclip;->addListener(Lcom/miniclip/framework/ActivityListener;)Z

    goto :goto_0
.end method

.method public static isDeviceOnline()Z
    .locals 4

    .prologue
    .line 258
    sget-object v2, Lcom/miniclip/platform/MCApplication;->MCActivity:Landroid/app/Activity;

    const-string v3, "connectivity"

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 259
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 260
    .local v1, "ni":Landroid/net/NetworkInfo;
    if-nez v1, :cond_0

    .line 261
    const/4 v2, 0x0

    .line 262
    :goto_0
    return v2

    :cond_0
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v2

    goto :goto_0
.end method

.method public static isDeviceRooted()Z
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 266
    const/4 v0, 0x0

    .line 268
    .local v0, "hasSuBinary":Z
    const/16 v4, 0x8

    new-array v2, v4, [Ljava/lang/String;

    const-string v4, "/sbin/"

    aput-object v4, v2, v3

    const/4 v4, 0x1

    const-string v5, "/system/bin/"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "/system/xbin/"

    aput-object v5, v2, v4

    const/4 v4, 0x3

    const-string v5, "/data/local/xbin/"

    aput-object v5, v2, v4

    const/4 v4, 0x4

    const-string v5, "/data/local/bin/"

    aput-object v5, v2, v4

    const/4 v4, 0x5

    const-string v5, "/system/sd/xbin/"

    aput-object v5, v2, v4

    const/4 v4, 0x6

    const-string v5, "/system/bin/failsafe/"

    aput-object v5, v2, v4

    const/4 v4, 0x7

    const-string v5, "/data/local/"

    aput-object v5, v2, v4

    .line 279
    .local v2, "paths":[Ljava/lang/String;
    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v2, v3

    .line 280
    .local v1, "path":Ljava/lang/String;
    new-instance v5, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "su"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 281
    const/4 v0, 0x1

    .line 286
    .end local v1    # "path":Ljava/lang/String;
    :cond_0
    return v0

    .line 279
    .restart local v1    # "path":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static isLargeScreen()Z
    .locals 2

    .prologue
    .line 200
    sget-object v1, Lcom/miniclip/platform/MCApplication;->MCActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v1, 0xf

    .line 203
    .local v0, "screenLayoutSize":I
    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static native nativeLowMemory()V
.end method

.method private static native nativeNewIntentDataString(Ljava/lang/String;)V
.end method

.method private static native nativeSetApplicationVersionNumber(Ljava/lang/String;)V
.end method

.method private static native nativeSetCountryCode(Ljava/lang/String;)V
.end method

.method private static native nativeSetLanguage(Ljava/lang/String;)V
.end method

.method private static native onRequestSelfPermissionResult(JZ)V
.end method

.method public static requestSelfPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7
    .param p0, "permission"    # Ljava/lang/String;
    .param p1, "explanation"    # Ljava/lang/String;
    .param p2, "settingsRedirectExplanation"    # Ljava/lang/String;
    .param p3, "callback"    # J

    .prologue
    .line 296
    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-static/range {v1 .. v6}, Lcom/miniclip/platform/MCApplication;->requestSelfPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/miniclip/platform/MCApplication$RequestSelfPermissionCallback;)V

    .line 297
    return-void
.end method

.method public static requestSelfPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/miniclip/platform/MCApplication$RequestSelfPermissionCallback;)V
    .locals 7
    .param p0, "permission"    # Ljava/lang/String;
    .param p1, "explanation"    # Ljava/lang/String;
    .param p2, "settingsRedirectExplanation"    # Ljava/lang/String;
    .param p3, "nativeCallback"    # J
    .param p5, "callback"    # Lcom/miniclip/platform/MCApplication$RequestSelfPermissionCallback;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 303
    sget-object v0, Lcom/miniclip/platform/MCApplication;->requestSelfPermissionResultCallback:Lcom/miniclip/platform/MCApplication$RequestSelfPermissionCallback;

    if-nez v0, :cond_0

    sget-wide v0, Lcom/miniclip/platform/MCApplication;->requestSelfPermissionResultCallbackNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 304
    :cond_0
    const-string v0, "MCApplication"

    const-string v1, "request aborted: we have one request already in progress"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :goto_0
    return-void

    .line 308
    :cond_1
    sput-object p2, Lcom/miniclip/platform/MCApplication;->permissionSettingsRedirectExplanation:Ljava/lang/String;

    .line 309
    sput-object p5, Lcom/miniclip/platform/MCApplication;->requestSelfPermissionResultCallback:Lcom/miniclip/platform/MCApplication$RequestSelfPermissionCallback;

    .line 310
    sput-wide p3, Lcom/miniclip/platform/MCApplication;->requestSelfPermissionResultCallbackNative:J

    .line 312
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_4

    .line 314
    sget-object v0, Lcom/miniclip/platform/MCApplication;->MCActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    .line 316
    sget-object v0, Lcom/miniclip/platform/MCApplication;->MCActivity:Landroid/app/Activity;

    invoke-virtual {v0, p0}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 318
    const-string v0, "MCApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show why need the permission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    sget-object v0, Lcom/miniclip/platform/MCApplication;->MCActivity:Landroid/app/Activity;

    new-instance v1, Lcom/miniclip/platform/MCApplication$1;

    invoke-direct {v1, p1, p0}, Lcom/miniclip/platform/MCApplication$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 341
    :cond_2
    const-string v0, "MCApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ask for permission: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    sget-object v0, Lcom/miniclip/platform/MCApplication;->MCActivity:Landroid/app/Activity;

    new-array v1, v4, [Ljava/lang/String;

    aput-object p0, v1, v5

    invoke-virtual {v0, v1, v5}, Landroid/app/Activity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    .line 346
    :cond_3
    const-string v0, "MCApplication"

    const-string v1, "permission granted: already granted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-static {v4}, Lcom/miniclip/platform/MCApplication;->callOnRequestSelfPermissionResult(Z)V

    goto :goto_0

    .line 352
    :cond_4
    const-string v0, "MCApplication"

    const-string v1, "permission granted: Android OS < M"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-static {v4}, Lcom/miniclip/platform/MCApplication;->callOnRequestSelfPermissionResult(Z)V

    goto :goto_0
.end method

.method public static requestSelfPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miniclip/platform/MCApplication$RequestSelfPermissionCallback;)V
    .locals 7
    .param p0, "permission"    # Ljava/lang/String;
    .param p1, "explanation"    # Ljava/lang/String;
    .param p2, "settingsRedirectExplanation"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/miniclip/platform/MCApplication$RequestSelfPermissionCallback;

    .prologue
    .line 291
    const-wide/16 v4, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-static/range {v1 .. v6}, Lcom/miniclip/platform/MCApplication;->requestSelfPermission(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcom/miniclip/platform/MCApplication$RequestSelfPermissionCallback;)V

    .line 292
    return-void
.end method

.method public static setAutoRotate(I)V
    .locals 3
    .param p0, "value"    # I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation

    .prologue
    .line 249
    const/4 v0, 0x0

    .line 251
    .local v0, "orientation":I
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x8

    if-le v1, v2, :cond_0

    .line 252
    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    const/4 v0, 0x6

    .line 255
    :cond_0
    :goto_0
    sget-object v1, Lcom/miniclip/platform/MCApplication;->MCActivity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 256
    return-void

    .line 252
    :cond_1
    invoke-static {}, Lcom/miniclip/platform/MCApplication;->getCurrentOrientation()I

    move-result v0

    goto :goto_0
.end method

.method public static signalFatalError(I)V
    .locals 1
    .param p0, "errorCode"    # I

    .prologue
    .line 117
    sget-boolean v0, Lcom/miniclip/platform/MCApplication;->fatalErrorOccurred:Z

    if-eqz v0, :cond_0

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/miniclip/platform/MCApplication;->fatalErrorOccurred:Z

    .line 121
    sput p0, Lcom/miniclip/platform/MCApplication;->fatalErrorCode:I

    goto :goto_0
.end method


# virtual methods
.method public onLowMemory()V
    .locals 2

    .prologue
    .line 426
    const-string v0, "MEMORY WARNING"

    const-string v1, "LOW MEMORY"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    sget v0, Lcom/miniclip/platform/MCApplication;->numMemoryWarnings:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/miniclip/platform/MCApplication;->numMemoryWarnings:I

    .line 429
    sget v0, Lcom/miniclip/platform/MCApplication;->numMemoryWarnings:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 430
    const/4 v0, 0x0

    sput v0, Lcom/miniclip/platform/MCApplication;->numMemoryWarnings:I

    .line 431
    sget-object v0, Lcom/miniclip/framework/ThreadingContext;->Main:Lcom/miniclip/framework/ThreadingContext;

    new-instance v1, Lcom/miniclip/platform/MCApplication$4;

    invoke-direct {v1, p0}, Lcom/miniclip/platform/MCApplication$4;-><init>(Lcom/miniclip/platform/MCApplication;)V

    invoke-static {v0, v1}, Lcom/miniclip/framework/Miniclip;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 438
    :cond_0
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 408
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 409
    .local v0, "data":Landroid/net/Uri;
    if-eqz v0, :cond_0

    .line 411
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/miniclip/platform/MCApplication;->currentIntentDataString:Ljava/lang/String;

    .line 413
    sget-object v1, Lcom/miniclip/platform/MCApplication;->currentIntentDataString:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 414
    sget-object v1, Lcom/miniclip/framework/ThreadingContext;->Main:Lcom/miniclip/framework/ThreadingContext;

    new-instance v2, Lcom/miniclip/platform/MCApplication$3;

    invoke-direct {v2, p0}, Lcom/miniclip/platform/MCApplication$3;-><init>(Lcom/miniclip/platform/MCApplication;)V

    invoke-static {v1, v2}, Lcom/miniclip/framework/Miniclip;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 421
    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "permissions"    # [Ljava/lang/String;
    .param p3, "grantResults"    # [I

    .prologue
    const/4 v4, 0x0

    .line 443
    const-string v0, "MCApplication"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRequestPermissionsResult "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, p3, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    sget-object v0, Lcom/miniclip/platform/MCApplication;->requestSelfPermissionResultCallback:Lcom/miniclip/platform/MCApplication$RequestSelfPermissionCallback;

    if-nez v0, :cond_0

    sget-wide v0, Lcom/miniclip/platform/MCApplication;->requestSelfPermissionResultCallbackNative:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 447
    const-string v0, "MCApplication"

    const-string v1, "error: callback not defined"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :goto_0
    return-void

    .line 451
    :cond_0
    aget v0, p3, v4

    if-nez v0, :cond_1

    .line 452
    const-string v0, "MCApplication"

    const-string v1, "permission granted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/miniclip/platform/MCApplication;->callOnRequestSelfPermissionResult(Z)V

    goto :goto_0

    .line 455
    :cond_1
    const-string v0, "MCApplication"

    const-string v1, "permission not granted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 458
    sget-object v0, Lcom/miniclip/platform/MCApplication;->MCActivity:Landroid/app/Activity;

    aget-object v1, p2, v4

    invoke-virtual {v0, v1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 496
    :cond_2
    :goto_1
    invoke-static {v4}, Lcom/miniclip/platform/MCApplication;->callOnRequestSelfPermissionResult(Z)V

    goto :goto_0

    .line 464
    :cond_3
    sget-object v0, Lcom/miniclip/platform/MCApplication;->permissionSettingsRedirectExplanation:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/miniclip/platform/MCApplication;->permissionSettingsRedirectExplanation:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 465
    sget-object v0, Lcom/miniclip/platform/MCApplication;->MCActivity:Landroid/app/Activity;

    new-instance v1, Lcom/miniclip/platform/MCApplication$5;

    invoke-direct {v1, p0}, Lcom/miniclip/platform/MCApplication$5;-><init>(Lcom/miniclip/platform/MCApplication;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_1
.end method
