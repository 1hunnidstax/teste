.class public abstract Lcom/inmobi/ads/AdUnit;
.super Ljava/lang/Object;
.source "AdUnit.java"

# interfaces
.implements Lcom/inmobi/ads/h$a;
.implements Lcom/inmobi/commons/core/configs/b$b;
.implements Lcom/inmobi/rendering/RenderView$a;


# annotations
.annotation build Landroid/support/annotation/UiThread;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/AdUnit$c;,
        Lcom/inmobi/ads/AdUnit$d;,
        Lcom/inmobi/ads/AdUnit$a;,
        Lcom/inmobi/ads/AdUnit$AdCreativeType;,
        Lcom/inmobi/ads/AdUnit$AdTrackerType;,
        Lcom/inmobi/ads/AdUnit$AdMarkupType;,
        Lcom/inmobi/ads/AdUnit$AdState;,
        Lcom/inmobi/ads/AdUnit$b;
    }
.end annotation


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private A:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/ads/AdUnit$b;",
            ">;>;"
        }
    .end annotation
.end field

.field protected a:J

.field private c:Lcom/inmobi/ads/AdUnit$AdState;

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private f:J

.field private g:Ljava/lang/String;

.field private h:Ljava/util/Map;
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

.field private i:Lcom/inmobi/ads/c;

.field private j:Ljava/lang/String;

.field private k:Lcom/inmobi/ads/h;

.field private l:Lcom/inmobi/ads/bj;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Lcom/inmobi/ads/AdUnit$AdMarkupType;

.field private p:J

.field private q:Z

.field private r:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/ads/AdUnit$b;",
            ">;"
        }
    .end annotation
.end field

.field private s:Lcom/inmobi/rendering/RenderView;

.field private t:Lcom/inmobi/ads/ba;

.field private u:J

.field private v:Lcom/inmobi/ads/ai;

.field private w:Lcom/inmobi/ads/AdUnit$a;

.field private x:Ljava/util/concurrent/ExecutorService;

.field private y:Ljava/lang/Thread;

.field private z:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/inmobi/ads/bd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 140
    const-class v0, Lcom/inmobi/ads/AdUnit;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/AdUnit;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;JLcom/inmobi/ads/AdUnit$b;)V
    .locals 4

    .prologue
    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/ads/AdUnit;->q:Z

    .line 172
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/ads/AdUnit;->a:J

    .line 187
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->A:Ljava/util/concurrent/ConcurrentHashMap;

    .line 206
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->d:Ljava/lang/ref/WeakReference;

    .line 207
    iput-wide p2, p0, Lcom/inmobi/ads/AdUnit;->f:J

    .line 208
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->r:Ljava/lang/ref/WeakReference;

    .line 209
    invoke-direct {p0}, Lcom/inmobi/ads/AdUnit;->N()V

    .line 210
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_CREATED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 211
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;JLcom/inmobi/ads/AdUnit$b;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/ads/AdUnit;->q:Z

    .line 172
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/ads/AdUnit;->a:J

    .line 187
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x8

    const v2, 0x3f666666    # 0.9f

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->A:Ljava/util/concurrent/ConcurrentHashMap;

    .line 198
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->e:Ljava/lang/ref/WeakReference;

    .line 199
    iput-wide p2, p0, Lcom/inmobi/ads/AdUnit;->f:J

    .line 200
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->r:Ljava/lang/ref/WeakReference;

    .line 201
    invoke-direct {p0}, Lcom/inmobi/ads/AdUnit;->N()V

    .line 202
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_CREATED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 203
    return-void
.end method

.method static synthetic M()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/inmobi/ads/AdUnit;->b:Ljava/lang/String;

    return-object v0
.end method

.method private N()V
    .locals 3

    .prologue
    .line 315
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_UNKNOWN:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->o:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    .line 316
    new-instance v0, Lcom/inmobi/ads/h;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/h;-><init>(Lcom/inmobi/ads/h$a;)V

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->k:Lcom/inmobi/ads/h;

    .line 319
    new-instance v0, Lcom/inmobi/ads/c;

    invoke-direct {v0}, Lcom/inmobi/ads/c;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->i:Lcom/inmobi/ads/c;

    .line 320
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->a()Lcom/inmobi/commons/core/configs/b;

    move-result-object v0

    new-instance v1, Lcom/inmobi/commons/core/configs/f;

    invoke-direct {v1}, Lcom/inmobi/commons/core/configs/f;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/configs/b;->a(Lcom/inmobi/commons/core/configs/a;Lcom/inmobi/commons/core/configs/b$b;)V

    .line 321
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->a()Lcom/inmobi/commons/core/configs/b;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->i:Lcom/inmobi/ads/c;

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/configs/b;->a(Lcom/inmobi/commons/core/configs/a;Lcom/inmobi/commons/core/configs/b$b;)V

    .line 323
    new-instance v0, Lcom/inmobi/ads/ba;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/ba;-><init>(Lcom/inmobi/ads/AdUnit;)V

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->t:Lcom/inmobi/ads/ba;

    .line 324
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->z:Ljava/util/Set;

    .line 326
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->x:Ljava/util/concurrent/ExecutorService;

    .line 327
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->z()V

    .line 330
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->i:Lcom/inmobi/ads/c;

    .line 331
    invoke-virtual {v1}, Lcom/inmobi/ads/c;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/ads/AdUnit;->i:Lcom/inmobi/ads/c;

    invoke-virtual {v2}, Lcom/inmobi/ads/c;->n()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 332
    return-void
.end method

.method private O()Lcom/inmobi/ads/i;
    .locals 4

    .prologue
    .line 959
    new-instance v0, Lcom/inmobi/ads/i;

    invoke-direct {v0}, Lcom/inmobi/ads/i;-><init>()V

    .line 960
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/i;->b(Ljava/lang/String;)V

    .line 961
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->h:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/i;->a(Ljava/util/Map;)V

    .line 962
    iget-wide v2, p0, Lcom/inmobi/ads/AdUnit;->f:J

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/ads/i;->a(J)V

    .line 963
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/i;->c(Ljava/lang/String;)V

    .line 964
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->p()Lcom/inmobi/ads/c;

    move-result-object v1

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/inmobi/ads/c;->a(Ljava/lang/String;)Lcom/inmobi/ads/c$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/i;->a(Lcom/inmobi/ads/c$b;)V

    .line 965
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->i()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/i;->b(Ljava/util/Map;)V

    .line 966
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/i;->d(Ljava/lang/String;)V

    .line 967
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->i:Lcom/inmobi/ads/c;

    invoke-virtual {v1}, Lcom/inmobi/ads/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/i;->a(Ljava/lang/String;)V

    .line 968
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->i:Lcom/inmobi/ads/c;

    invoke-virtual {v1}, Lcom/inmobi/ads/c;->i()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/i;->b(I)V

    .line 969
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->i:Lcom/inmobi/ads/c;

    invoke-virtual {v1}, Lcom/inmobi/ads/c;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/i;->a(I)V

    .line 970
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/i;->e(Ljava/lang/String;)V

    .line 972
    new-instance v1, Lcom/inmobi/commons/core/utilities/uid/d;

    iget-object v2, p0, Lcom/inmobi/ads/AdUnit;->i:Lcom/inmobi/ads/c;

    invoke-virtual {v2}, Lcom/inmobi/ads/c;->r()Lcom/inmobi/commons/core/configs/a$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/commons/core/configs/a$a;->a()Ljava/util/HashMap;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/inmobi/commons/core/utilities/uid/d;-><init>(Ljava/util/Map;)V

    .line 973
    invoke-virtual {v0, v1}, Lcom/inmobi/ads/i;->a(Lcom/inmobi/commons/core/utilities/uid/d;)V

    .line 974
    return-object v0
.end method

.method private P()V
    .locals 4

    .prologue
    .line 1120
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->I()V

    .line 1121
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->t:Lcom/inmobi/ads/ba;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->p()Lcom/inmobi/ads/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/ads/c;->k()Lcom/inmobi/ads/c$f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/ads/c$f;->i()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/ads/ba;->sendEmptyMessageDelayed(IJ)Z

    .line 1122
    return-void
.end method

.method private Q()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1294
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/b;->b()I

    move-result v0

    .line 1295
    packed-switch v0, :pswitch_data_0

    .line 1301
    const-string v0, "NIL"

    :goto_0
    return-object v0

    .line 1297
    :pswitch_0
    const-string v0, "carrier"

    goto :goto_0

    .line 1299
    :pswitch_1
    const-string v0, "wifi"

    goto :goto_0

    .line 1295
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method static synthetic a(Lcom/inmobi/ads/AdUnit;Lcom/inmobi/ads/ai;)Lcom/inmobi/ads/ai;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/inmobi/ads/AdUnit;->v:Lcom/inmobi/ads/ai;

    return-object p1
.end method

.method private e(Ljava/lang/String;)Lcom/inmobi/ads/AdUnit$AdMarkupType;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 485
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 486
    :cond_0
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_INM_HTML:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    .line 496
    :goto_0
    return-object v0

    .line 488
    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_2
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 490
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_UNKNOWN:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    goto :goto_0

    .line 488
    :sswitch_0
    const-string v1, "html"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_1
    const-string v1, "pubJson"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2
    const-string v1, "inmobiJson"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    .line 492
    :pswitch_0
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_INM_HTML:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    goto :goto_0

    .line 494
    :pswitch_1
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_PUB_JSON:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    goto :goto_0

    .line 496
    :pswitch_2
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_INM_JSON:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    goto :goto_0

    .line 488
    :sswitch_data_0
    .sparse-switch
        -0x409f29ea -> :sswitch_2
        -0xe16b27b -> :sswitch_1
        0x3107ab -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method protected A()I
    .locals 5

    .prologue
    .line 730
    :try_start_0
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADING:Lcom/inmobi/ads/AdUnit$AdState;

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->c:Lcom/inmobi/ads/AdUnit$AdState;

    .line 731
    invoke-static {}, Lcom/inmobi/signals/o;->a()Lcom/inmobi/signals/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/signals/o;->i()V

    .line 732
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->E()V

    .line 733
    new-instance v0, Lcom/inmobi/commons/core/configs/g;

    invoke-direct {v0}, Lcom/inmobi/commons/core/configs/g;-><init>()V

    .line 734
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->a()Lcom/inmobi/commons/core/configs/b;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/inmobi/commons/core/configs/b;->a(Lcom/inmobi/commons/core/configs/a;Lcom/inmobi/commons/core/configs/b$b;)V

    .line 735
    invoke-virtual {v0}, Lcom/inmobi/commons/core/configs/g;->h()Z

    move-result v0

    if-nez v0, :cond_0

    .line 736
    invoke-direct {p0}, Lcom/inmobi/ads/AdUnit;->O()Lcom/inmobi/ads/i;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/i;)V

    .line 737
    const/4 v0, 0x0

    .line 754
    :goto_0
    return v0

    .line 741
    :cond_0
    const-string v0, "ads"

    const-string v1, "LoadAfterMonetizationDisabled"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/ads/AdUnit;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/AdUnit;->b:Ljava/lang/String;

    const-string v2, "SDK will not perform this load operation as monetization has been disabled. Please contact InMobi for further info."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 746
    const/4 v0, -0x1

    goto :goto_0

    .line 748
    :catch_0
    move-exception v0

    .line 749
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "InMobi"

    const-string v3, "Unable to load ad; SDK encountered an unexpected error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/AdUnit;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Load failed with unexpected error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 752
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 751
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 754
    const/4 v0, -0x2

    goto :goto_0
.end method

.method protected abstract B()Z
.end method

.method protected C()Z
    .locals 1

    .prologue
    .line 785
    iget-boolean v0, p0, Lcom/inmobi/ads/AdUnit;->q:Z

    return v0
.end method

.method protected D()V
    .locals 3

    .prologue
    .line 949
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->t()Lcom/inmobi/ads/AdContainer;

    move-result-object v0

    .line 950
    if-nez v0, :cond_0

    .line 952
    :goto_0
    return-void

    .line 951
    :cond_0
    sget-object v1, Lcom/inmobi/ads/AdContainer$EventType;->EVENT_TYPE_AD_SERVED:Lcom/inmobi/ads/AdContainer$EventType;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/inmobi/ads/AdContainer;->a(Lcom/inmobi/ads/AdContainer$EventType;Ljava/util/Map;)V

    goto :goto_0
.end method

.method E()V
    .locals 1

    .prologue
    .line 955
    invoke-static {}, Lcom/inmobi/commons/core/utilities/uid/c;->a()Lcom/inmobi/commons/core/utilities/uid/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/utilities/uid/c;->e()V

    .line 956
    return-void
.end method

.method protected F()V
    .locals 1

    .prologue
    .line 997
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->m:Ljava/lang/String;

    .line 998
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->z:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 999
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->t()Lcom/inmobi/ads/AdContainer;

    move-result-object v0

    .line 1000
    if-eqz v0, :cond_0

    .line 1001
    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->destroy()V

    .line 1003
    :cond_0
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_CREATED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 1004
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_UNKNOWN:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->o:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    .line 1005
    return-void
.end method

.method protected G()V
    .locals 3

    .prologue
    .line 1015
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/AdUnit;->b:Ljava/lang/String;

    const-string v2, "Render view signaled ad ready"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1016
    return-void
.end method

.method protected H()V
    .locals 3

    .prologue
    .line 1026
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/AdUnit;->b:Ljava/lang/String;

    const-string v2, "Render view signaled ad failed"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1027
    const-string v0, "RenderFailed"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->b(Ljava/lang/String;)V

    .line 1028
    return-void
.end method

.method protected I()V
    .locals 2

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->t:Lcom/inmobi/ads/ba;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ba;->removeMessages(I)V

    .line 1126
    return-void
.end method

.method protected J()V
    .locals 2

    .prologue
    .line 1129
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/inmobi/ads/AdUnit$4;

    invoke-direct {v1, p0}, Lcom/inmobi/ads/AdUnit$4;-><init>(Lcom/inmobi/ads/AdUnit;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1135
    return-void
.end method

.method protected K()V
    .locals 3

    .prologue
    .line 1138
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/AdUnit;->b:Ljava/lang/String;

    const-string v2, "Renderview timed out."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    const-string v0, "RenderTimeOut"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->b(Ljava/lang/String;)V

    .line 1141
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    .line 1142
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_FAILED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 1143
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->q()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1144
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->q()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v2, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v2}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-interface {v0, p0, v1}, Lcom/inmobi/ads/AdUnit$b;->a(Lcom/inmobi/ads/AdUnit;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 1147
    :cond_0
    return-void
.end method

.method protected L()V
    .locals 6

    .prologue
    .line 1150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1151
    const-string v1, "loadLatency"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/inmobi/ads/AdUnit;->a:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    const-string v1, "ads"

    const-string v2, "AdLoadSuccessful"

    invoke-virtual {p0, v1, v2, v0}, Lcom/inmobi/ads/AdUnit;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1153
    return-void
.end method

.method public final a()Landroid/content/Context;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->e:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 219
    :goto_0
    return-object v0

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    goto :goto_0

    .line 219
    :cond_2
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    goto :goto_0
.end method

.method protected final a(I)Lcom/inmobi/ads/AdUnit$b;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 300
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->A:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 301
    :goto_0
    return-object v0

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->A:Ljava/util/concurrent/ConcurrentHashMap;

    .line 301
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/AdUnit$b;

    goto :goto_0
.end method

.method protected a(ILjava/lang/String;Ljava/lang/Runnable;Landroid/os/Looper;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Runnable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/os/Looper;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 803
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_INM_HTML:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->k()Lcom/inmobi/ads/AdUnit$AdMarkupType;

    move-result-object v1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_PUB_JSON:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    .line 804
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->k()Lcom/inmobi/ads/AdUnit$AdMarkupType;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 805
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/ads/AdUnit;->a:J

    .line 806
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->v()Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/inmobi/rendering/RenderView;->a(Ljava/lang/String;)V

    .line 807
    invoke-direct {p0}, Lcom/inmobi/ads/AdUnit;->P()V

    .line 946
    :cond_1
    :goto_0
    return-void

    .line 808
    :cond_2
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_INM_JSON:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->k()Lcom/inmobi/ads/AdUnit$AdMarkupType;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 809
    new-instance v0, Lcom/inmobi/ads/AdUnit$3;

    invoke-direct {v0, p0, p3, p4, p1}, Lcom/inmobi/ads/AdUnit$3;-><init>(Lcom/inmobi/ads/AdUnit;Ljava/lang/Runnable;Landroid/os/Looper;I)V

    .line 944
    invoke-virtual {v0}, Lcom/inmobi/ads/AdUnit$3;->start()V

    goto :goto_0
.end method

.method public final a(JLcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 3

    .prologue
    .line 573
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->w:Lcom/inmobi/ads/AdUnit$a;

    if-nez v0, :cond_1

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 575
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/inmobi/ads/AdUnit$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/inmobi/ads/AdUnit$1;-><init>(Lcom/inmobi/ads/AdUnit;JLcom/inmobi/ads/InMobiAdRequestStatus;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public final a(JLcom/inmobi/ads/a;)V
    .locals 3

    .prologue
    .line 547
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->w:Lcom/inmobi/ads/AdUnit$a;

    if-nez v0, :cond_1

    .line 556
    :cond_0
    :goto_0
    return-void

    .line 549
    :cond_1
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 550
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 551
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 552
    const-string v2, "placementId"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 553
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 554
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 555
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->w:Lcom/inmobi/ads/AdUnit$a;

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/AdUnit$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public a(JZ)V
    .locals 3

    .prologue
    .line 502
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->w:Lcom/inmobi/ads/AdUnit$a;

    if-nez v0, :cond_0

    .line 511
    :goto_0
    return-void

    .line 504
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 505
    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    .line 506
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 507
    const-string v2, "placementId"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 508
    const-string v2, "assetAvailable"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 509
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 510
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->w:Lcom/inmobi/ads/AdUnit$a;

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/AdUnit$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final a(JZLcom/inmobi/ads/a;J)V
    .locals 3

    .prologue
    .line 522
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->w:Lcom/inmobi/ads/AdUnit$a;

    if-nez v0, :cond_0

    .line 533
    :goto_0
    return-void

    .line 524
    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 525
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 526
    iput-object p4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 527
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 528
    const-string v2, "placementId"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 529
    const-string v2, "insertionTs"

    invoke-virtual {v1, v2, p5, p6}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 530
    const-string v2, "adAvailable"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 531
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 532
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->w:Lcom/inmobi/ads/AdUnit$a;

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/AdUnit$a;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public final a(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 228
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->d:Ljava/lang/ref/WeakReference;

    .line 229
    return-void
.end method

.method public final a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 224
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->e:Ljava/lang/ref/WeakReference;

    .line 225
    return-void
.end method

.method protected a(Lcom/inmobi/ads/AdUnit$AdState;)V
    .locals 0

    .prologue
    .line 282
    iput-object p1, p0, Lcom/inmobi/ads/AdUnit;->c:Lcom/inmobi/ads/AdUnit$AdState;

    .line 283
    return-void
.end method

.method final a(Lcom/inmobi/ads/AdUnit$b;)V
    .locals 1

    .prologue
    .line 311
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->r:Ljava/lang/ref/WeakReference;

    .line 312
    return-void
.end method

.method protected a(Lcom/inmobi/ads/InMobiAdRequestStatus;Z)V
    .locals 2

    .prologue
    .line 619
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADING:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    if-eqz p2, :cond_0

    .line 620
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_FAILED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 624
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->q()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    .line 625
    if-eqz v0, :cond_1

    .line 626
    invoke-interface {v0, p0, p1}, Lcom/inmobi/ads/AdUnit$b;->a(Lcom/inmobi/ads/AdUnit;Lcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 629
    :cond_1
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->NO_FILL:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_3

    .line 630
    const-string v0, "NoFill"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->b(Ljava/lang/String;)V

    .line 646
    :cond_2
    :goto_0
    return-void

    .line 631
    :cond_3
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->SERVER_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_4

    .line 632
    const-string v0, "ServerError"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 633
    :cond_4
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->NETWORK_UNREACHABLE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_5

    .line 634
    const-string v0, "NetworkUnreachable"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 635
    :cond_5
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->AD_ACTIVE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_6

    .line 636
    const-string v0, "AdActive"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 637
    :cond_6
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REQUEST_PENDING:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_7

    .line 638
    const-string v0, "RequestPending"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 639
    :cond_7
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REQUEST_INVALID:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_8

    .line 640
    const-string v0, "RequestInvalid"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 641
    :cond_8
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->REQUEST_TIMED_OUT:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_9

    .line 642
    const-string v0, "RequestTimedOut"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 643
    :cond_9
    invoke-virtual {p1}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->EARLY_REFRESH_REQUEST:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    if-ne v0, v1, :cond_2

    .line 644
    const-string v0, "EarlyRefreshRequest"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->b(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Lcom/inmobi/ads/bj;)V
    .locals 0
    .param p1    # Lcom/inmobi/ads/bj;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 649
    iput-object p1, p0, Lcom/inmobi/ads/AdUnit;->l:Lcom/inmobi/ads/bj;

    .line 650
    return-void
.end method

.method a(Lcom/inmobi/ads/i;)V
    .locals 4

    .prologue
    .line 978
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/ads/AdUnit;->u:J

    .line 979
    new-instance v0, Lcom/inmobi/ads/AdUnit$a;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/AdUnit$a;-><init>(Lcom/inmobi/ads/AdUnit;)V

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->w:Lcom/inmobi/ads/AdUnit$a;

    .line 981
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->k:Lcom/inmobi/ads/h;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/h;->a(Lcom/inmobi/ads/i;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->n:Ljava/lang/String;

    .line 982
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->k:Lcom/inmobi/ads/h;

    invoke-virtual {v0}, Lcom/inmobi/ads/h;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 983
    const-string v0, "ads"

    const-string v1, "AdPreLoadRequested"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/ads/AdUnit;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/inmobi/ads/b/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 991
    :cond_0
    :goto_0
    return-void

    .line 985
    :catch_0
    move-exception v0

    .line 986
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/AdUnit;->b:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/inmobi/ads/b/a;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->k:Lcom/inmobi/ads/h;

    invoke-virtual {v0}, Lcom/inmobi/ads/h;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 988
    iget-wide v0, p0, Lcom/inmobi/ads/AdUnit;->f:J

    new-instance v2, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v3, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->EARLY_REFRESH_REQUEST:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v2, v3}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/inmobi/ads/AdUnit;->a(JLcom/inmobi/ads/InMobiAdRequestStatus;)V

    goto :goto_0
.end method

.method public a(Lcom/inmobi/commons/core/configs/a;)V
    .locals 3

    .prologue
    .line 191
    check-cast p1, Lcom/inmobi/ads/c;

    iput-object p1, p0, Lcom/inmobi/ads/AdUnit;->i:Lcom/inmobi/ads/c;

    .line 192
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->i:Lcom/inmobi/ads/c;

    invoke-virtual {v1}, Lcom/inmobi/ads/c;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/ads/AdUnit;->i:Lcom/inmobi/ads/c;

    .line 193
    invoke-virtual {v2}, Lcom/inmobi/ads/c;->n()Lorg/json/JSONObject;

    move-result-object v2

    .line 192
    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 194
    return-void
.end method

.method public final a(Lcom/inmobi/rendering/RenderView;)V
    .locals 2

    .prologue
    .line 1009
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->w:Lcom/inmobi/ads/AdUnit$a;

    if-nez v0, :cond_1

    .line 1012
    :cond_0
    :goto_0
    return-void

    .line 1011
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->w:Lcom/inmobi/ads/AdUnit$a;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/AdUnit$a;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method public a(Lcom/inmobi/rendering/RenderView;Ljava/util/HashMap;)V
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
    .line 1093
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/AdUnit;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad reward action completed. Params:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->q()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1095
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->q()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/inmobi/ads/AdUnit$b;->b(Ljava/util/Map;)V

    .line 1097
    :cond_0
    return-void

    .line 1093
    :cond_1
    invoke-virtual {p2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 658
    iput-object p1, p0, Lcom/inmobi/ads/AdUnit;->g:Ljava/lang/String;

    .line 659
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 1264
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0, p1, p2, v0}, Lcom/inmobi/ads/AdUnit;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1265
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
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
    .line 1260
    invoke-virtual {p0, p1, p2, p3}, Lcom/inmobi/ads/AdUnit;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1261
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
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
    .line 666
    iput-object p1, p0, Lcom/inmobi/ads/AdUnit;->h:Ljava/util/Map;

    .line 667
    return-void
.end method

.method protected a(Z)V
    .locals 0

    .prologue
    .line 781
    iput-boolean p1, p0, Lcom/inmobi/ads/AdUnit;->q:Z

    .line 782
    return-void
.end method

.method public a(Lcom/inmobi/ads/a;)Z
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 406
    const-string v1, "pubContent"

    .line 407
    const-string v1, "markupType"

    .line 408
    const-string v1, "creativeType"

    .line 412
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/inmobi/ads/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 414
    invoke-virtual {p1}, Lcom/inmobi/ads/a;->f()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/inmobi/ads/AdUnit;->p:J

    .line 415
    invoke-virtual {p1}, Lcom/inmobi/ads/a;->e()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/inmobi/ads/AdUnit;->m:Ljava/lang/String;

    .line 416
    invoke-virtual {p1}, Lcom/inmobi/ads/a;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/inmobi/ads/AdUnit;->n:Ljava/lang/String;

    .line 417
    const-string v2, "markupType"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/inmobi/ads/AdUnit;->e(Ljava/lang/String;)Lcom/inmobi/ads/AdUnit$AdMarkupType;

    move-result-object v2

    iput-object v2, p0, Lcom/inmobi/ads/AdUnit;->o:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    .line 418
    sget-object v2, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_UNKNOWN:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    iget-object v3, p0, Lcom/inmobi/ads/AdUnit;->o:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    if-ne v2, v3, :cond_1

    .line 481
    :cond_0
    :goto_0
    return v0

    .line 420
    :cond_1
    sget-object v2, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_INM_JSON:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    iget-object v3, p0, Lcom/inmobi/ads/AdUnit;->o:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    if-ne v2, v3, :cond_6

    .line 421
    const-string v2, "pubContent"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/inmobi/ads/AdUnit;->j:Ljava/lang/String;

    .line 425
    :goto_1
    iget-object v2, p0, Lcom/inmobi/ads/AdUnit;->j:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/inmobi/ads/AdUnit;->j:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/inmobi/ads/AdUnit;->o:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    sget-object v3, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_UNKNOWN:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    if-eq v2, v3, :cond_2

    .line 428
    iget-object v2, p0, Lcom/inmobi/ads/AdUnit;->j:Ljava/lang/String;

    const-string v3, "@__imm_aft@"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/inmobi/ads/AdUnit;->u:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/inmobi/ads/AdUnit;->j:Ljava/lang/String;

    .line 429
    const/4 v0, 0x1

    .line 432
    :cond_2
    iget-object v2, p0, Lcom/inmobi/ads/AdUnit;->z:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 442
    const-string v2, "viewability"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 443
    new-instance v2, Lcom/inmobi/ads/bd;

    sget-object v3, Lcom/inmobi/ads/AdUnit$AdTrackerType;->AD_TRACKER_TYPE_MOAT:Lcom/inmobi/ads/AdUnit$AdTrackerType;

    invoke-direct {v2, v3}, Lcom/inmobi/ads/bd;-><init>(Lcom/inmobi/ads/AdUnit$AdTrackerType;)V

    .line 444
    const-string v3, "viewability"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-static {v3}, Lcom/inmobi/ads/AdUnit$d;->a(Lorg/json/JSONArray;)Ljava/util/Map;

    move-result-object v3

    iput-object v3, v2, Lcom/inmobi/ads/bd;->b:Ljava/util/Map;

    .line 446
    iget-object v3, p0, Lcom/inmobi/ads/AdUnit;->z:Ljava/util/Set;

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 447
    iget-object v3, v2, Lcom/inmobi/ads/bd;->b:Ljava/util/Map;

    if-eqz v3, :cond_3

    .line 448
    sget-object v3, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v4, Lcom/inmobi/ads/AdUnit;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Read out Moat params: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, v2, Lcom/inmobi/ads/bd;->b:Ljava/util/Map;

    .line 449
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 448
    invoke-static {v3, v4, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 453
    :cond_3
    const-string v2, "metaInfo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 454
    const-string v2, "metaInfo"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 455
    const-string v1, "unknown"

    .line 457
    const-string v3, "creativeType"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 458
    const-string v1, "creativeType"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 462
    :cond_4
    const-string v3, "iasEnabled"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "iasEnabled"

    .line 463
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 464
    new-instance v2, Lcom/inmobi/ads/bd;

    sget-object v3, Lcom/inmobi/ads/AdUnit$AdTrackerType;->AD_TRACKER_TYPE_IAS:Lcom/inmobi/ads/AdUnit$AdTrackerType;

    invoke-direct {v2, v3}, Lcom/inmobi/ads/bd;-><init>(Lcom/inmobi/ads/AdUnit$AdTrackerType;)V

    .line 465
    invoke-static {v1}, Lcom/inmobi/ads/AdUnit$c;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v2, Lcom/inmobi/ads/bd;->b:Ljava/util/Map;

    .line 466
    iget-object v1, v2, Lcom/inmobi/ads/bd;->b:Ljava/util/Map;

    if-eqz v1, :cond_5

    .line 467
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/AdUnit;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read out IAS params: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/inmobi/ads/bd;->b:Ljava/util/Map;

    .line 468
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 467
    invoke-static {v1, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 470
    :cond_5
    iget-object v1, p0, Lcom/inmobi/ads/AdUnit;->z:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 474
    :catch_0
    move-exception v1

    .line 475
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/AdUnit;->b:Ljava/lang/String;

    const-string v4, "Exception while parsing received ad."

    invoke-static {v2, v3, v4, v1}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 476
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v1}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto/16 :goto_0

    .line 423
    :cond_6
    :try_start_1
    const-string v2, "pubContent"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/inmobi/ads/AdUnit;->j:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_1

    .line 477
    :catch_1
    move-exception v1

    .line 478
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/AdUnit;->b:Ljava/lang/String;

    const-string v4, "Invalid Base64 encoding in received ad."

    invoke-static {v2, v3, v4, v1}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 479
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v1}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto/16 :goto_0
.end method

.method public final b()J
    .locals 2

    .prologue
    .line 232
    iget-wide v0, p0, Lcom/inmobi/ads/AdUnit;->f:J

    return-wide v0
.end method

.method protected final b(I)Lcom/inmobi/ads/AdUnit$b;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 306
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->A:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 307
    :goto_0
    return-object v0

    .line 306
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->A:Ljava/util/concurrent/ConcurrentHashMap;

    .line 307
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/AdUnit$b;

    goto :goto_0
.end method

.method protected b(JLcom/inmobi/ads/InMobiAdRequestStatus;)V
    .locals 7

    .prologue
    .line 593
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->b()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 598
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v1, "InMobi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to fetch ad for placement id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/inmobi/ads/AdUnit;->f:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", reason phrase available in onAdLoadFailed callback."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    const/4 v0, 0x1

    invoke-virtual {p0, p3, v0}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;Z)V

    .line 604
    sget-object v0, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-virtual {p3}, Lcom/inmobi/ads/InMobiAdRequestStatus;->getStatusCode()Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 605
    const-string v0, "InternalError"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    :cond_0
    :goto_0
    return-void

    .line 608
    :catch_0
    move-exception v0

    .line 609
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "InMobi"

    const-string v3, "Unable to load ad; SDK encountered an internal error"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/AdUnit;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handling ad fetch failed encountered an unexpected error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 613
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 611
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method

.method protected b(JLcom/inmobi/ads/a;)V
    .locals 3
    .param p3    # Lcom/inmobi/ads/a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 560
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->b()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADING:Lcom/inmobi/ads/AdUnit$AdState;

    if-ne v0, v1, :cond_0

    .line 561
    invoke-virtual {p0, p3}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 562
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/AdUnit;->b:Ljava/lang/String;

    const-string v2, "Ad fetch successful"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 563
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 569
    :cond_0
    :goto_0
    return-void

    .line 565
    :cond_1
    const-string v0, "ParsingFailed"

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->b(Ljava/lang/String;)V

    .line 566
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;Z)V

    goto :goto_0
.end method

.method protected b(JZ)V
    .locals 5

    .prologue
    .line 514
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/AdUnit;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Asset availability changed ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") for placement ID ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    return-void
.end method

.method protected b(JZLcom/inmobi/ads/a;J)V
    .locals 3
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 538
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->b()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 539
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADING:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    if-eqz p3, :cond_0

    .line 540
    iput-wide p5, p0, Lcom/inmobi/ads/AdUnit;->p:J

    .line 543
    :cond_0
    return-void
.end method

.method protected abstract b(Lcom/inmobi/ads/a;)V
.end method

.method public final b(Lcom/inmobi/rendering/RenderView;)V
    .locals 2

    .prologue
    .line 1020
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->w:Lcom/inmobi/ads/AdUnit$a;

    if-nez v0, :cond_1

    .line 1023
    :cond_0
    :goto_0
    return-void

    .line 1022
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->w:Lcom/inmobi/ads/AdUnit$a;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/AdUnit$a;->sendEmptyMessage(I)Z

    goto :goto_0
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
    .line 1101
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/AdUnit;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad interaction. Params:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    const-string v0, "ads"

    const-string v1, "AdInteracted"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/ads/AdUnit;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 1105
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->q()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1106
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->q()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/inmobi/ads/AdUnit$b;->a(Ljava/util/Map;)V

    .line 1108
    :cond_0
    return-void

    .line 1101
    :cond_1
    invoke-virtual {p2}, Ljava/util/HashMap;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method protected b(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 1156
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1157
    const-string v1, "errorCode"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1158
    const-string v1, "loadLatency"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/inmobi/ads/AdUnit;->a:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1159
    const-string v1, "ads"

    const-string v2, "AdLoadFailed"

    invoke-virtual {p0, v1, v2, v0}, Lcom/inmobi/ads/AdUnit;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1160
    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
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
    .line 1255
    invoke-virtual {p0, p1, p2, p3}, Lcom/inmobi/ads/AdUnit;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1256
    return-void
.end method

.method public final c()Lcom/inmobi/ads/AdUnit$AdState;
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->c:Lcom/inmobi/ads/AdUnit$AdState;

    return-object v0
.end method

.method public c(Lcom/inmobi/rendering/RenderView;)V
    .locals 3

    .prologue
    .line 1032
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/AdUnit;->b:Ljava/lang/String;

    const-string v2, "RenderView completed loading ad content"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    return-void
.end method

.method protected c(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1164
    const-string v1, "errorCode"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1165
    const-string v1, "ads"

    const-string v2, "AdShowFailed"

    invoke-virtual {p0, v1, v2, v0}, Lcom/inmobi/ads/AdUnit;->c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 1166
    return-void
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
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
    .line 1268
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1269
    const-string v0, "type"

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1270
    const-string v0, "plId"

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->b()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1271
    const-string v0, "impId"

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->m()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1272
    const-string v2, "isPreloaded"

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1273
    const-string v0, "networkType"

    invoke-direct {p0}, Lcom/inmobi/ads/AdUnit;->Q()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1274
    const-string v0, "clientRequestId"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1275
    const-string v0, "clientRequestId"

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->n()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1278
    :cond_0
    if-eqz p3, :cond_2

    .line 1279
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1280
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1272
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1286
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, v1}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1291
    :goto_2
    return-void

    .line 1287
    :catch_0
    move-exception v0

    .line 1288
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/AdUnit;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in submitting telemetry event : ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1289
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1288
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected abstract d()Ljava/lang/String;
.end method

.method public d(Lcom/inmobi/rendering/RenderView;)V
    .locals 3

    .prologue
    .line 1037
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/AdUnit;->b:Ljava/lang/String;

    const-string v2, "Renderview visible"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1038
    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 1169
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/inmobi/ads/AdUnit$5;

    invoke-direct {v1, p0, p1}, Lcom/inmobi/ads/AdUnit$5;-><init>(Lcom/inmobi/ads/AdUnit;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1189
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1191
    return-void
.end method

.method protected e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 242
    const-string v0, "sdkJson"

    return-object v0
.end method

.method public e(Lcom/inmobi/rendering/RenderView;)V
    .locals 3

    .prologue
    .line 1042
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/AdUnit;->b:Ljava/lang/String;

    const-string v2, "Ad failed to display"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1043
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_RENDERED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1044
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdState;->STATE_FAILED:Lcom/inmobi/ads/AdUnit$AdState;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/AdUnit$AdState;)V

    .line 1045
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->q()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1046
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->q()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/ads/AdUnit$b;->b()V

    .line 1049
    :cond_0
    return-void
.end method

.method protected abstract f()Ljava/lang/String;
.end method

.method public f(Lcom/inmobi/rendering/RenderView;)V
    .locals 3

    .prologue
    .line 1053
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/AdUnit;->b:Ljava/lang/String;

    const-string v2, "Ad displayed"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    return-void
.end method

.method g()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/inmobi/ads/bd;",
            ">;"
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->z:Ljava/util/Set;

    return-object v0
.end method

.method public g(Lcom/inmobi/rendering/RenderView;)V
    .locals 3

    .prologue
    .line 1058
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/AdUnit;->b:Ljava/lang/String;

    const-string v2, "Ad dismissed"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1059
    return-void
.end method

.method protected abstract h()Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;
.end method

.method public h(Lcom/inmobi/rendering/RenderView;)V
    .locals 3

    .prologue
    .line 1113
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/AdUnit;->b:Ljava/lang/String;

    const-string v2, "User left application"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1114
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->q()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1115
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->q()Lcom/inmobi/ads/AdUnit$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/ads/AdUnit$b;->f()V

    .line 1117
    :cond_0
    return-void
.end method

.method protected i()Ljava/util/Map;
    .locals 1
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
    .line 254
    const/4 v0, 0x0

    return-object v0
.end method

.method protected j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->j:Ljava/lang/String;

    return-object v0
.end method

.method protected k()Lcom/inmobi/ads/AdUnit$AdMarkupType;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->o:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    return-object v0
.end method

.method l()J
    .locals 2

    .prologue
    .line 266
    iget-wide v0, p0, Lcom/inmobi/ads/AdUnit;->p:J

    return-wide v0
.end method

.method protected m()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->m:Ljava/lang/String;

    return-object v0
.end method

.method protected n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->n:Ljava/lang/String;

    return-object v0
.end method

.method protected o()V
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->j:Ljava/lang/String;

    .line 279
    return-void
.end method

.method protected final p()Lcom/inmobi/ads/c;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->i:Lcom/inmobi/ads/c;

    return-object v0
.end method

.method protected final q()Lcom/inmobi/ads/AdUnit$b;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 291
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/AdUnit$b;

    return-object v0
.end method

.method protected final r()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/ads/AdUnit$b;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 295
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->A:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method protected final s()Lcom/inmobi/ads/h;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 336
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->k:Lcom/inmobi/ads/h;

    return-object v0
.end method

.method protected t()Lcom/inmobi/ads/AdContainer;
    .locals 4
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 347
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->c()Lcom/inmobi/ads/AdUnit$AdState;

    move-result-object v1

    .line 355
    sget-object v2, Lcom/inmobi/ads/AdUnit$6;->a:[I

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->k()Lcom/inmobi/ads/AdUnit$AdMarkupType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/ads/AdUnit$AdMarkupType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 382
    :cond_0
    :goto_0
    return-object v0

    .line 359
    :pswitch_0
    sget-object v2, Lcom/inmobi/ads/AdUnit$AdState;->STATE_CREATED:Lcom/inmobi/ads/AdUnit$AdState;

    if-eq v2, v1, :cond_0

    sget-object v2, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADING:Lcom/inmobi/ads/AdUnit$AdState;

    if-eq v2, v1, :cond_0

    sget-object v2, Lcom/inmobi/ads/AdUnit$AdState;->STATE_FAILED:Lcom/inmobi/ads/AdUnit$AdState;

    if-eq v2, v1, :cond_0

    .line 365
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->v()Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    goto :goto_0

    .line 367
    :pswitch_1
    sget-object v2, Lcom/inmobi/ads/AdUnit$AdState;->STATE_CREATED:Lcom/inmobi/ads/AdUnit$AdState;

    if-eq v2, v1, :cond_0

    sget-object v2, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADING:Lcom/inmobi/ads/AdUnit$AdState;

    if-eq v2, v1, :cond_0

    sget-object v2, Lcom/inmobi/ads/AdUnit$AdState;->STATE_FAILED:Lcom/inmobi/ads/AdUnit$AdState;

    if-eq v2, v1, :cond_0

    .line 373
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->v()Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    goto :goto_0

    .line 375
    :pswitch_2
    sget-object v2, Lcom/inmobi/ads/AdUnit$AdState;->STATE_CREATED:Lcom/inmobi/ads/AdUnit$AdState;

    if-eq v2, v1, :cond_0

    sget-object v2, Lcom/inmobi/ads/AdUnit$AdState;->STATE_LOADING:Lcom/inmobi/ads/AdUnit$AdState;

    if-eq v2, v1, :cond_0

    sget-object v2, Lcom/inmobi/ads/AdUnit$AdState;->STATE_FAILED:Lcom/inmobi/ads/AdUnit$AdState;

    if-eq v2, v1, :cond_0

    sget-object v2, Lcom/inmobi/ads/AdUnit$AdState;->STATE_AVAILABLE:Lcom/inmobi/ads/AdUnit$AdState;

    if-eq v2, v1, :cond_0

    .line 382
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->u()Lcom/inmobi/ads/ai;

    move-result-object v0

    goto :goto_0

    .line 355
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected u()Lcom/inmobi/ads/ai;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 388
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->v:Lcom/inmobi/ads/ai;

    return-object v0
.end method

.method protected v()Lcom/inmobi/rendering/RenderView;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 393
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->s:Lcom/inmobi/rendering/RenderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->s:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->a()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 398
    new-instance v0, Lcom/inmobi/rendering/RenderView;

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->a()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/inmobi/ads/AdContainer$RenderingProperties;

    .line 399
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->h()Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/inmobi/ads/AdContainer$RenderingProperties;-><init>(Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;)V

    iget-object v3, p0, Lcom/inmobi/ads/AdUnit;->z:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3}, Lcom/inmobi/rendering/RenderView;-><init>(Landroid/content/Context;Lcom/inmobi/ads/AdContainer$RenderingProperties;Ljava/util/Set;)V

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->s:Lcom/inmobi/rendering/RenderView;

    .line 400
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->s:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->p()Lcom/inmobi/ads/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/c;->k()Lcom/inmobi/ads/c$f;

    move-result-object v1

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->p()Lcom/inmobi/ads/c;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/ads/c;->l()Lcom/inmobi/ads/c$d;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/inmobi/rendering/RenderView;->a(Lcom/inmobi/rendering/RenderView$a;Lcom/inmobi/ads/c$f;Lcom/inmobi/ads/c$d;)V

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->s:Lcom/inmobi/rendering/RenderView;

    return-object v0
.end method

.method public w()Lcom/inmobi/ads/bj;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 654
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->l:Lcom/inmobi/ads/bj;

    return-object v0
.end method

.method public x()V
    .locals 2
    .annotation build Landroid/support/annotation/UiThread;
    .end annotation

    .prologue
    .line 679
    const-string v0, "ads"

    const-string v1, "AdLoadRequested"

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/ads/AdUnit;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    invoke-static {}, Lcom/inmobi/commons/core/utilities/d;->a()Z

    move-result v0

    if-nez v0, :cond_1

    .line 681
    new-instance v0, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v1, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->NETWORK_UNREACHABLE:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v0, v1}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/ads/AdUnit;->a(Lcom/inmobi/ads/InMobiAdRequestStatus;Z)V

    .line 689
    :cond_0
    :goto_0
    return-void

    .line 685
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->B()Z

    move-result v0

    if-nez v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->x:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p0}, Lcom/inmobi/ads/AdUnit;->y()Ljava/lang/Thread;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected y()Ljava/lang/Thread;
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lcom/inmobi/ads/AdUnit;->y:Ljava/lang/Thread;

    return-object v0
.end method

.method protected z()V
    .locals 2

    .prologue
    .line 697
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/inmobi/ads/AdUnit$2;

    invoke-direct {v1, p0}, Lcom/inmobi/ads/AdUnit$2;-><init>(Lcom/inmobi/ads/AdUnit;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/inmobi/ads/AdUnit;->y:Ljava/lang/Thread;

    .line 722
    return-void
.end method
