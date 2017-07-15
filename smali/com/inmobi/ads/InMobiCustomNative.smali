.class public final Lcom/inmobi/ads/InMobiCustomNative;
.super Lcom/inmobi/ads/InMobiNative;
.source "InMobiCustomNative.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/inmobi/ads/InMobiCustomNative;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/InMobiCustomNative;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLcom/inmobi/ads/InMobiNative$NativeAdListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/inmobi/ads/InMobiNative;-><init>(JLcom/inmobi/ads/InMobiNative$NativeAdListener;)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;JLcom/inmobi/ads/InMobiNative$NativeAdListener;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/inmobi/ads/InMobiNative;-><init>(Landroid/app/Activity;JLcom/inmobi/ads/InMobiNative$NativeAdListener;)V

    .line 34
    return-void
.end method

.method public static bind(Landroid/view/View;Lcom/inmobi/ads/InMobiNative;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 87
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 88
    :cond_0
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiCustomNative;->TAG:Ljava/lang/String;

    const-string v2, "Please pass non-null instances of a view and InMobiNative to bind."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_1
    :goto_0
    return-void

    .line 93
    :cond_2
    sget-object v0, Lcom/inmobi/ads/InMobiCustomNative;->sMappedAdUnits:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/aa;

    .line 94
    if-eqz v0, :cond_3

    .line 95
    invoke-static {p0}, Lcom/inmobi/ads/InMobiCustomNative;->unbind(Landroid/view/View;)V

    .line 98
    :cond_3
    iget-object v0, p1, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/aa;

    .line 99
    if-eqz v0, :cond_1

    .line 100
    sget-object v1, Lcom/inmobi/ads/InMobiCustomNative;->sMappedAdUnits:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v1, Lcom/inmobi/ads/InMobiCustomNative;->sMappedAdUnits:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, p2}, Lcom/inmobi/ads/aa;->a(Landroid/view/View;Ljava/net/URL;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static bind(Landroid/view/View;Lcom/inmobi/ads/InMobiNative;Ljava/net/URL;)V
    .locals 3

    .prologue
    .line 52
    if-eqz p0, :cond_0

    if-nez p1, :cond_2

    .line 53
    :cond_0
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiCustomNative;->TAG:Ljava/lang/String;

    const-string v2, "Please pass non-null instances of a view and InMobiNative to bind."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_1
    :goto_0
    return-void

    .line 58
    :cond_2
    sget-object v0, Lcom/inmobi/ads/InMobiCustomNative;->sMappedAdUnits:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/aa;

    .line 59
    if-eqz v0, :cond_3

    .line 60
    invoke-static {p0}, Lcom/inmobi/ads/InMobiCustomNative;->unbind(Landroid/view/View;)V

    .line 63
    :cond_3
    iget-object v0, p1, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/aa;

    .line 64
    if-eqz v0, :cond_1

    .line 65
    sget-object v1, Lcom/inmobi/ads/InMobiCustomNative;->sMappedAdUnits:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v1, Lcom/inmobi/ads/InMobiCustomNative;->sMappedAdUnits:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const/4 v1, 0x0

    invoke-virtual {v0, p0, p2, v1}, Lcom/inmobi/ads/aa;->a(Landroid/view/View;Ljava/net/URL;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final reportAdClick(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/inmobi/ads/InMobiCustomNative;->mNativeAdUnit:Lcom/inmobi/ads/aa;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/inmobi/ads/InMobiCustomNative;->mNativeAdUnit:Lcom/inmobi/ads/aa;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, p1}, Lcom/inmobi/ads/aa;->a(Ljava/util/Map;Ljava/net/URL;Ljava/lang/String;)V

    .line 128
    :cond_0
    return-void
.end method

.method public final reportAdClick(Ljava/net/URL;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 113
    iget-object v0, p0, Lcom/inmobi/ads/InMobiCustomNative;->mNativeAdUnit:Lcom/inmobi/ads/aa;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/inmobi/ads/InMobiCustomNative;->mNativeAdUnit:Lcom/inmobi/ads/aa;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Lcom/inmobi/ads/aa;->a(Ljava/util/Map;Ljava/net/URL;Ljava/lang/String;)V

    .line 116
    :cond_0
    return-void
.end method

.method public final reportAdClickAndOpenLandingPage(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lcom/inmobi/ads/InMobiCustomNative;->mNativeAdUnit:Lcom/inmobi/ads/aa;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/inmobi/ads/InMobiCustomNative;->mNativeAdUnit:Lcom/inmobi/ads/aa;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, p1}, Lcom/inmobi/ads/aa;->a(Ljava/util/Map;Ljava/net/URL;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/inmobi/ads/InMobiCustomNative;->mNativeAdUnit:Lcom/inmobi/ads/aa;

    invoke-virtual {v0}, Lcom/inmobi/ads/aa;->R()V

    .line 154
    :cond_0
    return-void
.end method

.method public final reportAdClickAndOpenLandingPage(Ljava/net/URL;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/inmobi/ads/InMobiCustomNative;->mNativeAdUnit:Lcom/inmobi/ads/aa;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/inmobi/ads/InMobiCustomNative;->mNativeAdUnit:Lcom/inmobi/ads/aa;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p1, v1}, Lcom/inmobi/ads/aa;->a(Ljava/util/Map;Ljava/net/URL;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/inmobi/ads/InMobiCustomNative;->mNativeAdUnit:Lcom/inmobi/ads/aa;

    invoke-virtual {v0}, Lcom/inmobi/ads/aa;->R()V

    .line 141
    :cond_0
    return-void
.end method
