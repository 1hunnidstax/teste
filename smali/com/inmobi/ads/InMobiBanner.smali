.class public final Lcom/inmobi/ads/InMobiBanner;
.super Landroid/widget/RelativeLayout;
.source "InMobiBanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/InMobiBanner$a;,
        Lcom/inmobi/ads/InMobiBanner$b;,
        Lcom/inmobi/ads/InMobiBanner$BannerAdListener;,
        Lcom/inmobi/ads/InMobiBanner$AnimationType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdLoadCalledTimestamp:J

.field private mAnimationType:Lcom/inmobi/ads/InMobiBanner$AnimationType;

.field private mBackgroundBannerAdUnit:Lcom/inmobi/ads/n;

.field private final mBannerAdListener:Lcom/inmobi/ads/AdUnit$b;

.field private mBannerAdUnit1:Lcom/inmobi/ads/n;

.field private mBannerAdUnit2:Lcom/inmobi/ads/n;

.field private mBannerHeightInDp:I

.field private mBannerWidthInDp:I

.field private mClientCallbackHandler:Lcom/inmobi/ads/InMobiBanner$b;

.field private mClientListener:Lcom/inmobi/ads/InMobiBanner$BannerAdListener;

.field private mForegroundBannerAdUnit:Lcom/inmobi/ads/n;

.field private mIsAutoRefreshEnabled:Z

.field private mIsInitialized:Z

.field private mRefreshHandler:Lcom/inmobi/ads/o;

.field private mRefreshInterval:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    const-class v0, Lcom/inmobi/ads/InMobiBanner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;J)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 267
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 114
    iput-boolean v1, p0, Lcom/inmobi/ads/InMobiBanner;->mIsInitialized:Z

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsAutoRefreshEnabled:Z

    .line 118
    iput v1, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerWidthInDp:I

    .line 119
    iput v1, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerHeightInDp:I

    .line 120
    sget-object v0, Lcom/inmobi/ads/InMobiBanner$AnimationType;->ROTATE_HORIZONTAL_AXIS:Lcom/inmobi/ads/InMobiBanner$AnimationType;

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mAnimationType:Lcom/inmobi/ads/InMobiBanner$AnimationType;

    .line 121
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/ads/InMobiBanner;->mAdLoadCalledTimestamp:J

    .line 882
    new-instance v0, Lcom/inmobi/ads/InMobiBanner$3;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/InMobiBanner$3;-><init>(Lcom/inmobi/ads/InMobiBanner;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdListener:Lcom/inmobi/ads/AdUnit$b;

    .line 269
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v2, "Please initialize the SDK before creating a Banner ad"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    :goto_0
    return-void

    .line 275
    :cond_0
    if-nez p1, :cond_1

    .line 276
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v2, "Unable to create Banner ad with null Activity object."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 281
    :cond_1
    new-instance v0, Lcom/inmobi/ads/InMobiBanner$b;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiBanner;->mClientListener:Lcom/inmobi/ads/InMobiBanner$BannerAdListener;

    invoke-direct {v0, p0, v1}, Lcom/inmobi/ads/InMobiBanner$b;-><init>(Lcom/inmobi/ads/InMobiBanner;Lcom/inmobi/ads/InMobiBanner$BannerAdListener;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiBanner$b;

    .line 282
    invoke-direct {p0, p1, p2, p3}, Lcom/inmobi/ads/InMobiBanner;->initializeAdUnit(Landroid/app/Activity;J)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 186
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    iput-boolean v1, p0, Lcom/inmobi/ads/InMobiBanner;->mIsInitialized:Z

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsAutoRefreshEnabled:Z

    .line 118
    iput v1, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerWidthInDp:I

    .line 119
    iput v1, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerHeightInDp:I

    .line 120
    sget-object v0, Lcom/inmobi/ads/InMobiBanner$AnimationType;->ROTATE_HORIZONTAL_AXIS:Lcom/inmobi/ads/InMobiBanner$AnimationType;

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mAnimationType:Lcom/inmobi/ads/InMobiBanner$AnimationType;

    .line 121
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/ads/InMobiBanner;->mAdLoadCalledTimestamp:J

    .line 882
    new-instance v0, Lcom/inmobi/ads/InMobiBanner$3;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/InMobiBanner$3;-><init>(Lcom/inmobi/ads/InMobiBanner;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdListener:Lcom/inmobi/ads/AdUnit$b;

    .line 188
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 189
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v2, "Please initialize the SDK before creating a Banner ad"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    if-nez p1, :cond_2

    .line 195
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v2, "Unable to create Banner ad with null Activity object."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 200
    :cond_2
    const-string v0, "http://schemas.android.com/apk/lib/com.inmobi.ads"

    .line 201
    new-instance v0, Lcom/inmobi/ads/InMobiBanner$b;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiBanner;->mClientListener:Lcom/inmobi/ads/InMobiBanner$BannerAdListener;

    invoke-direct {v0, p0, v1}, Lcom/inmobi/ads/InMobiBanner$b;-><init>(Lcom/inmobi/ads/InMobiBanner;Lcom/inmobi/ads/InMobiBanner$BannerAdListener;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiBanner$b;

    .line 202
    const-string v0, "http://schemas.android.com/apk/lib/com.inmobi.ads"

    const-string v1, "placementId"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    const-string v1, "http://schemas.android.com/apk/lib/com.inmobi.ads"

    const-string v2, "refreshInterval"

    invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 205
    if-eqz v0, :cond_3

    .line 207
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 208
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 209
    invoke-direct {p0, p1, v2, v3}, Lcom/inmobi/ads/InMobiBanner;->initializeAdUnit(Landroid/app/Activity;J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 220
    :goto_1
    if-eqz v1, :cond_0

    .line 222
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 223
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 224
    invoke-virtual {p0, v0}, Lcom/inmobi/ads/InMobiBanner;->setRefreshInterval(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 225
    :catch_0
    move-exception v0

    .line 226
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v2, "Refresh interval value supplied in XML layout is not valid. Falling back to default value."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :catch_1
    move-exception v0

    .line 211
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v3, "Placement id value supplied in XML layout is not valid. Banner creation failed."

    invoke-static {v0, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 216
    :cond_3
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v3, "Placement id value is not supplied in XML layout. Banner creation failed."

    invoke-static {v0, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 242
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 114
    iput-boolean v1, p0, Lcom/inmobi/ads/InMobiBanner;->mIsInitialized:Z

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsAutoRefreshEnabled:Z

    .line 118
    iput v1, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerWidthInDp:I

    .line 119
    iput v1, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerHeightInDp:I

    .line 120
    sget-object v0, Lcom/inmobi/ads/InMobiBanner$AnimationType;->ROTATE_HORIZONTAL_AXIS:Lcom/inmobi/ads/InMobiBanner$AnimationType;

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mAnimationType:Lcom/inmobi/ads/InMobiBanner$AnimationType;

    .line 121
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/ads/InMobiBanner;->mAdLoadCalledTimestamp:J

    .line 882
    new-instance v0, Lcom/inmobi/ads/InMobiBanner$3;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/InMobiBanner$3;-><init>(Lcom/inmobi/ads/InMobiBanner;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdListener:Lcom/inmobi/ads/AdUnit$b;

    .line 244
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v2, "Please initialize the SDK before creating a Banner ad"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :goto_0
    return-void

    .line 250
    :cond_0
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 251
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v2, "Please supply an Activity context to create a Banner ad"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 256
    :cond_1
    new-instance v0, Lcom/inmobi/ads/InMobiBanner$b;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiBanner;->mClientListener:Lcom/inmobi/ads/InMobiBanner$BannerAdListener;

    invoke-direct {v0, p0, v1}, Lcom/inmobi/ads/InMobiBanner$b;-><init>(Lcom/inmobi/ads/InMobiBanner;Lcom/inmobi/ads/InMobiBanner$BannerAdListener;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiBanner$b;

    .line 257
    invoke-direct {p0, p1, p2, p3}, Lcom/inmobi/ads/InMobiBanner;->initializeAdUnit(Landroid/content/Context;J)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 132
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 114
    iput-boolean v1, p0, Lcom/inmobi/ads/InMobiBanner;->mIsInitialized:Z

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsAutoRefreshEnabled:Z

    .line 118
    iput v1, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerWidthInDp:I

    .line 119
    iput v1, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerHeightInDp:I

    .line 120
    sget-object v0, Lcom/inmobi/ads/InMobiBanner$AnimationType;->ROTATE_HORIZONTAL_AXIS:Lcom/inmobi/ads/InMobiBanner$AnimationType;

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mAnimationType:Lcom/inmobi/ads/InMobiBanner$AnimationType;

    .line 121
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/ads/InMobiBanner;->mAdLoadCalledTimestamp:J

    .line 882
    new-instance v0, Lcom/inmobi/ads/InMobiBanner$3;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/InMobiBanner$3;-><init>(Lcom/inmobi/ads/InMobiBanner;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdListener:Lcom/inmobi/ads/AdUnit$b;

    .line 134
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 135
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v2, "Please initialize the SDK before creating a Banner ad"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_2

    .line 141
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v2, "Please supply an Activity context to create a Banner ad"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 146
    :cond_2
    const-string v0, "http://schemas.android.com/apk/lib/com.inmobi.ads"

    .line 147
    new-instance v0, Lcom/inmobi/ads/InMobiBanner$b;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiBanner;->mClientListener:Lcom/inmobi/ads/InMobiBanner$BannerAdListener;

    invoke-direct {v0, p0, v1}, Lcom/inmobi/ads/InMobiBanner$b;-><init>(Lcom/inmobi/ads/InMobiBanner;Lcom/inmobi/ads/InMobiBanner$BannerAdListener;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiBanner$b;

    .line 148
    const-string v0, "http://schemas.android.com/apk/lib/com.inmobi.ads"

    const-string v1, "placementId"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    const-string v1, "http://schemas.android.com/apk/lib/com.inmobi.ads"

    const-string v2, "refreshInterval"

    invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 151
    if-eqz v0, :cond_3

    .line 153
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 154
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 155
    invoke-direct {p0, p1, v2, v3}, Lcom/inmobi/ads/InMobiBanner;->initializeAdUnit(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 166
    :goto_1
    if-eqz v1, :cond_0

    .line 168
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 170
    invoke-virtual {p0, v0}, Lcom/inmobi/ads/InMobiBanner;->setRefreshInterval(I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v2, "Refresh interval value supplied in XML layout is not valid. Falling back to default value."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 156
    :catch_1
    move-exception v0

    .line 157
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v3, "Placement id value supplied in XML layout is not valid. Banner creation failed."

    invoke-static {v0, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 162
    :cond_3
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v3, "Placement id value is not supplied in XML layout. Banner creation failed."

    invoke-static {v0, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/inmobi/ads/InMobiBanner;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiBanner;->cancelScheduledRefresh()V

    return-void
.end method

.method static synthetic access$100(Lcom/inmobi/ads/InMobiBanner;)Z
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiBanner;->checkForRefreshRate()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/inmobi/ads/InMobiBanner;Lcom/inmobi/ads/InMobiBanner$a;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0, p1}, Lcom/inmobi/ads/InMobiBanner;->swapAdUnitsAndDisplayAd(Lcom/inmobi/ads/InMobiBanner$a;)V

    return-void
.end method

.method static synthetic access$200(Lcom/inmobi/ads/InMobiBanner;)Lcom/inmobi/ads/n;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBackgroundBannerAdUnit:Lcom/inmobi/ads/n;

    return-object v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/inmobi/ads/InMobiBanner;)Lcom/inmobi/ads/AdUnit$b;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdListener:Lcom/inmobi/ads/AdUnit$b;

    return-object v0
.end method

.method static synthetic access$502(Lcom/inmobi/ads/InMobiBanner;I)I
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerWidthInDp:I

    return p1
.end method

.method static synthetic access$602(Lcom/inmobi/ads/InMobiBanner;I)I
    .locals 0

    .prologue
    .line 34
    iput p1, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerHeightInDp:I

    return p1
.end method

.method static synthetic access$700(Lcom/inmobi/ads/InMobiBanner;)Lcom/inmobi/ads/n;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mForegroundBannerAdUnit:Lcom/inmobi/ads/n;

    return-object v0
.end method

.method static synthetic access$800(Lcom/inmobi/ads/InMobiBanner;)Lcom/inmobi/ads/InMobiBanner$b;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiBanner$b;

    return-object v0
.end method

.method static synthetic access$900(Lcom/inmobi/ads/InMobiBanner;)V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiBanner;->scheduleRefresh()V

    return-void
.end method

.method private cancelScheduledRefresh()V
    .locals 2

    .prologue
    .line 689
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mRefreshHandler:Lcom/inmobi/ads/o;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/o;->removeMessages(I)V

    .line 690
    return-void
.end method

.method private final checkForRefreshRate()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 375
    iget-wide v2, p0, Lcom/inmobi/ads/InMobiBanner;->mAdLoadCalledTimestamp:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 376
    iget-object v1, p0, Lcom/inmobi/ads/InMobiBanner;->mBackgroundBannerAdUnit:Lcom/inmobi/ads/n;

    invoke-virtual {v1}, Lcom/inmobi/ads/n;->p()Lcom/inmobi/ads/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/c;->g()I

    move-result v1

    .line 377
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/inmobi/ads/InMobiBanner;->mAdLoadCalledTimestamp:J

    sub-long/2addr v2, v4

    mul-int/lit16 v4, v1, 0x3e8

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 378
    iget-object v2, p0, Lcom/inmobi/ads/InMobiBanner;->mBackgroundBannerAdUnit:Lcom/inmobi/ads/n;

    new-instance v3, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v4, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->EARLY_REFRESH_REQUEST:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v3, v4}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ad cannot be refreshed before "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " seconds"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/inmobi/ads/InMobiAdRequestStatus;->setCustomMessage(Ljava/lang/String;)Lcom/inmobi/ads/InMobiAdRequestStatus;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/inmobi/ads/n;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;Z)V

    .line 379
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ad cannot be refreshed before "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " seconds (Placement Id = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/inmobi/ads/InMobiBanner;->mBackgroundBannerAdUnit:Lcom/inmobi/ads/n;

    .line 382
    invoke-virtual {v4}, Lcom/inmobi/ads/n;->b()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 379
    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    :goto_0
    return v0

    .line 386
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/ads/InMobiBanner;->mAdLoadCalledTimestamp:J

    .line 387
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private displayAd()V
    .locals 6

    .prologue
    const/4 v3, -0x1

    .line 693
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    .line 716
    :cond_0
    :goto_0
    return-void

    .line 695
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mForegroundBannerAdUnit:Lcom/inmobi/ads/n;

    invoke-virtual {v0}, Lcom/inmobi/ads/n;->t()Lcom/inmobi/ads/AdContainer;

    move-result-object v0

    check-cast v0, Lcom/inmobi/rendering/RenderView;

    .line 696
    if-eqz v0, :cond_0

    .line 698
    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getViewableAd()Lcom/inmobi/ads/ViewableAd;

    move-result-object v1

    .line 699
    iget-object v2, p0, Lcom/inmobi/ads/InMobiBanner;->mForegroundBannerAdUnit:Lcom/inmobi/ads/n;

    invoke-virtual {v2}, Lcom/inmobi/ads/n;->O()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 700
    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->a()V

    .line 703
    :cond_2
    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 704
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 707
    invoke-virtual {v1}, Lcom/inmobi/ads/ViewableAd;->a()Landroid/view/View;

    move-result-object v3

    .line 708
    iget-object v4, p0, Lcom/inmobi/ads/InMobiBanner;->mForegroundBannerAdUnit:Lcom/inmobi/ads/n;

    invoke-virtual {v4}, Lcom/inmobi/ads/n;->p()Lcom/inmobi/ads/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inmobi/ads/c;->m()Lcom/inmobi/ads/c$h;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Landroid/view/View;

    invoke-virtual {v1, v4, v5}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/c$h;[Landroid/view/View;)V

    .line 709
    if-nez v0, :cond_3

    .line 710
    invoke-virtual {p0, v3, v2}, Lcom/inmobi/ads/InMobiBanner;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 715
    :goto_1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBackgroundBannerAdUnit:Lcom/inmobi/ads/n;

    invoke-virtual {v0}, Lcom/inmobi/ads/n;->F()V

    goto :goto_0

    .line 712
    :cond_3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 713
    invoke-virtual {v0, v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method private initializeAdUnit(Landroid/app/Activity;J)V
    .locals 8

    .prologue
    .line 659
    new-instance v1, Lcom/inmobi/ads/n;

    iget-object v6, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdListener:Lcom/inmobi/ads/AdUnit$b;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/inmobi/ads/n;-><init>(Lcom/inmobi/ads/InMobiBanner;Landroid/app/Activity;JLcom/inmobi/ads/AdUnit$b;)V

    iput-object v1, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit1:Lcom/inmobi/ads/n;

    .line 660
    new-instance v1, Lcom/inmobi/ads/n;

    iget-object v6, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdListener:Lcom/inmobi/ads/AdUnit$b;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/inmobi/ads/n;-><init>(Lcom/inmobi/ads/InMobiBanner;Landroid/app/Activity;JLcom/inmobi/ads/AdUnit$b;)V

    iput-object v1, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit2:Lcom/inmobi/ads/n;

    .line 661
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit1:Lcom/inmobi/ads/n;

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBackgroundBannerAdUnit:Lcom/inmobi/ads/n;

    .line 662
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBackgroundBannerAdUnit:Lcom/inmobi/ads/n;

    invoke-virtual {v0}, Lcom/inmobi/ads/n;->p()Lcom/inmobi/ads/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/c;->h()I

    move-result v0

    iput v0, p0, Lcom/inmobi/ads/InMobiBanner;->mRefreshInterval:I

    .line 663
    new-instance v0, Lcom/inmobi/ads/o;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/o;-><init>(Lcom/inmobi/ads/InMobiBanner;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mRefreshHandler:Lcom/inmobi/ads/o;

    .line 664
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsInitialized:Z

    .line 665
    return-void
.end method

.method private initializeAdUnit(Landroid/content/Context;J)V
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 650
    new-instance v1, Lcom/inmobi/ads/n;

    iget-object v6, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdListener:Lcom/inmobi/ads/AdUnit$b;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/inmobi/ads/n;-><init>(Lcom/inmobi/ads/InMobiBanner;Landroid/content/Context;JLcom/inmobi/ads/AdUnit$b;)V

    iput-object v1, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit1:Lcom/inmobi/ads/n;

    .line 651
    new-instance v1, Lcom/inmobi/ads/n;

    iget-object v6, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdListener:Lcom/inmobi/ads/AdUnit$b;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lcom/inmobi/ads/n;-><init>(Lcom/inmobi/ads/InMobiBanner;Landroid/content/Context;JLcom/inmobi/ads/AdUnit$b;)V

    iput-object v1, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit2:Lcom/inmobi/ads/n;

    .line 652
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit1:Lcom/inmobi/ads/n;

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBackgroundBannerAdUnit:Lcom/inmobi/ads/n;

    .line 653
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBackgroundBannerAdUnit:Lcom/inmobi/ads/n;

    invoke-virtual {v0}, Lcom/inmobi/ads/n;->p()Lcom/inmobi/ads/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/c;->h()I

    move-result v0

    iput v0, p0, Lcom/inmobi/ads/InMobiBanner;->mRefreshInterval:I

    .line 654
    new-instance v0, Lcom/inmobi/ads/o;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/o;-><init>(Lcom/inmobi/ads/InMobiBanner;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mRefreshHandler:Lcom/inmobi/ads/o;

    .line 655
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsInitialized:Z

    .line 656
    return-void
.end method

.method private scheduleRefresh()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 672
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->isShown()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_1

    .line 686
    :cond_0
    :goto_0
    return-void

    .line 675
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mRefreshHandler:Lcom/inmobi/ads/o;

    invoke-virtual {v0, v4}, Lcom/inmobi/ads/o;->removeMessages(I)V

    .line 677
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBackgroundBannerAdUnit:Lcom/inmobi/ads/n;

    invoke-virtual {v0}, Lcom/inmobi/ads/n;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADING:Lcom/inmobi/ads/AdUnit$AdState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBackgroundBannerAdUnit:Lcom/inmobi/ads/n;

    invoke-virtual {v0}, Lcom/inmobi/ads/n;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mForegroundBannerAdUnit:Lcom/inmobi/ads/n;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mForegroundBannerAdUnit:Lcom/inmobi/ads/n;

    .line 678
    invoke-virtual {v0}, Lcom/inmobi/ads/n;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ACTIVE:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_3

    .line 679
    :cond_2
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v2, "Ignoring an attempt to schedule refresh when an ad is already loading or active."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 683
    :cond_3
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsAutoRefreshEnabled:Z

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mRefreshHandler:Lcom/inmobi/ads/o;

    iget v1, p0, Lcom/inmobi/ads/InMobiBanner;->mRefreshInterval:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v2, v1

    invoke-virtual {v0, v4, v2, v3}, Lcom/inmobi/ads/o;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private setSizeFromLayoutParams()V
    .locals 1

    .prologue
    .line 548
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 549
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->b(I)I

    move-result v0

    iput v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerWidthInDp:I

    .line 550
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->b(I)I

    move-result v0

    iput v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerHeightInDp:I

    .line 552
    :cond_0
    return-void
.end method

.method private swapAdUnitsAndDisplayAd(Lcom/inmobi/ads/InMobiBanner$a;)V
    .locals 5

    .prologue
    .line 719
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mForegroundBannerAdUnit:Lcom/inmobi/ads/n;

    if-nez v0, :cond_2

    .line 720
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit1:Lcom/inmobi/ads/n;

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mForegroundBannerAdUnit:Lcom/inmobi/ads/n;

    .line 721
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit2:Lcom/inmobi/ads/n;

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBackgroundBannerAdUnit:Lcom/inmobi/ads/n;

    .line 731
    :cond_0
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mAnimationType:Lcom/inmobi/ads/InMobiBanner$AnimationType;

    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/ads/k;->a(Lcom/inmobi/ads/InMobiBanner$AnimationType;FF)Landroid/view/animation/Animation;

    move-result-object v0

    .line 732
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiBanner;->displayAd()V

    .line 733
    if-eqz v0, :cond_1

    .line 734
    invoke-virtual {p0, v0}, Lcom/inmobi/ads/InMobiBanner;->startAnimation(Landroid/view/animation/Animation;)V

    .line 736
    :cond_1
    invoke-interface {p1}, Lcom/inmobi/ads/InMobiBanner$a;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 743
    :goto_1
    return-void

    .line 722
    :cond_2
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mForegroundBannerAdUnit:Lcom/inmobi/ads/n;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit1:Lcom/inmobi/ads/n;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 723
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit2:Lcom/inmobi/ads/n;

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mForegroundBannerAdUnit:Lcom/inmobi/ads/n;

    .line 724
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit1:Lcom/inmobi/ads/n;

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBackgroundBannerAdUnit:Lcom/inmobi/ads/n;

    goto :goto_0

    .line 725
    :cond_3
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mForegroundBannerAdUnit:Lcom/inmobi/ads/n;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit2:Lcom/inmobi/ads/n;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 726
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit1:Lcom/inmobi/ads/n;

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mForegroundBannerAdUnit:Lcom/inmobi/ads/n;

    .line 727
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit2:Lcom/inmobi/ads/n;

    iput-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBackgroundBannerAdUnit:Lcom/inmobi/ads/n;

    goto :goto_0

    .line 737
    :catch_0
    move-exception v0

    .line 738
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v3, "Unexpected error while displaying Banner Ad."

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected error while displaying Banner Ad : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 741
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 740
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method


# virtual methods
.method public disableHardwareAcceleration()V
    .locals 1

    .prologue
    .line 499
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 500
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit1:Lcom/inmobi/ads/n;

    invoke-virtual {v0}, Lcom/inmobi/ads/n;->N()V

    .line 501
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit2:Lcom/inmobi/ads/n;

    invoke-virtual {v0}, Lcom/inmobi/ads/n;->N()V

    .line 503
    :cond_0
    return-void
.end method

.method getFrameSizeString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerWidthInDp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerHeightInDp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method hasValidSize()Z
    .locals 1

    .prologue
    .line 595
    iget v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerWidthInDp:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerHeightInDp:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public load()V
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/InMobiBanner;->load(Z)V

    .line 294
    return-void
.end method

.method load(Z)V
    .locals 5

    .prologue
    const/4 v1, -0x2

    .line 298
    :try_start_0
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mForegroundBannerAdUnit:Lcom/inmobi/ads/n;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mForegroundBannerAdUnit:Lcom/inmobi/ads/n;

    invoke-virtual {v0}, Lcom/inmobi/ads/n;->P()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 300
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 301
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 302
    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->AD_ACTIVE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 303
    iget-object v1, p0, Lcom/inmobi/ads/InMobiBanner;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiBanner$b;

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/InMobiBanner$b;->sendMessage(Landroid/os/Message;)Z

    .line 304
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mForegroundBannerAdUnit:Lcom/inmobi/ads/n;

    const-string v1, "AdActive"

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/n;->b(Ljava/lang/String;)V

    .line 305
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v2, "An ad is currently being viewed by the user. Please wait for the user to close the ad before requesting for another ad."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    :cond_0
    :goto_0
    return-void

    .line 318
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->hasValidSize()Z

    move-result v0

    if-nez v0, :cond_5

    .line 319
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_2

    .line 320
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v2, "The layout params of the banner must be set before calling load"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 321
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v2, "or call setBannerSize(int widthInDp, int heightInDp) before load"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdListener:Lcom/inmobi/ads/AdUnit$b;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiBanner;->mBackgroundBannerAdUnit:Lcom/inmobi/ads/n;

    new-instance v2, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v3, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REQUEST_INVALID:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v2, v3}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-interface {v0, v1, v2}, Lcom/inmobi/ads/AdUnit$b;->a(Lcom/inmobi/ads/AdUnit;Lcom/inmobi/ads/InMobiAdRequestStatus;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 366
    :catch_0
    move-exception v0

    .line 367
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v3, "Unable to load ad; SDK encountered an unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Load failed with unexpected error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 370
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 369
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 326
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v0, v1, :cond_3

    .line 327
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ne v0, v1, :cond_4

    .line 328
    :cond_3
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v2, "The height or width of a Banner ad can\'t be WRAP_CONTENT"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v2, "or call setBannerSize(int widthInDp, int heightInDp) before load"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdListener:Lcom/inmobi/ads/AdUnit$b;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiBanner;->mBackgroundBannerAdUnit:Lcom/inmobi/ads/n;

    new-instance v2, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v3, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REQUEST_INVALID:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v2, v3}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-interface {v0, v1, v2}, Lcom/inmobi/ads/AdUnit$b;->a(Lcom/inmobi/ads/AdUnit;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    goto/16 :goto_0

    .line 333
    :cond_4
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiBanner;->setSizeFromLayoutParams()V

    .line 336
    :cond_5
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->hasValidSize()Z

    move-result v0

    if-nez v0, :cond_6

    .line 337
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/inmobi/ads/InMobiBanner$1;

    invoke-direct {v1, p0, p1}, Lcom/inmobi/ads/InMobiBanner$1;-><init>(Lcom/inmobi/ads/InMobiBanner;Z)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    .line 360
    :cond_6
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiBanner;->cancelScheduledRefresh()V

    .line 361
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiBanner;->checkForRefreshRate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBackgroundBannerAdUnit:Lcom/inmobi/ads/n;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/n;->b(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    .prologue
    .line 511
    :try_start_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 513
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsInitialized:Z

    if-eqz v0, :cond_1

    .line 514
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiBanner;->setSizeFromLayoutParams()V

    .line 515
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->hasValidSize()Z

    move-result v0

    if-nez v0, :cond_0

    .line 516
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->setupBannerSizeObserver()V

    .line 518
    :cond_0
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiBanner;->scheduleRefresh()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    :cond_1
    :goto_0
    return-void

    .line 520
    :catch_0
    move-exception v0

    .line 521
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v3, "InMobiBanner#onAttachedToWindow() handler threw unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InMobiBanner#onAttachedToWindow() handler threw unexpected error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 524
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 523
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 5

    .prologue
    .line 534
    :try_start_0
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onDetachedFromWindow()V

    .line 536
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 537
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiBanner;->cancelScheduledRefresh()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 545
    :cond_0
    :goto_0
    return-void

    .line 539
    :catch_0
    move-exception v0

    .line 540
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v3, "InMobiBanner.onDetachedFromWindow() handler threw unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InMobiBanner.onDetachedFromWindow() handler threw unexpected error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 543
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 542
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 5

    .prologue
    .line 608
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 610
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 611
    if-nez p2, :cond_1

    .line 612
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiBanner;->scheduleRefresh()V

    .line 623
    :cond_0
    :goto_0
    return-void

    .line 614
    :cond_1
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiBanner;->cancelScheduledRefresh()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 617
    :catch_0
    move-exception v0

    .line 618
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v3, "InMobiBanner$1.onVisibilityChanged() handler threw unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InMobiBanner$1.onVisibilityChanged() handler threw unexpected error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 621
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 620
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5

    .prologue
    .line 628
    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowFocusChanged(Z)V

    .line 633
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 634
    if-eqz p1, :cond_1

    .line 635
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiBanner;->scheduleRefresh()V

    .line 646
    :cond_0
    :goto_0
    return-void

    .line 637
    :cond_1
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiBanner;->cancelScheduledRefresh()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 640
    :catch_0
    move-exception v0

    .line 641
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v3, "InMobiBanner$1.onWindowFocusChanged() handler threw unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InMobiBanner$1.onWindowFocusChanged() handler threw unexpected error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 644
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 643
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setAnimationType(Lcom/inmobi/ads/InMobiBanner$AnimationType;)V
    .locals 1

    .prologue
    .line 490
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 491
    iput-object p1, p0, Lcom/inmobi/ads/InMobiBanner;->mAnimationType:Lcom/inmobi/ads/InMobiBanner$AnimationType;

    .line 493
    :cond_0
    return-void
.end method

.method public setBannerSize(II)V
    .locals 0

    .prologue
    .line 562
    iput p1, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerWidthInDp:I

    .line 563
    iput p2, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerHeightInDp:I

    .line 564
    return-void
.end method

.method public setEnableAutoRefresh(Z)V
    .locals 5

    .prologue
    .line 439
    :try_start_0
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 442
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsAutoRefreshEnabled:Z

    if-ne v0, p1, :cond_1

    .line 460
    :cond_0
    :goto_0
    return-void

    .line 446
    :cond_1
    iput-boolean p1, p0, Lcom/inmobi/ads/InMobiBanner;->mIsAutoRefreshEnabled:Z

    .line 448
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsAutoRefreshEnabled:Z

    if-eqz v0, :cond_2

    .line 449
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiBanner;->scheduleRefresh()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 454
    :catch_0
    move-exception v0

    .line 455
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v3, "Unable to setup auto-refresh on the ad; SDK encountered an unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting up auto-refresh failed with unexpected error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 458
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 457
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 451
    :cond_2
    :try_start_1
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiBanner;->cancelScheduledRefresh()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
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
    .line 396
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit1:Lcom/inmobi/ads/n;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/n;->a(Ljava/util/Map;)V

    .line 398
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit2:Lcom/inmobi/ads/n;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/n;->a(Ljava/util/Map;)V

    .line 400
    :cond_0
    return-void
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 408
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsInitialized:Z

    if-eqz v0, :cond_0

    .line 409
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit1:Lcom/inmobi/ads/n;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/n;->a(Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBannerAdUnit2:Lcom/inmobi/ads/n;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/n;->a(Ljava/lang/String;)V

    .line 412
    :cond_0
    return-void
.end method

.method public setListener(Lcom/inmobi/ads/InMobiBanner$BannerAdListener;)V
    .locals 3

    .prologue
    .line 421
    if-nez p1, :cond_1

    .line 422
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v2, "Please pass a non-null listener to the banner."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    :cond_0
    :goto_0
    return-void

    .line 426
    :cond_1
    iput-object p1, p0, Lcom/inmobi/ads/InMobiBanner;->mClientListener:Lcom/inmobi/ads/InMobiBanner$BannerAdListener;

    .line 427
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiBanner$b;

    if-eqz v0, :cond_0

    .line 428
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiBanner$b;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/InMobiBanner$b;->a(Lcom/inmobi/ads/InMobiBanner$BannerAdListener;)V

    goto :goto_0
.end method

.method public setRefreshInterval(I)V
    .locals 5

    .prologue
    .line 469
    :try_start_0
    iget-boolean v0, p0, Lcom/inmobi/ads/InMobiBanner;->mIsInitialized:Z

    if-eqz v0, :cond_1

    .line 470
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBackgroundBannerAdUnit:Lcom/inmobi/ads/n;

    invoke-virtual {v0}, Lcom/inmobi/ads/n;->p()Lcom/inmobi/ads/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/c;->g()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 471
    iget-object v0, p0, Lcom/inmobi/ads/InMobiBanner;->mBackgroundBannerAdUnit:Lcom/inmobi/ads/n;

    invoke-virtual {v0}, Lcom/inmobi/ads/n;->p()Lcom/inmobi/ads/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/c;->g()I

    move-result p1

    .line 474
    :cond_0
    iput p1, p0, Lcom/inmobi/ads/InMobiBanner;->mRefreshInterval:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    :cond_1
    :goto_0
    return-void

    .line 476
    :catch_0
    move-exception v0

    .line 477
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    const-string v3, "Unable to set refresh interval for the ad; SDK encountered an unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiBanner;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting refresh interval failed with unexpected error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 480
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 479
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method setupBannerSizeObserver()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 569
    invoke-virtual {p0}, Lcom/inmobi/ads/InMobiBanner;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 570
    new-instance v1, Lcom/inmobi/ads/InMobiBanner$2;

    invoke-direct {v1, p0}, Lcom/inmobi/ads/InMobiBanner$2;-><init>(Lcom/inmobi/ads/InMobiBanner;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 592
    return-void
.end method
