.class public Lcom/inmobi/ads/at;
.super Lcom/inmobi/ads/ai;
.source "NativeV2VideoAdContainer.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xf
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/at$a;,
        Lcom/inmobi/ads/at$b;
    }
.end annotation


# static fields
.field private static final i:Ljava/lang/String;


# instance fields
.field private j:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/inmobi/ads/ai;

.field private final l:Lcom/inmobi/ads/AdContainer$a;

.field private final m:Lcom/inmobi/ads/at$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    const-class v0, Lcom/inmobi/ads/at;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/at;->i:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/inmobi/ads/AdContainer$RenderingProperties;Lcom/inmobi/ads/NativeV2DataModel;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/inmobi/ads/AdContainer$RenderingProperties;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/inmobi/ads/NativeV2DataModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/Set;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/inmobi/ads/AdContainer$RenderingProperties;",
            "Lcom/inmobi/ads/NativeV2DataModel;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Lcom/inmobi/ads/bd;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 217
    invoke-direct/range {p0 .. p6}, Lcom/inmobi/ads/ai;-><init>(Landroid/content/Context;Lcom/inmobi/ads/AdContainer$RenderingProperties;Lcom/inmobi/ads/NativeV2DataModel;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    .line 96
    new-instance v0, Lcom/inmobi/ads/at$1;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/at$1;-><init>(Lcom/inmobi/ads/at;)V

    iput-object v0, p0, Lcom/inmobi/ads/at;->l:Lcom/inmobi/ads/AdContainer$a;

    .line 173
    new-instance v0, Lcom/inmobi/ads/at$2;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/at$2;-><init>(Lcom/inmobi/ads/at;)V

    iput-object v0, p0, Lcom/inmobi/ads/at;->m:Lcom/inmobi/ads/at$b;

    .line 219
    iput-object p3, p0, Lcom/inmobi/ads/at;->a:Lcom/inmobi/ads/NativeV2DataModel;

    .line 220
    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/at;Lcom/inmobi/ads/av;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 81
    invoke-direct {p0, p1}, Lcom/inmobi/ads/at;->i(Lcom/inmobi/ads/av;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 770
    :try_start_0
    const-string v0, "clientRequestId"

    invoke-virtual {p0}, Lcom/inmobi/ads/at;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    const-string v0, "impId"

    invoke-virtual {p0}, Lcom/inmobi/ads/at;->f()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 777
    :goto_0
    return-void

    .line 773
    :catch_0
    move-exception v0

    .line 774
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/at;->i:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in sendTelemetryEvent : ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 775
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 774
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private c(Lcom/inmobi/ads/NativeV2Asset;)V
    .locals 6

    .prologue
    .line 488
    iget-object v1, p0, Lcom/inmobi/ads/at;->k:Lcom/inmobi/ads/ai;

    if-eqz v1, :cond_2

    .line 490
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/ads/at;->j()Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    if-eqz v1, :cond_0

    .line 492
    :try_start_1
    invoke-virtual {p0}, Lcom/inmobi/ads/at;->j()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 493
    iget-object v2, p0, Lcom/inmobi/ads/at;->k:Lcom/inmobi/ads/ai;

    invoke-virtual {v2}, Lcom/inmobi/ads/ai;->getViewableAd()Lcom/inmobi/ads/ViewableAd;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Lcom/inmobi/ads/ViewableAd;->a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 494
    if-eqz v2, :cond_1

    .line 495
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 497
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/view/View;->setClickable(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 511
    :try_start_2
    const-string v1, "ads"

    const-string v2, "EndCardDisplayed"

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v1, v2, v3}, Lcom/inmobi/ads/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 512
    move-object v0, p1

    check-cast v0, Lcom/inmobi/ads/av;

    move-object v1, v0

    invoke-direct {p0, v1}, Lcom/inmobi/ads/at;->i(Lcom/inmobi/ads/av;)Ljava/util/Map;

    move-result-object v2

    .line 513
    move-object v0, p1

    check-cast v0, Lcom/inmobi/ads/av;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/inmobi/ads/av;->D()Lcom/inmobi/ads/bk;

    move-result-object v1

    invoke-interface {v1}, Lcom/inmobi/ads/bk;->g()Lcom/inmobi/ads/bg;

    move-result-object v1

    .line 514
    if-eqz v1, :cond_0

    .line 515
    sget-object v3, Lcom/inmobi/ads/ah$a;->m:Lcom/inmobi/ads/ah$a;

    invoke-virtual {v1, v3}, Lcom/inmobi/ads/bg;->a(Lcom/inmobi/ads/ah$a;)Ljava/util/List;

    move-result-object v1

    .line 516
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/ah;

    .line 517
    invoke-virtual {p1, v1, v2}, Lcom/inmobi/ads/NativeV2Asset;->a(Lcom/inmobi/ads/ah;Ljava/util/Map;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 521
    :catch_0
    move-exception v1

    .line 522
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/at;->i:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Encountered unexpected error in showEndCard(NativeV2Asset) method: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 524
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 522
    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v3, "InMobi"

    const-string v4, "SDK encountered unexpected error in showing end card"

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v1}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 536
    :cond_0
    :goto_1
    return-void

    .line 499
    :cond_1
    :try_start_3
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/at;->i:Ljava/lang/String;

    const-string v3, "Could not inflate the end card. Closing the ad"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    invoke-virtual {p0}, Lcom/inmobi/ads/at;->s()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 504
    :catch_1
    move-exception v1

    .line 505
    :try_start_4
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v3, "InMobi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SDK encountered unexpected error in inflating end card: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 506
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 505
    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    invoke-virtual {p0}, Lcom/inmobi/ads/at;->s()V

    .line 508
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v1}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_1

    .line 530
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/ads/at;->s()V

    .line 531
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/at;->i:Ljava/lang/String;

    const-string v3, "End card container is null; end card will not be shown"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "InMobi"

    const-string v3, "Failed to show end card"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private h(Lcom/inmobi/ads/av;)V
    .locals 8
    .param p1    # Lcom/inmobi/ads/av;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 263
    invoke-virtual {p1}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "didImpressionFire"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    invoke-virtual {p1}, Lcom/inmobi/ads/av;->f()[Lcom/inmobi/ads/ah;

    move-result-object v3

    .line 266
    invoke-direct {p0, p1}, Lcom/inmobi/ads/at;->i(Lcom/inmobi/ads/av;)Ljava/util/Map;

    move-result-object v4

    .line 267
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 268
    array-length v5, v3

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v5, :cond_4

    aget-object v0, v3, v2

    .line 269
    sget-object v6, Lcom/inmobi/ads/ah$a;->g:Lcom/inmobi/ads/ah$a;

    invoke-virtual {v0}, Lcom/inmobi/ads/ah;->c()Lcom/inmobi/ads/ah$a;

    move-result-object v7

    if-ne v6, v7, :cond_3

    .line 270
    invoke-virtual {v0}, Lcom/inmobi/ads/ah;->b()Ljava/lang/String;

    move-result-object v1

    const-string v6, "http"

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 271
    invoke-virtual {p1, v0, v4}, Lcom/inmobi/ads/av;->a(Lcom/inmobi/ads/ah;Ljava/util/Map;)V

    .line 273
    :cond_2
    invoke-virtual {v0}, Lcom/inmobi/ads/ah;->a()Ljava/util/Map;

    move-result-object v0

    .line 274
    const-string v1, "referencedEvents"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/List;

    .line 275
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/ah$a;

    .line 276
    invoke-virtual {p1, v0, v4}, Lcom/inmobi/ads/av;->a(Lcom/inmobi/ads/ah$a;Ljava/util/Map;)V

    goto :goto_2

    .line 268
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 281
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 282
    sget-object v0, Lcom/inmobi/ads/ah$a;->h:Lcom/inmobi/ads/ah$a;

    invoke-virtual {p1, v0, v4}, Lcom/inmobi/ads/av;->a(Lcom/inmobi/ads/ah$a;Ljava/util/Map;)V

    .line 283
    sget-object v0, Lcom/inmobi/ads/ah$a;->m:Lcom/inmobi/ads/ah$a;

    invoke-virtual {p1, v0, v4}, Lcom/inmobi/ads/av;->a(Lcom/inmobi/ads/ah$a;Ljava/util/Map;)V

    .line 284
    sget-object v0, Lcom/inmobi/ads/ah$a;->d:Lcom/inmobi/ads/ah$a;

    invoke-virtual {p1, v0, v4}, Lcom/inmobi/ads/av;->a(Lcom/inmobi/ads/ah$a;Ljava/util/Map;)V

    .line 286
    :cond_5
    invoke-virtual {p1}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "didImpressionFire"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    invoke-virtual {p0}, Lcom/inmobi/ads/at;->i()Lcom/inmobi/ads/ai$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 289
    invoke-virtual {p0}, Lcom/inmobi/ads/at;->i()Lcom/inmobi/ads/ai$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/ads/ai$b;->c()V

    goto/16 :goto_0
.end method

.method private i(Lcom/inmobi/ads/av;)Ljava/util/Map;
    .locals 8
    .param p1    # Lcom/inmobi/ads/av;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/av;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 780
    invoke-virtual {p1}, Lcom/inmobi/ads/av;->u()Lcom/inmobi/ads/NativeV2Asset;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/aj;

    .line 781
    new-instance v2, Ljava/util/HashMap;

    const/4 v1, 0x4

    invoke-direct {v2, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 782
    iget-object v1, p0, Lcom/inmobi/ads/at;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/NativeStrandVideoWrapper;

    .line 783
    if-eqz v1, :cond_0

    .line 784
    invoke-virtual {v1}, Lcom/inmobi/ads/NativeStrandVideoWrapper;->getVideoView()Lcom/inmobi/ads/NativeStrandVideoView;

    move-result-object v1

    .line 785
    const-string v3, "$MD"

    .line 786
    invoke-virtual {v1}, Lcom/inmobi/ads/NativeStrandVideoView;->getDuration()I

    move-result v1

    int-to-double v4, v1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v4, v6

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v1, v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 785
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 788
    :cond_0
    const-string v1, "[ERRORCODE]"

    sget-object v3, Lcom/inmobi/ads/VastErrorCode;->MEDIA_PLAY_ERROR:Lcom/inmobi/ads/VastErrorCode;

    .line 789
    invoke-virtual {v3}, Lcom/inmobi/ads/VastErrorCode;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    .line 788
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    const-string v3, "[CONTENTPLAYHEAD]"

    .line 793
    invoke-virtual {p1}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v1

    const-string v4, "seekPosition"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 792
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/inmobi/ads/at;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 791
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    const-string v1, "[CACHEBUSTING]"

    .line 795
    invoke-virtual {p0}, Lcom/inmobi/ads/at;->x()Ljava/lang/String;

    move-result-object v3

    .line 794
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 796
    const-string v1, "[ASSETURI]"

    .line 797
    invoke-virtual {p1}, Lcom/inmobi/ads/av;->D()Lcom/inmobi/ads/bk;

    move-result-object v3

    invoke-interface {v3}, Lcom/inmobi/ads/bk;->b()Ljava/lang/String;

    move-result-object v3

    .line 796
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 798
    const-string v1, "$TS"

    .line 799
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 798
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    const-string v1, "$LTS"

    iget-object v3, p0, Lcom/inmobi/ads/at;->a:Lcom/inmobi/ads/NativeV2DataModel;

    .line 801
    invoke-virtual {v3}, Lcom/inmobi/ads/NativeV2DataModel;->b()Lcom/inmobi/ads/aj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/ads/aj;->y()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    .line 800
    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 802
    if-eqz v0, :cond_1

    .line 803
    const-string v1, "$STS"

    .line 804
    invoke-virtual {v0}, Lcom/inmobi/ads/aj;->y()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 803
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    :cond_1
    return-object v2
.end method

.method static synthetic z()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/inmobi/ads/at;->i:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method a(I)Ljava/lang/String;
    .locals 10
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 826
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v1, "%02d:%02d:%02d.%03d"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v6, p1

    .line 827
    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v6, p1

    .line 828
    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v8, p1

    .line 829
    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 828
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v6, p1

    .line 830
    invoke-virtual {v4, v6, v7}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v8, p1

    .line 831
    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J

    move-result-wide v8

    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    sub-long/2addr v4, v6

    .line 830
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    int-to-long v4, p1

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v8, p1

    .line 832
    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 826
    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 241
    invoke-virtual {p0}, Lcom/inmobi/ads/at;->m()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/ads/at;->c()Z

    move-result v0

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/inmobi/ads/NativeStrandVideoView;

    if-nez v0, :cond_1

    .line 260
    :cond_0
    :goto_0
    return-void

    .line 244
    :cond_1
    check-cast p1, Lcom/inmobi/ads/NativeStrandVideoView;

    .line 245
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/at;->e:Z

    .line 247
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/at;->i:Ljava/lang/String;

    const-string v2, "A viewable impression is reported on the video ad."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 251
    const-string v2, "type"

    sget-object v0, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_FULLSCREEN:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 252
    invoke-virtual {p0}, Lcom/inmobi/ads/at;->getRenderingProperties()Lcom/inmobi/ads/AdContainer$RenderingProperties;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/ads/AdContainer$RenderingProperties;->a()Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    move-result-object v3

    if-ne v0, v3, :cond_2

    const-string v0, "int"

    .line 251
    :goto_1
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v0, "clientRequestId"

    invoke-virtual {p0}, Lcom/inmobi/ads/at;->g()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v0, "impId"

    invoke-virtual {p0}, Lcom/inmobi/ads/at;->n()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v0

    const-string v2, "ads"

    const-string v3, "ViewableBeaconFired"

    invoke-virtual {v0, v2, v3, v1}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 258
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeStrandVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/av;

    invoke-direct {p0, v0}, Lcom/inmobi/ads/at;->h(Lcom/inmobi/ads/av;)V

    .line 259
    iget-object v0, p0, Lcom/inmobi/ads/at;->d:Lcom/inmobi/ads/ViewableAd;

    sget-object v1, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_IMPRESSION_RECORDED:Lcom/inmobi/ads/ViewableAd$AdEvent;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V

    goto :goto_0

    .line 252
    :cond_2
    const-string v0, "inlban"

    goto :goto_1
.end method

.method public a(Lcom/inmobi/ads/av;)V
    .locals 4
    .param p1    # Lcom/inmobi/ads/av;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v3, 0x0

    .line 566
    invoke-virtual {p0}, Lcom/inmobi/ads/at;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 575
    :cond_0
    :goto_0
    return-void

    .line 567
    :cond_1
    invoke-virtual {p1}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "didRequestFullScreen"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    invoke-virtual {p1}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "didRequestFullScreen"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    invoke-virtual {p1}, Lcom/inmobi/ads/av;->i()Lcom/inmobi/ads/NativeV2Asset;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 571
    invoke-virtual {p1}, Lcom/inmobi/ads/av;->i()Lcom/inmobi/ads/NativeV2Asset;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeV2Asset;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "didRequestFullScreen"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/ads/at;->s()V

    goto :goto_0
.end method

.method a(Lcom/inmobi/ads/av;I)V
    .locals 4

    .prologue
    .line 583
    invoke-virtual {p0}, Lcom/inmobi/ads/at;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 597
    :goto_0
    return-void

    .line 585
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 586
    const-string v1, "errorCode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 587
    const-string v1, "reason"

    const-string v2, "Video Player Error"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 588
    const-string v1, "url"

    invoke-virtual {p1}, Lcom/inmobi/ads/av;->D()Lcom/inmobi/ads/bk;

    move-result-object v2

    invoke-interface {v2}, Lcom/inmobi/ads/bk;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    const-string v1, "ads"

    const-string v2, "VideoError"

    invoke-direct {p0, v1, v2, v0}, Lcom/inmobi/ads/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 591
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/at;->i:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Moat onVideoError + "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    sget-object v0, Lcom/inmobi/ads/ah$a;->t:Lcom/inmobi/ads/ah$a;

    invoke-direct {p0, p1}, Lcom/inmobi/ads/at;->i(Lcom/inmobi/ads/av;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/ads/av;->a(Lcom/inmobi/ads/ah$a;Ljava/util/Map;)V

    .line 596
    iget-object v0, p0, Lcom/inmobi/ads/at;->d:Lcom/inmobi/ads/ViewableAd;

    sget-object v1, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_ERROR:Lcom/inmobi/ads/ViewableAd$AdEvent;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V

    goto :goto_0
.end method

.method a(Lcom/inmobi/ads/av;Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;)V
    .locals 3

    .prologue
    .line 711
    invoke-virtual {p0}, Lcom/inmobi/ads/at;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 766
    :goto_0
    return-void

    .line 712
    :cond_0
    sget-object v0, Lcom/inmobi/ads/at$3;->c:[I

    invoke-virtual {p2}, Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 714
    :pswitch_0
    sget-object v0, Lcom/inmobi/ads/ah$a;->i:Lcom/inmobi/ads/ah$a;

    invoke-direct {p0, p1}, Lcom/inmobi/ads/at;->i(Lcom/inmobi/ads/av;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/ads/av;->a(Lcom/inmobi/ads/ah$a;Ljava/util/Map;)V

    .line 715
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 716
    const-string v1, "url"

    invoke-virtual {p1}, Lcom/inmobi/ads/av;->D()Lcom/inmobi/ads/bk;

    move-result-object v2

    invoke-interface {v2}, Lcom/inmobi/ads/bk;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    const-string v1, "isCached"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    const-string v1, "ads"

    const-string v2, "VideoQ1Completed"

    invoke-direct {p0, v1, v2, v0}, Lcom/inmobi/ads/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 723
    iget-object v0, p0, Lcom/inmobi/ads/at;->d:Lcom/inmobi/ads/ViewableAd;

    sget-object v1, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_QUARTILE_1:Lcom/inmobi/ads/ViewableAd$AdEvent;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V

    goto :goto_0

    .line 727
    :pswitch_1
    sget-object v0, Lcom/inmobi/ads/ah$a;->j:Lcom/inmobi/ads/ah$a;

    invoke-direct {p0, p1}, Lcom/inmobi/ads/at;->i(Lcom/inmobi/ads/av;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/ads/av;->a(Lcom/inmobi/ads/ah$a;Ljava/util/Map;)V

    .line 728
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 729
    const-string v1, "url"

    invoke-virtual {p1}, Lcom/inmobi/ads/av;->D()Lcom/inmobi/ads/bk;

    move-result-object v2

    invoke-interface {v2}, Lcom/inmobi/ads/bk;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 730
    const-string v1, "isCached"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 731
    const-string v1, "ads"

    const-string v2, "VideoQ2Completed"

    invoke-direct {p0, v1, v2, v0}, Lcom/inmobi/ads/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 736
    iget-object v0, p0, Lcom/inmobi/ads/at;->d:Lcom/inmobi/ads/ViewableAd;

    sget-object v1, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_QUARTILE_2:Lcom/inmobi/ads/ViewableAd$AdEvent;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V

    goto :goto_0

    .line 740
    :pswitch_2
    sget-object v0, Lcom/inmobi/ads/ah$a;->k:Lcom/inmobi/ads/ah$a;

    invoke-direct {p0, p1}, Lcom/inmobi/ads/at;->i(Lcom/inmobi/ads/av;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/ads/av;->a(Lcom/inmobi/ads/ah$a;Ljava/util/Map;)V

    .line 741
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 742
    const-string v1, "url"

    invoke-virtual {p1}, Lcom/inmobi/ads/av;->D()Lcom/inmobi/ads/bk;

    move-result-object v2

    invoke-interface {v2}, Lcom/inmobi/ads/bk;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    const-string v1, "isCached"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 744
    const-string v1, "ads"

    const-string v2, "VideoQ3Completed"

    invoke-direct {p0, v1, v2, v0}, Lcom/inmobi/ads/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 749
    iget-object v0, p0, Lcom/inmobi/ads/at;->d:Lcom/inmobi/ads/ViewableAd;

    sget-object v1, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_QUARTILE_3:Lcom/inmobi/ads/ViewableAd$AdEvent;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V

    goto/16 :goto_0

    .line 753
    :pswitch_3
    sget-object v0, Lcom/inmobi/ads/ah$a;->l:Lcom/inmobi/ads/ah$a;

    invoke-direct {p0, p1}, Lcom/inmobi/ads/at;->i(Lcom/inmobi/ads/av;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/ads/av;->a(Lcom/inmobi/ads/ah$a;Ljava/util/Map;)V

    .line 754
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 755
    const-string v1, "url"

    invoke-virtual {p1}, Lcom/inmobi/ads/av;->D()Lcom/inmobi/ads/bk;

    move-result-object v2

    invoke-interface {v2}, Lcom/inmobi/ads/bk;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    const-string v1, "isCached"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 757
    const-string v1, "ads"

    const-string v2, "VideoQ4Completed"

    invoke-direct {p0, v1, v2, v0}, Lcom/inmobi/ads/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 762
    iget-object v0, p0, Lcom/inmobi/ads/at;->d:Lcom/inmobi/ads/ViewableAd;

    sget-object v1, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_PLAY_COMPLETED:Lcom/inmobi/ads/ViewableAd$AdEvent;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V

    goto/16 :goto_0

    .line 712
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method a(Lcom/inmobi/ads/av;Lcom/inmobi/ads/NativeStrandVideoView;)V
    .locals 3
    .param p1    # Lcom/inmobi/ads/av;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/inmobi/ads/NativeStrandVideoView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 540
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/at;->i:Ljava/lang/String;

    const-string v2, "onVideoViewCreated"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeStrandVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeStrandVideoWrapper;

    .line 542
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/inmobi/ads/at;->j:Ljava/lang/ref/WeakReference;

    .line 543
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoWrapper;->getVideoView()Lcom/inmobi/ads/NativeStrandVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->getMediaController()Lcom/inmobi/ads/NativeStrandVideoController;

    move-result-object v0

    .line 544
    if-eqz v0, :cond_0

    .line 545
    invoke-virtual {v0, p0}, Lcom/inmobi/ads/NativeStrandVideoController;->setVideoAd(Lcom/inmobi/ads/at;)V

    .line 547
    :cond_0
    return-void
.end method

.method protected b(Lcom/inmobi/ads/NativeV2Asset;)V
    .locals 5
    .param p1    # Lcom/inmobi/ads/NativeV2Asset;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 363
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeV2Asset;->l()Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;

    move-result-object v0

    .line 364
    sget-object v1, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;->ASSET_ACTION_ON_CLICK_NONE:Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;

    if-ne v1, v0, :cond_1

    .line 485
    :cond_0
    :goto_0
    return-void

    .line 368
    :cond_1
    sget-object v1, Lcom/inmobi/ads/at$3;->b:[I

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 372
    :try_start_0
    sget-object v0, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_FULLSCREEN:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    invoke-virtual {p0}, Lcom/inmobi/ads/at;->d()Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 373
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetType;->ASSET_TYPE_VIDEO:Lcom/inmobi/ads/NativeV2Asset$AssetType;

    invoke-virtual {p1}, Lcom/inmobi/ads/NativeV2Asset;->a()Lcom/inmobi/ads/NativeV2Asset$AssetType;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 374
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/at;->i:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;->ASSET_ACTION_ON_CLICK_SKIP:Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not valid for asset of type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 378
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeV2Asset;->a()Lcom/inmobi/ads/NativeV2Asset$AssetType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 374
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 397
    :catch_0
    move-exception v0

    .line 398
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/at;->i:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;->ASSET_ACTION_ON_CLICK_SKIP:Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not valid for asset of type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 400
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeV2Asset;->a()Lcom/inmobi/ads/NativeV2Asset$AssetType;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 398
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0

    .line 382
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/inmobi/ads/at;->getVideoContainerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeStrandVideoWrapper;

    .line 383
    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoWrapper;->getVideoView()Lcom/inmobi/ads/NativeStrandVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeStrandVideoView;->f()V

    .line 389
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoWrapper;->getVideoView()Lcom/inmobi/ads/NativeStrandVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->e()V

    .line 390
    invoke-direct {p0, p1}, Lcom/inmobi/ads/at;->c(Lcom/inmobi/ads/NativeV2Asset;)V

    .line 391
    invoke-virtual {p0}, Lcom/inmobi/ads/at;->j()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/at;->d(Landroid/view/View;)V

    goto/16 :goto_0

    .line 394
    :cond_3
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/at;->i:Ljava/lang/String;

    const-string v2, "Invalid action! Skipping video is only supported in fullscreen ads"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 408
    :pswitch_0
    :try_start_2
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetType;->ASSET_TYPE_VIDEO:Lcom/inmobi/ads/NativeV2Asset$AssetType;

    invoke-virtual {p1}, Lcom/inmobi/ads/NativeV2Asset;->a()Lcom/inmobi/ads/NativeV2Asset$AssetType;

    move-result-object v1

    if-eq v0, v1, :cond_4

    .line 409
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/at;->i:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Action "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;->ASSET_ACTION_ON_CLICK_REPLAY:Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not valid for asset of type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 413
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeV2Asset;->a()Lcom/inmobi/ads/NativeV2Asset$AssetType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 409
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 431
    :catch_1
    move-exception v0

    .line 432
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/at;->i:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encountered unexpected error in handling replay action on video: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 434
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 432
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "InMobi"

    const-string v3, "SDK encountered unexpected error in replaying video"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto/16 :goto_0

    .line 417
    :cond_4
    :try_start_3
    invoke-virtual {p0}, Lcom/inmobi/ads/at;->getVideoContainerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeStrandVideoWrapper;

    .line 418
    if-eqz v0, :cond_0

    .line 419
    invoke-virtual {p0}, Lcom/inmobi/ads/at;->j()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 420
    invoke-virtual {p0}, Lcom/inmobi/ads/at;->j()Landroid/view/View;

    move-result-object v2

    .line 421
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 422
    if-eqz v1, :cond_5

    .line 423
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 426
    :cond_5
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoWrapper;->getVideoView()Lcom/inmobi/ads/NativeStrandVideoView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeStrandVideoView;->g()V

    .line 427
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoWrapper;->getVideoView()Lcom/inmobi/ads/NativeStrandVideoView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->start()V

    .line 428
    invoke-virtual {p0, v2}, Lcom/inmobi/ads/at;->e(Landroid/view/View;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 443
    :pswitch_1
    :try_start_4
    invoke-virtual {p0}, Lcom/inmobi/ads/at;->s()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 444
    :catch_2
    move-exception v0

    .line 445
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/at;->i:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encountered unexpected error in handling exit action on video: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 447
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 445
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "InMobi"

    const-string v3, "SDK encountered unexpected error in exiting video"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto/16 :goto_0

    .line 455
    :pswitch_2
    :try_start_5
    sget-object v0, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_INLINE:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    invoke-virtual {p0}, Lcom/inmobi/ads/at;->d()Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    move-result-object v1

    if-ne v0, v1, :cond_6

    .line 456
    invoke-virtual {p0}, Lcom/inmobi/ads/at;->getVideoContainerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeStrandVideoWrapper;

    .line 457
    if-eqz v0, :cond_0

    .line 458
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoWrapper;->getVideoView()Lcom/inmobi/ads/NativeStrandVideoView;

    move-result-object v1

    .line 459
    invoke-virtual {v1}, Lcom/inmobi/ads/NativeStrandVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/av;

    .line 460
    invoke-virtual {v1}, Lcom/inmobi/ads/NativeStrandVideoView;->getState()I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    .line 462
    :try_start_6
    invoke-virtual {p0, v0, v1}, Lcom/inmobi/ads/at;->b(Lcom/inmobi/ads/av;Lcom/inmobi/ads/NativeStrandVideoView;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_0

    .line 463
    :catch_3
    move-exception v0

    .line 464
    :try_start_7
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/at;->i:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDK encountered unexpected error in handling the onVideoRequestedFullScreen event; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 466
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 464
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    goto/16 :goto_0

    .line 475
    :catch_4
    move-exception v0

    .line 476
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/at;->i:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encountered unexpected error in handling fullscreen action on video: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 478
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 476
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "InMobi"

    const-string v3, "SDK encountered unexpected error in expanding video to fullscreen"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto/16 :goto_0

    .line 472
    :cond_6
    :try_start_8
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/at;->i:Ljava/lang/String;

    const-string v2, "Invalid action! Online inline videos can be expanded to fullscreen!"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_0

    .line 368
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method b(Lcom/inmobi/ads/av;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 604
    invoke-virtual {p0}, Lcom/inmobi/ads/at;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 645
    :cond_0
    :goto_0
    return-void

    .line 605
    :cond_1
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/at;->i:Ljava/lang/String;

    const-string v2, "onVideoPlayed"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    sget-object v0, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_INLINE:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    invoke-virtual {p0}, Lcom/inmobi/ads/at;->d()Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 608
    invoke-virtual {p1}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "currentMediaVolume"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    .line 609
    invoke-virtual {p1}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "lastMediaVolume"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 610
    invoke-virtual {p0, p1}, Lcom/inmobi/ads/at;->f(Lcom/inmobi/ads/av;)V

    .line 612
    :cond_2
    invoke-virtual {p1}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "currentMediaVolume"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3

    .line 613
    invoke-virtual {p1}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "lastMediaVolume"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_3

    .line 614
    invoke-virtual {p0, p1}, Lcom/inmobi/ads/at;->e(Lcom/inmobi/ads/av;)V

    .line 618
    :cond_3
    invoke-virtual {p1}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "didStartPlaying"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    .line 619
    invoke-virtual {p1}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "didStartPlaying"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    invoke-virtual {p0}, Lcom/inmobi/ads/at;->getViewableAd()Lcom/inmobi/ads/ViewableAd;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_PLAYED:Lcom/inmobi/ads/ViewableAd$AdEvent;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V

    .line 621
    sget-object v0, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_INLINE:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    invoke-virtual {p0}, Lcom/inmobi/ads/at;->d()Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 622
    sget-object v0, Lcom/inmobi/ads/ah$a;->h:Lcom/inmobi/ads/ah$a;

    invoke-direct {p0, p1}, Lcom/inmobi/ads/at;->i(Lcom/inmobi/ads/av;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/ads/av;->a(Lcom/inmobi/ads/ah$a;Ljava/util/Map;)V

    .line 625
    :cond_4
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 627
    const-string v1, "isCached"

    const-string v2, "1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    const-string v1, "ads"

    const-string v2, "VideoPlayed"

    invoke-direct {p0, v1, v2, v0}, Lcom/inmobi/ads/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 637
    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/inmobi/ads/at;->d()Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_INLINE:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    if-ne v0, v1, :cond_0

    .line 638
    invoke-virtual {p1}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "didImpressionFire"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 639
    invoke-virtual {p1}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "didImpressionFire"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    sget-object v0, Lcom/inmobi/ads/ah$a;->d:Lcom/inmobi/ads/ah$a;

    invoke-direct {p0, p1}, Lcom/inmobi/ads/at;->i(Lcom/inmobi/ads/av;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/ads/av;->a(Lcom/inmobi/ads/ah$a;Ljava/util/Map;)V

    .line 641
    sget-object v0, Lcom/inmobi/ads/ah$a;->m:Lcom/inmobi/ads/ah$a;

    invoke-direct {p0, p1}, Lcom/inmobi/ads/at;->i(Lcom/inmobi/ads/av;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/ads/av;->a(Lcom/inmobi/ads/ah$a;Ljava/util/Map;)V

    .line 642
    iget-object v0, p0, Lcom/inmobi/ads/at;->a:Lcom/inmobi/ads/NativeV2DataModel;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeV2DataModel;->b()Lcom/inmobi/ads/aj;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/inmobi/ads/at;->i(Lcom/inmobi/ads/av;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/ads/at;->a(Lcom/inmobi/ads/NativeV2Asset;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 629
    :catch_0
    move-exception v0

    .line 630
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/at;->i:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in submitting telemetry event : ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 631
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 630
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method b(Lcom/inmobi/ads/av;Lcom/inmobi/ads/NativeStrandVideoView;)V
    .locals 3
    .param p1    # Lcom/inmobi/ads/av;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/inmobi/ads/NativeStrandVideoView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 551
    invoke-virtual {p0}, Lcom/inmobi/ads/at;->c()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/ads/at;->e()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 563
    :cond_0
    :goto_0
    return-void

    .line 552
    :cond_1
    invoke-virtual {p1}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "didRequestFullScreen"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 553
    invoke-virtual {p1}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "didRequestFullScreen"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 554
    invoke-virtual {p1}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "seekPosition"

    invoke-virtual {p2}, Lcom/inmobi/ads/NativeStrandVideoView;->getCurrentPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    invoke-virtual {p1}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "lastMediaVolume"

    invoke-virtual {p2}, Lcom/inmobi/ads/NativeStrandVideoView;->getVolume()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeStrandVideoView;->getMediaPlayer()Lcom/inmobi/ads/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/af;->pause()V

    .line 561
    invoke-virtual {p0}, Lcom/inmobi/ads/at;->p()V

    goto :goto_0
.end method

.method c(Lcom/inmobi/ads/av;)V
    .locals 2

    .prologue
    .line 648
    invoke-virtual {p0}, Lcom/inmobi/ads/at;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    :goto_0
    return-void

    .line 649
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/ads/at;->j()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/at;->b(Landroid/view/View;)V

    .line 650
    sget-object v0, Lcom/inmobi/ads/ah$a;->r:Lcom/inmobi/ads/ah$a;

    invoke-direct {p0, p1}, Lcom/inmobi/ads/at;->i(Lcom/inmobi/ads/av;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/ads/av;->a(Lcom/inmobi/ads/ah$a;Ljava/util/Map;)V

    .line 654
    iget-object v0, p0, Lcom/inmobi/ads/at;->d:Lcom/inmobi/ads/ViewableAd;

    sget-object v1, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_PAUSED:Lcom/inmobi/ads/ViewableAd$AdEvent;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V

    goto :goto_0
.end method

.method public d(Lcom/inmobi/ads/ai;)V
    .locals 0
    .param p1    # Lcom/inmobi/ads/ai;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 294
    iput-object p1, p0, Lcom/inmobi/ads/at;->k:Lcom/inmobi/ads/ai;

    .line 295
    return-void
.end method

.method d(Lcom/inmobi/ads/av;)V
    .locals 2

    .prologue
    .line 658
    invoke-virtual {p0}, Lcom/inmobi/ads/at;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 665
    :goto_0
    return-void

    .line 659
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/ads/at;->j()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/at;->c(Landroid/view/View;)V

    .line 660
    sget-object v0, Lcom/inmobi/ads/ah$a;->s:Lcom/inmobi/ads/ah$a;

    invoke-direct {p0, p1}, Lcom/inmobi/ads/at;->i(Lcom/inmobi/ads/av;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/ads/av;->a(Lcom/inmobi/ads/ah$a;Ljava/util/Map;)V

    .line 664
    iget-object v0, p0, Lcom/inmobi/ads/at;->d:Lcom/inmobi/ads/ViewableAd;

    sget-object v1, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_RESUMED:Lcom/inmobi/ads/ViewableAd$AdEvent;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/inmobi/ads/at;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    :goto_0
    return-void

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/ads/at;->getVideoContainerView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 228
    invoke-virtual {p0}, Lcom/inmobi/ads/at;->getVideoContainerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeStrandVideoWrapper;

    .line 229
    if-eqz v0, :cond_1

    .line 230
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoWrapper;->getVideoView()Lcom/inmobi/ads/NativeStrandVideoView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/NativeStrandVideoView;->a(Z)V

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/at;->k:Lcom/inmobi/ads/ai;

    if-eqz v0, :cond_2

    .line 234
    iget-object v0, p0, Lcom/inmobi/ads/at;->k:Lcom/inmobi/ads/ai;

    invoke-virtual {v0}, Lcom/inmobi/ads/ai;->destroy()V

    .line 235
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/ads/at;->k:Lcom/inmobi/ads/ai;

    .line 237
    :cond_2
    invoke-super {p0}, Lcom/inmobi/ads/ai;->destroy()V

    goto :goto_0
.end method

.method e(Lcom/inmobi/ads/av;)V
    .locals 3

    .prologue
    .line 668
    invoke-virtual {p0}, Lcom/inmobi/ads/at;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 675
    :goto_0
    return-void

    .line 669
    :cond_0
    invoke-virtual {p1}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "lastMediaVolume"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    sget-object v0, Lcom/inmobi/ads/ah$a;->p:Lcom/inmobi/ads/ah$a;

    invoke-direct {p0, p1}, Lcom/inmobi/ads/at;->i(Lcom/inmobi/ads/av;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/ads/av;->a(Lcom/inmobi/ads/ah$a;Ljava/util/Map;)V

    .line 674
    iget-object v0, p0, Lcom/inmobi/ads/at;->d:Lcom/inmobi/ads/ViewableAd;

    sget-object v1, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_MUTE:Lcom/inmobi/ads/ViewableAd$AdEvent;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V

    goto :goto_0
.end method

.method f(Lcom/inmobi/ads/av;)V
    .locals 3

    .prologue
    .line 678
    invoke-virtual {p0}, Lcom/inmobi/ads/at;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 685
    :goto_0
    return-void

    .line 679
    :cond_0
    invoke-virtual {p1}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "lastMediaVolume"

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    sget-object v0, Lcom/inmobi/ads/ah$a;->q:Lcom/inmobi/ads/ah$a;

    invoke-direct {p0, p1}, Lcom/inmobi/ads/at;->i(Lcom/inmobi/ads/av;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/inmobi/ads/av;->a(Lcom/inmobi/ads/ah$a;Ljava/util/Map;)V

    .line 684
    iget-object v0, p0, Lcom/inmobi/ads/at;->d:Lcom/inmobi/ads/ViewableAd;

    sget-object v1, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_UNMUTE:Lcom/inmobi/ads/ViewableAd$AdEvent;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V

    goto :goto_0
.end method

.method g(Lcom/inmobi/ads/av;)V
    .locals 3

    .prologue
    .line 692
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/at;->i:Ljava/lang/String;

    const-string v2, "Video completed; rewards, if any, will be unlocked and end-card displayed"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    invoke-virtual {p1}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "didSignalVideoCompleted"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 697
    if-eqz v0, :cond_1

    .line 698
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/at;->i:Ljava/lang/String;

    const-string v2, "Ignoring callback onAdRewardsUnlocked(), as it is only fired after first time video is played."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    :goto_0
    const-string v0, "ads"

    const-string v1, "EndCardRequested"

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/inmobi/ads/at;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 705
    sget-object v0, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_FULLSCREEN:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    invoke-virtual {p0}, Lcom/inmobi/ads/at;->d()Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 706
    invoke-direct {p0, p1}, Lcom/inmobi/ads/at;->c(Lcom/inmobi/ads/NativeV2Asset;)V

    .line 708
    :cond_0
    return-void

    .line 701
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/ads/at;->r()V

    goto :goto_0
.end method

.method public getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 343
    iget-object v0, p0, Lcom/inmobi/ads/at;->l:Lcom/inmobi/ads/AdContainer$a;

    return-object v0
.end method

.method public getVideoContainerView()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 349
    iget-object v0, p0, Lcom/inmobi/ads/at;->j:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/at;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    goto :goto_0
.end method

.method public getViewableAd()Lcom/inmobi/ads/ViewableAd;
    .locals 5

    .prologue
    .line 299
    invoke-virtual {p0}, Lcom/inmobi/ads/at;->l()Landroid/app/Activity;

    move-result-object v1

    .line 300
    iget-object v0, p0, Lcom/inmobi/ads/at;->d:Lcom/inmobi/ads/ViewableAd;

    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 301
    new-instance v0, Lcom/inmobi/ads/v;

    new-instance v2, Lcom/inmobi/ads/bp;

    invoke-direct {v2, p0}, Lcom/inmobi/ads/bp;-><init>(Lcom/inmobi/ads/at;)V

    invoke-direct {v0, v1, p0, v2}, Lcom/inmobi/ads/v;-><init>(Landroid/app/Activity;Lcom/inmobi/ads/at;Lcom/inmobi/ads/ViewableAd;)V

    iput-object v0, p0, Lcom/inmobi/ads/at;->d:Lcom/inmobi/ads/ViewableAd;

    .line 304
    iget-object v0, p0, Lcom/inmobi/ads/at;->c:Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 306
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/at;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/bd;

    .line 307
    sget-object v3, Lcom/inmobi/ads/at$3;->a:[I

    iget-object v4, v0, Lcom/inmobi/ads/bd;->a:Lcom/inmobi/ads/AdUnit$AdTrackerType;

    invoke-virtual {v4}, Lcom/inmobi/ads/AdUnit$AdTrackerType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 309
    :pswitch_0
    iget-object v0, v0, Lcom/inmobi/ads/bd;->b:Ljava/util/Map;

    const-string v3, "avidAdSession"

    .line 310
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/integralads/avid/library/inmobi/session/e;

    .line 311
    if-eqz v0, :cond_1

    .line 312
    new-instance v3, Lcom/inmobi/ads/r;

    iget-object v4, p0, Lcom/inmobi/ads/at;->d:Lcom/inmobi/ads/ViewableAd;

    invoke-direct {v3, v1, v4, p0, v0}, Lcom/inmobi/ads/r;-><init>(Landroid/app/Activity;Lcom/inmobi/ads/ViewableAd;Lcom/inmobi/ads/at;Lcom/integralads/avid/library/inmobi/session/e;)V

    iput-object v3, p0, Lcom/inmobi/ads/at;->d:Lcom/inmobi/ads/ViewableAd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 329
    :catch_0
    move-exception v0

    .line 330
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/at;->i:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occurred while creating the video viewable ad : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 332
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 330
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 337
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/at;->d:Lcom/inmobi/ads/ViewableAd;

    return-object v0

    .line 315
    :cond_1
    :try_start_1
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/at;->i:Ljava/lang/String;

    const-string v4, "Did not find a AVID video ad session; the IAS decorator will not be applied."

    invoke-static {v0, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 321
    :pswitch_1
    new-instance v3, Lcom/inmobi/ads/z;

    iget-object v4, p0, Lcom/inmobi/ads/at;->d:Lcom/inmobi/ads/ViewableAd;

    iget-object v0, v0, Lcom/inmobi/ads/bd;->b:Ljava/util/Map;

    invoke-direct {v3, v1, v4, p0, v0}, Lcom/inmobi/ads/z;-><init>(Landroid/app/Activity;Lcom/inmobi/ads/ViewableAd;Lcom/inmobi/ads/at;Ljava/util/Map;)V

    iput-object v3, p0, Lcom/inmobi/ads/at;->d:Lcom/inmobi/ads/ViewableAd;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 307
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method q()Z
    .locals 1

    .prologue
    .line 358
    iget-boolean v0, p0, Lcom/inmobi/ads/at;->h:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method v()Lcom/inmobi/ads/at$b;
    .locals 1

    .prologue
    .line 353
    iget-object v0, p0, Lcom/inmobi/ads/at;->m:Lcom/inmobi/ads/at$b;

    return-object v0
.end method

.method w()V
    .locals 2

    .prologue
    .line 600
    iget-object v0, p0, Lcom/inmobi/ads/at;->d:Lcom/inmobi/ads/ViewableAd;

    sget-object v1, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_PREPARED:Lcom/inmobi/ads/ViewableAd$AdEvent;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V

    .line 601
    return-void
.end method

.method x()Ljava/lang/String;
    .locals 5
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    const v4, 0x7fffffff

    .line 811
    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    .line 812
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 813
    const/4 v0, 0x0

    .line 814
    :goto_0
    if-nez v0, :cond_0

    .line 815
    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v0

    and-int/2addr v0, v4

    rem-int/lit8 v0, v0, 0xa

    goto :goto_0

    .line 817
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 818
    const/4 v0, 0x1

    :goto_1
    const/16 v3, 0x8

    if-ge v0, v3, :cond_1

    .line 819
    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v3

    and-int/2addr v3, v4

    rem-int/lit8 v3, v3, 0xa

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 818
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 821
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method y()V
    .locals 1

    .prologue
    .line 836
    new-instance v0, Lcom/inmobi/ads/at$a;

    invoke-direct {v0, p0, p0}, Lcom/inmobi/ads/at$a;-><init>(Lcom/inmobi/ads/at;Lcom/inmobi/ads/at;)V

    invoke-virtual {v0}, Lcom/inmobi/ads/at$a;->start()V

    .line 837
    return-void
.end method
