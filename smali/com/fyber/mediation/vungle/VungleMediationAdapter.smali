.class public Lcom/fyber/mediation/vungle/VungleMediationAdapter;
.super Lcom/fyber/mediation/MediationAdapter;
.source "VungleMediationAdapter.java"


# annotations
.annotation runtime Lcom/fyber/mediation/annotations/AdapterDefinition;
    apiVersion = 0x5
    name = "Vungle"
    sdkFeatures = {
        "banners",
        "blended"
    }
    version = "4.0.3-r2"
.end annotation


# static fields
.field public static final ADAPTER_NAME:Ljava/lang/String; = "Vungle"

.field public static final ADAPTER_VERSION:Ljava/lang/String; = "4.0.3-r2"

.field public static final APP_ID:Ljava/lang/String; = "app.id"

.field public static final AUTO_ROTATION_ENABLED:Ljava/lang/String; = "auto.rotation.enabled"

.field public static final BACK_BUTTON_ENABLED:Ljava/lang/String; = "back.button.enabled"

.field public static final INCENTIVIZED_CANCEL_DIALOG_BUTTON:Ljava/lang/String; = "cancel.dialog.button"

.field public static final INCENTIVIZED_CANCEL_DIALOG_TEXT:Ljava/lang/String; = "cancel.dialog.text"

.field public static final INCENTIVIZED_CANCEL_DIALOG_TITLE:Ljava/lang/String; = "cancel.dialog.title"

.field public static final INCENTIVIZED_KEEP_WATCHING:Ljava/lang/String; = "keep.watching.text"

.field public static final INCENTIVIZED_MODE:Ljava/lang/String; = "incentivized.mode"

.field public static final SOUND_ENABLED:Ljava/lang/String; = "sound.enabled"

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private activeChildAdapter:Ljava/lang/Object;

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

.field private mActivityCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

.field private final mHandler:Landroid/os/Handler;

.field private mInterstitialMediationAdapter:Lcom/fyber/mediation/vungle/interstitial/VungleInterstitialMediationAdapter;

.field private mMediationAdapter:Lcom/fyber/mediation/vungle/VungleMediationAdapter;

.field private mVideoMediationAdapter:Lcom/fyber/mediation/vungle/rv/VungleVideoMediationAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/fyber/mediation/vungle/VungleMediationAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/fyber/mediation/MediationAdapter;-><init>()V

    .line 51
    iput-object p0, p0, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->mMediationAdapter:Lcom/fyber/mediation/vungle/VungleMediationAdapter;

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/fyber/mediation/vungle/VungleMediationAdapter;)Lcom/fyber/mediation/vungle/rv/VungleVideoMediationAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/fyber/mediation/vungle/VungleMediationAdapter;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->mVideoMediationAdapter:Lcom/fyber/mediation/vungle/rv/VungleVideoMediationAdapter;

    return-object v0
.end method

.method static synthetic access$002(Lcom/fyber/mediation/vungle/VungleMediationAdapter;Lcom/fyber/mediation/vungle/rv/VungleVideoMediationAdapter;)Lcom/fyber/mediation/vungle/rv/VungleVideoMediationAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/vungle/VungleMediationAdapter;
    .param p1, "x1"    # Lcom/fyber/mediation/vungle/rv/VungleVideoMediationAdapter;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->mVideoMediationAdapter:Lcom/fyber/mediation/vungle/rv/VungleVideoMediationAdapter;

    return-object p1
.end method

.method static synthetic access$100(Lcom/fyber/mediation/vungle/VungleMediationAdapter;)Lcom/fyber/mediation/vungle/VungleMediationAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/fyber/mediation/vungle/VungleMediationAdapter;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->mMediationAdapter:Lcom/fyber/mediation/vungle/VungleMediationAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fyber/mediation/vungle/VungleMediationAdapter;)Lcom/fyber/mediation/vungle/interstitial/VungleInterstitialMediationAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/fyber/mediation/vungle/VungleMediationAdapter;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->mInterstitialMediationAdapter:Lcom/fyber/mediation/vungle/interstitial/VungleInterstitialMediationAdapter;

    return-object v0
.end method

.method static synthetic access$202(Lcom/fyber/mediation/vungle/VungleMediationAdapter;Lcom/fyber/mediation/vungle/interstitial/VungleInterstitialMediationAdapter;)Lcom/fyber/mediation/vungle/interstitial/VungleInterstitialMediationAdapter;
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/vungle/VungleMediationAdapter;
    .param p1, "x1"    # Lcom/fyber/mediation/vungle/interstitial/VungleInterstitialMediationAdapter;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->mInterstitialMediationAdapter:Lcom/fyber/mediation/vungle/interstitial/VungleInterstitialMediationAdapter;

    return-object p1
.end method

.method static synthetic access$300(Lcom/fyber/mediation/vungle/VungleMediationAdapter;Landroid/app/Application;)V
    .locals 0
    .param p0, "x0"    # Lcom/fyber/mediation/vungle/VungleMediationAdapter;
    .param p1, "x1"    # Landroid/app/Application;

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->setAndRegisterActivityCallbacks(Landroid/app/Application;)V

    return-void
.end method

.method private setAndRegisterActivityCallbacks(Landroid/app/Application;)V
    .locals 1
    .param p1, "app"    # Landroid/app/Application;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .prologue
    .line 105
    new-instance v0, Lcom/fyber/mediation/vungle/VungleMediationAdapter$2;

    invoke-direct {v0, p0}, Lcom/fyber/mediation/vungle/VungleMediationAdapter$2;-><init>(Lcom/fyber/mediation/vungle/VungleMediationAdapter;)V

    iput-object v0, p0, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->mActivityCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    .line 141
    iget-object v0, p0, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->mActivityCallbacks:Landroid/app/Application$ActivityLifecycleCallbacks;

    invoke-virtual {p1, v0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 142
    return-void
.end method

.method private setAutoOrientation(Lcom/vungle/publisher/AdConfig;)V
    .locals 4
    .param p1, "adConfig"    # Lcom/vungle/publisher/AdConfig;

    .prologue
    .line 206
    iget-object v1, p0, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->configs:Ljava/util/Map;

    const-string v2, "auto.rotation.enabled"

    const-class v3, Ljava/lang/Boolean;

    invoke-static {v1, v2, v3}, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 207
    .local v0, "enabled":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/vungle/publisher/Orientation;->autoRotate:Lcom/vungle/publisher/Orientation;

    :goto_0
    invoke-virtual {p1, v1}, Lcom/vungle/publisher/AdConfig;->setOrientation(Lcom/vungle/publisher/Orientation;)V

    .line 210
    :cond_0
    return-void

    .line 208
    :cond_1
    sget-object v1, Lcom/vungle/publisher/Orientation;->matchVideo:Lcom/vungle/publisher/Orientation;

    goto :goto_0
.end method

.method private setBackButtonEnabled(Lcom/vungle/publisher/AdConfig;)V
    .locals 4
    .param p1, "adConfig"    # Lcom/vungle/publisher/AdConfig;

    .prologue
    .line 220
    iget-object v1, p0, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->configs:Ljava/util/Map;

    const-string v2, "back.button.enabled"

    const-class v3, Ljava/lang/Boolean;

    invoke-static {v1, v2, v3}, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 221
    .local v0, "enabled":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 222
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/vungle/publisher/AdConfig;->setBackButtonImmediatelyEnabled(Z)V

    .line 224
    :cond_0
    return-void
.end method

.method private setIncentivizedCancelDialogBodyText(Lcom/vungle/publisher/AdConfig;)V
    .locals 4
    .param p1, "adConfig"    # Lcom/vungle/publisher/AdConfig;

    .prologue
    .line 241
    iget-object v1, p0, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->configs:Ljava/util/Map;

    const-string v2, "cancel.dialog.text"

    const-class v3, Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 242
    .local v0, "text":Ljava/lang/String;
    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    invoke-virtual {p1, v0}, Lcom/vungle/publisher/AdConfig;->setIncentivizedCancelDialogBodyText(Ljava/lang/String;)V

    .line 245
    :cond_0
    return-void
.end method

.method private setIncentivizedCancelDialogCloseButtonText(Lcom/vungle/publisher/AdConfig;)V
    .locals 4
    .param p1, "adConfig"    # Lcom/vungle/publisher/AdConfig;

    .prologue
    .line 248
    iget-object v1, p0, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->configs:Ljava/util/Map;

    const-string v2, "cancel.dialog.button"

    const-class v3, Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 249
    .local v0, "text":Ljava/lang/String;
    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    invoke-virtual {p1, v0}, Lcom/vungle/publisher/AdConfig;->setIncentivizedCancelDialogCloseButtonText(Ljava/lang/String;)V

    .line 252
    :cond_0
    return-void
.end method

.method private setIncentivizedCancelDialogKeepWatchingButtonText(Lcom/vungle/publisher/AdConfig;)V
    .locals 4
    .param p1, "adConfig"    # Lcom/vungle/publisher/AdConfig;

    .prologue
    .line 255
    iget-object v1, p0, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->configs:Ljava/util/Map;

    const-string v2, "keep.watching.text"

    const-class v3, Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 256
    .local v0, "text":Ljava/lang/String;
    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 257
    invoke-virtual {p1, v0}, Lcom/vungle/publisher/AdConfig;->setIncentivizedCancelDialogKeepWatchingButtonText(Ljava/lang/String;)V

    .line 259
    :cond_0
    return-void
.end method

.method private setIncentivizedCancelDialogTitle(Lcom/vungle/publisher/AdConfig;)V
    .locals 4
    .param p1, "adConfig"    # Lcom/vungle/publisher/AdConfig;

    .prologue
    .line 234
    iget-object v1, p0, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->configs:Ljava/util/Map;

    const-string v2, "cancel.dialog.title"

    const-class v3, Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 235
    .local v0, "text":Ljava/lang/String;
    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 236
    invoke-virtual {p1, v0}, Lcom/vungle/publisher/AdConfig;->setIncentivizedCancelDialogTitle(Ljava/lang/String;)V

    .line 238
    :cond_0
    return-void
.end method

.method private setIncentivizedUserId(Lcom/vungle/publisher/AdConfig;)V
    .locals 2
    .param p1, "adConfig"    # Lcom/vungle/publisher/AdConfig;

    .prologue
    .line 227
    invoke-virtual {p0}, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "userId":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    invoke-virtual {p1, v0}, Lcom/vungle/publisher/AdConfig;->setIncentivizedUserId(Ljava/lang/String;)V

    .line 231
    :cond_0
    return-void
.end method

.method private setSoundEnabled(Lcom/vungle/publisher/AdConfig;)V
    .locals 4
    .param p1, "adConfig"    # Lcom/vungle/publisher/AdConfig;

    .prologue
    .line 213
    iget-object v1, p0, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->configs:Ljava/util/Map;

    const-string v2, "sound.enabled"

    const-class v3, Ljava/lang/Boolean;

    invoke-static {v1, v2, v3}, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 214
    .local v0, "enabled":Ljava/lang/Boolean;
    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/vungle/publisher/AdConfig;->setSoundEnabled(Z)V

    .line 217
    :cond_0
    return-void
.end method

.method private setVungleSetting(Lcom/vungle/publisher/AdConfig;)V
    .locals 0
    .param p1, "adConfig"    # Lcom/vungle/publisher/AdConfig;

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->setAutoOrientation(Lcom/vungle/publisher/AdConfig;)V

    .line 180
    invoke-direct {p0, p1}, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->setSoundEnabled(Lcom/vungle/publisher/AdConfig;)V

    .line 181
    invoke-direct {p0, p1}, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->setBackButtonEnabled(Lcom/vungle/publisher/AdConfig;)V

    .line 182
    invoke-direct {p0, p1}, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->setIncentivizedUserId(Lcom/vungle/publisher/AdConfig;)V

    .line 183
    invoke-direct {p0, p1}, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->setIncentivizedCancelDialogTitle(Lcom/vungle/publisher/AdConfig;)V

    .line 184
    invoke-direct {p0, p1}, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->setIncentivizedCancelDialogBodyText(Lcom/vungle/publisher/AdConfig;)V

    .line 185
    invoke-direct {p0, p1}, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->setIncentivizedCancelDialogCloseButtonText(Lcom/vungle/publisher/AdConfig;)V

    .line 186
    invoke-direct {p0, p1}, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->setIncentivizedCancelDialogKeepWatchingButtonText(Lcom/vungle/publisher/AdConfig;)V

    .line 187
    return-void
.end method


# virtual methods
.method public getBannerMediationAdapter()Lcom/fyber/ads/banners/mediation/BannerMediationAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fyber/ads/banners/mediation/BannerMediationAdapter",
            "<",
            "Lcom/fyber/mediation/vungle/VungleMediationAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 166
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConfiguredAdConfig()Lcom/vungle/publisher/AdConfig;
    .locals 1

    .prologue
    .line 191
    new-instance v0, Lcom/vungle/publisher/AdConfig;

    invoke-direct {v0}, Lcom/vungle/publisher/AdConfig;-><init>()V

    .line 193
    .local v0, "adConfig":Lcom/vungle/publisher/AdConfig;
    invoke-direct {p0, v0}, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->setAutoOrientation(Lcom/vungle/publisher/AdConfig;)V

    .line 194
    invoke-direct {p0, v0}, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->setSoundEnabled(Lcom/vungle/publisher/AdConfig;)V

    .line 195
    invoke-direct {p0, v0}, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->setBackButtonEnabled(Lcom/vungle/publisher/AdConfig;)V

    .line 196
    invoke-direct {p0, v0}, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->setIncentivizedUserId(Lcom/vungle/publisher/AdConfig;)V

    .line 197
    invoke-direct {p0, v0}, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->setIncentivizedCancelDialogTitle(Lcom/vungle/publisher/AdConfig;)V

    .line 198
    invoke-direct {p0, v0}, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->setIncentivizedCancelDialogBodyText(Lcom/vungle/publisher/AdConfig;)V

    .line 199
    invoke-direct {p0, v0}, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->setIncentivizedCancelDialogCloseButtonText(Lcom/vungle/publisher/AdConfig;)V

    .line 200
    invoke-direct {p0, v0}, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->setIncentivizedCancelDialogKeepWatchingButtonText(Lcom/vungle/publisher/AdConfig;)V

    .line 202
    return-object v0
.end method

.method public getInterstitialMediationAdapter()Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/fyber/ads/interstitials/mediation/InterstitialMediationAdapter",
            "<",
            "Lcom/fyber/mediation/vungle/VungleMediationAdapter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->mInterstitialMediationAdapter:Lcom/fyber/mediation/vungle/interstitial/VungleInterstitialMediationAdapter;

    return-object v0
.end method

.method protected getListeners()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/vungle/publisher/EventListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 171
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 146
    const-string v0, "Vungle"

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    const-string v0, "4.0.3-r2"

    return-object v0
.end method

.method public bridge synthetic getVideoMediationAdapter()Lcom/fyber/ads/videos/mediation/RewardedVideoMediationAdapter;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->getVideoMediationAdapter()Lcom/fyber/mediation/vungle/rv/VungleVideoMediationAdapter;

    move-result-object v0

    return-object v0
.end method

.method public getVideoMediationAdapter()Lcom/fyber/mediation/vungle/rv/VungleVideoMediationAdapter;
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->mVideoMediationAdapter:Lcom/fyber/mediation/vungle/rv/VungleVideoMediationAdapter;

    return-object v0
.end method

.method public isActiveChildAdapter(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "childAdapter"    # Ljava/lang/Object;

    .prologue
    .line 268
    iget-object v0, p0, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->activeChildAdapter:Ljava/lang/Object;

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setActiveChildAdapter(Ljava/lang/Object;)V
    .locals 0
    .param p1, "childAdapter"    # Ljava/lang/Object;

    .prologue
    .line 264
    iput-object p1, p0, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->activeChildAdapter:Ljava/lang/Object;

    .line 265
    return-void
.end method

.method public startAdapter(Landroid/app/Activity;Ljava/util/Map;)Z
    .locals 4
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
    .local p2, "configs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    .line 59
    sget-object v2, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->TAG:Ljava/lang/String;

    const-string v3, "Starting Vungle adapter"

    invoke-static {v2, v3}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iput-object p2, p0, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->configs:Ljava/util/Map;

    .line 62
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_0

    .line 63
    sget-object v2, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->TAG:Ljava/lang/String;

    const-string v3, "Vungle Adapter requires Android API level 14+. Adapter won\'t start."

    invoke-static {v2, v3}, Lcom/fyber/utils/FyberLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    :goto_0
    return v1

    .line 67
    :cond_0
    const-string v2, "app.id"

    const-class v3, Ljava/lang/String;

    invoke-static {p2, v2, v3}, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->getConfiguration(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 68
    .local v0, "appId":Ljava/lang/String;
    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 69
    sget-object v2, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->TAG:Ljava/lang/String;

    const-string v3, "\u2018app.id\u2018 is missing. Adapter won\u2019t start"

    invoke-static {v2, v3}, Lcom/fyber/utils/FyberLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 72
    :cond_1
    sget-object v1, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Using App ID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v1, p0, Lcom/fyber/mediation/vungle/VungleMediationAdapter;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/fyber/mediation/vungle/VungleMediationAdapter$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/fyber/mediation/vungle/VungleMediationAdapter$1;-><init>(Lcom/fyber/mediation/vungle/VungleMediationAdapter;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 100
    const/4 v1, 0x1

    goto :goto_0
.end method
