.class final Lcom/inmobi/ads/ae;
.super Ljava/lang/Object;
.source "NativeStrandLayoutInflater.java"

# interfaces
.implements Lcom/inmobi/ads/NativeV2ScrollableContainer$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/ae$b;,
        Lcom/inmobi/ads/ae$c;,
        Lcom/inmobi/ads/ae$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static k:Landroid/os/Handler;


# instance fields
.field private final b:Ljava/lang/ref/WeakReference;
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

.field private final c:Lcom/inmobi/ads/NativeV2DataModel;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private d:Lcom/inmobi/ads/ae$c;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private e:Lcom/inmobi/ads/ae$a;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private f:Lcom/inmobi/ads/aw;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private g:Lcom/inmobi/ads/ae$b;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private h:Lcom/inmobi/ads/ap;

.field private i:I

.field private j:Lcom/inmobi/ads/NativeStrandViewFactory;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 65
    const-class v0, Lcom/inmobi/ads/ae;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/ae;->a:Ljava/lang/String;

    .line 88
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/inmobi/ads/ae;->k:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/inmobi/ads/NativeV2DataModel;Lcom/inmobi/ads/ae$c;Lcom/inmobi/ads/ae$a;Lcom/inmobi/ads/ae$b;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/inmobi/ads/NativeV2DataModel;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/inmobi/ads/ae$c;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/inmobi/ads/ae$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/inmobi/ads/ae$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput v0, p0, Lcom/inmobi/ads/ae;->i:I

    .line 89
    iput-boolean v0, p0, Lcom/inmobi/ads/ae;->l:Z

    .line 96
    new-instance v1, Ljava/lang/ref/WeakReference;

    move-object v0, p1

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/inmobi/ads/ae;->b:Ljava/lang/ref/WeakReference;

    .line 97
    iput-object p2, p0, Lcom/inmobi/ads/ae;->c:Lcom/inmobi/ads/NativeV2DataModel;

    .line 98
    invoke-static {p1}, Lcom/inmobi/ads/NativeStrandViewFactory;->a(Landroid/content/Context;)Lcom/inmobi/ads/NativeStrandViewFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/ae;->j:Lcom/inmobi/ads/NativeStrandViewFactory;

    .line 99
    iput-object p3, p0, Lcom/inmobi/ads/ae;->d:Lcom/inmobi/ads/ae$c;

    .line 100
    iput-object p4, p0, Lcom/inmobi/ads/ae;->e:Lcom/inmobi/ads/ae$a;

    .line 101
    iput-object p5, p0, Lcom/inmobi/ads/ae;->g:Lcom/inmobi/ads/ae$b;

    .line 102
    return-void
.end method

.method private a(Lcom/inmobi/ads/NativeV2Asset;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 291
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeV2Asset;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    new-instance v0, Lcom/inmobi/ads/ae$5;

    invoke-direct {v0, p0, p1}, Lcom/inmobi/ads/ae$5;-><init>(Lcom/inmobi/ads/ae;Lcom/inmobi/ads/NativeV2Asset;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 299
    :cond_0
    return-void
.end method

.method private a(Lcom/inmobi/ads/as;Lcom/inmobi/ads/NativeStrandTimerView;)V
    .locals 1

    .prologue
    .line 185
    new-instance v0, Lcom/inmobi/ads/ae$2;

    invoke-direct {v0, p0, p1}, Lcom/inmobi/ads/ae$2;-><init>(Lcom/inmobi/ads/ae;Lcom/inmobi/ads/as;)V

    invoke-virtual {p2, v0}, Lcom/inmobi/ads/NativeStrandTimerView;->setTimerEventsListener(Lcom/inmobi/ads/NativeStrandTimerView$a;)V

    .line 193
    return-void
.end method

.method private a(Lcom/inmobi/ads/av;Lcom/inmobi/ads/NativeStrandVideoView;)V
    .locals 8
    .param p1    # Lcom/inmobi/ads/av;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/inmobi/ads/NativeStrandVideoView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    .prologue
    .line 304
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_2

    .line 306
    invoke-virtual {p1}, Lcom/inmobi/ads/av;->u()Lcom/inmobi/ads/NativeV2Asset;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/aj;

    .line 307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 308
    if-eqz v0, :cond_0

    const-wide/16 v4, 0x0

    invoke-virtual {v0}, Lcom/inmobi/ads/aj;->y()J

    move-result-wide v6

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    .line 309
    invoke-virtual {v0}, Lcom/inmobi/ads/aj;->y()J

    move-result-wide v2

    .line 311
    :cond_0
    if-eqz v0, :cond_1

    .line 312
    invoke-virtual {v0, v2, v3}, Lcom/inmobi/ads/aj;->a(J)V

    .line 316
    :cond_1
    const v0, 0x7fffffff

    invoke-virtual {p2, v0}, Lcom/inmobi/ads/NativeStrandVideoView;->setId(I)V

    .line 317
    invoke-virtual {p2, p1}, Lcom/inmobi/ads/NativeStrandVideoView;->setTag(Ljava/lang/Object;)V

    .line 319
    new-instance v0, Lcom/inmobi/ads/ae$6;

    invoke-direct {v0, p0, p1}, Lcom/inmobi/ads/ae$6;-><init>(Lcom/inmobi/ads/ae;Lcom/inmobi/ads/av;)V

    invoke-virtual {p2, v0}, Lcom/inmobi/ads/NativeStrandVideoView;->setQuartileCompletedListener(Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener;)V

    .line 338
    new-instance v0, Lcom/inmobi/ads/ae$7;

    invoke-direct {v0, p0, p1}, Lcom/inmobi/ads/ae$7;-><init>(Lcom/inmobi/ads/ae;Lcom/inmobi/ads/av;)V

    invoke-virtual {p2, v0}, Lcom/inmobi/ads/NativeStrandVideoView;->setPlaybackEventListener(Lcom/inmobi/ads/NativeStrandVideoView$OnPlaybackEventListener;)V

    .line 389
    new-instance v0, Lcom/inmobi/ads/ae$8;

    invoke-direct {v0, p0, p1}, Lcom/inmobi/ads/ae$8;-><init>(Lcom/inmobi/ads/ae;Lcom/inmobi/ads/av;)V

    invoke-virtual {p2, v0}, Lcom/inmobi/ads/NativeStrandVideoView;->setMediaErrorListener(Lcom/inmobi/ads/NativeStrandVideoView$a;)V

    .line 405
    iget-object v0, p0, Lcom/inmobi/ads/ae;->f:Lcom/inmobi/ads/aw;

    if-eqz v0, :cond_2

    .line 407
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/ae;->f:Lcom/inmobi/ads/aw;

    invoke-interface {v0, p1, p2}, Lcom/inmobi/ads/aw;->a(Lcom/inmobi/ads/av;Lcom/inmobi/ads/NativeStrandVideoView;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 416
    :cond_2
    :goto_0
    return-void

    .line 408
    :catch_0
    move-exception v0

    .line 409
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/ae;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDK encountered unexpected error in handling the onVideoViewCreated event; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 411
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 409
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/ads/ae;)Z
    .locals 1

    .prologue
    .line 25
    iget-boolean v0, p0, Lcom/inmobi/ads/ae;->l:Z

    return v0
.end method

.method private b(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/inmobi/ads/aj;)Landroid/view/ViewGroup;
    .locals 9
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/inmobi/ads/aj;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/16 v8, 0xf

    .line 198
    invoke-virtual {p3}, Lcom/inmobi/ads/aj;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/inmobi/ads/NativeV2Asset;

    .line 199
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetType;->ASSET_TYPE_CONTAINER:Lcom/inmobi/ads/NativeV2Asset$AssetType;

    invoke-virtual {v6}, Lcom/inmobi/ads/NativeV2Asset;->a()Lcom/inmobi/ads/NativeV2Asset$AssetType;

    move-result-object v1

    if-ne v0, v1, :cond_3

    .line 200
    invoke-virtual {v6}, Lcom/inmobi/ads/NativeV2Asset;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "card_scrollable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/inmobi/ads/ae;->j:Lcom/inmobi/ads/NativeStrandViewFactory;

    .line 202
    invoke-virtual {p0}, Lcom/inmobi/ads/ae;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lcom/inmobi/ads/NativeStrandViewFactory;->a(Landroid/content/Context;Lcom/inmobi/ads/NativeV2Asset;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeV2ScrollableContainer;

    .line 203
    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeV2ScrollableContainer;->getType()Lcom/inmobi/ads/NativeV2ScrollableContainer$TYPE;

    move-result-object v1

    .line 205
    iget-object v2, p0, Lcom/inmobi/ads/ae;->c:Lcom/inmobi/ads/NativeV2DataModel;

    invoke-static {v1, v2, p0}, Lcom/inmobi/ads/aq;->a(Lcom/inmobi/ads/NativeV2ScrollableContainer$TYPE;Lcom/inmobi/ads/NativeV2DataModel;Lcom/inmobi/ads/ae;)Lcom/inmobi/ads/ap;

    move-result-object v1

    iput-object v1, p0, Lcom/inmobi/ads/ae;->h:Lcom/inmobi/ads/ap;

    .line 206
    iget-object v1, p0, Lcom/inmobi/ads/ae;->h:Lcom/inmobi/ads/ap;

    if-eqz v1, :cond_0

    move-object v1, v6

    .line 207
    check-cast v1, Lcom/inmobi/ads/aj;

    iget-object v2, p0, Lcom/inmobi/ads/ae;->h:Lcom/inmobi/ads/ap;

    iget v3, p0, Lcom/inmobi/ads/ae;->i:I

    .line 208
    invoke-direct {p0}, Lcom/inmobi/ads/ae;->e()I

    move-result v4

    move-object v5, p0

    .line 207
    invoke-virtual/range {v0 .. v5}, Lcom/inmobi/ads/NativeV2ScrollableContainer;->a(Lcom/inmobi/ads/aj;Lcom/inmobi/ads/ap;IILcom/inmobi/ads/NativeV2ScrollableContainer$a;)V

    .line 210
    invoke-static {v6, p1}, Lcom/inmobi/ads/NativeStrandViewFactory;->a(Lcom/inmobi/ads/NativeV2Asset;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 209
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 215
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/ads/ae;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/ads/NativeStrandViewFactory;->a(Landroid/content/Context;)Lcom/inmobi/ads/NativeStrandViewFactory;

    move-result-object v0

    .line 216
    invoke-virtual {p0}, Lcom/inmobi/ads/ae;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lcom/inmobi/ads/NativeStrandViewFactory;->a(Landroid/content/Context;Lcom/inmobi/ads/NativeV2Asset;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 217
    if-eqz v0, :cond_2

    move-object v1, v6

    .line 218
    check-cast v1, Lcom/inmobi/ads/aj;

    invoke-direct {p0, v0, p1, v1}, Lcom/inmobi/ads/ae;->b(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/inmobi/ads/aj;)Landroid/view/ViewGroup;

    move-result-object v0

    .line 221
    invoke-static {v6, p1}, Lcom/inmobi/ads/NativeStrandViewFactory;->a(Lcom/inmobi/ads/NativeV2Asset;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 220
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    :cond_2
    invoke-direct {p0, v6, v0}, Lcom/inmobi/ads/ae;->a(Lcom/inmobi/ads/NativeV2Asset;Landroid/view/View;)V

    goto :goto_0

    .line 227
    :cond_3
    invoke-virtual {p0}, Lcom/inmobi/ads/ae;->a()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/inmobi/ads/NativeStrandViewFactory;->a(Landroid/content/Context;)Lcom/inmobi/ads/NativeStrandViewFactory;

    move-result-object v0

    .line 228
    invoke-virtual {p0}, Lcom/inmobi/ads/ae;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, v6}, Lcom/inmobi/ads/NativeStrandViewFactory;->a(Landroid/content/Context;Lcom/inmobi/ads/NativeV2Asset;)Landroid/view/View;

    move-result-object v2

    .line 229
    if-eqz v2, :cond_0

    .line 230
    invoke-virtual {v6}, Lcom/inmobi/ads/NativeV2Asset;->p()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    .line 231
    const/4 v0, 0x4

    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 232
    sget-object v0, Lcom/inmobi/ads/ae;->k:Landroid/os/Handler;

    new-instance v1, Lcom/inmobi/ads/ae$3;

    invoke-direct {v1, p0, v2}, Lcom/inmobi/ads/ae$3;-><init>(Lcom/inmobi/ads/ae;Landroid/view/View;)V

    .line 237
    invoke-virtual {v6}, Lcom/inmobi/ads/NativeV2Asset;->p()I

    move-result v3

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    .line 232
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 239
    :cond_4
    invoke-static {v6, p1}, Lcom/inmobi/ads/NativeStrandViewFactory;->a(Lcom/inmobi/ads/NativeV2Asset;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 240
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_5

    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetType;->ASSET_TYPE_VIDEO:Lcom/inmobi/ads/NativeV2Asset$AssetType;

    .line 241
    invoke-virtual {v6}, Lcom/inmobi/ads/NativeV2Asset;->a()Lcom/inmobi/ads/NativeV2Asset$AssetType;

    move-result-object v1

    if-ne v0, v1, :cond_5

    move-object v0, v6

    .line 242
    check-cast v0, Lcom/inmobi/ads/av;

    move-object v1, v2

    check-cast v1, Lcom/inmobi/ads/NativeStrandVideoWrapper;

    .line 243
    invoke-virtual {v1}, Lcom/inmobi/ads/NativeStrandVideoWrapper;->getVideoView()Lcom/inmobi/ads/NativeStrandVideoView;

    move-result-object v1

    .line 242
    invoke-direct {p0, v0, v1}, Lcom/inmobi/ads/ae;->a(Lcom/inmobi/ads/av;Lcom/inmobi/ads/NativeStrandVideoView;)V

    .line 245
    :cond_5
    invoke-direct {p0, v6, v2}, Lcom/inmobi/ads/ae;->a(Lcom/inmobi/ads/NativeV2Asset;Landroid/view/View;)V

    .line 246
    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetType;->ASSET_TYPE_TIMER:Lcom/inmobi/ads/NativeV2Asset$AssetType;

    invoke-virtual {v6}, Lcom/inmobi/ads/NativeV2Asset;->a()Lcom/inmobi/ads/NativeV2Asset$AssetType;

    move-result-object v1

    if-ne v0, v1, :cond_6

    .line 247
    const-string v0, "timerView"

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v0, v6

    .line 248
    check-cast v0, Lcom/inmobi/ads/as;

    move-object v1, v2

    check-cast v1, Lcom/inmobi/ads/NativeStrandTimerView;

    invoke-direct {p0, v0, v1}, Lcom/inmobi/ads/ae;->a(Lcom/inmobi/ads/as;Lcom/inmobi/ads/NativeStrandTimerView;)V

    .line 250
    :cond_6
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v8, :cond_0

    sget-object v0, Lcom/inmobi/ads/NativeV2Asset$AssetType;->ASSET_TYPE_VIDEO:Lcom/inmobi/ads/NativeV2Asset$AssetType;

    .line 251
    invoke-virtual {v6}, Lcom/inmobi/ads/NativeV2Asset;->a()Lcom/inmobi/ads/NativeV2Asset$AssetType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    move-object v0, v2

    .line 252
    check-cast v0, Lcom/inmobi/ads/NativeStrandVideoWrapper;

    iget-object v1, p0, Lcom/inmobi/ads/ae;->f:Lcom/inmobi/ads/aw;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/NativeStrandVideoWrapper;->setVideoEventListener(Lcom/inmobi/ads/aw;)V

    move-object v0, v2

    .line 253
    check-cast v0, Lcom/inmobi/ads/NativeStrandVideoWrapper;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoWrapper;->a()V

    .line 255
    new-instance v0, Lcom/inmobi/ads/ae$4;

    invoke-direct {v0, p0, v2}, Lcom/inmobi/ads/ae$4;-><init>(Lcom/inmobi/ads/ae;Landroid/view/View;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0

    .line 287
    :cond_7
    return-object p1
.end method

.method static synthetic b(Lcom/inmobi/ads/ae;)Lcom/inmobi/ads/NativeV2DataModel;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/inmobi/ads/ae;->c:Lcom/inmobi/ads/NativeV2DataModel;

    return-object v0
.end method

.method static synthetic c(Lcom/inmobi/ads/ae;)Lcom/inmobi/ads/ae$b;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/inmobi/ads/ae;->g:Lcom/inmobi/ads/ae$b;

    return-object v0
.end method

.method private c(Lcom/inmobi/ads/ag;Landroid/view/ViewGroup;)Lcom/inmobi/ads/ag;
    .locals 3
    .param p1    # Lcom/inmobi/ads/ag;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 142
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/inmobi/ads/ae;->j:Lcom/inmobi/ads/NativeStrandViewFactory;

    .line 143
    invoke-virtual {p0}, Lcom/inmobi/ads/ae;->a()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/ads/ae;->c:Lcom/inmobi/ads/NativeV2DataModel;

    invoke-virtual {v2}, Lcom/inmobi/ads/NativeV2DataModel;->b()Lcom/inmobi/ads/aj;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/ads/NativeStrandViewFactory;->a(Landroid/content/Context;Lcom/inmobi/ads/NativeV2Asset;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/ag;

    .line 146
    :goto_0
    invoke-virtual {v0}, Lcom/inmobi/ads/ag;->getChildCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/inmobi/ads/ae;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/inmobi/ads/NativeStrandViewFactory;->a(Landroid/content/Context;)Lcom/inmobi/ads/NativeStrandViewFactory;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/NativeStrandViewFactory;->a(Landroid/view/ViewGroup;)V

    .line 148
    iget-object v1, p0, Lcom/inmobi/ads/ae;->c:Lcom/inmobi/ads/NativeV2DataModel;

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeV2DataModel;->b()Lcom/inmobi/ads/aj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/aj;->b()Lcom/inmobi/ads/NativeStrandAssetStyle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/inmobi/ads/NativeStrandViewFactory;->a(Landroid/view/View;Lcom/inmobi/ads/NativeStrandAssetStyle;)V

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/inmobi/ads/ae;->c:Lcom/inmobi/ads/NativeV2DataModel;

    .line 153
    invoke-virtual {v1}, Lcom/inmobi/ads/NativeV2DataModel;->b()Lcom/inmobi/ads/aj;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/inmobi/ads/NativeStrandViewFactory;->a(Lcom/inmobi/ads/NativeV2Asset;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 152
    invoke-virtual {v0, v1}, Lcom/inmobi/ads/ag;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    return-object v0

    :cond_1
    move-object v0, p1

    .line 143
    goto :goto_0
.end method

.method static synthetic d(Lcom/inmobi/ads/ae;)Lcom/inmobi/ads/aw;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/inmobi/ads/ae;->f:Lcom/inmobi/ads/aw;

    return-object v0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/inmobi/ads/ae;->a:Ljava/lang/String;

    return-object v0
.end method

.method private e()I
    .locals 2

    .prologue
    .line 419
    iget v0, p0, Lcom/inmobi/ads/ae;->i:I

    if-nez v0, :cond_0

    .line 420
    const v0, 0x800003

    .line 424
    :goto_0
    return v0

    .line 421
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/ae;->c:Lcom/inmobi/ads/NativeV2DataModel;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeV2DataModel;->j()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/inmobi/ads/ae;->i:I

    if-ne v0, v1, :cond_1

    .line 422
    const v0, 0x800005

    goto :goto_0

    .line 424
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic e(Lcom/inmobi/ads/ae;)Lcom/inmobi/ads/ae$a;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/inmobi/ads/ae;->e:Lcom/inmobi/ads/ae$a;

    return-object v0
.end method


# virtual methods
.method public a(I)I
    .locals 2

    .prologue
    .line 175
    iput p1, p0, Lcom/inmobi/ads/ae;->i:I

    .line 176
    iget-object v0, p0, Lcom/inmobi/ads/ae;->d:Lcom/inmobi/ads/ae$c;

    if-eqz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/inmobi/ads/ae;->d:Lcom/inmobi/ads/ae$c;

    iget-object v1, p0, Lcom/inmobi/ads/ae;->c:Lcom/inmobi/ads/NativeV2DataModel;

    .line 178
    invoke-virtual {v1, p1}, Lcom/inmobi/ads/NativeV2DataModel;->b(I)Lcom/inmobi/ads/aj;

    move-result-object v1

    .line 177
    invoke-interface {v0, p1, v1}, Lcom/inmobi/ads/ae$c;->a(ILcom/inmobi/ads/NativeV2Asset;)V

    .line 181
    :cond_0
    invoke-direct {p0}, Lcom/inmobi/ads/ae;->e()I

    move-result v0

    return v0
.end method

.method public a()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/inmobi/ads/ae;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/inmobi/ads/aj;)Landroid/view/ViewGroup;
    .locals 1
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/inmobi/ads/aj;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 160
    invoke-direct {p0, p1, p2, p3}, Lcom/inmobi/ads/ae;->b(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/inmobi/ads/aj;)Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup;Lcom/inmobi/ads/aj;)Landroid/view/ViewGroup;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/inmobi/ads/aj;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 165
    iget-object v0, p0, Lcom/inmobi/ads/ae;->j:Lcom/inmobi/ads/NativeStrandViewFactory;

    invoke-virtual {p0}, Lcom/inmobi/ads/ae;->a()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/inmobi/ads/NativeStrandViewFactory;->a(Landroid/content/Context;Lcom/inmobi/ads/NativeV2Asset;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 166
    if-eqz v0, :cond_0

    .line 167
    invoke-static {p2, p1}, Lcom/inmobi/ads/NativeStrandViewFactory;->a(Lcom/inmobi/ads/NativeV2Asset;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 169
    :cond_0
    return-object v0
.end method

.method public a(Lcom/inmobi/ads/ag;Landroid/view/ViewGroup;)Lcom/inmobi/ads/ag;
    .locals 2
    .param p1    # Lcom/inmobi/ads/ag;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 114
    .line 115
    invoke-direct {p0, p1, p2}, Lcom/inmobi/ads/ae;->c(Lcom/inmobi/ads/ag;Landroid/view/ViewGroup;)Lcom/inmobi/ads/ag;

    move-result-object v0

    .line 116
    iget-boolean v1, p0, Lcom/inmobi/ads/ae;->l:Z

    if-nez v1, :cond_0

    .line 117
    iget-object v1, p0, Lcom/inmobi/ads/ae;->c:Lcom/inmobi/ads/NativeV2DataModel;

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeV2DataModel;->b()Lcom/inmobi/ads/aj;

    move-result-object v1

    invoke-virtual {p0, v0, p2, v1}, Lcom/inmobi/ads/ae;->a(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Lcom/inmobi/ads/aj;)Landroid/view/ViewGroup;

    .line 119
    :cond_0
    return-object v0
.end method

.method a(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 433
    iget-object v0, p0, Lcom/inmobi/ads/ae;->j:Lcom/inmobi/ads/NativeStrandViewFactory;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/NativeStrandViewFactory;->a(Landroid/view/View;)V

    .line 434
    return-void
.end method

.method public a(Lcom/inmobi/ads/aw;)V
    .locals 0
    .param p1    # Lcom/inmobi/ads/aw;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 109
    iput-object p1, p0, Lcom/inmobi/ads/ae;->f:Lcom/inmobi/ads/aw;

    .line 110
    return-void
.end method

.method b()I
    .locals 1

    .prologue
    .line 429
    iget v0, p0, Lcom/inmobi/ads/ae;->i:I

    return v0
.end method

.method public b(Lcom/inmobi/ads/ag;Landroid/view/ViewGroup;)Lcom/inmobi/ads/ag;
    .locals 3
    .param p1    # Lcom/inmobi/ads/ag;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 124
    .line 125
    invoke-direct {p0, p1, p2}, Lcom/inmobi/ads/ae;->c(Lcom/inmobi/ads/ag;Landroid/view/ViewGroup;)Lcom/inmobi/ads/ag;

    move-result-object v0

    .line 129
    sget-object v1, Lcom/inmobi/ads/ae;->k:Landroid/os/Handler;

    new-instance v2, Lcom/inmobi/ads/ae$1;

    invoke-direct {v2, p0, v0, p2}, Lcom/inmobi/ads/ae$1;-><init>(Lcom/inmobi/ads/ae;Lcom/inmobi/ads/ag;Landroid/view/ViewGroup;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 137
    return-object v0
.end method

.method c()V
    .locals 1

    .prologue
    .line 437
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/ae;->l:Z

    .line 438
    iget-object v0, p0, Lcom/inmobi/ads/ae;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 439
    iget-object v0, p0, Lcom/inmobi/ads/ae;->h:Lcom/inmobi/ads/ap;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/inmobi/ads/ae;->h:Lcom/inmobi/ads/ap;

    invoke-interface {v0}, Lcom/inmobi/ads/ap;->destroy()V

    .line 442
    :cond_0
    return-void
.end method
