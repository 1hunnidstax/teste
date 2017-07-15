.class public Lcom/miniclip/mcgoliath/MCGoliathWrapper;
.super Lcom/miniclip/framework/AbstractActivityListener;
.source "MCGoliathWrapper.java"


# static fields
.field private static goliathFile:Ljava/lang/String; = null

.field private static instance:Lcom/miniclip/mcgoliath/MCGoliathWrapper; = null

.field private static final uninitialized:Ljava/lang/String; = "none"


# instance fields
.field private advertisingID:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private isLimitAdTrackingEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "mcgoliath_info.goliath"

    sput-object v0, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->goliathFile:Ljava/lang/String;

    .line 31
    new-instance v0, Lcom/miniclip/mcgoliath/MCGoliathWrapper;

    invoke-direct {v0}, Lcom/miniclip/mcgoliath/MCGoliathWrapper;-><init>()V

    sput-object v0, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->instance:Lcom/miniclip/mcgoliath/MCGoliathWrapper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/miniclip/framework/AbstractActivityListener;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->isLimitAdTrackingEnabled:Z

    .line 40
    const-string v0, "none"

    iput-object v0, p0, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->advertisingID:Ljava/lang/String;

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/miniclip/mcgoliath/MCGoliathWrapper;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/miniclip/mcgoliath/MCGoliathWrapper;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/miniclip/mcgoliath/MCGoliathWrapper;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/miniclip/mcgoliath/MCGoliathWrapper;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->advertisingID:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/miniclip/mcgoliath/MCGoliathWrapper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miniclip/mcgoliath/MCGoliathWrapper;
    .param p1, "x1"    # Z

    .prologue
    .line 27
    iput-boolean p1, p0, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->isLimitAdTrackingEnabled:Z

    return p1
.end method

.method public static advertisingID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    sget-object v0, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->instance:Lcom/miniclip/mcgoliath/MCGoliathWrapper;

    iget-object v0, v0, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 125
    const-string v0, "MCGoliathWrapper"

    const-string v1, "Context not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const-string v0, ""

    .line 128
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->instance:Lcom/miniclip/mcgoliath/MCGoliathWrapper;

    iget-object v0, v0, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->advertisingID:Ljava/lang/String;

    goto :goto_0
.end method

.method public static advertisingTrackingEnabled()Z
    .locals 1

    .prologue
    .line 132
    sget-object v0, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->instance:Lcom/miniclip/mcgoliath/MCGoliathWrapper;

    iget-boolean v0, v0, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->isLimitAdTrackingEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static applicationVersion()Ljava/lang/String;
    .locals 5

    .prologue
    .line 190
    sget-object v2, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->instance:Lcom/miniclip/mcgoliath/MCGoliathWrapper;

    iget-object v2, v2, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->context:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 191
    const-string v2, "MCGoliathWrapper"

    const-string v3, "Context not initialized"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const-string v1, ""

    .line 200
    .local v1, "version":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 194
    .end local v1    # "version":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    .line 196
    .restart local v1    # "version":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->instance:Lcom/miniclip/mcgoliath/MCGoliathWrapper;

    iget-object v2, v2, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    sget-object v3, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->instance:Lcom/miniclip/mcgoliath/MCGoliathWrapper;

    iget-object v3, v3, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 197
    :catch_0
    move-exception v0

    .line 198
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static deviceArchitecture()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    const-string v0, "os.arch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static deviceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static deviceType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 220
    sget-object v0, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->instance:Lcom/miniclip/mcgoliath/MCGoliathWrapper;

    iget-object v0, v0, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 221
    const-string v0, "MCGoliathWrapper"

    const-string v1, "Context not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const-string v0, ""

    .line 226
    :goto_0
    return-object v0

    .line 224
    :cond_0
    invoke-static {}, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 225
    const-string v0, "Tablet"

    goto :goto_0

    .line 226
    :cond_1
    const-string v0, "Phone"

    goto :goto_0
.end method

.method public static displayHeight()I
    .locals 2

    .prologue
    .line 176
    sget-object v0, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->instance:Lcom/miniclip/mcgoliath/MCGoliathWrapper;

    iget-object v0, v0, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 177
    const-string v0, "MCGoliathWrapper"

    const-string v1, "Context not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v0, 0x0

    .line 180
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->instance:Lcom/miniclip/mcgoliath/MCGoliathWrapper;

    iget-object v0, v0, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    goto :goto_0
.end method

.method public static displayLanguage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 185
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static displayWidth()I
    .locals 2

    .prologue
    .line 168
    sget-object v0, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->instance:Lcom/miniclip/mcgoliath/MCGoliathWrapper;

    iget-object v0, v0, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 169
    const-string v0, "MCGoliathWrapper"

    const-string v1, "Context not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/4 v0, 0x0

    .line 172
    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->instance:Lcom/miniclip/mcgoliath/MCGoliathWrapper;

    iget-object v0, v0, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0
.end method

.method private init()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 55
    invoke-static {}, Lcom/miniclip/framework/Miniclip;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->setContext(Landroid/content/Context;)V

    .line 56
    invoke-static {p0}, Lcom/miniclip/framework/Miniclip;->addListener(Lcom/miniclip/framework/ActivityListener;)Z

    .line 59
    const-string v3, "Amazon"

    sget-object v4, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 60
    iget-object v3, p0, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 63
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v3, "limit_ad_tracking"

    invoke-static {v0, v3, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 64
    .local v1, "limitAdTracking":I
    if-nez v1, :cond_0

    .line 67
    const-string v3, "advertising_id"

    invoke-static {v0, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->advertisingID:Ljava/lang/String;

    .line 68
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->isLimitAdTrackingEnabled:Z

    .line 107
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "limitAdTracking":I
    :goto_0
    return-void

    .line 70
    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v1    # "limitAdTracking":I
    :cond_0
    if-ne v1, v6, :cond_1

    .line 73
    iget-object v3, p0, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->advertisingID:Ljava/lang/String;

    .line 74
    iput-boolean v5, p0, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->isLimitAdTrackingEnabled:Z

    goto :goto_0

    .line 79
    :cond_1
    iget-object v3, p0, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "android_id"

    invoke-static {v3, v4}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->advertisingID:Ljava/lang/String;

    .line 80
    iput-boolean v5, p0, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->isLimitAdTrackingEnabled:Z

    goto :goto_0

    .line 84
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "limitAdTracking":I
    :cond_2
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v3

    iget-object v4, p0, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->context:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v3

    if-nez v3, :cond_3

    .line 85
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/miniclip/mcgoliath/MCGoliathWrapper$1;

    invoke-direct {v3, p0}, Lcom/miniclip/mcgoliath/MCGoliathWrapper$1;-><init>(Lcom/miniclip/mcgoliath/MCGoliathWrapper;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 100
    .local v2, "thread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 103
    .end local v2    # "thread":Ljava/lang/Thread;
    :cond_3
    const-string v3, ""

    iput-object v3, p0, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->advertisingID:Ljava/lang/String;

    .line 104
    const-string v3, "MCGoliathWrapper"

    const-string v4, "Google Play Services is not available in the device!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static initWrapper()V
    .locals 1

    .prologue
    .line 110
    invoke-static {}, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->sharedInstance()Lcom/miniclip/mcgoliath/MCGoliathWrapper;

    move-result-object v0

    invoke-direct {v0}, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->init()V

    .line 111
    return-void
.end method

.method public static isAdvertisingInitialized()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 136
    sget-object v1, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->instance:Lcom/miniclip/mcgoliath/MCGoliathWrapper;

    iget-object v1, v1, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->context:Landroid/content/Context;

    if-nez v1, :cond_1

    .line 139
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->advertisingID()Ljava/lang/String;

    move-result-object v1

    const-string v2, "none"

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isTablet()Z
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 210
    sget-object v4, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->instance:Lcom/miniclip/mcgoliath/MCGoliathWrapper;

    iget-object v4, v4, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->context:Landroid/content/Context;

    if-nez v4, :cond_1

    .line 211
    const-string v2, "MCGoliathWrapper"

    const-string v4, "Context not initialized"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    .local v0, "large":Z
    .local v1, "xlarge":Z
    :cond_0
    :goto_0
    return v3

    .line 214
    .end local v0    # "large":Z
    .end local v1    # "xlarge":Z
    :cond_1
    sget-object v4, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->instance:Lcom/miniclip/mcgoliath/MCGoliathWrapper;

    iget-object v4, v4, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    move v1, v2

    .line 215
    .restart local v1    # "xlarge":Z
    :goto_1
    sget-object v4, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->instance:Lcom/miniclip/mcgoliath/MCGoliathWrapper;

    iget-object v4, v4, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v4, v4, 0xf

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    move v0, v2

    .line 216
    .restart local v0    # "large":Z
    :goto_2
    if-nez v1, :cond_2

    if-eqz v0, :cond_0

    :cond_2
    move v3, v2

    goto :goto_0

    .end local v0    # "large":Z
    .end local v1    # "xlarge":Z
    :cond_3
    move v1, v3

    .line 214
    goto :goto_1

    .restart local v1    # "xlarge":Z
    :cond_4
    move v0, v3

    .line 215
    goto :goto_2
.end method

.method public static osVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static packageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 143
    sget-object v0, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->instance:Lcom/miniclip/mcgoliath/MCGoliathWrapper;

    iget-object v0, v0, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 144
    const-string v0, "MCGoliathWrapper"

    const-string v1, "Context not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const-string v0, ""

    .line 147
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->instance:Lcom/miniclip/mcgoliath/MCGoliathWrapper;

    iget-object v0, v0, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static pathForSaveFile()Ljava/lang/String;
    .locals 3

    .prologue
    .line 114
    sget-object v0, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->instance:Lcom/miniclip/mcgoliath/MCGoliathWrapper;

    iget-object v0, v0, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 115
    const-string v0, "MCGoliathWrapper"

    const-string v1, "Context not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    const-string v0, ""

    .line 119
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->instance:Lcom/miniclip/mcgoliath/MCGoliathWrapper;

    iget-object v1, v1, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    sget-object v2, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->goliathFile:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->context:Landroid/content/Context;

    .line 51
    return-void
.end method

.method private static sharedInstance()Lcom/miniclip/mcgoliath/MCGoliathWrapper;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->instance:Lcom/miniclip/mcgoliath/MCGoliathWrapper;

    return-object v0
.end method

.method private static native startMCGoliathWrapperAndroid()V
.end method

.method private static native stopMCGoliathWrapperAndroid()V
.end method

.method public static timezone()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 151
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    .line 156
    .local v0, "timezone":Ljava/util/TimeZone;
    invoke-virtual {v0, v1, v1}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public onStart()V
    .locals 0

    .prologue
    .line 241
    invoke-static {}, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->startMCGoliathWrapperAndroid()V

    .line 242
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 248
    invoke-static {}, Lcom/miniclip/mcgoliath/MCGoliathWrapper;->stopMCGoliathWrapperAndroid()V

    .line 249
    return-void
.end method
