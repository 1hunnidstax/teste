.class public Lcom/inmobi/ads/ai;
.super Ljava/lang/Object;
.source "NativeV2AdContainer.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Lcom/inmobi/ads/AdContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/ai$b;,
        Lcom/inmobi/ads/ai$a;
    }
.end annotation


# static fields
.field private static final i:Ljava/lang/String;

.field private static n:Lcom/inmobi/ads/ai;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# instance fields
.field protected a:Lcom/inmobi/ads/NativeV2DataModel;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field protected b:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Ljava/util/Set;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/inmobi/ads/bd;",
            ">;"
        }
    .end annotation
.end field

.field protected d:Lcom/inmobi/ads/ViewableAd;

.field protected e:Z

.field protected f:Z

.field protected g:Lcom/inmobi/ads/ai$b;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field h:Z

.field private final j:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private k:Lcom/inmobi/ads/AdContainer$RenderingProperties;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final l:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final m:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private o:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/util/List;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/NativeV2Asset;",
            ">;"
        }
    .end annotation
.end field

.field private q:Z

.field private r:Lcom/inmobi/ads/ai;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-class v0, Lcom/inmobi/ads/ai;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/ai;->i:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/inmobi/ads/AdContainer$RenderingProperties;Lcom/inmobi/ads/NativeV2DataModel;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V
    .locals 4
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
    const/4 v2, 0x0

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/ai;->o:Ljava/util/Map;

    .line 157
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/ai;->p:Ljava/util/List;

    .line 167
    iput-boolean v2, p0, Lcom/inmobi/ads/ai;->q:Z

    .line 175
    iput-boolean v2, p0, Lcom/inmobi/ads/ai;->h:Z

    .line 183
    iput-object p2, p0, Lcom/inmobi/ads/ai;->k:Lcom/inmobi/ads/AdContainer$RenderingProperties;

    .line 184
    new-instance v1, Ljava/lang/ref/WeakReference;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/inmobi/ads/ai;->j:Ljava/lang/ref/WeakReference;

    .line 185
    iput-object p3, p0, Lcom/inmobi/ads/ai;->a:Lcom/inmobi/ads/NativeV2DataModel;

    .line 186
    iput-object p4, p0, Lcom/inmobi/ads/ai;->l:Ljava/lang/String;

    .line 187
    iput-object p5, p0, Lcom/inmobi/ads/ai;->m:Ljava/lang/String;

    .line 188
    iput-boolean v2, p0, Lcom/inmobi/ads/ai;->e:Z

    .line 189
    iput-boolean v2, p0, Lcom/inmobi/ads/ai;->q:Z

    .line 190
    if-eqz p6, :cond_0

    .line 191
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p6}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/inmobi/ads/ai;->c:Ljava/util/Set;

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/ai;->a:Lcom/inmobi/ads/NativeV2DataModel;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeV2DataModel;->b()Lcom/inmobi/ads/aj;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/inmobi/ads/aj;->a(J)V

    .line 195
    iget-object v0, p0, Lcom/inmobi/ads/ai;->a:Lcom/inmobi/ads/NativeV2DataModel;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeV2DataModel;->b()Lcom/inmobi/ads/aj;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inmobi/ads/ai;->c(Lcom/inmobi/ads/NativeV2Asset;)Ljava/util/Map;

    move-result-object v0

    .line 196
    sget-object v1, Lcom/inmobi/ads/AdContainer$EventType;->EVENT_TYPE_AD_LOADED:Lcom/inmobi/ads/AdContainer$EventType;

    invoke-virtual {p0, v1, v0}, Lcom/inmobi/ads/ai;->a(Lcom/inmobi/ads/AdContainer$EventType;Ljava/util/Map;)V

    .line 197
    sget-object v1, Lcom/inmobi/ads/AdContainer$EventType;->EVENT_TYPE_AD_SERVED:Lcom/inmobi/ads/AdContainer$EventType;

    invoke-virtual {p0, v1, v0}, Lcom/inmobi/ads/ai;->a(Lcom/inmobi/ads/AdContainer$EventType;Ljava/util/Map;)V

    .line 198
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 199
    return-void
.end method

.method private a(ILcom/inmobi/ads/aj;)V
    .locals 3
    .param p2    # Lcom/inmobi/ads/aj;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/inmobi/ads/ai;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    :goto_0
    return-void

    .line 311
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/ai;->o:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/inmobi/ads/aj;->a(J)V

    .line 313
    invoke-virtual {p0}, Lcom/inmobi/ads/ai;->m()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 315
    invoke-direct {p0, p2}, Lcom/inmobi/ads/ai;->c(Lcom/inmobi/ads/NativeV2Asset;)Ljava/util/Map;

    move-result-object v0

    .line 314
    invoke-direct {p0, p2, v0}, Lcom/inmobi/ads/ai;->e(Lcom/inmobi/ads/NativeV2Asset;Ljava/util/Map;)V

    goto :goto_0

    .line 317
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/ai;->p:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
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
    .line 935
    invoke-virtual {p0, p0}, Lcom/inmobi/ads/ai;->b(Lcom/inmobi/ads/ai;)Lcom/inmobi/ads/ai;

    move-result-object v0

    .line 936
    if-eqz v0, :cond_1

    .line 937
    invoke-virtual {v0}, Lcom/inmobi/ads/ai;->i()Lcom/inmobi/ads/ai$b;

    move-result-object v0

    .line 938
    if-eqz v0, :cond_0

    .line 939
    invoke-interface {v0, p1, p2, p3}, Lcom/inmobi/ads/ai$b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 948
    :goto_0
    return-void

    .line 941
    :cond_0
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/ai;->i:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InteractionCallback is null. Discarding telemetry event : ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 945
    :cond_1
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/ai;->i:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Target container is null. Discarding telemetry event : ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private b(Ljava/lang/String;)Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;
    .locals 3

    .prologue
    .line 485
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v0, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_0

    .line 488
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;->ASSET_ACTION_ON_CLICK_NONE:Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;

    .line 497
    :goto_1
    return-object v0

    .line 485
    :sswitch_0
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :sswitch_1
    const-string v2, "skip"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "reload"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_3
    const-string v2, "replay"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_4
    const-string v2, "exit"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x5

    goto :goto_0

    :sswitch_5
    const-string v2, "fullscreen"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    .line 490
    :pswitch_0
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;->ASSET_ACTION_ON_CLICK_SKIP:Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;

    goto :goto_1

    .line 493
    :pswitch_1
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;->ASSET_ACTION_ON_CLICK_REPLAY:Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;

    goto :goto_1

    .line 495
    :pswitch_2
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;->ASSET_ACTION_ON_CLICK_EXIT:Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;

    goto :goto_1

    .line 497
    :pswitch_3
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;->ASSET_ACTION_ON_CLICK_FULLSCREEN:Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;

    goto :goto_1

    .line 485
    :sswitch_data_0
    .sparse-switch
        -0x37b57e67 -> :sswitch_2
        -0x37b3b819 -> :sswitch_3
        0x0 -> :sswitch_0
        0x2fb91e -> :sswitch_4
        0x35e57f -> :sswitch_1
        0x68f7bbb -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private b(Lcom/inmobi/ads/NativeV2Asset;Ljava/util/Map;)V
    .locals 3
    .param p1    # Lcom/inmobi/ads/NativeV2Asset;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/NativeV2Asset;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 617
    const-string v0, "ads"

    const-string v1, "ReportClick"

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/inmobi/ads/ai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 619
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/ai;->i:Ljava/lang/String;

    const-string v2, "Click impression record requested"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;->ASSET_REFERENCED_CREATIVE_COMPANION:Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;

    invoke-virtual {p1}, Lcom/inmobi/ads/NativeV2Asset;->n()Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;

    move-result-object v1

    if-ne v0, v1, :cond_3

    move-object v0, p1

    .line 621
    check-cast v0, Lcom/inmobi/ads/av;

    .line 622
    invoke-virtual {v0}, Lcom/inmobi/ads/av;->D()Lcom/inmobi/ads/bk;

    move-result-object v0

    .line 623
    invoke-interface {v0}, Lcom/inmobi/ads/bk;->g()Lcom/inmobi/ads/bg;

    move-result-object v0

    .line 626
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/inmobi/ads/bg;->d()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/inmobi/ads/NativeV2Asset;->r()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 627
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/ads/bg;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 628
    sget-object v1, Lcom/inmobi/ads/ah$a;->f:Lcom/inmobi/ads/ah$a;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/bg;->a(Lcom/inmobi/ads/ah$a;)Ljava/util/List;

    move-result-object v0

    .line 629
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/ah;

    .line 630
    invoke-virtual {p1, v0, p2}, Lcom/inmobi/ads/NativeV2Asset;->a(Lcom/inmobi/ads/ah;Ljava/util/Map;)V

    goto :goto_0

    .line 634
    :cond_1
    sget-object v0, Lcom/inmobi/ads/ah$a;->f:Lcom/inmobi/ads/ah$a;

    invoke-virtual {p1, v0, p2}, Lcom/inmobi/ads/NativeV2Asset;->a(Lcom/inmobi/ads/ah$a;Ljava/util/Map;)V

    .line 639
    :cond_2
    :goto_1
    return-void

    .line 637
    :cond_3
    sget-object v0, Lcom/inmobi/ads/ah$a;->f:Lcom/inmobi/ads/ah$a;

    invoke-virtual {p1, v0, p2}, Lcom/inmobi/ads/NativeV2Asset;->a(Lcom/inmobi/ads/ah$a;Ljava/util/Map;)V

    goto :goto_1
.end method

.method static synthetic c(Lcom/inmobi/ads/ai;)Lcom/inmobi/ads/ai;
    .locals 0

    .prologue
    .line 66
    sput-object p0, Lcom/inmobi/ads/ai;->n:Lcom/inmobi/ads/ai;

    return-object p0
.end method

.method private c(Lcom/inmobi/ads/NativeV2Asset;)Ljava/util/Map;
    .locals 8
    .param p1    # Lcom/inmobi/ads/NativeV2Asset;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/NativeV2Asset;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 652
    new-instance v2, Ljava/util/HashMap;

    const/4 v0, 0x3

    invoke-direct {v2, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 653
    const-string v0, "$LTS"

    iget-object v1, p0, Lcom/inmobi/ads/ai;->a:Lcom/inmobi/ads/NativeV2DataModel;

    .line 654
    invoke-virtual {v1}, Lcom/inmobi/ads/NativeV2DataModel;->b()Lcom/inmobi/ads/aj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/aj;->y()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 653
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    iget-object v0, p0, Lcom/inmobi/ads/ai;->a:Lcom/inmobi/ads/NativeV2DataModel;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/NativeV2DataModel;->a(Lcom/inmobi/ads/NativeV2Asset;)Lcom/inmobi/ads/aj;

    move-result-object v3

    .line 657
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 658
    if-eqz v3, :cond_0

    const-wide/16 v4, 0x0

    invoke-virtual {v3}, Lcom/inmobi/ads/aj;->y()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 659
    invoke-virtual {v3}, Lcom/inmobi/ads/aj;->y()J

    move-result-wide v0

    .line 661
    :cond_0
    const-string v3, "$STS"

    .line 662
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    .line 661
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 663
    const-string v0, "$TS"

    .line 664
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    .line 663
    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    return-object v2
.end method

.method private c(Lcom/inmobi/ads/NativeV2Asset;Ljava/util/Map;)V
    .locals 1
    .param p1    # Lcom/inmobi/ads/NativeV2Asset;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/NativeV2Asset;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 643
    sget-object v0, Lcom/inmobi/ads/ah$a;->b:Lcom/inmobi/ads/ah$a;

    invoke-virtual {p1, v0, p2}, Lcom/inmobi/ads/NativeV2Asset;->a(Lcom/inmobi/ads/ah$a;Ljava/util/Map;)V

    .line 644
    return-void
.end method

.method private d(Lcom/inmobi/ads/NativeV2Asset;Ljava/util/Map;)V
    .locals 1
    .param p1    # Lcom/inmobi/ads/NativeV2Asset;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/NativeV2Asset;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 648
    sget-object v0, Lcom/inmobi/ads/ah$a;->c:Lcom/inmobi/ads/ah$a;

    invoke-virtual {p1, v0, p2}, Lcom/inmobi/ads/NativeV2Asset;->a(Lcom/inmobi/ads/ah$a;Ljava/util/Map;)V

    .line 649
    return-void
.end method

.method private e(Lcom/inmobi/ads/NativeV2Asset;Ljava/util/Map;)V
    .locals 4
    .param p1    # Lcom/inmobi/ads/NativeV2Asset;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/NativeV2Asset;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 670
    if-nez p1, :cond_0

    .line 671
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/ai;->i:Ljava/lang/String;

    const-string v2, "Cannot report page view impression on null page container! Ignoring ..."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    :goto_0
    return-void

    .line 676
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 678
    :try_start_0
    const-string v0, "id"

    .line 679
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeV2Asset;->g()Ljava/lang/String;

    move-result-object v2

    .line 678
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 680
    const-string v0, "asset"

    .line 681
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeV2Asset;->e()Lorg/json/JSONObject;

    move-result-object v2

    .line 680
    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 686
    :goto_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 687
    const-string v2, "type"

    const-string v3, "inlban"

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    const-string v2, "impId"

    iget-object v3, p0, Lcom/inmobi/ads/ai;->l:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    const-string v2, "pageJson"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    const-string v2, "ads"

    const-string v3, "PageRendered"

    invoke-virtual {v1, v2, v3, v0}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 692
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/ai;->i:Ljava/lang/String;

    const-string v2, "Page-view impression record request"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 693
    sget-object v0, Lcom/inmobi/ads/ah$a;->e:Lcom/inmobi/ads/ah$a;

    invoke-virtual {p1, v0, p2}, Lcom/inmobi/ads/NativeV2Asset;->a(Lcom/inmobi/ads/ah$a;Ljava/util/Map;)V

    goto :goto_0

    .line 682
    :catch_0
    move-exception v0

    .line 683
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_1
.end method

.method private f(Landroid/view/View;)Lcom/inmobi/ads/NativeStrandTimerView;
    .locals 1

    .prologue
    .line 796
    if-eqz p1, :cond_0

    .line 797
    const-string v0, "timerView"

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeStrandTimerView;

    .line 799
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f(Lcom/inmobi/ads/NativeV2Asset;Ljava/util/Map;)V
    .locals 5
    .param p1    # Lcom/inmobi/ads/NativeV2Asset;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/NativeV2Asset;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 961
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeV2Asset;->a()Lcom/inmobi/ads/NativeV2Asset$AssetType;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/NativeV2Asset$AssetType;->ASSET_TYPE_VIDEO:Lcom/inmobi/ads/NativeV2Asset$AssetType;

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/inmobi/ads/NativeV2Asset;->h()Z

    move-result v0

    if-nez v0, :cond_1

    .line 998
    :cond_0
    :goto_0
    return-void

    .line 963
    :cond_1
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/ai;->i:Ljava/lang/String;

    const-string v2, "Asset interaction requested"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 964
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeV2Asset;->j()Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;

    move-result-object v2

    .line 965
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;->ASSET_INTERACTION_MODE_NO_ACTION:Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;

    if-eq v0, v2, :cond_0

    .line 968
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeV2Asset;->r()Ljava/lang/String;

    move-result-object v1

    .line 969
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;->ASSET_REFERENCED_CREATIVE_COMPANION:Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;

    invoke-virtual {p1}, Lcom/inmobi/ads/NativeV2Asset;->n()Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;

    move-result-object v3

    if-ne v0, v3, :cond_5

    move-object v0, p1

    .line 970
    check-cast v0, Lcom/inmobi/ads/av;

    .line 971
    invoke-virtual {v0}, Lcom/inmobi/ads/av;->D()Lcom/inmobi/ads/bk;

    move-result-object v0

    .line 972
    invoke-interface {v0}, Lcom/inmobi/ads/bk;->g()Lcom/inmobi/ads/bg;

    move-result-object v0

    .line 973
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/inmobi/ads/bg;->d()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 974
    invoke-virtual {v0}, Lcom/inmobi/ads/bg;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    .line 975
    invoke-virtual {v0}, Lcom/inmobi/ads/bg;->d()Ljava/lang/String;

    move-result-object v0

    .line 979
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 980
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/ai;->i:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid url:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 983
    :cond_2
    invoke-static {v0, p2}, Lcom/inmobi/commons/core/utilities/d;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    .line 984
    sget-object v1, Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;->ASSET_INTERACTION_MODE_IN_APP:Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;

    if-ne v1, v2, :cond_4

    .line 985
    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/b;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 986
    invoke-virtual {p0, v0}, Lcom/inmobi/ads/ai;->a(Ljava/lang/String;)V

    .line 995
    :goto_2
    iget-object v0, p0, Lcom/inmobi/ads/ai;->d:Lcom/inmobi/ads/ViewableAd;

    if-eqz v0, :cond_0

    .line 996
    iget-object v0, p0, Lcom/inmobi/ads/ai;->d:Lcom/inmobi/ads/ViewableAd;

    sget-object v1, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_CLICK_THRU:Lcom/inmobi/ads/ViewableAd$AdEvent;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V

    goto :goto_0

    .line 988
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/ads/ai;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 991
    :cond_4
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeV2Asset;->s()Ljava/lang/String;

    move-result-object v1

    .line 992
    invoke-virtual {p0, v0, v1}, Lcom/inmobi/ads/ai;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method

.method static synthetic u()Lcom/inmobi/ads/ai;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/inmobi/ads/ai;->n:Lcom/inmobi/ads/ai;

    return-object v0
.end method

.method private v()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 565
    iget-object v0, p0, Lcom/inmobi/ads/ai;->a:Lcom/inmobi/ads/NativeV2DataModel;

    invoke-virtual {v0, v3}, Lcom/inmobi/ads/NativeV2DataModel;->b(I)Lcom/inmobi/ads/aj;

    move-result-object v0

    .line 566
    iget-object v1, p0, Lcom/inmobi/ads/ai;->o:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 568
    invoke-direct {p0, v3, v0}, Lcom/inmobi/ads/ai;->a(ILcom/inmobi/ads/aj;)V

    .line 570
    :cond_0
    return-void
.end method


# virtual methods
.method protected a(Lcom/inmobi/ads/NativeV2DataModel;Lcom/inmobi/ads/NativeV2Asset;)Lcom/inmobi/ads/NativeV2Asset;
    .locals 5
    .param p1    # Lcom/inmobi/ads/NativeV2DataModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/inmobi/ads/NativeV2Asset;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x2

    .line 424
    if-nez p1, :cond_1

    move-object p2, v1

    .line 450
    :cond_0
    :goto_0
    return-object p2

    .line 426
    :cond_1
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeV2Asset;->r()Ljava/lang/String;

    move-result-object v2

    .line 427
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeV2Asset;->s()Ljava/lang/String;

    move-result-object v3

    .line 428
    iget-object v0, p0, Lcom/inmobi/ads/ai;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/inmobi/commons/core/utilities/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/ai;->j:Ljava/lang/ref/WeakReference;

    .line 429
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/inmobi/commons/core/utilities/b;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 433
    const-string v0, "\\|"

    invoke-virtual {v2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 434
    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lcom/inmobi/ads/NativeV2DataModel;->b(Ljava/lang/String;)Lcom/inmobi/ads/NativeV2Asset;

    move-result-object v0

    .line 435
    if-nez v0, :cond_2

    .line 436
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeV2DataModel;->e()Lcom/inmobi/ads/NativeV2DataModel;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/inmobi/ads/ai;->a(Lcom/inmobi/ads/NativeV2DataModel;Lcom/inmobi/ads/NativeV2Asset;)Lcom/inmobi/ads/NativeV2Asset;

    move-result-object p2

    goto :goto_0

    .line 439
    :cond_2
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move-object p2, v1

    goto :goto_0

    .line 441
    :cond_3
    const/4 v1, 0x1

    array-length v3, v2

    if-eq v1, v3, :cond_4

    array-length v1, v2

    if-ne v4, v1, :cond_5

    .line 442
    :cond_4
    sget-object v1, Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;->ASSET_REFERENCED_CREATIVE_LINEAR:Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/NativeV2Asset;->a(Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;)V

    move-object p2, v0

    .line 443
    goto :goto_0

    .line 445
    :cond_5
    array-length v1, v2

    if-le v1, v4, :cond_6

    .line 446
    invoke-virtual {p0}, Lcom/inmobi/ads/ai;->k()Lcom/inmobi/ads/NativeV2DataModel;

    move-result-object v1

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Lcom/inmobi/ads/NativeV2DataModel;->a(Ljava/lang/String;)Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/NativeV2Asset;->a(Lcom/inmobi/ads/NativeV2Asset$AssetReferencedCreative;)V

    .line 448
    :cond_6
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/ai;->i:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Referenced asset ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 449
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeV2Asset;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 448
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    move-object p2, v0

    .line 450
    goto/16 :goto_0
.end method

.method public a()V
    .locals 0

    .prologue
    .line 259
    return-void
.end method

.method protected a(ILcom/inmobi/ads/NativeV2Asset;)V
    .locals 2

    .prologue
    .line 547
    iget-object v0, p0, Lcom/inmobi/ads/ai;->o:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/ads/ai;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 552
    :cond_0
    :goto_0
    return-void

    .line 550
    :cond_1
    invoke-direct {p0}, Lcom/inmobi/ads/ai;->v()V

    .line 551
    check-cast p2, Lcom/inmobi/ads/aj;

    invoke-direct {p0, p1, p2}, Lcom/inmobi/ads/ai;->a(ILcom/inmobi/ads/aj;)V

    goto :goto_0
.end method

.method a(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 592
    invoke-virtual {p0}, Lcom/inmobi/ads/ai;->m()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/ads/ai;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 614
    :cond_0
    :goto_0
    return-void

    .line 595
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/ai;->e:Z

    .line 597
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 598
    const-string v2, "type"

    sget-object v0, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_FULLSCREEN:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 599
    invoke-virtual {p0}, Lcom/inmobi/ads/ai;->getRenderingProperties()Lcom/inmobi/ads/AdContainer$RenderingProperties;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/ads/AdContainer$RenderingProperties;->a()Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    move-result-object v3

    if-ne v0, v3, :cond_2

    const-string v0, "int"

    .line 598
    :goto_1
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    const-string v0, "clientRequestId"

    invoke-virtual {p0}, Lcom/inmobi/ads/ai;->g()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    const-string v0, "impId"

    invoke-virtual {p0}, Lcom/inmobi/ads/ai;->n()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v0

    const-string v2, "ads"

    const-string v3, "ViewableBeaconFired"

    invoke-virtual {v0, v2, v3, v1}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 606
    iget-object v0, p0, Lcom/inmobi/ads/ai;->a:Lcom/inmobi/ads/NativeV2DataModel;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeV2DataModel;->b()Lcom/inmobi/ads/aj;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/ai;->a:Lcom/inmobi/ads/NativeV2DataModel;

    .line 607
    invoke-virtual {v1}, Lcom/inmobi/ads/NativeV2DataModel;->b()Lcom/inmobi/ads/aj;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/inmobi/ads/ai;->c(Lcom/inmobi/ads/NativeV2Asset;)Ljava/util/Map;

    move-result-object v1

    .line 606
    invoke-virtual {p0, v0, v1}, Lcom/inmobi/ads/ai;->a(Lcom/inmobi/ads/NativeV2Asset;Ljava/util/Map;)V

    .line 608
    invoke-direct {p0}, Lcom/inmobi/ads/ai;->v()V

    .line 609
    iget-object v0, p0, Lcom/inmobi/ads/ai;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeV2Asset;

    .line 611
    invoke-direct {p0, v0}, Lcom/inmobi/ads/ai;->c(Lcom/inmobi/ads/NativeV2Asset;)Ljava/util/Map;

    move-result-object v2

    .line 610
    invoke-direct {p0, v0, v2}, Lcom/inmobi/ads/ai;->e(Lcom/inmobi/ads/NativeV2Asset;Ljava/util/Map;)V

    goto :goto_2

    .line 599
    :cond_2
    const-string v0, "inlban"

    goto :goto_1

    .line 613
    :cond_3
    iget-object v0, p0, Lcom/inmobi/ads/ai;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public a(Lcom/inmobi/ads/AdContainer$EventType;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/AdContainer$EventType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/inmobi/ads/ai;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    :goto_0
    :pswitch_0
    return-void

    .line 205
    :cond_0
    sget-object v0, Lcom/inmobi/ads/ai$1;->a:[I

    invoke-virtual {p1}, Lcom/inmobi/ads/AdContainer$EventType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 212
    :pswitch_1
    iget-object v0, p0, Lcom/inmobi/ads/ai;->a:Lcom/inmobi/ads/NativeV2DataModel;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeV2DataModel;->b()Lcom/inmobi/ads/aj;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/inmobi/ads/ai;->c(Lcom/inmobi/ads/NativeV2Asset;Ljava/util/Map;)V

    goto :goto_0

    .line 215
    :pswitch_2
    iget-object v0, p0, Lcom/inmobi/ads/ai;->a:Lcom/inmobi/ads/NativeV2DataModel;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeV2DataModel;->b()Lcom/inmobi/ads/aj;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/inmobi/ads/ai;->d(Lcom/inmobi/ads/NativeV2Asset;Ljava/util/Map;)V

    goto :goto_0

    .line 205
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected a(Lcom/inmobi/ads/NativeV2Asset;)V
    .locals 3

    .prologue
    .line 502
    invoke-virtual {p0}, Lcom/inmobi/ads/ai;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 544
    :cond_0
    :goto_0
    return-void

    .line 504
    :cond_1
    invoke-direct {p0}, Lcom/inmobi/ads/ai;->v()V

    .line 507
    iget-object v0, p0, Lcom/inmobi/ads/ai;->a:Lcom/inmobi/ads/NativeV2DataModel;

    .line 508
    invoke-virtual {p0, v0, p1}, Lcom/inmobi/ads/ai;->a(Lcom/inmobi/ads/NativeV2DataModel;Lcom/inmobi/ads/NativeV2Asset;)Lcom/inmobi/ads/NativeV2Asset;

    move-result-object v0

    .line 509
    if-eqz v0, :cond_4

    .line 510
    invoke-direct {p0, v0}, Lcom/inmobi/ads/ai;->c(Lcom/inmobi/ads/NativeV2Asset;)Ljava/util/Map;

    move-result-object v1

    .line 511
    invoke-direct {p0, v0, v1}, Lcom/inmobi/ads/ai;->b(Lcom/inmobi/ads/NativeV2Asset;Ljava/util/Map;)V

    .line 514
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 515
    invoke-direct {p0, p1, v1}, Lcom/inmobi/ads/ai;->b(Lcom/inmobi/ads/NativeV2Asset;Ljava/util/Map;)V

    .line 517
    :cond_2
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeV2Asset;->j()Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/inmobi/ads/NativeV2Asset;->a(Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;)V

    .line 518
    invoke-direct {p0, v0, v1}, Lcom/inmobi/ads/ai;->f(Lcom/inmobi/ads/NativeV2Asset;Ljava/util/Map;)V

    .line 526
    :goto_1
    invoke-virtual {p0, p0}, Lcom/inmobi/ads/ai;->b(Lcom/inmobi/ads/ai;)Lcom/inmobi/ads/ai;

    move-result-object v0

    .line 527
    if-eqz v0, :cond_0

    .line 530
    invoke-virtual {v0}, Lcom/inmobi/ads/ai;->i()Lcom/inmobi/ads/ai$b;

    move-result-object v0

    .line 531
    if-eqz v0, :cond_3

    .line 532
    invoke-interface {v0}, Lcom/inmobi/ads/ai$b;->d()V

    .line 535
    :cond_3
    iget-object v0, p0, Lcom/inmobi/ads/ai;->a:Lcom/inmobi/ads/NativeV2DataModel;

    .line 536
    invoke-virtual {p0, v0, p1}, Lcom/inmobi/ads/ai;->b(Lcom/inmobi/ads/NativeV2DataModel;Lcom/inmobi/ads/NativeV2Asset;)Lcom/inmobi/ads/NativeV2Asset;

    move-result-object v0

    .line 537
    if-eqz v0, :cond_5

    .line 538
    invoke-virtual {p0, v0}, Lcom/inmobi/ads/ai;->b(Lcom/inmobi/ads/NativeV2Asset;)V

    goto :goto_0

    .line 520
    :cond_4
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/ai;->i:Ljava/lang/String;

    const-string v2, "Couldn\'t find an asset reference for this asset click URL"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    invoke-direct {p0, p1}, Lcom/inmobi/ads/ai;->c(Lcom/inmobi/ads/NativeV2Asset;)Ljava/util/Map;

    move-result-object v0

    .line 523
    invoke-direct {p0, p1, v0}, Lcom/inmobi/ads/ai;->b(Lcom/inmobi/ads/NativeV2Asset;Ljava/util/Map;)V

    goto :goto_1

    .line 540
    :cond_5
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/ai;->i:Ljava/lang/String;

    const-string v2, "Couldn\'t find an asset reference for this asset action! Ignoring the asset action ..."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected a(Lcom/inmobi/ads/NativeV2Asset;Ljava/util/Map;)V
    .locals 3
    .param p1    # Lcom/inmobi/ads/NativeV2Asset;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/NativeV2Asset;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 574
    const-string v0, "ads"

    const-string v1, "AdRendered"

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, v0, v1, v2}, Lcom/inmobi/ads/ai;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 576
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/ai;->i:Ljava/lang/String;

    const-string v2, "A viewable impression is reported on ad view."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    sget-object v0, Lcom/inmobi/ads/ah$a;->d:Lcom/inmobi/ads/ah$a;

    invoke-virtual {p1, v0, p2}, Lcom/inmobi/ads/NativeV2Asset;->a(Lcom/inmobi/ads/ah$a;Ljava/util/Map;)V

    .line 579
    invoke-virtual {p0, p0}, Lcom/inmobi/ads/ai;->b(Lcom/inmobi/ads/ai;)Lcom/inmobi/ads/ai;

    move-result-object v0

    .line 580
    if-nez v0, :cond_1

    .line 588
    :cond_0
    :goto_0
    return-void

    .line 583
    :cond_1
    invoke-virtual {v0}, Lcom/inmobi/ads/ai;->i()Lcom/inmobi/ads/ai$b;

    move-result-object v0

    .line 584
    if-eqz v0, :cond_0

    .line 585
    invoke-interface {v0}, Lcom/inmobi/ads/ai$b;->c()V

    goto :goto_0
.end method

.method public a(Lcom/inmobi/ads/ai$b;)V
    .locals 0
    .param p1    # Lcom/inmobi/ads/ai$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 299
    iput-object p1, p0, Lcom/inmobi/ads/ai;->g:Lcom/inmobi/ads/ai$b;

    .line 300
    return-void
.end method

.method public a(Lcom/inmobi/ads/ai;)V
    .locals 0
    .param p1    # Lcom/inmobi/ads/ai;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 290
    iput-object p1, p0, Lcom/inmobi/ads/ai;->r:Lcom/inmobi/ads/ai;

    .line 291
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1001
    invoke-virtual {p0}, Lcom/inmobi/ads/ai;->e()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1009
    :goto_0
    return-void

    .line 1002
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/ads/ai;->e()Landroid/app/Activity;

    move-result-object v0

    .line 1003
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/inmobi/rendering/InMobiAdActivity;->a(Lcom/inmobi/rendering/RenderView;)V

    .line 1004
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/inmobi/rendering/InMobiAdActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1005
    const-string v2, "com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_TYPE"

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1007
    const-string v2, "com.inmobi.rendering.InMobiAdActivity.IN_APP_BROWSER_URL"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1008
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1013
    invoke-virtual {p0}, Lcom/inmobi/ads/ai;->e()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1024
    :cond_0
    :goto_0
    return-void

    .line 1014
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/ads/ai;->e()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/inmobi/commons/core/utilities/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1015
    invoke-virtual {p0, p0}, Lcom/inmobi/ads/ai;->b(Lcom/inmobi/ads/ai;)Lcom/inmobi/ads/ai;

    move-result-object v0

    .line 1016
    if-eqz v0, :cond_0

    .line 1019
    invoke-virtual {v0}, Lcom/inmobi/ads/ai;->i()Lcom/inmobi/ads/ai$b;

    move-result-object v0

    .line 1020
    if-eqz v0, :cond_0

    .line 1021
    invoke-interface {v0}, Lcom/inmobi/ads/ai$b;->f()V

    goto :goto_0
.end method

.method protected b(Lcom/inmobi/ads/NativeV2DataModel;Lcom/inmobi/ads/NativeV2Asset;)Lcom/inmobi/ads/NativeV2Asset;
    .locals 5
    .param p1    # Lcom/inmobi/ads/NativeV2DataModel;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/inmobi/ads/NativeV2Asset;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 456
    if-nez p1, :cond_0

    move-object p2, v0

    .line 480
    :goto_0
    return-object p2

    .line 457
    :cond_0
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeV2Asset;->q()Ljava/lang/String;

    move-result-object v1

    .line 458
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 459
    :cond_1
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;->ASSET_ACTION_ON_CLICK_NONE:Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;

    invoke-virtual {p2, v0}, Lcom/inmobi/ads/NativeV2Asset;->a(Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;)V

    goto :goto_0

    .line 463
    :cond_2
    const-string v2, "\\|"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 464
    array-length v1, v2

    if-ne v4, v1, :cond_3

    .line 465
    aget-object v0, v2, v3

    invoke-direct {p0, v0}, Lcom/inmobi/ads/ai;->b(Ljava/lang/String;)Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/inmobi/ads/NativeV2Asset;->a(Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;)V

    goto :goto_0

    .line 469
    :cond_3
    aget-object v1, v2, v3

    invoke-virtual {p1, v1}, Lcom/inmobi/ads/NativeV2DataModel;->b(Ljava/lang/String;)Lcom/inmobi/ads/NativeV2Asset;

    move-result-object v1

    .line 470
    if-nez v1, :cond_4

    .line 471
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeV2DataModel;->e()Lcom/inmobi/ads/NativeV2DataModel;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/inmobi/ads/ai;->b(Lcom/inmobi/ads/NativeV2DataModel;Lcom/inmobi/ads/NativeV2Asset;)Lcom/inmobi/ads/NativeV2Asset;

    move-result-object p2

    goto :goto_0

    .line 474
    :cond_4
    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move-object p2, v0

    goto :goto_0

    .line 476
    :cond_5
    aget-object v0, v2, v4

    invoke-direct {p0, v0}, Lcom/inmobi/ads/ai;->b(Ljava/lang/String;)Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/NativeV2Asset;->a(Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;)V

    .line 478
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/ai;->i:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Referenced asset ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 479
    invoke-virtual {v1}, Lcom/inmobi/ads/NativeV2Asset;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 478
    invoke-static {v0, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    move-object p2, v1

    .line 480
    goto :goto_0
.end method

.method b(Lcom/inmobi/ads/ai;)Lcom/inmobi/ads/ai;
    .locals 1
    .param p1    # Lcom/inmobi/ads/ai;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 951
    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 955
    :cond_0
    :goto_0
    return-object p1

    .line 952
    :cond_1
    invoke-virtual {p1}, Lcom/inmobi/ads/ai;->h()Lcom/inmobi/ads/ai;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 955
    invoke-virtual {p1}, Lcom/inmobi/ads/ai;->h()Lcom/inmobi/ads/ai;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/ai;->b(Lcom/inmobi/ads/ai;)Lcom/inmobi/ads/ai;

    move-result-object p1

    goto :goto_0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 251
    return-void
.end method

.method protected b(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 806
    invoke-direct {p0, p1}, Lcom/inmobi/ads/ai;->f(Landroid/view/View;)Lcom/inmobi/ads/NativeStrandTimerView;

    move-result-object v0

    .line 807
    if-eqz v0, :cond_0

    .line 808
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandTimerView;->c()V

    .line 810
    :cond_0
    return-void
.end method

.method protected b(Lcom/inmobi/ads/NativeV2Asset;)V
    .locals 5
    .param p1    # Lcom/inmobi/ads/NativeV2Asset;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    .prologue
    .line 698
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeV2Asset;->l()Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;

    move-result-object v0

    .line 699
    sget-object v1, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;->ASSET_ACTION_ON_CLICK_NONE:Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;

    if-ne v1, v0, :cond_1

    .line 793
    :cond_0
    :goto_0
    return-void

    .line 703
    :cond_1
    sget-object v1, Lcom/inmobi/ads/ai$1;->d:[I

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeV2Asset$AssetActionOnClick;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 708
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v0

    const-string v1, "ads"

    const-string v2, "onAssetSkipped"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 712
    :pswitch_0
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 714
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetType;->ASSET_TYPE_VIDEO:Lcom/inmobi/ads/NativeV2Asset$AssetType;

    invoke-virtual {p1}, Lcom/inmobi/ads/NativeV2Asset;->a()Lcom/inmobi/ads/NativeV2Asset$AssetType;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 715
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/ai;->i:Ljava/lang/String;

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

    .line 719
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeV2Asset;->a()Lcom/inmobi/ads/NativeV2Asset$AssetType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 715
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 757
    :catch_0
    move-exception v0

    .line 758
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/ai;->i:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encountered unexpected error in handling replay action on video: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 760
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 758
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "InMobi Native Strand"

    const-string v3, "SDK encountered unexpected error in replaying video"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 763
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto/16 :goto_0

    .line 722
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/inmobi/ads/ai;->h()Lcom/inmobi/ads/ai;

    move-result-object v2

    .line 723
    if-eqz v2, :cond_0

    instance-of v0, v2, Lcom/inmobi/ads/at;

    if-eqz v0, :cond_0

    .line 726
    invoke-virtual {v2}, Lcom/inmobi/ads/ai;->getVideoContainerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeStrandVideoWrapper;

    .line 727
    if-eqz v0, :cond_0

    .line 728
    invoke-virtual {p0}, Lcom/inmobi/ads/ai;->j()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 729
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoWrapper;->getVideoView()Lcom/inmobi/ads/NativeStrandVideoView;

    move-result-object v3

    .line 730
    invoke-virtual {v3}, Lcom/inmobi/ads/NativeStrandVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/av;

    .line 731
    invoke-virtual {p0}, Lcom/inmobi/ads/ai;->j()Landroid/view/View;

    move-result-object v4

    .line 732
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 733
    if-eqz v1, :cond_3

    .line 734
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 736
    :cond_3
    if-eqz v0, :cond_5

    .line 737
    invoke-virtual {v0}, Lcom/inmobi/ads/av;->z()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 738
    invoke-virtual {v3}, Lcom/inmobi/ads/NativeStrandVideoView;->g()V

    .line 749
    :goto_1
    invoke-virtual {v3}, Lcom/inmobi/ads/NativeStrandVideoView;->start()V

    .line 752
    invoke-virtual {v2}, Lcom/inmobi/ads/ai;->j()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/ai;->d(Landroid/view/View;)V

    .line 753
    invoke-virtual {v2}, Lcom/inmobi/ads/ai;->j()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/ai;->e(Landroid/view/View;)V

    goto/16 :goto_0

    .line 740
    :cond_4
    invoke-virtual {v3}, Lcom/inmobi/ads/NativeStrandVideoView;->f()V

    goto :goto_1

    .line 743
    :cond_5
    sget-object v0, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_FULLSCREEN:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    invoke-virtual {p0}, Lcom/inmobi/ads/ai;->d()Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    move-result-object v1

    if-ne v0, v1, :cond_6

    .line 744
    invoke-virtual {v3}, Lcom/inmobi/ads/NativeStrandVideoView;->g()V

    goto :goto_1

    .line 746
    :cond_6
    invoke-virtual {v3}, Lcom/inmobi/ads/NativeStrandVideoView;->f()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 768
    :pswitch_1
    :try_start_2
    invoke-virtual {p0}, Lcom/inmobi/ads/ai;->s()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 769
    :catch_1
    move-exception v0

    .line 770
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/ai;->i:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encountered unexpected error in handling exit action on video: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 772
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 770
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "InMobi Native Strand"

    const-string v3, "SDK encountered unexpected error in exiting video"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto/16 :goto_0

    .line 780
    :pswitch_2
    :try_start_3
    sget-object v0, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_INLINE:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    invoke-virtual {p0}, Lcom/inmobi/ads/ai;->d()Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 781
    invoke-virtual {p0}, Lcom/inmobi/ads/ai;->p()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/16 :goto_0

    .line 783
    :catch_2
    move-exception v0

    .line 784
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/ai;->i:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encountered unexpected error in handling fullscreen action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 786
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 784
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v2, "InMobi Native Strand"

    const-string v3, "SDK encountered unexpected error in launching fullscreen ad"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 789
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto/16 :goto_0

    .line 703
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected c(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 816
    invoke-direct {p0, p1}, Lcom/inmobi/ads/ai;->f(Landroid/view/View;)Lcom/inmobi/ads/NativeStrandTimerView;

    move-result-object v0

    .line 817
    if-eqz v0, :cond_0

    .line 818
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandTimerView;->d()V

    .line 820
    :cond_0
    return-void
.end method

.method public c()Z
    .locals 1

    .prologue
    .line 381
    iget-boolean v0, p0, Lcom/inmobi/ads/ai;->q:Z

    return v0
.end method

.method public d()Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/inmobi/ads/ai;->k:Lcom/inmobi/ads/AdContainer$RenderingProperties;

    invoke-virtual {v0}, Lcom/inmobi/ads/AdContainer$RenderingProperties;->a()Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    move-result-object v0

    return-object v0
.end method

.method protected d(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 826
    invoke-direct {p0, p1}, Lcom/inmobi/ads/ai;->f(Landroid/view/View;)Lcom/inmobi/ads/NativeStrandTimerView;

    move-result-object v0

    .line 827
    if-eqz v0, :cond_0

    .line 828
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandTimerView;->b()V

    .line 830
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 385
    iget-boolean v0, p0, Lcom/inmobi/ads/ai;->q:Z

    if-eqz v0, :cond_0

    .line 403
    :goto_0
    return-void

    .line 388
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/ai;->q:Z

    .line 390
    iput-object v1, p0, Lcom/inmobi/ads/ai;->g:Lcom/inmobi/ads/ai$b;

    .line 391
    iget-object v0, p0, Lcom/inmobi/ads/ai;->p:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 392
    iget-object v0, p0, Lcom/inmobi/ads/ai;->d:Lcom/inmobi/ads/ViewableAd;

    if-eqz v0, :cond_1

    .line 393
    iget-object v0, p0, Lcom/inmobi/ads/ai;->d:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->c()V

    .line 394
    iget-object v0, p0, Lcom/inmobi/ads/ai;->d:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->d()V

    .line 396
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/ads/ai;->t()V

    .line 397
    iget-object v0, p0, Lcom/inmobi/ads/ai;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 398
    iget-object v0, p0, Lcom/inmobi/ads/ai;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_2

    .line 399
    iget-object v0, p0, Lcom/inmobi/ads/ai;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 401
    :cond_2
    sput-object v1, Lcom/inmobi/ads/ai;->n:Lcom/inmobi/ads/ai;

    .line 402
    iput-object v1, p0, Lcom/inmobi/ads/ai;->a:Lcom/inmobi/ads/NativeV2DataModel;

    goto :goto_0
.end method

.method public e()Landroid/app/Activity;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 272
    iget-object v0, p0, Lcom/inmobi/ads/ai;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method protected e(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 836
    invoke-direct {p0, p1}, Lcom/inmobi/ads/ai;->f(Landroid/view/View;)Lcom/inmobi/ads/NativeStrandTimerView;

    move-result-object v0

    .line 837
    if-eqz v0, :cond_0

    .line 838
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandTimerView;->a()V

    .line 840
    :cond_0
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 276
    iget-object v0, p0, Lcom/inmobi/ads/ai;->l:Ljava/lang/String;

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/inmobi/ads/ai;->m:Ljava/lang/String;

    return-object v0
.end method

.method public synthetic getDataModel()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/inmobi/ads/ai;->k()Lcom/inmobi/ads/NativeV2DataModel;

    move-result-object v0

    return-object v0
.end method

.method public getFullScreenEventsListener()Lcom/inmobi/ads/AdContainer$a;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 246
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMarkupType()Lcom/inmobi/ads/AdUnit$AdMarkupType;
    .locals 1

    .prologue
    .line 263
    sget-object v0, Lcom/inmobi/ads/AdUnit$AdMarkupType;->AD_MARKUP_TYPE_INM_JSON:Lcom/inmobi/ads/AdUnit$AdMarkupType;

    return-object v0
.end method

.method public getRenderingProperties()Lcom/inmobi/ads/AdContainer$RenderingProperties;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/inmobi/ads/ai;->k:Lcom/inmobi/ads/AdContainer$RenderingProperties;

    return-object v0
.end method

.method public getVideoContainerView()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 372
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewableAd()Lcom/inmobi/ads/ViewableAd;
    .locals 6

    .prologue
    .line 331
    iget-object v0, p0, Lcom/inmobi/ads/ai;->j:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 332
    iget-object v1, p0, Lcom/inmobi/ads/ai;->d:Lcom/inmobi/ads/ViewableAd;

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 333
    new-instance v1, Lcom/inmobi/ads/bo;

    invoke-direct {v1, p0}, Lcom/inmobi/ads/bo;-><init>(Lcom/inmobi/ads/ai;)V

    iput-object v1, p0, Lcom/inmobi/ads/ai;->d:Lcom/inmobi/ads/ViewableAd;

    .line 335
    new-instance v1, Lcom/inmobi/ads/u;

    iget-object v2, p0, Lcom/inmobi/ads/ai;->d:Lcom/inmobi/ads/ViewableAd;

    invoke-direct {v1, v0, p0, v2}, Lcom/inmobi/ads/u;-><init>(Landroid/app/Activity;Lcom/inmobi/ads/ai;Lcom/inmobi/ads/ViewableAd;)V

    iput-object v1, p0, Lcom/inmobi/ads/ai;->d:Lcom/inmobi/ads/ViewableAd;

    .line 337
    iget-object v1, p0, Lcom/inmobi/ads/ai;->c:Ljava/util/Set;

    if-eqz v1, :cond_0

    .line 339
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/ads/ai;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/bd;

    .line 340
    sget-object v3, Lcom/inmobi/ads/ai$1;->c:[I

    iget-object v4, v1, Lcom/inmobi/ads/bd;->a:Lcom/inmobi/ads/AdUnit$AdTrackerType;

    invoke-virtual {v4}, Lcom/inmobi/ads/AdUnit$AdTrackerType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_0

    .line 345
    :pswitch_0
    iget-object v3, v1, Lcom/inmobi/ads/bd;->b:Ljava/util/Map;

    const-string v4, "zMoatIID"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    new-instance v3, Lcom/inmobi/ads/y;

    iget-object v4, p0, Lcom/inmobi/ads/ai;->d:Lcom/inmobi/ads/ViewableAd;

    iget-object v1, v1, Lcom/inmobi/ads/bd;->b:Ljava/util/Map;

    invoke-direct {v3, v0, v4, v1}, Lcom/inmobi/ads/y;-><init>(Landroid/app/Activity;Lcom/inmobi/ads/ViewableAd;Ljava/util/Map;)V

    iput-object v3, p0, Lcom/inmobi/ads/ai;->d:Lcom/inmobi/ads/ViewableAd;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 350
    :catch_0
    move-exception v0

    .line 351
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/ai;->i:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception occurred while creating the Display viewable ad : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 353
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 351
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/ai;->d:Lcom/inmobi/ads/ViewableAd;

    return-object v0

    .line 340
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public h()Lcom/inmobi/ads/ai;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 286
    iget-object v0, p0, Lcom/inmobi/ads/ai;->r:Lcom/inmobi/ads/ai;

    return-object v0
.end method

.method public i()Lcom/inmobi/ads/ai$b;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 295
    iget-object v0, p0, Lcom/inmobi/ads/ai;->g:Lcom/inmobi/ads/ai$b;

    return-object v0
.end method

.method public j()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 304
    iget-object v0, p0, Lcom/inmobi/ads/ai;->d:Lcom/inmobi/ads/ViewableAd;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/ai;->d:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->b()Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public k()Lcom/inmobi/ads/NativeV2DataModel;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 377
    iget-object v0, p0, Lcom/inmobi/ads/ai;->a:Lcom/inmobi/ads/NativeV2DataModel;

    return-object v0
.end method

.method protected l()Landroid/app/Activity;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 407
    sget-object v0, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_INLINE:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    invoke-virtual {p0}, Lcom/inmobi/ads/ai;->d()Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 408
    invoke-virtual {p0}, Lcom/inmobi/ads/ai;->e()Landroid/app/Activity;

    move-result-object v0

    .line 409
    :goto_0
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 410
    :cond_0
    return-object v0

    .line 408
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/ads/ai;->o()Landroid/app/Activity;

    move-result-object v0

    goto :goto_0
.end method

.method protected m()Z
    .locals 1

    .prologue
    .line 414
    iget-boolean v0, p0, Lcom/inmobi/ads/ai;->e:Z

    return v0
.end method

.method protected n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Lcom/inmobi/ads/ai;->l:Ljava/lang/String;

    return-object v0
.end method

.method public o()Landroid/app/Activity;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 561
    iget-object v0, p0, Lcom/inmobi/ads/ai;->b:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/ai;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1034
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1084
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1059
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 1054
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1079
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 1038
    invoke-virtual {p0}, Lcom/inmobi/ads/ai;->o()Landroid/app/Activity;

    move-result-object v0

    .line 1040
    if-nez v0, :cond_0

    .line 1041
    invoke-virtual {p0}, Lcom/inmobi/ads/ai;->e()Landroid/app/Activity;

    move-result-object v0

    .line 1043
    :cond_0
    if-eqz v0, :cond_1

    .line 1044
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1045
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/ads/ai;->f:Z

    .line 1046
    invoke-virtual {p0}, Lcom/inmobi/ads/ai;->j()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/ai;->c(Landroid/view/View;)V

    .line 1049
    :cond_1
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 1063
    invoke-virtual {p0}, Lcom/inmobi/ads/ai;->o()Landroid/app/Activity;

    move-result-object v0

    .line 1065
    if-nez v0, :cond_0

    .line 1066
    invoke-virtual {p0}, Lcom/inmobi/ads/ai;->e()Landroid/app/Activity;

    move-result-object v0

    .line 1068
    :cond_0
    if-eqz v0, :cond_1

    .line 1069
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1070
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/ai;->f:Z

    .line 1071
    invoke-virtual {p0}, Lcom/inmobi/ads/ai;->j()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/ai;->b(Landroid/view/View;)V

    .line 1074
    :cond_1
    return-void
.end method

.method protected p()V
    .locals 11

    .prologue
    const/4 v4, 0x0

    .line 843
    invoke-virtual {p0}, Lcom/inmobi/ads/ai;->k()Lcom/inmobi/ads/NativeV2DataModel;

    move-result-object v3

    .line 844
    invoke-virtual {v3}, Lcom/inmobi/ads/NativeV2DataModel;->f()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 871
    :cond_0
    :goto_0
    return-void

    .line 847
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/inmobi/ads/NativeV2DataModel;->a(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 848
    if-eqz v2, :cond_0

    .line 850
    new-instance v0, Lcom/inmobi/ads/NativeV2DataModel;

    .line 851
    invoke-virtual {p0}, Lcom/inmobi/ads/ai;->d()Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    move-result-object v1

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/ads/NativeV2DataModel;-><init>(Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;Lorg/json/JSONObject;Lcom/inmobi/ads/NativeV2DataModel;Lcom/inmobi/ads/c$g;Lcom/inmobi/ads/bj;)V

    .line 853
    invoke-virtual {p0}, Lcom/inmobi/ads/ai;->e()Landroid/app/Activity;

    move-result-object v5

    .line 854
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeV2DataModel;->n()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v5, :cond_0

    .line 855
    new-instance v6, Lcom/inmobi/ads/AdContainer$RenderingProperties;

    sget-object v1, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_INLINE:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    invoke-direct {v6, v1}, Lcom/inmobi/ads/AdContainer$RenderingProperties;-><init>(Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;)V

    .line 857
    invoke-virtual {p0}, Lcom/inmobi/ads/ai;->f()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lcom/inmobi/ads/ai;->g()Ljava/lang/String;

    move-result-object v9

    move-object v7, v0

    move-object v10, v4

    .line 856
    invoke-static/range {v5 .. v10}, Lcom/inmobi/ads/ai$a;->a(Landroid/content/Context;Lcom/inmobi/ads/AdContainer$RenderingProperties;Lcom/inmobi/ads/NativeV2DataModel;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)Lcom/inmobi/ads/ai;

    move-result-object v0

    .line 859
    invoke-virtual {p0}, Lcom/inmobi/ads/ai;->i()Lcom/inmobi/ads/ai$b;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 860
    invoke-virtual {p0}, Lcom/inmobi/ads/ai;->i()Lcom/inmobi/ads/ai$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ai;->a(Lcom/inmobi/ads/ai$b;)V

    .line 862
    :cond_2
    invoke-static {v0}, Lcom/inmobi/rendering/InMobiAdActivity;->a(Lcom/inmobi/ads/AdContainer;)I

    move-result v0

    .line 863
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/inmobi/ads/ai;->e()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/inmobi/rendering/InMobiAdActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 864
    const-string v2, "com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_INDEX"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 865
    const-string v0, "com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_TYPE"

    const/16 v2, 0x66

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 866
    const-string v0, "com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_IS_FULL_SCREEN"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 867
    const-string v0, "com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_TYPE"

    const/16 v2, 0xc9

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 869
    invoke-virtual {p0}, Lcom/inmobi/ads/ai;->e()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/inmobi/commons/a/a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

.method q()Z
    .locals 1

    .prologue
    .line 874
    const/4 v0, 0x0

    return v0
.end method

.method r()V
    .locals 2

    .prologue
    .line 878
    invoke-virtual {p0}, Lcom/inmobi/ads/ai;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 879
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/ai;->h:Z

    .line 880
    invoke-virtual {p0}, Lcom/inmobi/ads/ai;->i()Lcom/inmobi/ads/ai$b;

    move-result-object v0

    .line 881
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/ads/ai;->k()Lcom/inmobi/ads/NativeV2DataModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeV2DataModel;->g()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 882
    invoke-virtual {p0}, Lcom/inmobi/ads/ai;->k()Lcom/inmobi/ads/NativeV2DataModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeV2DataModel;->g()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/inmobi/ads/ai$b;->a(Ljava/util/Map;)V

    .line 885
    :cond_0
    return-void
.end method

.method s()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 889
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/ads/ai;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 932
    :cond_0
    :goto_0
    return-void

    .line 892
    :cond_1
    invoke-virtual {p0, p0}, Lcom/inmobi/ads/ai;->b(Lcom/inmobi/ads/ai;)Lcom/inmobi/ads/ai;

    move-result-object v2

    .line 893
    if-eqz v2, :cond_0

    .line 897
    invoke-virtual {v2}, Lcom/inmobi/ads/ai;->r()V

    .line 899
    invoke-static {v2}, Lcom/inmobi/rendering/InMobiAdActivity;->a(Ljava/lang/Object;)V

    .line 900
    instance-of v1, v2, Lcom/inmobi/ads/at;

    if-eqz v1, :cond_2

    .line 901
    move-object v0, v2

    check-cast v0, Lcom/inmobi/ads/at;

    move-object v1, v0

    .line 902
    invoke-virtual {v1}, Lcom/inmobi/ads/at;->getVideoContainerView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/NativeStrandVideoWrapper;

    .line 903
    if-eqz v1, :cond_2

    .line 904
    invoke-virtual {v1}, Lcom/inmobi/ads/NativeStrandVideoWrapper;->getVideoView()Lcom/inmobi/ads/NativeStrandVideoView;

    move-result-object v3

    .line 905
    invoke-virtual {v3}, Lcom/inmobi/ads/NativeStrandVideoView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/av;

    .line 909
    invoke-virtual {v1}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v5

    const-string v6, "seekPosition"

    invoke-virtual {v3}, Lcom/inmobi/ads/NativeStrandVideoView;->getCurrentPosition()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 910
    invoke-virtual {v1}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v5

    const-string v6, "lastMediaVolume"

    invoke-virtual {v3}, Lcom/inmobi/ads/NativeStrandVideoView;->getVolume()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    invoke-virtual {v1}, Lcom/inmobi/ads/av;->i()Lcom/inmobi/ads/NativeV2Asset;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 913
    invoke-virtual {v1}, Lcom/inmobi/ads/av;->i()Lcom/inmobi/ads/NativeV2Asset;

    move-result-object v3

    check-cast v3, Lcom/inmobi/ads/av;

    invoke-virtual {v3, v1}, Lcom/inmobi/ads/av;->a(Lcom/inmobi/ads/av;)V

    .line 917
    :cond_2
    iget-object v1, v2, Lcom/inmobi/ads/ai;->b:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_3

    move-object v3, v4

    .line 919
    :goto_1
    if-eqz v3, :cond_0

    .line 920
    move-object v0, v3

    check-cast v0, Lcom/inmobi/rendering/InMobiAdActivity;

    move-object v1, v0

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/inmobi/rendering/InMobiAdActivity;->a(Z)V

    .line 921
    invoke-virtual {v3}, Landroid/app/Activity;->finish()V

    .line 922
    const/4 v1, 0x0

    iput-object v1, v2, Lcom/inmobi/ads/ai;->b:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 924
    :catch_0
    move-exception v1

    .line 925
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/ai;->i:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Encountered unexpected error in handling exit action on video: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 927
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 925
    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 928
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    const-string v3, "InMobi Native Strand"

    const-string v4, "SDK encountered unexpected error in exiting video"

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v1}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto/16 :goto_0

    .line 917
    :cond_3
    :try_start_1
    iget-object v1, v2, Lcom/inmobi/ads/ai;->b:Ljava/lang/ref/WeakReference;

    .line 918
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-object v3, v1

    goto :goto_1
.end method

.method public setExitAnimation(I)V
    .locals 0

    .prologue
    .line 255
    return-void
.end method

.method public setFullScreenActivityContext(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 556
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/ai;->b:Ljava/lang/ref/WeakReference;

    .line 557
    return-void
.end method

.method public setRequestedScreenOrientation()V
    .locals 3

    .prologue
    .line 222
    iget-object v0, p0, Lcom/inmobi/ads/ai;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/ai;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/ads/ai;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/inmobi/ads/ai;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 224
    invoke-virtual {p0}, Lcom/inmobi/ads/ai;->k()Lcom/inmobi/ads/NativeV2DataModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeV2DataModel;->c()Lcom/inmobi/ads/NativeV2DataModel$Orientation;

    move-result-object v1

    .line 225
    sget-object v2, Lcom/inmobi/ads/ai$1;->b:[I

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeV2DataModel$Orientation;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 233
    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    .line 236
    :cond_0
    :goto_0
    return-void

    .line 227
    :pswitch_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 230
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto :goto_0

    .line 225
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public t()V
    .locals 1

    .prologue
    .line 1027
    invoke-virtual {p0}, Lcom/inmobi/ads/ai;->e()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1029
    :goto_0
    return-void

    .line 1028
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/ads/ai;->e()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    goto :goto_0
.end method
