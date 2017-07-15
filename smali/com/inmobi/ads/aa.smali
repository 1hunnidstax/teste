.class Lcom/inmobi/ads/aa;
.super Lcom/inmobi/ads/AdUnit;
.source "NativeAdUnit.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Lcom/inmobi/ads/t$a;


# static fields
.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;


# instance fields
.field private d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/inmobi/ads/aa;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Ljava/util/WeakHashMap;
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

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/inmobi/ads/t;

.field private i:Ljava/net/URL;

.field private j:Ljava/lang/String;

.field private k:I

.field private l:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/inmobi/ads/aa;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/aa;->b:Ljava/lang/String;

    .line 33
    const-class v0, Lcom/inmobi/ads/InMobiNative;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/aa;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLcom/inmobi/ads/AdUnit$b;)V
    .locals 3

    .prologue
    .line 52
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/inmobi/ads/AdUnit;-><init>(Landroid/content/Context;JLcom/inmobi/ads/AdUnit$b;)V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/aa;->d:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/aa;->e:Ljava/util/WeakHashMap;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/inmobi/ads/aa;->k:I

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/ads/aa;->l:J

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;JLcom/inmobi/ads/AdUnit$b;)V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/inmobi/ads/AdUnit;-><init>(Landroid/app/Activity;JLcom/inmobi/ads/AdUnit$b;)V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/aa;->d:Ljava/util/Map;

    .line 41
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/aa;->e:Ljava/util/WeakHashMap;

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/inmobi/ads/aa;->k:I

    .line 48
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/ads/aa;->l:J

    .line 57
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 58
    return-void
.end method

.method private b(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 326
    invoke-static {p1}, Lcom/inmobi/commons/core/utilities/d;->a(Ljava/util/Map;)V

    .line 328
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/inmobi/ads/aa;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "recordEvent(8)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 336
    :goto_0
    return-object v0

    .line 331
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/inmobi/ads/aa;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "recordEvent(8, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    .line 334
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected B()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 81
    sget-object v2, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADING:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v3

    if-eq v2, v3, :cond_0

    sget-object v2, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 82
    :cond_0
    new-instance v2, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v3, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REQUEST_PENDING:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v2, v3}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-virtual {p0, v2, v1}, Lcom/inmobi/ads/aa;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;Z)V

    .line 83
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/aa;->c:Ljava/lang/String;

    const-string v3, "An ad load is already in progress. Please wait for the load to complete before requesting for another ad"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    :goto_0
    return v0

    .line 89
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v2

    sget-object v3, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ACTIVE:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v2, v3, :cond_2

    .line 90
    new-instance v2, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v3, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->AD_ACTIVE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v2, v3}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-virtual {p0, v2, v1}, Lcom/inmobi/ads/aa;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;Z)V

    .line 91
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/aa;->c:Ljava/lang/String;

    const-string v3, "An ad is currently being viewed by the user. Please wait for the user to close the ad before requesting for another ad"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 98
    goto :goto_0
.end method

.method protected F()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 359
    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->o()V

    .line 360
    iget-object v0, p0, Lcom/inmobi/ads/aa;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 361
    iget-object v0, p0, Lcom/inmobi/ads/aa;->e:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    .line 363
    iget-object v0, p0, Lcom/inmobi/ads/aa;->h:Lcom/inmobi/ads/t;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/inmobi/ads/aa;->h:Lcom/inmobi/ads/t;

    invoke-virtual {v0}, Lcom/inmobi/ads/t;->e()V

    .line 367
    :cond_0
    iput-object v1, p0, Lcom/inmobi/ads/aa;->j:Ljava/lang/String;

    .line 368
    iput-object v1, p0, Lcom/inmobi/ads/aa;->i:Ljava/net/URL;

    .line 370
    invoke-super {p0}, Lcom/inmobi/ads/AdUnit;->F()V

    .line 371
    return-void
.end method

.method public N()V
    .locals 4

    .prologue
    .line 106
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ATTACHED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 107
    iget-object v0, p0, Lcom/inmobi/ads/aa;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 108
    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 111
    iget-object v1, p0, Lcom/inmobi/ads/aa;->h:Lcom/inmobi/ads/t;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 112
    iget-object v1, p0, Lcom/inmobi/ads/aa;->h:Lcom/inmobi/ads/t;

    .line 113
    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->p()Lcom/inmobi/ads/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/ads/c;->m()Lcom/inmobi/ads/c$h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/ads/c$h;->a()I

    move-result v2

    .line 114
    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->p()Lcom/inmobi/ads/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/ads/c;->m()Lcom/inmobi/ads/c$h;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/ads/c$h;->b()I

    move-result v3

    .line 112
    invoke-virtual {v1, v0, p0, v2, v3}, Lcom/inmobi/ads/t;->a(Landroid/view/View;Ljava/lang/Object;II)V

    .line 115
    iget-object v0, p0, Lcom/inmobi/ads/aa;->h:Lcom/inmobi/ads/t;

    invoke-virtual {v0}, Lcom/inmobi/ads/t;->b()V

    .line 119
    :cond_0
    return-void
.end method

.method public O()V
    .locals 2

    .prologue
    .line 122
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ATTACHED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/inmobi/ads/aa;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 124
    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 126
    iget-object v1, p0, Lcom/inmobi/ads/aa;->h:Lcom/inmobi/ads/t;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 127
    iget-object v1, p0, Lcom/inmobi/ads/aa;->h:Lcom/inmobi/ads/t;

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/t;->a(Landroid/view/View;)V

    .line 128
    iget-object v0, p0, Lcom/inmobi/ads/aa;->h:Lcom/inmobi/ads/t;

    invoke-virtual {v0}, Lcom/inmobi/ads/t;->a()V

    .line 132
    :cond_0
    return-void
.end method

.method public P()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 186
    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method Q()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 270
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/aa;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Viewable impression was recorded for Native ad with placement id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 272
    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->b()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 270
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ATTACHED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 274
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_RENDERED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/aa;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 275
    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->t()Lcom/inmobi/ads/AdContainer;

    move-result-object v0

    check-cast v0, Lcom/inmobi/rendering/RenderView;

    .line 276
    if-nez v0, :cond_1

    .line 295
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    invoke-virtual {v0, v6}, Lcom/inmobi/rendering/RenderView;->a(Z)V

    .line 279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/inmobi/ads/aa;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "recordEvent(18)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 280
    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;)V

    .line 282
    iget-object v1, p0, Lcom/inmobi/ads/aa;->j:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 283
    iget-object v1, p0, Lcom/inmobi/ads/aa;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;)V

    .line 285
    :cond_2
    iget-object v0, p0, Lcom/inmobi/ads/aa;->i:Ljava/net/URL;

    if-eqz v0, :cond_3

    .line 286
    invoke-static {}, Lcom/inmobi/rendering/a/c;->a()Lcom/inmobi/rendering/a/c;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/aa;->i:Ljava/net/URL;

    invoke-virtual {v1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lcom/inmobi/rendering/a/c;->a(Ljava/lang/String;Z)V

    .line 289
    :cond_3
    const-string v0, "ads"

    const-string v1, "ViewableBeaconFired"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/ads/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->q()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    .line 291
    if-eqz v0, :cond_0

    .line 292
    invoke-interface {v0}, Lcom/inmobi/ads/AdUnit$b;->g()V

    goto :goto_0
.end method

.method R()V
    .locals 5

    .prologue
    .line 341
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/aa;->b:Ljava/lang/String;

    const-string v2, "Open landing page requested"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/core/d/g;

    const-string v2, "ads"

    const-string v3, "OpenLandingPage"

    invoke-direct {v1, v2, v3}, Lcom/inmobi/commons/core/d/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 349
    :goto_0
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_RENDERED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ATTACHED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 350
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/inmobi/ads/aa;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "openLandingPage()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 351
    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->t()Lcom/inmobi/ads/AdContainer;

    move-result-object v0

    check-cast v0, Lcom/inmobi/rendering/RenderView;

    .line 352
    if-nez v0, :cond_2

    .line 355
    :cond_1
    :goto_1
    return-void

    .line 344
    :catch_0
    move-exception v0

    .line 345
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/aa;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in submitting telemetry event : ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 346
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 345
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 353
    :cond_2
    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public a(Landroid/view/View;)V
    .locals 6

    .prologue
    .line 231
    if-nez p1, :cond_1

    .line 249
    :cond_0
    :goto_0
    return-void

    .line 235
    :cond_1
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ATTACHED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 236
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/aa;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 237
    sget-object v0, Lcom/inmobi/ads/InMobiNative;->sMappedAdUnits:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    iget-object v0, p0, Lcom/inmobi/ads/aa;->h:Lcom/inmobi/ads/t;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/t;->a(Landroid/view/View;)V

    .line 239
    iget-object v0, p0, Lcom/inmobi/ads/aa;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    iget-object v0, p0, Lcom/inmobi/ads/aa;->e:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/aa;

    .line 241
    if-eqz v0, :cond_2

    .line 242
    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/aa;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 243
    iget-object v1, p0, Lcom/inmobi/ads/aa;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    :cond_2
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/aa;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unbinding Native ad from view :<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> for placement id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 247
    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->b()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 245
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 254
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->Q()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :goto_0
    return-void

    .line 255
    :catch_0
    move-exception v0

    .line 256
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/aa;->c:Ljava/lang/String;

    const-string v3, "Failed to record impression on ad; SDK encountered an unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/aa;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDK encountered an unexpected error in recording ad impression; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 259
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 258
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;Ljava/net/URL;Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 192
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 193
    const-string v2, "customScript"

    if-eqz p3, :cond_2

    const-string v0, "1"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    const-string v2, "customUrl"

    if-eqz p2, :cond_3

    const-string v0, "1"

    :goto_1
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    const-string v0, "ads"

    const-string v2, "TrackImpression"

    invoke-virtual {p0, v0, v2, v1}, Lcom/inmobi/ads/aa;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 197
    iget-object v0, p0, Lcom/inmobi/ads/aa;->d:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 198
    const/4 v1, 0x0

    .line 199
    if-eqz v0, :cond_5

    .line 200
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 203
    :goto_2
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 204
    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v2

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ATTACHED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v2

    if-ne v1, v2, :cond_4

    .line 205
    :cond_0
    invoke-virtual {p0, v0}, Lcom/inmobi/ads/aa;->a(Landroid/view/View;)V

    .line 206
    invoke-virtual {p0, p1}, Lcom/inmobi/ads/aa;->a(Landroid/view/View;)V

    .line 208
    iget-object v0, p0, Lcom/inmobi/ads/aa;->d:Ljava/util/Map;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v0, p0, Lcom/inmobi/ads/aa;->e:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1, p0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    iput-object p2, p0, Lcom/inmobi/ads/aa;->i:Ljava/net/URL;

    .line 211
    iput-object p3, p0, Lcom/inmobi/ads/aa;->j:Ljava/lang/String;

    .line 212
    iget-object v0, p0, Lcom/inmobi/ads/aa;->h:Lcom/inmobi/ads/t;

    .line 213
    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->p()Lcom/inmobi/ads/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/c;->m()Lcom/inmobi/ads/c$h;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/c$h;->a()I

    move-result v1

    .line 214
    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->p()Lcom/inmobi/ads/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/ads/c;->m()Lcom/inmobi/ads/c$h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/ads/c$h;->b()I

    move-result v2

    .line 212
    invoke-virtual {v0, p1, p0, v1, v2}, Lcom/inmobi/ads/t;->a(Landroid/view/View;Ljava/lang/Object;II)V

    .line 215
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ATTACHED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/aa;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 216
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/aa;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Binding view :<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> to Native ad for placement id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 217
    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->b()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 216
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    :cond_1
    :goto_3
    return-void

    .line 193
    :cond_2
    const-string v0, "0"

    goto/16 :goto_0

    .line 194
    :cond_3
    const-string v0, "0"

    goto/16 :goto_1

    .line 221
    :cond_4
    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_RENDERED:Lcom/inmobi/ads/AdUnit$AdState;

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ACTIVE:Lcom/inmobi/ads/AdUnit$AdState;

    if-eq v0, v1, :cond_1

    .line 222
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/aa;->c:Ljava/lang/String;

    const-string v2, "Please wait for the ad to finish loading before making a call to bind."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    move-object v0, v1

    goto/16 :goto_2
.end method

.method a(Ljava/util/Map;Ljava/net/URL;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/net/URL;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 298
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/aa;->b:Ljava/lang/String;

    const-string v2, "Click record requested"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 300
    const-string v2, "customScript"

    if-eqz p3, :cond_2

    const-string v0, "1"

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-string v2, "customUrl"

    if-eqz p2, :cond_3

    const-string v0, "1"

    :goto_1
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const-string v0, "ads"

    const-string v2, "ReportClick"

    invoke-virtual {p0, v0, v2, v1}, Lcom/inmobi/ads/aa;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 304
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ATTACHED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v2

    if-eq v0, v2, :cond_0

    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_RENDERED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v2

    if-ne v0, v2, :cond_6

    .line 305
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->t()Lcom/inmobi/ads/AdContainer;

    move-result-object v0

    check-cast v0, Lcom/inmobi/rendering/RenderView;

    .line 306
    if-nez v0, :cond_4

    .line 323
    :cond_1
    :goto_2
    return-void

    .line 300
    :cond_2
    const-string v0, "0"

    goto :goto_0

    .line 301
    :cond_3
    const-string v0, "0"

    goto :goto_1

    .line 308
    :cond_4
    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->g()V

    .line 310
    invoke-direct {p0, p1}, Lcom/inmobi/ads/aa;->b(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v1

    .line 312
    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;)V

    .line 313
    if-eqz p3, :cond_5

    .line 314
    invoke-virtual {v0, p3}, Lcom/inmobi/rendering/RenderView;->b(Ljava/lang/String;)V

    .line 316
    :cond_5
    if-eqz p2, :cond_1

    .line 317
    invoke-static {}, Lcom/inmobi/rendering/a/c;->a()Lcom/inmobi/rendering/a/c;

    move-result-object v0

    invoke-virtual {p2}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/rendering/a/c;->a(Ljava/lang/String;Z)V

    goto :goto_2

    .line 320
    :cond_6
    const-string v0, "ads"

    const-string v2, "InvalidClickReport"

    invoke-virtual {p0, v0, v2, v1}, Lcom/inmobi/ads/aa;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 321
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/aa;->b:Ljava/lang/String;

    const-string v2, "reportAdClick call made in wrong state"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public a(Lcom/inmobi/ads/a;)Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 136
    invoke-super {p0, p1}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/a;)Z

    move-result v1

    .line 138
    if-nez v1, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v0

    .line 142
    :cond_1
    const-string v1, "contextCode"

    .line 143
    const-string v1, "namespace"

    .line 145
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/inmobi/ads/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 147
    const-string v2, "contextCode"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/inmobi/ads/aa;->f:Ljava/lang/String;

    .line 148
    const-string v2, "namespace"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/inmobi/ads/aa;->g:Ljava/lang/String;

    .line 149
    iget-object v1, p0, Lcom/inmobi/ads/aa;->f:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/ads/aa;->f:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/ads/aa;->g:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/ads/aa;->g:Ljava/lang/String;

    .line 150
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 151
    :catch_0
    move-exception v1

    .line 152
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/aa;->b:Ljava/lang/String;

    const-string v4, "Exception while parsing ad."

    invoke-static {v2, v3, v4, v1}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public b(JLcom/inmobi/ads/a;)V
    .locals 7
    .param p3    # Lcom/inmobi/ads/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 160
    invoke-super {p0, p1, p2, p3}, Lcom/inmobi/ads/AdUnit;->b(JLcom/inmobi/ads/a;)V

    .line 161
    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->b()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 162
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/aa;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Native ad successfully fetched for placement id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 163
    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->b()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 162
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/aa;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Started loading Native ad markup in the WebViewfor placement id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 166
    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->b()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 164
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/inmobi/ads/aa;->f:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/inmobi/ads/aa;->a(ILjava/lang/String;Ljava/lang/Runnable;Landroid/os/Looper;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :cond_0
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 172
    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->I()V

    .line 173
    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->q()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 174
    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->q()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v1

    new-instance v2, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v3, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v2, v3}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-interface {v1, p0, v2}, Lcom/inmobi/ads/AdUnit$b;->a(Lcom/inmobi/ads/AdUnit;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 177
    :cond_1
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/aa;->c:Ljava/lang/String;

    const-string v3, "Failed to load ad; SDK encountered an unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/aa;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDK encountered an unexpected error loading an ad; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 180
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected b(Lcom/inmobi/ads/a;)V
    .locals 0

    .prologue
    .line 103
    return-void
.end method

.method public b(Lcom/inmobi/rendering/RenderView;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/rendering/RenderView;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 266
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/aa;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad interaction. Params:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    return-void

    .line 266
    :cond_0
    invoke-virtual {p2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public c(Lcom/inmobi/rendering/RenderView;)V
    .locals 6

    .prologue
    .line 390
    invoke-super {p0, p1}, Lcom/inmobi/ads/AdUnit;->c(Lcom/inmobi/rendering/RenderView;)V

    .line 392
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 393
    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->I()V

    .line 394
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/aa;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 395
    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->L()V

    .line 397
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/aa;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully loaded Native ad markup in WebView for placement id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 399
    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->b()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 397
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 400
    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->q()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 401
    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->q()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/ads/AdUnit$b;->a()V

    .line 403
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->D()V

    .line 405
    :cond_1
    return-void
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 375
    const-string v0, "native"

    return-object v0
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 380
    const/4 v0, 0x0

    return-object v0
.end method

.method public f(Lcom/inmobi/rendering/RenderView;)V
    .locals 2

    .prologue
    .line 409
    invoke-super {p0, p1}, Lcom/inmobi/ads/AdUnit;->f(Lcom/inmobi/rendering/RenderView;)V

    .line 410
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_RENDERED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ATTACHED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 411
    :cond_0
    iget v0, p0, Lcom/inmobi/ads/aa;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/inmobi/ads/aa;->k:I

    .line 412
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ACTIVE:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/aa;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 413
    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->q()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 414
    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->q()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/ads/AdUnit$b;->d()V

    .line 419
    :cond_1
    :goto_0
    return-void

    .line 416
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ACTIVE:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_1

    .line 417
    iget v0, p0, Lcom/inmobi/ads/aa;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/inmobi/ads/aa;->k:I

    goto :goto_0
.end method

.method public g(Lcom/inmobi/rendering/RenderView;)V
    .locals 2

    .prologue
    .line 423
    invoke-super {p0, p1}, Lcom/inmobi/ads/AdUnit;->g(Lcom/inmobi/rendering/RenderView;)V

    .line 424
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ACTIVE:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 425
    iget v0, p0, Lcom/inmobi/ads/aa;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/inmobi/ads/aa;->k:I

    .line 427
    iget v0, p0, Lcom/inmobi/ads/aa;->k:I

    if-nez v0, :cond_0

    .line 428
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_RENDERED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/aa;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 430
    const-string v0, "ads"

    const-string v1, "AdRendered"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/ads/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->q()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->q()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/ads/AdUnit$b;->e()V

    .line 437
    :cond_0
    return-void
.end method

.method protected h()Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;
    .locals 1

    .prologue
    .line 385
    sget-object v0, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_INLINE:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    return-object v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 442
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 471
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 472
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 457
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 452
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 467
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 446
    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->N()V

    .line 447
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 461
    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->O()V

    .line 462
    return-void
.end method

.method public x()V
    .locals 6

    .prologue
    .line 62
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/aa;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fetching a Native ad for placement id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 63
    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->b()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 62
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-wide v0, p0, Lcom/inmobi/ads/aa;->l:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->p()Lcom/inmobi/ads/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/c;->g()I

    move-result v0

    .line 66
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/inmobi/ads/aa;->l:J

    sub-long/2addr v2, v4

    mul-int/lit16 v1, v0, 0x3e8

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 67
    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->EARLY_REFRESH_REQUEST:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad cannot be refreshed before "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seconds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;->setCustomMessage(Ljava/lang/String;)Lcom/inmobi/ads/InMobiAdRequestStatus;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/inmobi/ads/aa;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;Z)V

    .line 68
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/aa;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ad cannot be refreshed before "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " seconds (Placement Id = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->b()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :goto_0
    return-void

    .line 72
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/ads/aa;->l:J

    .line 73
    invoke-super {p0}, Lcom/inmobi/ads/AdUnit;->x()V

    .line 74
    new-instance v0, Lcom/inmobi/ads/t;

    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->p()Lcom/inmobi/ads/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/c;->m()Lcom/inmobi/ads/c$h;

    move-result-object v1

    new-instance v2, Lcom/inmobi/ads/az;

    .line 75
    invoke-virtual {p0}, Lcom/inmobi/ads/aa;->p()Lcom/inmobi/ads/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/ads/c;->m()Lcom/inmobi/ads/c$h;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/inmobi/ads/az;-><init>(Lcom/inmobi/ads/c$h;)V

    invoke-direct {v0, v1, v2, p0}, Lcom/inmobi/ads/t;-><init>(Lcom/inmobi/ads/c$h;Lcom/inmobi/ads/bq;Lcom/inmobi/ads/t$a;)V

    iput-object v0, p0, Lcom/inmobi/ads/aa;->h:Lcom/inmobi/ads/t;

    goto :goto_0
.end method
