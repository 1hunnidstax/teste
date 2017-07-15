.class public Lcom/inmobi/ads/InMobiNative;
.super Ljava/lang/Object;
.source "InMobiNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/InMobiNative$a;,
        Lcom/inmobi/ads/InMobiNative$NativeAdEventsListener;,
        Lcom/inmobi/ads/InMobiNative$NativeAdListener;
    }
.end annotation


# static fields
.field private static final DEBUG_LOG_TAG:Ljava/lang/String; = "InMobi"

.field private static final TAG:Ljava/lang/String;

.field protected static sMappedAdUnits:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/inmobi/ads/aa;",
            ">;"
        }
    .end annotation
.end field


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

.field private mClientCallbackHandler:Lcom/inmobi/ads/InMobiNative$a;

.field private final mListener:Lcom/inmobi/ads/AdUnit$b;

.field private mNativeAdEventListener:Lcom/inmobi/ads/InMobiNative$NativeAdEventsListener;

.field private mNativeAdListener:Lcom/inmobi/ads/InMobiNative$NativeAdListener;

.field protected mNativeAdUnit:Lcom/inmobi/ads/aa;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const-class v0, Lcom/inmobi/ads/InMobiNative;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lcom/inmobi/ads/InMobiNative;->sMappedAdUnits:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>(JLcom/inmobi/ads/InMobiNative$NativeAdListener;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 512
    new-instance v0, Lcom/inmobi/ads/InMobiNative$1;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/InMobiNative$1;-><init>(Lcom/inmobi/ads/InMobiNative;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mListener:Lcom/inmobi/ads/AdUnit$b;

    .line 108
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v2, "Please initialize the SDK before creating a Native ad"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :goto_0
    return-void

    .line 113
    :cond_0
    if-nez p3, :cond_1

    .line 114
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v2, "The Native ad cannot be created as no event listener was supplied. Please attach a listener to proceed"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    :cond_1
    iput-object p3, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdListener:Lcom/inmobi/ads/InMobiNative$NativeAdListener;

    .line 121
    new-instance v0, Lcom/inmobi/ads/aa;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiNative;->mListener:Lcom/inmobi/ads/AdUnit$b;

    invoke-direct {v0, p1, p2, v1}, Lcom/inmobi/ads/aa;-><init>(JLcom/inmobi/ads/AdUnit$b;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/aa;

    .line 122
    new-instance v0, Lcom/inmobi/ads/InMobiNative$a;

    invoke-direct {v0, p0, p3}, Lcom/inmobi/ads/InMobiNative$a;-><init>(Lcom/inmobi/ads/InMobiNative;Lcom/inmobi/ads/InMobiNative$NativeAdListener;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiNative$a;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/app/Activity;JLcom/inmobi/ads/InMobiNative$NativeAdListener;)V
    .locals 4

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 512
    new-instance v0, Lcom/inmobi/ads/InMobiNative$1;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/InMobiNative$1;-><init>(Lcom/inmobi/ads/InMobiNative;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mListener:Lcom/inmobi/ads/AdUnit$b;

    .line 133
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 134
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v2, "Please initialize the SDK before creating a Native ad"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :goto_0
    return-void

    .line 139
    :cond_0
    if-nez p1, :cond_1

    .line 140
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v2, "Unable to create InmobiNative ad with null Activity object."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 145
    :cond_1
    if-nez p4, :cond_2

    .line 146
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v2, "The Native ad cannot be created as no event listener was supplied. Please attach a listener to proceed"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_2
    iput-object p4, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdListener:Lcom/inmobi/ads/InMobiNative$NativeAdListener;

    .line 153
    new-instance v0, Lcom/inmobi/ads/aa;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiNative;->mListener:Lcom/inmobi/ads/AdUnit$b;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/inmobi/ads/aa;-><init>(Landroid/app/Activity;JLcom/inmobi/ads/AdUnit$b;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/aa;

    .line 154
    new-instance v0, Lcom/inmobi/ads/InMobiNative$a;

    invoke-direct {v0, p0, p4}, Lcom/inmobi/ads/InMobiNative$a;-><init>(Lcom/inmobi/ads/InMobiNative;Lcom/inmobi/ads/InMobiNative$NativeAdListener;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiNative$a;

    .line 155
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mActivityRef:Ljava/lang/ref/WeakReference;

    goto :goto_0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/inmobi/ads/InMobiNative;)Lcom/inmobi/ads/InMobiNative$a;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiNative$a;

    return-object v0
.end method

.method public static bind(Landroid/view/View;Lcom/inmobi/ads/InMobiNative;)V
    .locals 5

    .prologue
    .line 255
    if-nez p0, :cond_1

    .line 256
    :try_start_0
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v2, "Please pass non-null instances of a view to bind."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    if-eqz p1, :cond_0

    .line 260
    iget-object v0, p1, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/aa;

    .line 261
    if-eqz v0, :cond_0

    .line 262
    const-string v1, "ads"

    const-string v2, "InvalidTrackerView"

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/ads/aa;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 294
    :cond_0
    :goto_0
    return-void

    .line 270
    :cond_1
    if-nez p1, :cond_2

    .line 271
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v2, "Please pass non-null instances of InMobiNative to bind."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 288
    :catch_0
    move-exception v0

    .line 289
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "InMobi"

    const-string v3, "Could not bind ad; SDK encountered an unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDK encountered unexpected error in binding ad; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 292
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 277
    :cond_2
    :try_start_1
    sget-object v0, Lcom/inmobi/ads/InMobiNative;->sMappedAdUnits:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/aa;

    .line 278
    if-eqz v0, :cond_3

    .line 279
    invoke-static {p0}, Lcom/inmobi/ads/InMobiNative;->unbind(Landroid/view/View;)V

    .line 282
    :cond_3
    iget-object v0, p1, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/aa;

    .line 283
    if-eqz v0, :cond_0

    .line 284
    sget-object v1, Lcom/inmobi/ads/InMobiNative;->sMappedAdUnits:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    sget-object v1, Lcom/inmobi/ads/InMobiNative;->sMappedAdUnits:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/inmobi/ads/aa;->a(Landroid/view/View;Ljava/net/URL;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static unbind(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 306
    if-nez p0, :cond_1

    .line 307
    :try_start_0
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    const-string v2, "Please pass a non-null view object to bind."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    sget-object v0, Lcom/inmobi/ads/InMobiNative;->sMappedAdUnits:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/aa;

    .line 313
    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {v0, p0}, Lcom/inmobi/ads/aa;->a(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 316
    :catch_0
    move-exception v0

    .line 317
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "InMobi"

    const-string v3, "Could not unbind ad; SDK encountered an unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 319
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDK encountered unexpected error in unbinding ad; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 320
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 319
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final getAdContent()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/aa;

    if-nez v0, :cond_0

    .line 233
    const/4 v0, 0x0

    .line 235
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/aa;

    invoke-virtual {v0}, Lcom/inmobi/ads/aa;->P()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public final load()V
    .locals 5

    .prologue
    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/aa;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/aa;

    invoke-virtual {v0}, Lcom/inmobi/ads/aa;->x()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :cond_0
    :goto_0
    return-void

    .line 171
    :catch_0
    move-exception v0

    .line 172
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "InMobi"

    const-string v3, "Could not load ad; SDK encountered an unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDK encountered unexpected error in loading ad; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 175
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final pause()V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 214
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mActivityRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/aa;

    invoke-virtual {v0}, Lcom/inmobi/ads/aa;->O()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    :cond_0
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "InMobi"

    const-string v3, "Could not pause ad; SDK encountered an unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDK encountered unexpected error in pausing ad; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 221
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 220
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final reportAdClick(Ljava/util/Map;)V
    .locals 5
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
    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/aa;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/aa;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/inmobi/ads/aa;->a(Ljava/util/Map;Ljava/net/URL;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 366
    :cond_0
    :goto_0
    return-void

    .line 358
    :catch_0
    move-exception v0

    .line 359
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "InMobi"

    const-string v3, "Reporting ad click failed; SDK encountered an unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDK encountered unexpected error in reporting click for ad; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 364
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 362
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final reportAdClickAndOpenLandingPage(Ljava/util/Map;)V
    .locals 5
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
    .line 333
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/aa;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/aa;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/inmobi/ads/aa;->a(Ljava/util/Map;Ljava/net/URL;Ljava/lang/String;)V

    .line 335
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/aa;

    invoke-virtual {v0}, Lcom/inmobi/ads/aa;->R()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 337
    :catch_0
    move-exception v0

    .line 338
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "InMobi"

    const-string v3, "Reporting ad click and opening landing page failed; SDK encountered an unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDK encountered unexpected error in reporting click and opening landing page for ad; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 344
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 341
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final resume()V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 191
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/aa;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mActivityRef:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/aa;

    invoke-virtual {v0}, Lcom/inmobi/ads/aa;->N()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "InMobi"

    const-string v3, "Could not resume ad; SDK encountered an unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiNative;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDK encountered unexpected error in resuming ad; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 198
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 197
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final setExtras(Ljava/util/Map;)V
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
    .line 374
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/aa;

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/aa;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/aa;->a(Ljava/util/Map;)V

    .line 377
    :cond_0
    return-void
.end method

.method public final setKeywords(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/aa;

    if-eqz v0, :cond_0

    .line 386
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdUnit:Lcom/inmobi/ads/aa;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/aa;->a(Ljava/lang/String;)V

    .line 388
    :cond_0
    return-void
.end method

.method public final setNativeAdEventListener(Lcom/inmobi/ads/InMobiNative$NativeAdEventsListener;)V
    .locals 2

    .prologue
    .line 391
    iput-object p1, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdEventListener:Lcom/inmobi/ads/InMobiNative$NativeAdEventsListener;

    .line 392
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiNative$a;

    if-eqz v0, :cond_0

    .line 393
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNative;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiNative$a;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiNative;->mNativeAdEventListener:Lcom/inmobi/ads/InMobiNative$NativeAdEventsListener;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/InMobiNative$a;->a(Lcom/inmobi/ads/InMobiNative$NativeAdEventsListener;)V

    .line 395
    :cond_0
    return-void
.end method
