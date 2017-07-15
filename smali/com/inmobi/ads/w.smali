.class Lcom/inmobi/ads/w;
.super Lcom/inmobi/ads/AdUnit;
.source "InterstitialAdUnit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/w$c;,
        Lcom/inmobi/ads/w$b;,
        Lcom/inmobi/ads/w$a;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;


# instance fields
.field private d:I

.field private e:Z

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/inmobi/ads/w;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/w;->b:Ljava/lang/String;

    .line 47
    const-class v0, Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/w;->c:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(ILandroid/app/Activity;JLcom/inmobi/ads/AdUnit$b;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 106
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/inmobi/ads/AdUnit;-><init>(Landroid/app/Activity;JLcom/inmobi/ads/AdUnit$b;)V

    .line 99
    iput v0, p0, Lcom/inmobi/ads/w;->d:I

    .line 100
    iput-boolean v0, p0, Lcom/inmobi/ads/w;->e:Z

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Lcom/inmobi/ads/w;->f:I

    .line 107
    if-eqz p5, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->r()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(ILandroid/app/Activity;JLcom/inmobi/ads/AdUnit$b;Lcom/inmobi/ads/w$1;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct/range {p0 .. p5}, Lcom/inmobi/ads/w;-><init>(ILandroid/app/Activity;JLcom/inmobi/ads/AdUnit$b;)V

    return-void
.end method

.method private constructor <init>(ILandroid/content/Context;JLcom/inmobi/ads/AdUnit$b;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 115
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/inmobi/ads/AdUnit;-><init>(Landroid/content/Context;JLcom/inmobi/ads/AdUnit$b;)V

    .line 99
    iput v0, p0, Lcom/inmobi/ads/w;->d:I

    .line 100
    iput-boolean v0, p0, Lcom/inmobi/ads/w;->e:Z

    .line 101
    const/4 v0, -0x1

    iput v0, p0, Lcom/inmobi/ads/w;->f:I

    .line 116
    if-eqz p5, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->r()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_0
    return-void
.end method

.method synthetic constructor <init>(ILandroid/content/Context;JLcom/inmobi/ads/AdUnit$b;Lcom/inmobi/ads/w$1;)V
    .locals 1

    .prologue
    .line 44
    invoke-direct/range {p0 .. p5}, Lcom/inmobi/ads/w;-><init>(ILandroid/content/Context;JLcom/inmobi/ads/AdUnit$b;)V

    return-void
.end method

.method private Q()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 196
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->k()Lcom/inmobi/ads/AdUnit$AdMarkupType;

    move-result-object v2

    sget-object v3, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_INM_HTML:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    if-ne v2, v3, :cond_0

    .line 197
    invoke-direct {p0}, Lcom/inmobi/ads/w;->R()V

    .line 210
    :goto_0
    return v0

    .line 201
    :cond_0
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/inmobi/ads/w;->b(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 202
    invoke-direct {p0}, Lcom/inmobi/ads/w;->R()V
    :try_end_0
    .catch Lcom/inmobi/ads/w$b; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/inmobi/ads/w$c; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    move v0, v1

    .line 208
    goto :goto_0

    :cond_1
    move v0, v1

    .line 205
    goto :goto_0

    .line 209
    :catch_1
    move-exception v0

    move v0, v1

    .line 210
    goto :goto_0
.end method

.method private R()V
    .locals 3

    .prologue
    .line 215
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/w;->b:Ljava/lang/String;

    const-string v2, "An ad is ready with the ad unit. Signaling ad load success ..."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->q()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    .line 222
    if-eqz v0, :cond_0

    .line 223
    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/inmobi/ads/AdUnit$b;->a(Lcom/inmobi/ads/AdUnit;Z)V

    .line 224
    invoke-interface {v0, p0}, Lcom/inmobi/ads/AdUnit$b;->a(Lcom/inmobi/ads/AdUnit;)V

    .line 226
    :cond_0
    return-void
.end method

.method private S()V
    .locals 3

    .prologue
    .line 891
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_CREATED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 892
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->r()Ljava/util/Map;

    move-result-object v1

    .line 893
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 894
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/AdUnit$b;

    .line 895
    if-eqz v0, :cond_0

    .line 896
    invoke-interface {v0}, Lcom/inmobi/ads/AdUnit$b;->b()V

    goto :goto_0

    .line 899
    :cond_1
    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 846
    if-eqz p1, :cond_0

    if-nez p0, :cond_1

    .line 853
    :cond_0
    return-object p0

    .line 849
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 850
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/ads/w;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/inmobi/ads/w;->S()V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/w;I)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/inmobi/ads/w;->d(I)V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/w;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inmobi/ads/w$b;,
            Lcom/inmobi/ads/w$c;
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/inmobi/ads/w;->b(Z)Z

    move-result v0

    return v0
.end method

.method private b(Z)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inmobi/ads/w$b;,
            Lcom/inmobi/ads/w$c;
        }
    .end annotation

    .prologue
    .line 866
    if-eqz p1, :cond_0

    .line 867
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->s()Lcom/inmobi/ads/h;

    move-result-object v1

    .line 868
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->b()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/inmobi/ads/w;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/inmobi/ads/w;->f()Ljava/lang/String;

    move-result-object v5

    .line 869
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->p()Lcom/inmobi/ads/c;

    move-result-object v0

    invoke-virtual {p0}, Lcom/inmobi/ads/w;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/inmobi/ads/c;->a(Ljava/lang/String;)Lcom/inmobi/ads/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/c$b;->e()J

    move-result-wide v6

    .line 868
    invoke-virtual/range {v1 .. v7}, Lcom/inmobi/ads/h;->a(JLjava/lang/String;Ljava/lang/String;J)Lcom/inmobi/ads/a;

    move-result-object v0

    .line 876
    :goto_0
    if-nez v0, :cond_1

    .line 877
    new-instance v0, Lcom/inmobi/ads/w$b;

    const-string v1, "No Cached Ad found for AdUnit"

    invoke-direct {v0, p0, v1}, Lcom/inmobi/ads/w$b;-><init>(Lcom/inmobi/ads/w;Ljava/lang/String;)V

    throw v0

    .line 871
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->s()Lcom/inmobi/ads/h;

    move-result-object v0

    .line 872
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->b()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/inmobi/ads/w;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/inmobi/ads/w;->f()Ljava/lang/String;

    move-result-object v4

    .line 873
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->p()Lcom/inmobi/ads/c;

    move-result-object v5

    invoke-virtual {p0}, Lcom/inmobi/ads/w;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/inmobi/ads/c;->a(Ljava/lang/String;)Lcom/inmobi/ads/c$b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/inmobi/ads/c$b;->d()I

    move-result v5

    .line 874
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->p()Lcom/inmobi/ads/c;

    move-result-object v6

    invoke-virtual {p0}, Lcom/inmobi/ads/w;->d()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/inmobi/ads/c;->a(Ljava/lang/String;)Lcom/inmobi/ads/c$b;

    move-result-object v6

    invoke-virtual {v6}, Lcom/inmobi/ads/c$b;->e()J

    move-result-wide v6

    .line 872
    invoke-virtual/range {v0 .. v7}, Lcom/inmobi/ads/h;->a(JLjava/lang/String;Ljava/lang/String;IJ)Lcom/inmobi/ads/a;

    move-result-object v0

    goto :goto_0

    .line 884
    :cond_1
    invoke-virtual {p0, v0}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/a;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 885
    new-instance v0, Lcom/inmobi/ads/w$c;

    const-string v1, "No Cached Asset for AdUnit"

    invoke-direct {v0, p0, v1}, Lcom/inmobi/ads/w$c;-><init>(Lcom/inmobi/ads/w;Ljava/lang/String;)V

    throw v0

    .line 887
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private d(I)V
    .locals 6

    .prologue
    .line 343
    const-string v0, "ads"

    const-string v1, "ShowInt"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/ads/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->s()Lcom/inmobi/ads/h;

    move-result-object v0

    invoke-virtual {p0}, Lcom/inmobi/ads/w;->b()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/inmobi/ads/w;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/inmobi/ads/h;->a(JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 351
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/w;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cache can still serve ads for placement ID ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 352
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->b()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 351
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->N()Z

    move-result v0

    .line 372
    if-nez v0, :cond_5

    .line 373
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_FAILED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 374
    invoke-virtual {p0, p1}, Lcom/inmobi/ads/w;->a(I)Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    .line 375
    if-eqz v0, :cond_1

    .line 376
    invoke-interface {v0}, Lcom/inmobi/ads/AdUnit$b;->b()V

    .line 385
    :cond_1
    :goto_0
    return-void

    .line 354
    :cond_2
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/w;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No more ads for placement ID ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 355
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->b()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") in cache"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 354
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->r()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 359
    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 360
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 361
    if-eq v0, p1, :cond_3

    invoke-virtual {p0}, Lcom/inmobi/ads/w;->r()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 362
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->r()Ljava/util/Map;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/AdUnit$b;

    .line 363
    if-eqz v0, :cond_4

    .line 364
    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Lcom/inmobi/ads/AdUnit$b;->a(Lcom/inmobi/ads/AdUnit;Z)V

    .line 366
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 379
    :cond_5
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_RENDERED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 380
    invoke-virtual {p0, p1}, Lcom/inmobi/ads/w;->a(I)Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    .line 381
    if-eqz v0, :cond_1

    .line 382
    invoke-interface {v0}, Lcom/inmobi/ads/AdUnit$b;->c()V

    goto :goto_0
.end method


# virtual methods
.method protected A()I
    .locals 2

    .prologue
    .line 177
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_READY:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/w;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 178
    invoke-direct {p0}, Lcom/inmobi/ads/w;->Q()Z

    move-result v0

    .line 179
    if-eqz v0, :cond_0

    .line 180
    invoke-super {p0}, Lcom/inmobi/ads/AdUnit;->A()I

    move-result v0

    .line 185
    :goto_0
    return v0

    .line 182
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 185
    :cond_1
    invoke-super {p0}, Lcom/inmobi/ads/AdUnit;->A()I

    move-result v0

    goto :goto_0
.end method

.method protected B()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 133
    sget-object v2, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADING:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/w;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 134
    new-instance v2, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v3, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REQUEST_PENDING:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v2, v3}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-virtual {p0, v2, v1}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;Z)V

    .line 135
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/w;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "An ad load is already in progress. Please wait for the load to complete before requesting for another ad for placement id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 138
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->b()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 135
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_0
    :goto_0
    return v0

    .line 142
    :cond_1
    sget-object v2, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ACTIVE:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/w;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v3

    if-eq v2, v3, :cond_2

    sget-object v2, Lcom/inmobi/ads/AdUnit$AdState;->STATE_RENDERED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/w;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v3

    if-ne v2, v3, :cond_3

    .line 143
    :cond_2
    new-instance v2, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v3, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->AD_ACTIVE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v2, v3}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-virtual {p0, v2, v1}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;Z)V

    .line 144
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/w;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "An ad is currently being viewed by the user. Please wait for the user to close the ad before requesting for another ad for placement id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 148
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->b()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 144
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 152
    :cond_3
    sget-object v2, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/w;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v3

    if-ne v2, v3, :cond_5

    .line 153
    sget-object v2, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_INM_HTML:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    invoke-virtual {p0}, Lcom/inmobi/ads/w;->k()Lcom/inmobi/ads/AdUnit$AdMarkupType;

    move-result-object v3

    if-ne v2, v3, :cond_4

    .line 154
    new-instance v2, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v3, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REQUEST_PENDING:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v2, v3}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-virtual {p0, v2, v1}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;Z)V

    .line 155
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/w;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "An ad load is already in progress. Please wait for the load to complete before requesting for another ad for placement id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 158
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->b()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 155
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 163
    :cond_4
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->q()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v1

    .line 164
    if-eqz v1, :cond_0

    .line 165
    invoke-interface {v1, p0, v0}, Lcom/inmobi/ads/AdUnit$b;->a(Lcom/inmobi/ads/AdUnit;Z)V

    goto :goto_0

    :cond_5
    move v0, v1

    .line 172
    goto :goto_0
.end method

.method protected F()V
    .locals 1

    .prologue
    .line 270
    invoke-super {p0}, Lcom/inmobi/ads/AdUnit;->F()V

    .line 271
    const/4 v0, -0x1

    iput v0, p0, Lcom/inmobi/ads/w;->f:I

    .line 272
    return-void
.end method

.method public G()V
    .locals 6

    .prologue
    .line 713
    invoke-super {p0}, Lcom/inmobi/ads/AdUnit;->G()V

    .line 714
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADED:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    .line 715
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->I()V

    .line 716
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_READY:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 717
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->L()V

    .line 719
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/w;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully loaded Interstitial ad markup in the WebView for placement id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 721
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->b()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 719
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->D()V

    .line 723
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->L()V

    .line 724
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->q()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    .line 725
    if-eqz v0, :cond_0

    .line 726
    invoke-interface {v0}, Lcom/inmobi/ads/AdUnit$b;->a()V

    .line 727
    invoke-interface {v0, p0}, Lcom/inmobi/ads/AdUnit$b;->a(Lcom/inmobi/ads/AdUnit;)V

    .line 730
    :cond_0
    return-void
.end method

.method public H()V
    .locals 6

    .prologue
    .line 747
    invoke-super {p0}, Lcom/inmobi/ads/AdUnit;->H()V

    .line 749
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADED:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    .line 750
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->I()V

    .line 751
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_FAILED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 753
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/w;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load the Interstitial markup in the WebView for placement id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 755
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->b()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 753
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->q()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    .line 757
    if-eqz v0, :cond_0

    .line 758
    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/inmobi/ads/AdUnit$b;->a(Lcom/inmobi/ads/AdUnit;Z)V

    .line 761
    :cond_0
    return-void
.end method

.method public K()V
    .locals 6

    .prologue
    .line 815
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/w;->b:Ljava/lang/String;

    const-string v2, "Renderview timed out."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    const-string v0, "RenderTimeOut"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/w;->b(Ljava/lang/String;)V

    .line 818
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/w;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/w;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 819
    :cond_0
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_FAILED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 820
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/w;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load the Interstitial markup in the webview due to time out for placement id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/inmobi/ads/w;->b()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 821
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->q()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    .line 822
    if-eqz v0, :cond_1

    .line 823
    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-interface {v0, p0, v1}, Lcom/inmobi/ads/AdUnit$b;->a(Lcom/inmobi/ads/AdUnit;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 826
    :cond_1
    return-void
.end method

.method N()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 412
    :try_start_0
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/w;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ">>> Starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Lcom/inmobi/rendering/InMobiAdActivity;

    .line 413
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to display interstitial ad ..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 412
    invoke-static {v0, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->t()Lcom/inmobi/ads/AdContainer;

    move-result-object v0

    .line 416
    if-eqz v0, :cond_0

    sget-object v3, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_UNKNOWN:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->getMarkupType()Lcom/inmobi/ads/AdUnit$AdMarkupType;

    move-result-object v4

    if-ne v3, v4, :cond_1

    :cond_0
    move v0, v2

    .line 439
    :goto_0
    return v0

    .line 420
    :cond_1
    invoke-static {v0}, Lcom/inmobi/rendering/InMobiAdActivity;->a(Lcom/inmobi/ads/AdContainer;)I

    move-result v0

    .line 421
    new-instance v3, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/inmobi/ads/w;->a()Landroid/content/Context;

    move-result-object v4

    const-class v5, Lcom/inmobi/rendering/InMobiAdActivity;

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 422
    const-string v4, "com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_INDEX"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 423
    const-string v0, "com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_TYPE"

    const/16 v4, 0x66

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 424
    const-string v4, "com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_TYPE"

    sget-object v0, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_INM_HTML:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    .line 425
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->k()Lcom/inmobi/ads/AdUnit$AdMarkupType;

    move-result-object v5

    if-ne v0, v5, :cond_3

    const/16 v0, 0xc8

    .line 424
    :goto_1
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 426
    const-string v0, "com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_IS_FULL_SCREEN"

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 427
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/inmobi/commons/a/a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    .line 429
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/inmobi/ads/w;->a()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/inmobi/ads/w;->f:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 430
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->a()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget v3, p0, Lcom/inmobi/ads/w;->f:I

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/app/Activity;->overridePendingTransition(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    move v0, v1

    .line 432
    goto :goto_0

    .line 425
    :cond_3
    const/16 v0, 0xc9

    goto :goto_1

    .line 433
    :catch_0
    move-exception v0

    .line 434
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-class v3, Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Cannot show ad; SDK encountered an unexpected error"

    invoke-static {v1, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/w;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Encountered unexpected error while showing ad: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 437
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 436
    invoke-static {v1, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    move v0, v2

    .line 439
    goto/16 :goto_0
.end method

.method public O()Z
    .locals 2

    .prologue
    .line 444
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_READY:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method P()V
    .locals 2

    .prologue
    .line 448
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->t()Lcom/inmobi/ads/AdContainer;

    move-result-object v0

    .line 449
    if-nez v0, :cond_0

    .line 453
    :goto_0
    return-void

    .line 451
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/inmobi/ads/w;->e:Z

    .line 452
    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->a()V

    goto :goto_0
.end method

.method public a(III)V
    .locals 4

    .prologue
    .line 388
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 389
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->t()Lcom/inmobi/ads/AdContainer;

    move-result-object v0

    .line 390
    if-nez v0, :cond_1

    .line 408
    :cond_0
    :goto_0
    return-void

    .line 391
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->a()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 393
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    .line 394
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->a()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    .line 396
    iput p2, p0, Lcom/inmobi/ads/w;->f:I

    .line 397
    invoke-interface {v0, p3}, Lcom/inmobi/ads/AdContainer;->setExitAnimation(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    :goto_1
    invoke-virtual {p0, p1}, Lcom/inmobi/ads/w;->c(I)V

    goto :goto_0

    .line 398
    :catch_0
    move-exception v0

    .line 399
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-class v2, Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "The supplied resource ID with show for animations is invalid"

    invoke-static {v1, v2, v3, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 401
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_1

    .line 405
    :cond_2
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/w;->c:Ljava/lang/String;

    const-string v2, "Please ensure that you call show() on the UI thread"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(ILcom/inmobi/ads/AdUnit$b;)V
    .locals 3

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->r()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    return-void
.end method

.method public a(Lcom/inmobi/ads/a;)Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 242
    invoke-super {p0, p1}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/a;)Z

    move-result v1

    .line 243
    if-nez v1, :cond_1

    .line 244
    invoke-virtual {p0, p1}, Lcom/inmobi/ads/w;->b(Lcom/inmobi/ads/a;)V

    .line 260
    :cond_0
    :goto_0
    return v0

    .line 247
    :cond_1
    instance-of v1, p1, Lcom/inmobi/ads/bl;

    if-eqz v1, :cond_2

    .line 248
    check-cast p1, Lcom/inmobi/ads/bl;

    .line 249
    invoke-static {}, Lcom/inmobi/ads/l;->a()Lcom/inmobi/ads/l;

    move-result-object v1

    invoke-virtual {p1}, Lcom/inmobi/ads/bl;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/inmobi/ads/l;->b(Ljava/lang/String;)Lcom/inmobi/ads/b;

    move-result-object v1

    .line 250
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/inmobi/ads/b;->d()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 253
    new-instance v0, Lcom/inmobi/ads/bj;

    invoke-virtual {v1}, Lcom/inmobi/ads/b;->a()Ljava/lang/String;

    move-result-object v1

    .line 254
    invoke-virtual {p1}, Lcom/inmobi/ads/bl;->k()Ljava/lang/String;

    move-result-object v2

    .line 255
    invoke-virtual {p1}, Lcom/inmobi/ads/bl;->l()Ljava/lang/String;

    move-result-object v3

    .line 256
    invoke-virtual {p1}, Lcom/inmobi/ads/bl;->m()Ljava/util/List;

    move-result-object v4

    .line 257
    invoke-virtual {p1}, Lcom/inmobi/ads/bl;->n()Ljava/util/List;

    move-result-object v5

    .line 258
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->p()Lcom/inmobi/ads/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/inmobi/ads/c;->p()Lcom/inmobi/ads/c$g;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/inmobi/ads/bj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/inmobi/ads/c$g;)V

    .line 253
    invoke-virtual {p0, v0}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/bj;)V

    .line 260
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(JLcom/inmobi/ads/a;)V
    .locals 9
    .param p3    # Lcom/inmobi/ads/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 474
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lcom/inmobi/ads/AdUnit;->b(JLcom/inmobi/ads/a;)V

    .line 475
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/w;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Interstitial ad successfully fetched for placement id: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 476
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->b()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 475
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->b()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/inmobi/ads/w;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_1

    .line 479
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->p()Lcom/inmobi/ads/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/c;->m()Lcom/inmobi/ads/c$h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/c$h;->h()Z

    move-result v4

    .line 480
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->g()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/bd;

    .line 481
    if-eqz v4, :cond_0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdTrackerType;->AD_TRACKER_TYPE_IAS:Lcom/inmobi/ads/AdUnit$AdTrackerType;

    iget-object v2, v0, Lcom/inmobi/ads/bd;->a:Lcom/inmobi/ads/AdUnit$AdTrackerType;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-ne v1, v2, :cond_0

    .line 486
    :try_start_1
    new-instance v2, Lcom/integralads/avid/library/inmobi/session/g;

    .line 487
    invoke-static {}, Lcom/inmobi/commons/a/b;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x1

    invoke-direct {v2, v1, v6}, Lcom/integralads/avid/library/inmobi/session/g;-><init>(Ljava/lang/String;Z)V

    .line 490
    iget-object v1, v0, Lcom/inmobi/ads/bd;->b:Ljava/util/Map;

    const-string v6, "creativeType"

    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/AdUnit$AdCreativeType;

    .line 491
    sget-object v6, Lcom/inmobi/ads/w$2;->a:[I

    invoke-virtual {v1}, Lcom/inmobi/ads/AdUnit$AdCreativeType;->ordinal()I

    move-result v1

    aget v1, v6, v1

    packed-switch v1, :pswitch_data_0

    .line 494
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/w;->b:Ljava/lang/String;

    const-string v6, "Unknown creative type; ignoring IAS meta-data"

    invoke-static {v1, v2, v6}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v3

    .line 504
    :goto_1
    if-eqz v2, :cond_3

    .line 505
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->v()Lcom/inmobi/rendering/RenderView;

    move-result-object v6

    .line 506
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->a()Landroid/content/Context;

    move-result-object v1

    .line 507
    instance-of v7, v1, Landroid/app/Activity;

    if-eqz v7, :cond_2

    .line 509
    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v2, v6, v1}, Lcom/integralads/avid/library/inmobi/session/a;->a(Landroid/view/View;Landroid/app/Activity;)V

    .line 516
    :goto_2
    iget-object v1, v0, Lcom/inmobi/ads/bd;->b:Ljava/util/Map;

    const-string v6, "avidAdSession"

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    iget-object v0, v0, Lcom/inmobi/ads/bd;->b:Ljava/util/Map;

    const-string v1, "deferred"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/w;->b:Ljava/lang/String;

    const-string v2, "AVID ad session created and WebView container registered with AVID"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 525
    :catch_0
    move-exception v0

    .line 526
    :try_start_2
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/w;->b:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting up impression tracking for IAS encountered an unexpected error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 528
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 526
    invoke-static {v1, v2, v6}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 551
    :catch_1
    move-exception v0

    .line 552
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/w;->c:Ljava/lang/String;

    const-string v3, "Unable to load ad; SDK encountered an internal error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/w;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handling ad fetch successful encountered an unexpected error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 556
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 554
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 559
    :cond_1
    :goto_3
    return-void

    .line 498
    :pswitch_0
    :try_start_3
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/integralads/avid/library/inmobi/session/c;->a(Landroid/content/Context;Lcom/integralads/avid/library/inmobi/session/g;)Lcom/integralads/avid/library/inmobi/session/d;

    move-result-object v1

    move-object v2, v1

    .line 499
    goto/16 :goto_1

    .line 501
    :pswitch_1
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->a()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/integralads/avid/library/inmobi/session/c;->b(Landroid/content/Context;Lcom/integralads/avid/library/inmobi/session/g;)Lcom/integralads/avid/library/inmobi/session/f;

    move-result-object v1

    move-object v2, v1

    goto/16 :goto_1

    .line 514
    :cond_2
    const/4 v1, 0x0

    invoke-virtual {v2, v6, v1}, Lcom/integralads/avid/library/inmobi/session/a;->a(Landroid/view/View;Landroid/app/Activity;)V

    goto/16 :goto_2

    .line 522
    :cond_3
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/w;->b:Ljava/lang/String;

    const-string v2, "Ignoring IAS meta data for this ad markup"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    .line 534
    :cond_4
    const/4 v0, 0x0

    :try_start_4
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->j()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/inmobi/ads/w;->a(ILjava/lang/String;Ljava/lang/Runnable;Landroid/os/Looper;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 535
    :catch_2
    move-exception v0

    .line 538
    :try_start_5
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->I()V

    .line 539
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->q()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 540
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->q()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v1

    new-instance v2, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v3, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v2, v3}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-interface {v1, p0, v2}, Lcom/inmobi/ads/AdUnit$b;->a(Lcom/inmobi/ads/AdUnit;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 543
    :cond_5
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-class v2, Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unable to load ad; SDK encountered an internal error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/w;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading ad markup into container encountered an unexpected error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 547
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 545
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto/16 :goto_3

    .line 491
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b(JZ)V
    .locals 5

    .prologue
    .line 681
    invoke-super {p0, p1, p2, p3}, Lcom/inmobi/ads/AdUnit;->b(JZ)V

    .line 682
    if-nez p3, :cond_2

    .line 683
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->b()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    .line 684
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_READY:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/w;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 688
    :cond_0
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_CREATED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 689
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->r()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 690
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 691
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/AdUnit$b;

    .line 692
    new-instance v2, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v3, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->AD_NO_LONGER_AVAILABLE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v2, v3}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-interface {v0, p0, v2}, Lcom/inmobi/ads/AdUnit$b;->a(Lcom/inmobi/ads/AdUnit;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    goto :goto_0

    .line 698
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->b()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/w;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 699
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/w;->b:Ljava/lang/String;

    const-string v2, "Setting state to READY"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 700
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_READY:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 701
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->r()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 702
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 703
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/AdUnit$b;

    .line 704
    invoke-interface {v0, p0}, Lcom/inmobi/ads/AdUnit$b;->a(Lcom/inmobi/ads/AdUnit;)V

    goto :goto_1

    .line 709
    :cond_4
    return-void
.end method

.method public b(JZLcom/inmobi/ads/a;J)V
    .locals 15
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 566
    :try_start_0
    invoke-super/range {p0 .. p6}, Lcom/inmobi/ads/AdUnit;->b(JZLcom/inmobi/ads/a;J)V

    .line 567
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->b()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_4

    .line 568
    if-eqz p3, :cond_9

    .line 569
    sget-object v2, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADING:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/w;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v3

    if-ne v2, v3, :cond_4

    .line 570
    sget-object v2, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v2}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 571
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->q()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v11

    .line 572
    move-object/from16 v0, p4

    invoke-super {p0, v0}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/a;)Z

    move-result v2

    .line 573
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->a()Landroid/content/Context;

    move-result-object v10

    .line 574
    if-eqz v2, :cond_8

    .line 575
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->p()Lcom/inmobi/ads/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/ads/c;->m()Lcom/inmobi/ads/c$h;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/ads/c$h;->h()Z

    move-result v12

    .line 576
    move-object/from16 v0, p4

    instance-of v2, v0, Lcom/inmobi/ads/bl;

    if-eqz v2, :cond_2

    check-cast p4, Lcom/inmobi/ads/bl;

    .line 577
    :goto_0
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->g()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/inmobi/ads/bd;

    move-object v9, v0

    .line 578
    if-eqz v12, :cond_0

    sget-object v2, Lcom/inmobi/ads/AdUnit$AdTrackerType;->AD_TRACKER_TYPE_IAS:Lcom/inmobi/ads/AdUnit$AdTrackerType;

    iget-object v3, v9, Lcom/inmobi/ads/bd;->a:Lcom/inmobi/ads/AdUnit$AdTrackerType;

    if-ne v2, v3, :cond_0

    sget-object v2, Lcom/inmobi/ads/AdUnit$AdCreativeType;->AD_CREATIVE_TYPE_VIDEO:Lcom/inmobi/ads/AdUnit$AdCreativeType;

    iget-object v3, v9, Lcom/inmobi/ads/bd;->b:Ljava/util/Map;

    const-string v4, "creativeType"

    .line 580
    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 582
    if-eqz p4, :cond_0

    .line 583
    :try_start_1
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/w;->b:Ljava/lang/String;

    const-string v4, "Processing IAS meta data to bootstrap impression tracking for this ad response"

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    new-instance v2, Lcom/inmobi/ads/bj;

    invoke-virtual/range {p4 .. p4}, Lcom/inmobi/ads/bl;->j()Ljava/lang/String;

    move-result-object v3

    .line 588
    invoke-virtual/range {p4 .. p4}, Lcom/inmobi/ads/bl;->k()Ljava/lang/String;

    move-result-object v4

    .line 589
    invoke-virtual/range {p4 .. p4}, Lcom/inmobi/ads/bl;->l()Ljava/lang/String;

    move-result-object v5

    .line 590
    invoke-virtual/range {p4 .. p4}, Lcom/inmobi/ads/bl;->m()Ljava/util/List;

    move-result-object v6

    .line 591
    invoke-virtual/range {p4 .. p4}, Lcom/inmobi/ads/bl;->n()Ljava/util/List;

    move-result-object v7

    .line 592
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->p()Lcom/inmobi/ads/c;

    move-result-object v8

    invoke-virtual {v8}, Lcom/inmobi/ads/c;->p()Lcom/inmobi/ads/c$g;

    move-result-object v8

    invoke-direct/range {v2 .. v8}, Lcom/inmobi/ads/bj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/inmobi/ads/c$g;)V

    .line 593
    new-instance v3, Lcom/inmobi/ads/NativeV2DataModel;

    .line 594
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->h()Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    move-result-object v4

    new-instance v5, Lorg/json/JSONObject;

    .line 595
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->j()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 596
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->p()Lcom/inmobi/ads/c;

    move-result-object v6

    invoke-virtual {v6}, Lcom/inmobi/ads/c;->p()Lcom/inmobi/ads/c$g;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v2}, Lcom/inmobi/ads/NativeV2DataModel;-><init>(Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;Lorg/json/JSONObject;Lcom/inmobi/ads/c$g;Lcom/inmobi/ads/bj;)V

    .line 603
    sget-object v2, Lcom/inmobi/ads/NativeV2Asset$AssetType;->ASSET_TYPE_VIDEO:Lcom/inmobi/ads/NativeV2Asset$AssetType;

    .line 605
    invoke-virtual {v3, v2}, Lcom/inmobi/ads/NativeV2DataModel;->a(Lcom/inmobi/ads/NativeV2Asset$AssetType;)Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    .line 606
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/ads/av;

    .line 607
    if-eqz v10, :cond_0

    .line 608
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 609
    invoke-virtual {v2}, Lcom/inmobi/ads/av;->f()[Lcom/inmobi/ads/ah;

    move-result-object v4

    array-length v5, v4

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v5, :cond_3

    aget-object v6, v4, v2

    .line 610
    sget-object v7, Lcom/inmobi/ads/ah$a;->v:Lcom/inmobi/ads/ah$a;

    invoke-virtual {v6}, Lcom/inmobi/ads/ah;->c()Lcom/inmobi/ads/ah$a;

    move-result-object v8

    if-ne v7, v8, :cond_1

    .line 611
    invoke-virtual {v6}, Lcom/inmobi/ads/ah;->b()Ljava/lang/String;

    move-result-object v7

    .line 612
    invoke-virtual {v6}, Lcom/inmobi/ads/ah;->d()Ljava/util/Map;

    move-result-object v6

    .line 611
    invoke-static {v7, v6}, Lcom/inmobi/ads/w;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 609
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 576
    :cond_2
    const/16 p4, 0x0

    goto/16 :goto_0

    .line 615
    :cond_3
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 617
    new-instance v2, Lcom/integralads/avid/library/inmobi/session/g;

    .line 618
    invoke-static {}, Lcom/inmobi/commons/a/b;->c()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5}, Lcom/integralads/avid/library/inmobi/session/g;-><init>(Ljava/lang/String;Z)V

    .line 620
    invoke-static {v10, v2}, Lcom/integralads/avid/library/inmobi/session/c;->c(Landroid/content/Context;Lcom/integralads/avid/library/inmobi/session/g;)Lcom/integralads/avid/library/inmobi/session/e;

    move-result-object v4

    .line 624
    instance-of v2, v10, Landroid/app/Activity;

    if-eqz v2, :cond_5

    .line 626
    const/4 v5, 0x0

    move-object v0, v10

    check-cast v0, Landroid/app/Activity;

    move-object v2, v0

    invoke-virtual {v4, v5, v2}, Lcom/integralads/avid/library/inmobi/session/e;->a(Landroid/view/View;Landroid/app/Activity;)V

    .line 631
    :goto_3
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 632
    invoke-virtual {v4, v2}, Lcom/integralads/avid/library/inmobi/session/e;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 641
    :catch_0
    move-exception v2

    .line 642
    :try_start_2
    sget-object v3, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v4, Lcom/inmobi/ads/w;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting up impression tracking for IAS encountered an unexpected error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 644
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 642
    invoke-static {v3, v4, v5}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v3

    new-instance v4, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v4, v2}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 670
    :catch_1
    move-exception v2

    .line 671
    sget-object v3, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-class v4, Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Unable to load ad; SDK encountered an internal error"

    invoke-static {v3, v4, v5}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    sget-object v3, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v4, Lcom/inmobi/ads/w;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Handling ad availability change event encountered an unexpected error: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 675
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 673
    invoke-static {v3, v4, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    :cond_4
    :goto_5
    return-void

    .line 628
    :cond_5
    const/4 v2, 0x0

    const/4 v5, 0x0

    :try_start_3
    invoke-virtual {v4, v2, v5}, Lcom/integralads/avid/library/inmobi/session/e;->a(Landroid/view/View;Landroid/app/Activity;)V

    goto :goto_3

    .line 635
    :cond_6
    iget-object v2, v9, Lcom/inmobi/ads/bd;->b:Ljava/util/Map;

    const-string v3, "avidAdSession"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 636
    iget-object v2, v9, Lcom/inmobi/ads/bd;->b:Ljava/util/Map;

    const-string v3, "deferred"

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/w;->b:Ljava/lang/String;

    const-string v4, "AVID video ad session created and JavaScript resources injected"

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_1

    .line 650
    :cond_7
    if-eqz v11, :cond_4

    .line 651
    const/4 v2, 0x1

    :try_start_4
    invoke-interface {v11, p0, v2}, Lcom/inmobi/ads/AdUnit$b;->a(Lcom/inmobi/ads/AdUnit;Z)V

    goto :goto_5

    .line 654
    :cond_8
    if-eqz v11, :cond_4

    .line 655
    const/4 v2, 0x0

    invoke-interface {v11, p0, v2}, Lcom/inmobi/ads/AdUnit$b;->a(Lcom/inmobi/ads/AdUnit;Z)V

    goto :goto_5

    .line 660
    :cond_9
    sget-object v2, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/w;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v3

    if-eq v2, v3, :cond_a

    sget-object v2, Lcom/inmobi/ads/AdUnit$AdState;->STATE_READY:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/w;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v3

    if-eq v2, v3, :cond_a

    sget-object v2, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    .line 661
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v3

    if-ne v2, v3, :cond_4

    .line 662
    :cond_a
    sget-object v2, Lcom/inmobi/ads/AdUnit$AdState;->STATE_CREATED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v2}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 663
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->q()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v2

    .line 664
    if-eqz v2, :cond_4

    .line 665
    const/4 v3, 0x0

    invoke-interface {v2, p0, v3}, Lcom/inmobi/ads/AdUnit$b;->a(Lcom/inmobi/ads/AdUnit;Z)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_5
.end method

.method protected b(Lcom/inmobi/ads/a;)V
    .locals 1

    .prologue
    .line 265
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->s()Lcom/inmobi/ads/h;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/h;->a(Lcom/inmobi/ads/a;)V

    .line 266
    return-void
.end method

.method public c(I)V
    .locals 4

    .prologue
    .line 275
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_5

    .line 276
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->a()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_1

    .line 277
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-class v1, Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Showing an ad requires an Activity context. Please ensure that you supplied an Activity to create your interstitial ad"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->O()Z

    move-result v0

    if-nez v0, :cond_3

    .line 285
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/w;->b:Ljava/lang/String;

    const-string v2, "Ad Load is not complete. Please wait for the Ad to be in a ready state before calling show."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    const-string v0, "ShowIntBeforeReady"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/w;->c(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->r()Ljava/util/Map;

    move-result-object v1

    .line 289
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 290
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/AdUnit$b;

    .line 291
    if-eqz v0, :cond_2

    .line 292
    invoke-interface {v0}, Lcom/inmobi/ads/AdUnit$b;->b()V

    goto :goto_1

    .line 297
    :cond_3
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_INM_HTML:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    invoke-virtual {p0}, Lcom/inmobi/ads/w;->k()Lcom/inmobi/ads/AdUnit$AdMarkupType;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 299
    invoke-direct {p0, p1}, Lcom/inmobi/ads/w;->d(I)V

    goto :goto_0

    .line 301
    :cond_4
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/w;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Show requested by client ID ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/inmobi/ads/w$1;

    invoke-direct {v1, p0, p1}, Lcom/inmobi/ads/w$1;-><init>(Lcom/inmobi/ads/w;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 333
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 336
    :cond_5
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-class v1, Lcom/inmobi/ads/InMobiInterstitial;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Please ensure that you call show() on the UI thread"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public c(Lcom/inmobi/rendering/RenderView;)V
    .locals 2

    .prologue
    .line 734
    invoke-super {p0, p1}, Lcom/inmobi/ads/AdUnit;->c(Lcom/inmobi/rendering/RenderView;)V

    .line 736
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    .line 737
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 738
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->q()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    .line 739
    if-eqz v0, :cond_0

    .line 740
    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/inmobi/ads/AdUnit$b;->a(Lcom/inmobi/ads/AdUnit;Z)V

    .line 743
    :cond_0
    return-void
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 457
    const-string v0, "int"

    return-object v0
.end method

.method protected f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 462
    const/4 v0, 0x0

    return-object v0
.end method

.method public declared-synchronized f(Lcom/inmobi/rendering/RenderView;)V
    .locals 6

    .prologue
    .line 765
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/inmobi/ads/AdUnit;->f(Lcom/inmobi/rendering/RenderView;)V

    .line 769
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_RENDERED:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_3

    .line 770
    iget v0, p0, Lcom/inmobi/ads/w;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/inmobi/ads/w;->d:I

    .line 771
    iget v0, p0, Lcom/inmobi/ads/w;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 772
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/w;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully displayed Interstitial for placement id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 773
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->b()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 772
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->r()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 775
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 776
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/AdUnit$b;

    .line 777
    invoke-interface {v0}, Lcom/inmobi/ads/AdUnit$b;->d()V

    .line 778
    const-string v0, "ads"

    const-string v2, "AdRendered"

    invoke-virtual {p0, v0, v2}, Lcom/inmobi/ads/w;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 765
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 782
    :cond_1
    :try_start_1
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ACTIVE:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/AdUnit$AdState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 787
    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    .line 784
    :cond_3
    :try_start_2
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ACTIVE:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_2

    .line 785
    iget v0, p0, Lcom/inmobi/ads/w;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/inmobi/ads/w;->d:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public declared-synchronized g(Lcom/inmobi/rendering/RenderView;)V
    .locals 6

    .prologue
    .line 791
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Lcom/inmobi/ads/AdUnit;->g(Lcom/inmobi/rendering/RenderView;)V

    .line 793
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_ACTIVE:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_1

    .line 794
    iget v0, p0, Lcom/inmobi/ads/w;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/inmobi/ads/w;->d:I

    .line 795
    iget v0, p0, Lcom/inmobi/ads/w;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 796
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_RENDERED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/w;->a(Lcom/inmobi/ads/AdUnit$AdState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 811
    :cond_0
    monitor-exit p0

    return-void

    .line 798
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_RENDERED:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    .line 799
    iget v0, p0, Lcom/inmobi/ads/w;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/inmobi/ads/w;->d:I

    .line 800
    const-string v0, "ads"

    const-string v1, "IntClosed"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/ads/w;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->F()V

    .line 802
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/w;->c:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interstitial ad dismissed for placement id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 803
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->b()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 802
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    invoke-virtual {p0}, Lcom/inmobi/ads/w;->r()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 805
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 806
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/AdUnit$b;

    .line 807
    invoke-interface {v0}, Lcom/inmobi/ads/AdUnit$b;->e()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 791
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected h()Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;
    .locals 1

    .prologue
    .line 467
    sget-object v0, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_FULLSCREEN:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    return-object v0
.end method

.method protected i()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 234
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 236
    const-string v2, "preload-request"

    invoke-virtual {p0}, Lcom/inmobi/ads/w;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 237
    return-object v1

    .line 236
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected v()Lcom/inmobi/rendering/RenderView;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 124
    invoke-super {p0}, Lcom/inmobi/ads/AdUnit;->v()Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    .line 125
    iget-boolean v1, p0, Lcom/inmobi/ads/w;->e:Z

    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->a()V

    .line 128
    :cond_0
    return-object v0
.end method
