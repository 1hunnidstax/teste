.class public final Lcom/inmobi/ads/InMobiInterstitial;
.super Ljava/lang/Object;
.source "InMobiInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/InMobiInterstitial$a;,
        Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener;,
        Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener2;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivityRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private mClientCallbackHandler:Lcom/inmobi/ads/InMobiInterstitial$a;

.field private mDidPubCalledLoad:Z

.field private mExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mInterstitialAdListener:Lcom/inmobi/ads/AdUnit$b;

.field private mInterstitialAdUnit:Lcom/inmobi/ads/w;

.field private mIsHardwareAccelerationDisabled:Z

.field private mIsInitialized:Z

.field private mIsTrueRequestBeaconFired:Z

.field private mKeywords:Ljava/lang/String;

.field private mListener:Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener;

.field private mListener2:Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener2;

.field private mPlacementId:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 177
    const-class v0, Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/InMobiInterstitial;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;JLcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener2;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-boolean v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mIsInitialized:Z

    .line 189
    iput-boolean v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mIsTrueRequestBeaconFired:Z

    .line 190
    iput-boolean v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mDidPubCalledLoad:Z

    .line 737
    new-instance v0, Lcom/inmobi/ads/InMobiInterstitial$1;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/InMobiInterstitial$1;-><init>(Lcom/inmobi/ads/InMobiInterstitial;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdListener:Lcom/inmobi/ads/AdUnit$b;

    .line 230
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 231
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiInterstitial;->TAG:Ljava/lang/String;

    const-string v2, "Please initialize the SDK before creating an Interstitial ad"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :goto_0
    return-void

    .line 235
    :cond_0
    if-nez p4, :cond_1

    .line 236
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiInterstitial;->TAG:Ljava/lang/String;

    const-string v2, "The Interstitial ad cannot be created as no event listener was supplied. Please attach a listener to proceed"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 241
    :cond_1
    if-nez p1, :cond_2

    .line 242
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiInterstitial;->TAG:Ljava/lang/String;

    const-string v2, "Unable to create Interstitial ad with null Activity object."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 246
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mIsInitialized:Z

    .line 247
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 248
    iput-wide p2, p0, Lcom/inmobi/ads/InMobiInterstitial;->mPlacementId:J

    .line 249
    iput-object p4, p0, Lcom/inmobi/ads/InMobiInterstitial;->mListener2:Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener2;

    .line 250
    new-instance v0, Lcom/inmobi/ads/InMobiInterstitial$a;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial;->mListener2:Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener2;

    invoke-direct {v0, p0, v1}, Lcom/inmobi/ads/InMobiInterstitial$a;-><init>(Lcom/inmobi/ads/InMobiInterstitial;Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener2;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiInterstitial$a;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;JLcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-boolean v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mIsInitialized:Z

    .line 189
    iput-boolean v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mIsTrueRequestBeaconFired:Z

    .line 190
    iput-boolean v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mDidPubCalledLoad:Z

    .line 737
    new-instance v0, Lcom/inmobi/ads/InMobiInterstitial$1;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/InMobiInterstitial$1;-><init>(Lcom/inmobi/ads/InMobiInterstitial;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdListener:Lcom/inmobi/ads/AdUnit$b;

    .line 201
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiInterstitial;->TAG:Ljava/lang/String;

    const-string v2, "Please initialize the SDK before creating an Interstitial ad"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    :goto_0
    return-void

    .line 206
    :cond_0
    if-nez p4, :cond_1

    .line 207
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiInterstitial;->TAG:Ljava/lang/String;

    const-string v2, "The Interstitial ad cannot be created as no event listener was supplied. Please attach a listener to proceed"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :cond_1
    if-nez p1, :cond_2

    .line 213
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiInterstitial;->TAG:Ljava/lang/String;

    const-string v2, "Unable to create Interstitial ad with null context object."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 217
    :cond_2
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_3

    .line 218
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiInterstitial;->TAG:Ljava/lang/String;

    const-string v2, "Please supply an Activity context to create an Interstitial ad"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 222
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mIsInitialized:Z

    .line 223
    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mActivityRef:Ljava/lang/ref/WeakReference;

    .line 224
    iput-wide p2, p0, Lcom/inmobi/ads/InMobiInterstitial;->mPlacementId:J

    .line 225
    iput-object p4, p0, Lcom/inmobi/ads/InMobiInterstitial;->mListener:Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener;

    .line 226
    new-instance v0, Lcom/inmobi/ads/InMobiInterstitial$a;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial;->mListener:Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener;

    invoke-direct {v0, p0, v1}, Lcom/inmobi/ads/InMobiInterstitial$a;-><init>(Lcom/inmobi/ads/InMobiInterstitial;Lcom/inmobi/ads/InMobiInterstitial$InterstitialAdListener;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiInterstitial$a;

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    sget-object v0, Lcom/inmobi/ads/InMobiInterstitial;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/inmobi/ads/InMobiInterstitial;)Lcom/inmobi/ads/InMobiInterstitial$a;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiInterstitial$a;

    return-object v0
.end method

.method static synthetic access$200(Lcom/inmobi/ads/InMobiInterstitial;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/inmobi/ads/InMobiInterstitial;->tryFiringTrueRequestBeacon(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/inmobi/ads/InMobiInterstitial;)Lcom/inmobi/ads/ax;
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiInterstitial;->getPlacementObj()Lcom/inmobi/ads/ax;

    move-result-object v0

    return-object v0
.end method

.method private getPlacementObj()Lcom/inmobi/ads/ax;
    .locals 4

    .prologue
    .line 265
    new-instance v0, Lcom/inmobi/ads/ax;

    iget-wide v2, p0, Lcom/inmobi/ads/InMobiInterstitial;->mPlacementId:J

    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial;->mExtras:Ljava/util/Map;

    invoke-static {v1}, Lcom/inmobi/ads/j;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lcom/inmobi/ads/ax;-><init>(JLjava/lang/String;)V

    .line 266
    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial;->mKeywords:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ax;->a(Ljava/lang/String;)V

    .line 267
    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial;->mExtras:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ax;->a(Ljava/util/Map;)V

    .line 268
    return-object v0
.end method

.method private loadAdUnit()V
    .locals 6

    .prologue
    .line 318
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiInterstitial;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fetching an Interstitial ad for placement id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdUnit:Lcom/inmobi/ads/w;

    .line 320
    invoke-virtual {v3}, Lcom/inmobi/ads/w;->b()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 318
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdUnit:Lcom/inmobi/ads/w;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdListener:Lcom/inmobi/ads/AdUnit$b;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/AdUnit$b;)V

    .line 324
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdUnit:Lcom/inmobi/ads/w;

    invoke-virtual {v0}, Lcom/inmobi/ads/w;->x()V

    .line 325
    return-void
.end method

.method private setupAdUnit()V
    .locals 3

    .prologue
    .line 307
    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdUnit:Lcom/inmobi/ads/w;

    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/w;->a(Landroid/content/Context;)V

    .line 308
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdUnit:Lcom/inmobi/ads/w;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v2, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdListener:Lcom/inmobi/ads/AdUnit$b;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/ads/w;->a(ILcom/inmobi/ads/AdUnit$b;)V

    .line 309
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdUnit:Lcom/inmobi/ads/w;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial;->mExtras:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/w;->a(Ljava/util/Map;)V

    .line 310
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdUnit:Lcom/inmobi/ads/w;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial;->mKeywords:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/w;->a(Ljava/lang/String;)V

    .line 311
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mIsHardwareAccelerationDisabled:Z

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdUnit:Lcom/inmobi/ads/w;

    invoke-virtual {v0}, Lcom/inmobi/ads/w;->P()V

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdUnit:Lcom/inmobi/ads/w;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/w;->a(Z)V

    .line 315
    return-void
.end method

.method private tryFiringTrueRequestBeacon(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 419
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mIsTrueRequestBeaconFired:Z

    if-nez v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdUnit:Lcom/inmobi/ads/w;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/w;->d(Ljava/lang/String;)V

    .line 421
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mIsTrueRequestBeaconFired:Z

    .line 423
    :cond_0
    return-void
.end method


# virtual methods
.method public disableHardwareAcceleration()V
    .locals 1

    .prologue
    .line 413
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 414
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mIsHardwareAccelerationDisabled:Z

    .line 416
    :cond_0
    return-void
.end method

.method public isReady()Z
    .locals 2

    .prologue
    .line 388
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mIsInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdUnit:Lcom/inmobi/ads/w;

    if-nez v0, :cond_2

    .line 389
    :cond_0
    const/4 v0, 0x0

    .line 395
    :cond_1
    :goto_0
    return v0

    .line 391
    :cond_2
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdUnit:Lcom/inmobi/ads/w;

    invoke-virtual {v0}, Lcom/inmobi/ads/w;->O()Z

    move-result v0

    .line 392
    if-nez v0, :cond_1

    .line 393
    const-string v1, "isReadyFalse"

    invoke-direct {p0, v1}, Lcom/inmobi/ads/InMobiInterstitial;->tryFiringTrueRequestBeacon(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public load()V
    .locals 5

    .prologue
    .line 280
    :try_start_0
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mIsInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 281
    invoke-static {}, Lcom/inmobi/ads/j;->a()Lcom/inmobi/ads/j;

    move-result-object v0

    .line 282
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiInterstitial;->getPlacementObj()Lcom/inmobi/ads/ax;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/j;->a(Lcom/inmobi/ads/ax;)Lcom/inmobi/ads/AdUnit;

    move-result-object v0

    .line 283
    iget-object v1, p0, Lcom/inmobi/ads/InMobiInterstitial;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiInterstitial$a;

    invoke-virtual {v1}, Lcom/inmobi/ads/InMobiInterstitial$a;->a()V

    .line 284
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/inmobi/ads/InMobiInterstitial;->mIsTrueRequestBeaconFired:Z

    .line 285
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/inmobi/ads/InMobiInterstitial;->mDidPubCalledLoad:Z

    .line 287
    if-eqz v0, :cond_1

    .line 288
    check-cast v0, Lcom/inmobi/ads/w;

    iput-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdUnit:Lcom/inmobi/ads/w;

    .line 294
    :goto_0
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiInterstitial;->setupAdUnit()V

    .line 295
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiInterstitial;->loadAdUnit()V

    .line 304
    :cond_0
    :goto_1
    return-void

    .line 291
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mActivityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-wide v2, p0, Lcom/inmobi/ads/InMobiInterstitial;->mPlacementId:J

    iget-object v4, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdListener:Lcom/inmobi/ads/AdUnit$b;

    invoke-static {v1, v0, v2, v3, v4}, Lcom/inmobi/ads/w$a;->a(ILandroid/app/Activity;JLcom/inmobi/ads/AdUnit$b;)Lcom/inmobi/ads/w;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdUnit:Lcom/inmobi/ads/w;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 297
    :catch_0
    move-exception v0

    .line 298
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiInterstitial;->TAG:Ljava/lang/String;

    const-string v3, "Unable to load ad; SDK encountered an unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiInterstitial;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Load failed with unexpected error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 301
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 300
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_1
.end method

.method public setExtras(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 404
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 405
    iput-object p1, p0, Lcom/inmobi/ads/InMobiInterstitial;->mExtras:Ljava/util/Map;

    .line 407
    :cond_0
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 259
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 260
    iput-object p1, p0, Lcom/inmobi/ads/InMobiInterstitial;->mKeywords:Ljava/lang/String;

    .line 262
    :cond_0
    return-void
.end method

.method public show()V
    .locals 5

    .prologue
    .line 336
    :try_start_0
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mDidPubCalledLoad:Z

    if-nez v0, :cond_1

    .line 337
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiInterstitial;->TAG:Ljava/lang/String;

    const-string v2, "load() must be called before trying to show the ad"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :cond_0
    :goto_0
    return-void

    .line 341
    :cond_1
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mIsInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdUnit:Lcom/inmobi/ads/w;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiInterstitial$a;

    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiInterstitial$a;->b()V

    .line 343
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdUnit:Lcom/inmobi/ads/w;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/w;->c(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 345
    :catch_0
    move-exception v0

    .line 346
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiInterstitial;->TAG:Ljava/lang/String;

    const-string v3, "Unable to show ad; SDK encountered an unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiInterstitial;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Show failed with unexpected error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 349
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 348
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method

.method public show(II)V
    .locals 5

    .prologue
    .line 368
    :try_start_0
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mIsInitialized:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdUnit:Lcom/inmobi/ads/w;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiInterstitial$a;

    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiInterstitial$a;->b()V

    .line 370
    iget-object v0, p0, Lcom/inmobi/ads/InMobiInterstitial;->mInterstitialAdUnit:Lcom/inmobi/ads/w;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/inmobi/ads/w;->a(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :cond_0
    :goto_0
    return-void

    .line 372
    :catch_0
    move-exception v0

    .line 373
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiInterstitial;->TAG:Ljava/lang/String;

    const-string v3, "Unable to show ad; SDK encountered an unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiInterstitial;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Show failed with unexpected error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 376
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 375
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method
