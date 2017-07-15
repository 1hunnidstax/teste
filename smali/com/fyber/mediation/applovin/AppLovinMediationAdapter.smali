.class public Lcom/fyber/mediation/applovin/AppLovinMediationAdapter;
.super Lcom/fyber/mediation/MediationAdapter;
.source "AppLovinMediationAdapter.java"


# annotations
.annotation runtime Lcom/fyber/mediation/annotations/AdapterDefinition;
    apiVersion = 0x5
    name = "AppLovin"
    sdkFeatures = {
        "banners",
        "blended"
    }
    version = "6.3.2-r1"
.end annotation


# static fields
.field public static final ADAPTER_NAME:Ljava/lang/String; = "AppLovin"

.field public static final ADAPTER_VERSION:Ljava/lang/String; = "6.3.2-r1"

.field private static final SDK_KEY:Ljava/lang/String; = "applovin.sdk.key"

.field public static final TAG:Ljava/lang/String;

.field public static final VERBOSE_LOGGING_KEY:Ljava/lang/String; = "verbose.logging"


# instance fields
.field private configs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private interstitialAdapter:Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;

.field private videoAdapter:Lcom/fyber/mediation/applovin/rv/AppLovinVideoMediationAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/fyber/mediation/applovin/AppLovinMediationAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fyber/mediation/applovin/AppLovinMediationAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/fyber/mediation/MediationAdapter;-><init>()V

    return-void
.end method

.method private getMetadata(Landroid/app/Activity;)Landroid/os/Bundle;
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 102
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 107
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v2, :cond_0

    .line 108
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iput-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 111
    :cond_0
    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .end local v0    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    return-object v2

    .line 103
    :catch_0
    move-exception v1

    .line 104
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getSdkKeyFromAppMetadata(Landroid/app/Activity;)Ljava/lang/String;
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v2, 0x0

    .line 115
    invoke-direct {p0, p1}, Lcom/fyber/mediation/applovin/AppLovinMediationAdapter;->getMetadata(Landroid/app/Activity;)Landroid/os/Bundle;

    move-result-object v0

    .line 116
    .local v0, "metadata":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    const-string v3, "applovin.sdk.key"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 117
    .local v1, "retrievedValue":Ljava/lang/Object;
    :goto_0
    if-nez v1, :cond_1

    :goto_1
    return-object v2

    .end local v1    # "retrievedValue":Ljava/lang/Object;
    :cond_0
    move-object v1, v2

    .line 116
    goto :goto_0

    .line 117
    .restart local v1    # "retrievedValue":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private getVerboseLoggingFromConfig()Z
    .locals 4

    .prologue
    .line 94
    iget-object v0, p0, Lcom/fyber/mediation/applovin/AppLovinMediationAdapter;->configs:Ljava/util/Map;

    const-string v1, "verbose.logging"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-class v3, Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, v3}, Lcom/fyber/mediation/applovin/AppLovinMediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getBannerMediationAdapter()Lcom/fyber/ads/banners/mediation/BannerMediationAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fyber/ads/banners/mediation/BannerMediationAdapter",
            "<",
            "Lcom/fyber/mediation/applovin/AppLovinMediationAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getInterstitialMediationAdapter()Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/fyber/mediation/applovin/AppLovinMediationAdapter;->getInterstitialMediationAdapter()Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getInterstitialMediationAdapter()Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/fyber/mediation/applovin/AppLovinMediationAdapter;->interstitialAdapter:Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;

    return-object v0
.end method

.method protected getListeners()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string v0, "AppLovin"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-string v0, "6.3.2-r1"

    return-object v0
.end method

.method public bridge synthetic getVideoMediationAdapter()Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lcom/fyber/mediation/applovin/AppLovinMediationAdapter;->getVideoMediationAdapter()Lcom/fyber/mediation/applovin/rv/AppLovinVideoMediationAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getVideoMediationAdapter()Lcom/fyber/mediation/applovin/rv/AppLovinVideoMediationAdapter;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/fyber/mediation/applovin/AppLovinMediationAdapter;->videoAdapter:Lcom/fyber/mediation/applovin/rv/AppLovinVideoMediationAdapter;

    return-object v0
.end method

.method public startAdapter(Landroid/app/Activity;Ljava/util/Map;)Z
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 43
    .local p2, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iput-object p2, p0, Lcom/fyber/mediation/applovin/AppLovinMediationAdapter;->configs:Ljava/util/Map;

    .line 44
    sget-object v4, Lcom/fyber/mediation/applovin/AppLovinMediationAdapter;->TAG:Ljava/lang/String;

    const-string v5, "Starting AppLovin adapter..."

    invoke-static {v4, v5}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0, p1}, Lcom/fyber/mediation/applovin/AppLovinMediationAdapter;->getSdkKeyFromAppMetadata(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v1

    .line 46
    .local v1, "sdkKey":Ljava/lang/String;
    invoke-direct {p0}, Lcom/fyber/mediation/applovin/AppLovinMediationAdapter;->getVerboseLoggingFromConfig()Z

    move-result v3

    .line 48
    .local v3, "verboseLogging":Z
    invoke-static {v1}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 49
    new-instance v2, Lcom/applovin/sdk/AppLovinSdkSettings;

    invoke-direct {v2}, Lcom/applovin/sdk/AppLovinSdkSettings;-><init>()V

    .line 50
    .local v2, "settings":Lcom/applovin/sdk/AppLovinSdkSettings;
    invoke-virtual {v2, v3}, Lcom/applovin/sdk/AppLovinSdkSettings;->setVerboseLogging(Z)V

    .line 52
    invoke-static {p1}, Lcom/applovin/sdk/AppLovinSdk;->initializeSdk(Landroid/content/Context;)V

    .line 53
    invoke-static {v2, p1}, Lcom/applovin/sdk/AppLovinSdk;->getInstance(Lcom/applovin/sdk/AppLovinSdkSettings;Landroid/content/Context;)Lcom/applovin/sdk/AppLovinSdk;

    move-result-object v0

    .line 54
    .local v0, "appLovinSdk":Lcom/applovin/sdk/AppLovinSdk;
    new-instance v4, Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;

    invoke-direct {v4, p0, p1, v0}, Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;-><init>(Lcom/fyber/mediation/applovin/AppLovinMediationAdapter;Landroid/app/Activity;Lcom/applovin/sdk/AppLovinSdk;)V

    iput-object v4, p0, Lcom/fyber/mediation/applovin/AppLovinMediationAdapter;->interstitialAdapter:Lcom/fyber/mediation/applovin/interstitial/AppLovinInterstitialMediationAdapter;

    .line 55
    new-instance v4, Lcom/fyber/mediation/applovin/rv/AppLovinVideoMediationAdapter;

    invoke-virtual {p0}, Lcom/fyber/mediation/applovin/AppLovinMediationAdapter;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, p1, v5}, Lcom/fyber/mediation/applovin/rv/AppLovinVideoMediationAdapter;-><init>(Lcom/fyber/mediation/applovin/AppLovinMediationAdapter;Landroid/app/Activity;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/fyber/mediation/applovin/AppLovinMediationAdapter;->videoAdapter:Lcom/fyber/mediation/applovin/rv/AppLovinVideoMediationAdapter;

    .line 56
    const/4 v4, 0x1

    .line 60
    .end local v0    # "appLovinSdk":Lcom/applovin/sdk/AppLovinSdk;
    .end local v2    # "settings":Lcom/applovin/sdk/AppLovinSdkSettings;
    :goto_0
    return v4

    .line 59
    :cond_0
    sget-object v4, Lcom/fyber/mediation/applovin/AppLovinMediationAdapter;->TAG:Ljava/lang/String;

    const-string v5, "SDK key value is not set in the AndroidManifest file of your application. Adapter won\'t start"

    invoke-static {v4, v5}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    const/4 v4, 0x0

    goto :goto_0
.end method
