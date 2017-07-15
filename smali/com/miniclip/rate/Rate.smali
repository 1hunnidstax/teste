.class public Lcom/miniclip/rate/Rate;
.super Ljava/lang/Object;
.source "Rate.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()V
    .locals 0

    .prologue
    .line 15
    invoke-static {}, Lcom/miniclip/rate/Rate;->regiterSessionStart()V

    return-void
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 15
    invoke-static {}, Lcom/miniclip/rate/Rate;->registerSessionStop()V

    return-void
.end method

.method static synthetic access$200()V
    .locals 0

    .prologue
    .line 15
    invoke-static {}, Lcom/miniclip/rate/Rate;->sessionStarted()V

    return-void
.end method

.method static synthetic access$300()V
    .locals 0

    .prologue
    .line 15
    invoke-static {}, Lcom/miniclip/rate/Rate;->sessionStopped()V

    return-void
.end method

.method public static getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    invoke-static {}, Lcom/miniclip/framework/Miniclip;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getVersionName()Ljava/lang/String;
    .locals 5

    .prologue
    .line 63
    const-string v1, ""

    .line 65
    .local v1, "versionName":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Lcom/miniclip/framework/Miniclip;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-static {}, Lcom/miniclip/framework/Miniclip;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v1, v2, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-object v1

    .line 66
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method protected static init()V
    .locals 2

    .prologue
    .line 18
    sget-object v0, Lcom/miniclip/framework/ThreadingContext;->Main:Lcom/miniclip/framework/ThreadingContext;

    new-instance v1, Lcom/miniclip/rate/Rate$1;

    invoke-direct {v1}, Lcom/miniclip/rate/Rate$1;-><init>()V

    invoke-static {v0, v1}, Lcom/miniclip/framework/Miniclip;->queueEvent(Lcom/miniclip/framework/ThreadingContext;Ljava/lang/Runnable;)V

    .line 24
    return-void
.end method

.method public static internetConnectionStatus()Z
    .locals 4

    .prologue
    .line 82
    invoke-static {}, Lcom/miniclip/framework/Miniclip;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 85
    .local v0, "activity":Landroid/app/Activity;
    const-string v3, "connectivity"

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 86
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 88
    .local v2, "ni":Landroid/net/NetworkInfo;
    if-nez v2, :cond_0

    .line 90
    const/4 v3, 0x0

    .line 93
    :goto_0
    return v3

    :cond_0
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    goto :goto_0
.end method

.method private static registerSessionStop()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/miniclip/rate/Rate$3;

    invoke-direct {v0}, Lcom/miniclip/rate/Rate$3;-><init>()V

    .line 55
    .local v0, "rateAAL":Lcom/miniclip/framework/AbstractActivityListener;
    invoke-static {v0}, Lcom/miniclip/framework/Miniclip;->addListener(Lcom/miniclip/framework/ActivityListener;)Z

    .line 56
    return-void
.end method

.method private static regiterSessionStart()V
    .locals 1

    .prologue
    .line 27
    new-instance v0, Lcom/miniclip/rate/Rate$2;

    invoke-direct {v0}, Lcom/miniclip/rate/Rate$2;-><init>()V

    .line 39
    .local v0, "rateAAL":Lcom/miniclip/framework/AbstractActivityListener;
    invoke-static {v0}, Lcom/miniclip/framework/Miniclip;->addListener(Lcom/miniclip/framework/ActivityListener;)Z

    .line 40
    return-void
.end method

.method private static native sessionStarted()V
.end method

.method private static native sessionStopped()V
.end method
