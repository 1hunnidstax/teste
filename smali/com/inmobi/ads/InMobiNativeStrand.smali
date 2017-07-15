.class public final Lcom/inmobi/ads/InMobiNativeStrand;
.super Ljava/lang/Object;
.source "InMobiNativeStrand.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/InMobiNativeStrand$a;,
        Lcom/inmobi/ads/InMobiNativeStrand$NativeStrandAdListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mClientCallbackHandler:Lcom/inmobi/ads/InMobiNativeStrand$a;

.field private mInteractionCallback:Lcom/inmobi/ads/ai$b;

.field private mListener:Lcom/inmobi/ads/ab$a;

.field private mNativeStrandAdCache:Lcom/inmobi/ads/ab;

.field private mNativeStrandAdListener:Lcom/inmobi/ads/InMobiNativeStrand$NativeStrandAdListener;

.field private mNativeV2AdContainer:Lcom/inmobi/ads/ai;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mToken:Lcom/inmobi/ads/ab$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lcom/inmobi/ads/InMobiNativeStrand;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/InMobiNativeStrand;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;JLcom/inmobi/ads/InMobiNativeStrand$NativeStrandAdListener;)V
    .locals 6

    .prologue
    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/inmobi/ads/InMobiNativeStrand$1;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/InMobiNativeStrand$1;-><init>(Lcom/inmobi/ads/InMobiNativeStrand;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mListener:Lcom/inmobi/ads/ab$a;

    .line 94
    new-instance v0, Lcom/inmobi/ads/InMobiNativeStrand$2;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/InMobiNativeStrand$2;-><init>(Lcom/inmobi/ads/InMobiNativeStrand;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mInteractionCallback:Lcom/inmobi/ads/ai$b;

    .line 181
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNativeStrand;->TAG:Ljava/lang/String;

    const-string v2, "Please initialize the SDK before creating a Native Strands ad"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    :goto_0
    return-void

    .line 187
    :cond_0
    if-nez p1, :cond_1

    .line 188
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNativeStrand;->TAG:Ljava/lang/String;

    const-string v2, "Unable to create InmobiNativeStrand ad with null Activity object."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 193
    :cond_1
    if-nez p4, :cond_2

    .line 194
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNativeStrand;->TAG:Ljava/lang/String;

    const-string v2, "Listener supplied is null, the Native Strand cannot be created."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :cond_2
    invoke-static {p1}, Lcom/inmobi/ads/ab;->a(Landroid/app/Activity;)Lcom/inmobi/ads/ab;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mNativeStrandAdCache:Lcom/inmobi/ads/ab;

    .line 200
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mNativeStrandAdCache:Lcom/inmobi/ads/ab;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    new-instance v4, Lcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;

    invoke-direct {v4}, Lcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;-><init>()V

    iget-object v5, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mListener:Lcom/inmobi/ads/ab$a;

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/inmobi/ads/ab;->a(IJLcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;Lcom/inmobi/ads/ab$a;)Lcom/inmobi/ads/ab$b;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mToken:Lcom/inmobi/ads/ab$b;

    .line 203
    iput-object p4, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mNativeStrandAdListener:Lcom/inmobi/ads/InMobiNativeStrand$NativeStrandAdListener;

    .line 204
    new-instance v0, Lcom/inmobi/ads/InMobiNativeStrand$a;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/InMobiNativeStrand$a;-><init>(Lcom/inmobi/ads/InMobiNativeStrand;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiNativeStrand$a;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;JLcom/inmobi/ads/InMobiNativeStrand$NativeStrandAdListener;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Lcom/inmobi/ads/InMobiNativeStrand$1;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/InMobiNativeStrand$1;-><init>(Lcom/inmobi/ads/InMobiNativeStrand;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mListener:Lcom/inmobi/ads/ab$a;

    .line 94
    new-instance v0, Lcom/inmobi/ads/InMobiNativeStrand$2;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/InMobiNativeStrand$2;-><init>(Lcom/inmobi/ads/InMobiNativeStrand;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mInteractionCallback:Lcom/inmobi/ads/ai$b;

    .line 143
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNativeStrand;->TAG:Ljava/lang/String;

    const-string v2, "Please initialize the SDK before creating a Native Strands ad"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    :goto_0
    return-void

    .line 148
    :cond_0
    if-nez p1, :cond_1

    .line 149
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNativeStrand;->TAG:Ljava/lang/String;

    const-string v2, "Context is null, Native Strand cannot be created."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 154
    :cond_1
    instance-of v0, p1, Landroid/app/Activity;

    if-nez v0, :cond_2

    .line 155
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNativeStrand;->TAG:Ljava/lang/String;

    const-string v2, "Context is not Activity, Native Strand cannot be created."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 159
    :cond_2
    if-nez p4, :cond_3

    .line 160
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNativeStrand;->TAG:Ljava/lang/String;

    const-string v2, "Listener supplied is null, the Native Strand cannot be created."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 165
    :cond_3
    invoke-static {p1}, Lcom/inmobi/ads/ab;->a(Landroid/content/Context;)Lcom/inmobi/ads/ab;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mNativeStrandAdCache:Lcom/inmobi/ads/ab;

    .line 166
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mNativeStrandAdCache:Lcom/inmobi/ads/ab;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    new-instance v4, Lcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;

    invoke-direct {v4}, Lcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;-><init>()V

    iget-object v5, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mListener:Lcom/inmobi/ads/ab$a;

    move-wide v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/inmobi/ads/ab;->a(IJLcom/inmobi/ads/InMobiStrandPositioning$InMobiClientPositioning;Lcom/inmobi/ads/ab$a;)Lcom/inmobi/ads/ab$b;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mToken:Lcom/inmobi/ads/ab$b;

    .line 169
    iput-object p4, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mNativeStrandAdListener:Lcom/inmobi/ads/InMobiNativeStrand$NativeStrandAdListener;

    .line 170
    new-instance v0, Lcom/inmobi/ads/InMobiNativeStrand$a;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/InMobiNativeStrand$a;-><init>(Lcom/inmobi/ads/InMobiNativeStrand;)V

    iput-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiNativeStrand$a;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/inmobi/ads/InMobiNativeStrand;)Lcom/inmobi/ads/InMobiNativeStrand$a;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiNativeStrand$a;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lcom/inmobi/ads/InMobiNativeStrand;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/inmobi/ads/InMobiNativeStrand;)Lcom/inmobi/ads/InMobiNativeStrand$NativeStrandAdListener;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mNativeStrandAdListener:Lcom/inmobi/ads/InMobiNativeStrand$NativeStrandAdListener;

    return-object v0
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mNativeV2AdContainer:Lcom/inmobi/ads/ai;

    if-eqz v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mNativeV2AdContainer:Lcom/inmobi/ads/ai;

    invoke-virtual {v0}, Lcom/inmobi/ads/ai;->destroy()V

    .line 372
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mNativeV2AdContainer:Lcom/inmobi/ads/ai;

    .line 374
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 5

    .prologue
    .line 349
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 350
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNativeStrand;->TAG:Ljava/lang/String;

    const-string v2, "InMobiNativeStrand is not initialized. Ignoring InMobiNativeStrand.destroy()"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiNativeStrand$a;

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiNativeStrand$a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/InMobiNativeStrand$a;->removeMessages(I)V

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mNativeStrandAdCache:Lcom/inmobi/ads/ab;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mToken:Lcom/inmobi/ads/ab$b;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ab;->c(Lcom/inmobi/ads/ab$b;)V

    .line 357
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mNativeStrandAdListener:Lcom/inmobi/ads/InMobiNativeStrand$NativeStrandAdListener;

    .line 358
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mListener:Lcom/inmobi/ads/ab$a;

    .line 359
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiNativeStrand;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    :goto_0
    return-void

    .line 360
    :catch_0
    move-exception v0

    .line 361
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiNativeStrand;->TAG:Ljava/lang/String;

    const-string v3, "Failed to destroy ad; SDK encountered an unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiNativeStrand;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDK encountered unexpected error destroying ad; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 364
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 363
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method

.method public getStrandView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 263
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 264
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiNativeStrand;->TAG:Ljava/lang/String;

    const-string v3, "InMobiNativeStrand is not initialized. Ignoring InMobiNativeStrand.getStrandView()"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    :cond_0
    :goto_0
    return-object v0

    .line 269
    :cond_1
    iget-object v1, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mNativeV2AdContainer:Lcom/inmobi/ads/ai;

    if-nez v1, :cond_2

    .line 270
    iget-object v1, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mNativeStrandAdCache:Lcom/inmobi/ads/ab;

    iget-object v2, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mToken:Lcom/inmobi/ads/ab$b;

    invoke-virtual {v1, v2}, Lcom/inmobi/ads/ab;->b(Lcom/inmobi/ads/ab$b;)Lcom/inmobi/ads/ai;

    move-result-object v1

    iput-object v1, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mNativeV2AdContainer:Lcom/inmobi/ads/ai;

    .line 272
    :cond_2
    iget-object v1, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mNativeV2AdContainer:Lcom/inmobi/ads/ai;

    if-eqz v1, :cond_0

    .line 274
    iget-object v1, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mNativeV2AdContainer:Lcom/inmobi/ads/ai;

    invoke-virtual {v1}, Lcom/inmobi/ads/ai;->getViewableAd()Lcom/inmobi/ads/ViewableAd;

    move-result-object v2

    .line 275
    iget-object v1, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mNativeV2AdContainer:Lcom/inmobi/ads/ai;

    iget-object v3, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mInteractionCallback:Lcom/inmobi/ads/ai$b;

    invoke-virtual {v1, v3}, Lcom/inmobi/ads/ai;->a(Lcom/inmobi/ads/ai$b;)V

    .line 276
    const/4 v1, 0x1

    invoke-virtual {v2, p1, p2, v1}, Lcom/inmobi/ads/ViewableAd;->a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 277
    iget-object v3, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mNativeStrandAdCache:Lcom/inmobi/ads/ab;

    iget-object v4, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mToken:Lcom/inmobi/ads/ab$b;

    invoke-virtual {v3, v4}, Lcom/inmobi/ads/ab;->d(Lcom/inmobi/ads/ab$b;)Lcom/inmobi/ads/c$h;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Landroid/view/View;

    invoke-virtual {v2, v3, v4}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/c$h;[Landroid/view/View;)V

    .line 280
    if-nez v1, :cond_3

    .line 281
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    const-string v2, "ads"

    const-string v3, "StrandInflationFailed"

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, v2, v3, v4}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 283
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiNativeStrand;->TAG:Ljava/lang/String;

    const-string v3, "Error inflating view even with a valid data model!"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 288
    :catch_0
    move-exception v1

    .line 289
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/InMobiNativeStrand;->TAG:Ljava/lang/String;

    const-string v4, "Could not inflate ad view; SDK encountered an unexpected error"

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/InMobiNativeStrand;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SDK encountered unexpected error in inflating ad view; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 292
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 291
    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v1}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto/16 :goto_0

    :cond_3
    move-object v0, v1

    .line 287
    goto/16 :goto_0
.end method

.method public load()V
    .locals 4

    .prologue
    .line 217
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNativeStrand;->TAG:Ljava/lang/String;

    const-string v2, "InMobiNativeStrand is not initialized. Ignoring InMobiNativeStrand.load()"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiNativeStrand$a;

    invoke-virtual {v0}, Lcom/inmobi/ads/InMobiNativeStrand$a;->a()V

    .line 224
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mNativeV2AdContainer:Lcom/inmobi/ads/ai;

    if-eqz v0, :cond_1

    .line 225
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mClientCallbackHandler:Lcom/inmobi/ads/InMobiNativeStrand$a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/InMobiNativeStrand$a;->sendEmptyMessage(I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 231
    :catch_0
    move-exception v0

    .line 232
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiNativeStrand;->TAG:Ljava/lang/String;

    const-string v3, "Unable to load ad; SDK encountered an unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiNativeStrand;->TAG:Ljava/lang/String;

    const-string v3, "Unable to load ad; SDK encountered an unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0

    .line 229
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/inmobi/ads/InMobiNativeStrand;->clear()V

    .line 230
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mNativeStrandAdCache:Lcom/inmobi/ads/ab;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mToken:Lcom/inmobi/ads/ab$b;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ab;->a(Lcom/inmobi/ads/ab$b;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public setExtras(Ljava/util/Map;)V
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
    .line 304
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNativeStrand;->TAG:Ljava/lang/String;

    const-string v2, "InMobiNativeStrand is not initialized.Ignoring InMobiNativeStrand.setExtras()"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :goto_0
    return-void

    .line 310
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mNativeStrandAdCache:Lcom/inmobi/ads/ab;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mToken:Lcom/inmobi/ads/ab$b;

    invoke-virtual {v0, v1, p1}, Lcom/inmobi/ads/ab;->a(Lcom/inmobi/ads/ab$b;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 311
    :catch_0
    move-exception v0

    .line 312
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiNativeStrand;->TAG:Ljava/lang/String;

    const-string v3, "Could not set extras on Native Strand ad; SDK encountered unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiNativeStrand;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDK encountered unexpected error in setting ad request extras; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 315
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 314
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method

.method public setKeywords(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 326
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/InMobiNativeStrand;->TAG:Ljava/lang/String;

    const-string v2, "InMobiNativeStrand is not initialized.Ignoring InMobiNativeStrand.setKeywords()"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    :goto_0
    return-void

    .line 332
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mNativeStrandAdCache:Lcom/inmobi/ads/ab;

    iget-object v1, p0, Lcom/inmobi/ads/InMobiNativeStrand;->mToken:Lcom/inmobi/ads/ab$b;

    invoke-virtual {v0, v1, p1}, Lcom/inmobi/ads/ab;->a(Lcom/inmobi/ads/ab$b;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 333
    :catch_0
    move-exception v0

    .line 334
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiNativeStrand;->TAG:Ljava/lang/String;

    const-string v3, "Could not set keywords on Native Strand ad; SDK encountered unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/InMobiNativeStrand;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDK encountered unexpected error in setting ad request keywords; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 337
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 336
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method
