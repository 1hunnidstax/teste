.class synthetic Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter$1;
.super Ljava/lang/Object;
.source "UnityAdsInterstitialMediationAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$unity3d$ads$UnityAds$FinishState:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 93
    invoke-static {}, Lcom/unity3d/ads/UnityAds$FinishState;->values()[Lcom/unity3d/ads/UnityAds$FinishState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter$1;->$SwitchMap$com$unity3d$ads$UnityAds$FinishState:[I

    :try_start_0
    sget-object v0, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter$1;->$SwitchMap$com$unity3d$ads$UnityAds$FinishState:[I

    sget-object v1, Lcom/unity3d/ads/UnityAds$FinishState;->COMPLETED:Lcom/unity3d/ads/UnityAds$FinishState;

    invoke-virtual {v1}, Lcom/unity3d/ads/UnityAds$FinishState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter$1;->$SwitchMap$com$unity3d$ads$UnityAds$FinishState:[I

    sget-object v1, Lcom/unity3d/ads/UnityAds$FinishState;->SKIPPED:Lcom/unity3d/ads/UnityAds$FinishState;

    invoke-virtual {v1}, Lcom/unity3d/ads/UnityAds$FinishState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/fyber/mediation/unityads/interstitial/UnityAdsInterstitialMediationAdapter$1;->$SwitchMap$com$unity3d$ads$UnityAds$FinishState:[I

    sget-object v1, Lcom/unity3d/ads/UnityAds$FinishState;->ERROR:Lcom/unity3d/ads/UnityAds$FinishState;

    invoke-virtual {v1}, Lcom/unity3d/ads/UnityAds$FinishState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
