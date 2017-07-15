.class public Lcom/miniclip/mcuseracquisition/MCAdjustWrapper;
.super Ljava/lang/Object;
.source "MCAdjustWrapper.java"


# static fields
.field private static final ADJUST_DEEP_LINK_TAG:Ljava/lang/String; = "adjust"

.field private static _activity:Landroid/app/Activity;

.field private static initialized:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/miniclip/mcuseracquisition/MCAdjustWrapper;->_activity:Landroid/app/Activity;

    .line 14
    const/4 v0, 0x0

    sput-boolean v0, Lcom/miniclip/mcuseracquisition/MCAdjustWrapper;->initialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init(Landroid/app/Activity;)V
    .locals 0
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 17
    sput-object p0, Lcom/miniclip/mcuseracquisition/MCAdjustWrapper;->_activity:Landroid/app/Activity;

    .line 18
    return-void
.end method

.method public static initializeAdjustWithAppToken(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p0, "appToken"    # Ljava/lang/String;
    .param p1, "environment"    # Ljava/lang/String;

    .prologue
    .line 22
    const-string v0, "production"

    .line 23
    .local v0, "adjustEnvironment":Ljava/lang/String;
    const-string v2, "sandbox"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 24
    const-string v0, "sandbox"

    .line 26
    :cond_0
    new-instance v1, Lcom/adjust/sdk/AdjustConfig;

    sget-object v2, Lcom/miniclip/mcuseracquisition/MCAdjustWrapper;->_activity:Landroid/app/Activity;

    invoke-direct {v1, v2, p0, v0}, Lcom/adjust/sdk/AdjustConfig;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .local v1, "config":Lcom/adjust/sdk/AdjustConfig;
    const-string v2, "sandbox"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 29
    sget-object v2, Lcom/adjust/sdk/LogLevel;->VERBOSE:Lcom/adjust/sdk/LogLevel;

    invoke-virtual {v1, v2}, Lcom/adjust/sdk/AdjustConfig;->setLogLevel(Lcom/adjust/sdk/LogLevel;)V

    .line 33
    :goto_0
    new-instance v2, Lcom/miniclip/mcuseracquisition/MCAdjustWrapper$1;

    invoke-direct {v2}, Lcom/miniclip/mcuseracquisition/MCAdjustWrapper$1;-><init>()V

    invoke-virtual {v1, v2}, Lcom/adjust/sdk/AdjustConfig;->setOnAttributionChangedListener(Lcom/adjust/sdk/OnAttributionChangedListener;)V

    .line 40
    invoke-static {v1}, Lcom/adjust/sdk/Adjust;->onCreate(Lcom/adjust/sdk/AdjustConfig;)V

    .line 41
    sget-boolean v2, Lcom/miniclip/mcuseracquisition/MCAdjustWrapper;->initialized:Z

    if-nez v2, :cond_1

    .line 43
    const/4 v2, 0x1

    sput-boolean v2, Lcom/miniclip/mcuseracquisition/MCAdjustWrapper;->initialized:Z

    .line 44
    invoke-static {}, Lcom/miniclip/mcuseracquisition/MCAdjustWrapper;->resumeAdjust()V

    .line 46
    :cond_1
    return-void

    .line 31
    :cond_2
    sget-object v2, Lcom/adjust/sdk/LogLevel;->INFO:Lcom/adjust/sdk/LogLevel;

    invoke-virtual {v1, v2}, Lcom/adjust/sdk/AdjustConfig;->setLogLevel(Lcom/adjust/sdk/LogLevel;)V

    goto :goto_0
.end method

.method public static pauseAdjust()V
    .locals 0

    .prologue
    .line 68
    invoke-static {}, Lcom/adjust/sdk/Adjust;->onPause()V

    .line 69
    return-void
.end method

.method public static resumeAdjust()V
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/miniclip/mcuseracquisition/MCAdjustWrapper;->initialized:Z

    if-eqz v0, :cond_0

    .line 63
    invoke-static {}, Lcom/adjust/sdk/Adjust;->onResume()V

    .line 64
    :cond_0
    return-void
.end method

.method public static trackDeepLink(Landroid/net/Uri;)V
    .locals 2
    .param p0, "data"    # Landroid/net/Uri;

    .prologue
    .line 96
    if-eqz p0, :cond_0

    .line 98
    const-string v1, "adjust"

    invoke-virtual {p0, v1}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 99
    .local v0, "adjustID":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 101
    invoke-static {p0}, Lcom/adjust/sdk/Adjust;->appWillOpenUrl(Landroid/net/Uri;)V

    .line 104
    .end local v0    # "adjustID":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static trackDeepLink(Ljava/lang/String;)V
    .locals 1
    .param p0, "link"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 91
    .local v0, "data":Landroid/net/Uri;
    invoke-static {v0}, Lcom/miniclip/mcuseracquisition/MCAdjustWrapper;->trackDeepLink(Landroid/net/Uri;)V

    .line 92
    return-void
.end method

.method public static trackRevenueEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "event"    # Ljava/lang/String;
    .param p1, "revenue"    # Ljava/lang/String;
    .param p2, "currency"    # Ljava/lang/String;

    .prologue
    .line 81
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    .line 83
    .local v2, "revenueDouble":D
    new-instance v0, Lcom/adjust/sdk/AdjustEvent;

    invoke-direct {v0, p0}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    .line 84
    .local v0, "adjEvent":Lcom/adjust/sdk/AdjustEvent;
    invoke-virtual {v0, v2, v3, p2}, Lcom/adjust/sdk/AdjustEvent;->setRevenue(DLjava/lang/String;)V

    .line 85
    invoke-static {v0}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    .line 86
    return-void
.end method

.method public static trackSessionEnd()V
    .locals 0

    .prologue
    .line 58
    return-void
.end method

.method public static trackSessionStart()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public static trackSimpleEvent(Ljava/lang/String;)V
    .locals 1
    .param p0, "event"    # Ljava/lang/String;

    .prologue
    .line 73
    new-instance v0, Lcom/adjust/sdk/AdjustEvent;

    invoke-direct {v0, p0}, Lcom/adjust/sdk/AdjustEvent;-><init>(Ljava/lang/String;)V

    .line 75
    .local v0, "adjEvent":Lcom/adjust/sdk/AdjustEvent;
    invoke-static {v0}, Lcom/adjust/sdk/Adjust;->trackEvent(Lcom/adjust/sdk/AdjustEvent;)V

    .line 76
    return-void
.end method
