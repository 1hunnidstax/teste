.class Lcom/inmobi/ads/NativeStrandViewFactory;
.super Ljava/lang/Object;
.source "NativeStrandViewFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/NativeStrandViewFactory$b;,
        Lcom/inmobi/ads/NativeStrandViewFactory$a;,
        Lcom/inmobi/ads/NativeStrandViewFactory$PicassoCallback;,
        Lcom/inmobi/ads/NativeStrandViewFactory$c;,
        Lcom/inmobi/ads/NativeStrandViewFactory$d;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final c:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Lcom/inmobi/ads/NativeStrandViewFactory$d;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile e:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/inmobi/ads/NativeStrandViewFactory;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:I

.field private d:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/inmobi/ads/NativeStrandViewFactory$d;",
            "Lcom/inmobi/ads/NativeStrandViewFactory$c;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    const-class v0, Lcom/inmobi/ads/NativeStrandViewFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/NativeStrandViewFactory;->a:Ljava/lang/String;

    .line 273
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/inmobi/ads/NativeStrandViewFactory;->c:Ljava/util/Map;

    .line 274
    sget-object v0, Lcom/inmobi/ads/NativeStrandViewFactory;->c:Ljava/util/Map;

    const-class v1, Lcom/inmobi/ads/ag;

    sget-object v2, Lcom/inmobi/ads/NativeStrandViewFactory$d;->a:Lcom/inmobi/ads/NativeStrandViewFactory$d;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    sget-object v0, Lcom/inmobi/ads/NativeStrandViewFactory;->c:Ljava/util/Map;

    const-class v1, Lcom/inmobi/ads/bc;

    sget-object v2, Lcom/inmobi/ads/NativeStrandViewFactory$d;->b:Lcom/inmobi/ads/NativeStrandViewFactory$d;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    sget-object v0, Lcom/inmobi/ads/NativeStrandViewFactory;->c:Ljava/util/Map;

    const-class v1, Lcom/inmobi/ads/bb;

    sget-object v2, Lcom/inmobi/ads/NativeStrandViewFactory$d;->c:Lcom/inmobi/ads/NativeStrandViewFactory$d;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    sget-object v0, Lcom/inmobi/ads/NativeStrandViewFactory;->c:Ljava/util/Map;

    const-class v1, Lcom/inmobi/ads/NativeStrandContainerLayout;

    sget-object v2, Lcom/inmobi/ads/NativeStrandViewFactory$d;->d:Lcom/inmobi/ads/NativeStrandViewFactory$d;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    sget-object v0, Lcom/inmobi/ads/NativeStrandViewFactory;->c:Ljava/util/Map;

    const-class v1, Landroid/widget/ImageView;

    sget-object v2, Lcom/inmobi/ads/NativeStrandViewFactory$d;->g:Lcom/inmobi/ads/NativeStrandViewFactory$d;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    sget-object v0, Lcom/inmobi/ads/NativeStrandViewFactory;->c:Ljava/util/Map;

    const-class v1, Lcom/inmobi/ads/NativeStrandVideoWrapper;

    sget-object v2, Lcom/inmobi/ads/NativeStrandViewFactory$d;->h:Lcom/inmobi/ads/NativeStrandViewFactory$d;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    sget-object v0, Lcom/inmobi/ads/NativeStrandViewFactory;->c:Ljava/util/Map;

    const-class v1, Lcom/inmobi/ads/NativeStrandViewFactory$b;

    sget-object v2, Lcom/inmobi/ads/NativeStrandViewFactory$d;->e:Lcom/inmobi/ads/NativeStrandViewFactory$d;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    sget-object v0, Lcom/inmobi/ads/NativeStrandViewFactory;->c:Ljava/util/Map;

    const-class v1, Landroid/widget/Button;

    sget-object v2, Lcom/inmobi/ads/NativeStrandViewFactory$d;->f:Lcom/inmobi/ads/NativeStrandViewFactory$d;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    sget-object v0, Lcom/inmobi/ads/NativeStrandViewFactory;->c:Ljava/util/Map;

    const-class v1, Lcom/inmobi/ads/NativeStrandTimerView;

    sget-object v2, Lcom/inmobi/ads/NativeStrandViewFactory$d;->i:Lcom/inmobi/ads/NativeStrandViewFactory$d;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 285
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 286
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/NativeStrandViewFactory;->d:Ljava/util/Map;

    .line 289
    new-instance v0, Lcom/inmobi/ads/NativeStrandViewFactory$1;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/NativeStrandViewFactory$1;-><init>(Lcom/inmobi/ads/NativeStrandViewFactory;)V

    .line 301
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandViewFactory;->d:Ljava/util/Map;

    sget-object v2, Lcom/inmobi/ads/NativeStrandViewFactory$d;->a:Lcom/inmobi/ads/NativeStrandViewFactory$d;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    new-instance v0, Lcom/inmobi/ads/NativeStrandViewFactory$4;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/NativeStrandViewFactory$4;-><init>(Lcom/inmobi/ads/NativeStrandViewFactory;)V

    .line 316
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandViewFactory;->d:Ljava/util/Map;

    sget-object v2, Lcom/inmobi/ads/NativeStrandViewFactory$d;->d:Lcom/inmobi/ads/NativeStrandViewFactory$d;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    new-instance v0, Lcom/inmobi/ads/NativeStrandViewFactory$5;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/NativeStrandViewFactory$5;-><init>(Lcom/inmobi/ads/NativeStrandViewFactory;)V

    .line 337
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandViewFactory;->d:Ljava/util/Map;

    sget-object v2, Lcom/inmobi/ads/NativeStrandViewFactory$d;->b:Lcom/inmobi/ads/NativeStrandViewFactory$d;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    new-instance v0, Lcom/inmobi/ads/NativeStrandViewFactory$6;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/NativeStrandViewFactory$6;-><init>(Lcom/inmobi/ads/NativeStrandViewFactory;)V

    .line 356
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandViewFactory;->d:Ljava/util/Map;

    sget-object v2, Lcom/inmobi/ads/NativeStrandViewFactory$d;->c:Lcom/inmobi/ads/NativeStrandViewFactory$d;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    new-instance v0, Lcom/inmobi/ads/NativeStrandViewFactory$7;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/NativeStrandViewFactory$7;-><init>(Lcom/inmobi/ads/NativeStrandViewFactory;)V

    .line 382
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandViewFactory;->d:Ljava/util/Map;

    sget-object v2, Lcom/inmobi/ads/NativeStrandViewFactory$d;->g:Lcom/inmobi/ads/NativeStrandViewFactory$d;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    new-instance v0, Lcom/inmobi/ads/NativeStrandViewFactory$8;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/NativeStrandViewFactory$8;-><init>(Lcom/inmobi/ads/NativeStrandViewFactory;)V

    .line 413
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandViewFactory;->d:Ljava/util/Map;

    sget-object v2, Lcom/inmobi/ads/NativeStrandViewFactory$d;->h:Lcom/inmobi/ads/NativeStrandViewFactory$d;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    new-instance v0, Lcom/inmobi/ads/NativeStrandViewFactory$9;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/NativeStrandViewFactory$9;-><init>(Lcom/inmobi/ads/NativeStrandViewFactory;)V

    .line 438
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandViewFactory;->d:Ljava/util/Map;

    sget-object v2, Lcom/inmobi/ads/NativeStrandViewFactory$d;->e:Lcom/inmobi/ads/NativeStrandViewFactory$d;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    new-instance v0, Lcom/inmobi/ads/NativeStrandViewFactory$10;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/NativeStrandViewFactory$10;-><init>(Lcom/inmobi/ads/NativeStrandViewFactory;)V

    .line 463
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandViewFactory;->d:Ljava/util/Map;

    sget-object v2, Lcom/inmobi/ads/NativeStrandViewFactory$d;->f:Lcom/inmobi/ads/NativeStrandViewFactory$d;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    new-instance v0, Lcom/inmobi/ads/NativeStrandViewFactory$11;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/NativeStrandViewFactory$11;-><init>(Lcom/inmobi/ads/NativeStrandViewFactory;)V

    .line 486
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandViewFactory;->d:Ljava/util/Map;

    sget-object v2, Lcom/inmobi/ads/NativeStrandViewFactory$d;->i:Lcom/inmobi/ads/NativeStrandViewFactory$d;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/NativeStrandViewFactory;)I
    .locals 2

    .prologue
    .line 60
    iget v0, p0, Lcom/inmobi/ads/NativeStrandViewFactory;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/inmobi/ads/NativeStrandViewFactory;->b:I

    return v0
.end method

.method private static a(Landroid/view/View;F)Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x42200000    # 40.0f

    .line 781
    mul-float v0, v1, p1

    float-to-int v0, v0

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {p0, v2, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 782
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 783
    invoke-virtual {p0}, Landroid/view/View;->buildDrawingCache()V

    .line 784
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/inmobi/ads/NativeV2Asset;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;
    .locals 6
    .param p0    # Lcom/inmobi/ads/NativeV2Asset;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v5, 0x0

    .line 1127
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeV2Asset;->b()Lcom/inmobi/ads/NativeStrandAssetStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandAssetStyle;->a()Landroid/graphics/Point;

    move-result-object v0

    .line 1128
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeV2Asset;->b()Lcom/inmobi/ads/NativeStrandAssetStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeStrandAssetStyle;->b()Landroid/graphics/Point;

    move-result-object v2

    .line 1130
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 1131
    instance-of v3, p1, Lcom/inmobi/ads/NativeStrandContainerLayout;

    if-eqz v3, :cond_0

    .line 1132
    new-instance v1, Lcom/inmobi/ads/NativeStrandContainerLayout$a;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v3, v0}, Lcom/inmobi/ads/NativeStrandContainerLayout$a;-><init>(II)V

    move-object v0, v1

    .line 1133
    check-cast v0, Lcom/inmobi/ads/NativeStrandContainerLayout$a;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v3, v2}, Lcom/inmobi/ads/NativeStrandContainerLayout$a;->a(II)V

    .line 1147
    :goto_0
    return-object v1

    .line 1134
    :cond_0
    instance-of v3, p1, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1

    .line 1135
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v3, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    move-object v0, v1

    .line 1136
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v3, v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 1137
    :cond_1
    instance-of v3, p1, Landroid/widget/AbsListView;

    if-eqz v3, :cond_2

    .line 1139
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    iget v2, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v2, v0}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    goto :goto_0

    .line 1140
    :cond_2
    instance-of v3, p1, Landroid/widget/FrameLayout;

    if-eqz v3, :cond_3

    .line 1141
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v3, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    move-object v0, v1

    .line 1142
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v3, v2, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0

    .line 1144
    :cond_3
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/NativeStrandViewFactory;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not set layout params for Parent:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1145
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1144
    invoke-static {v0, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic a(Landroid/widget/Button;Lcom/inmobi/ads/NativeV2Asset;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 60
    invoke-static {p0, p1}, Lcom/inmobi/ads/NativeStrandViewFactory;->b(Landroid/widget/Button;Lcom/inmobi/ads/NativeV2Asset;)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method private a(Lcom/inmobi/ads/NativeV2Asset;)Lcom/inmobi/ads/NativeStrandViewFactory$d;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 602
    instance-of v0, p1, Lcom/inmobi/ads/aj;

    if-eqz v0, :cond_2

    .line 603
    check-cast p1, Lcom/inmobi/ads/aj;

    .line 604
    invoke-virtual {p1}, Lcom/inmobi/ads/aj;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 605
    sget-object v0, Lcom/inmobi/ads/NativeStrandViewFactory$d;->a:Lcom/inmobi/ads/NativeStrandViewFactory$d;

    .line 633
    :goto_0
    return-object v0

    .line 606
    :cond_0
    invoke-virtual {p1}, Lcom/inmobi/ads/aj;->C()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 607
    sget-object v0, Lcom/inmobi/ads/NativeStrandViewFactory$3;->a:[I

    invoke-virtual {p1}, Lcom/inmobi/ads/aj;->z()Lcom/inmobi/ads/aj$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/aj$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 610
    sget-object v0, Lcom/inmobi/ads/NativeStrandViewFactory$d;->b:Lcom/inmobi/ads/NativeStrandViewFactory$d;

    goto :goto_0

    .line 612
    :pswitch_0
    sget-object v0, Lcom/inmobi/ads/NativeStrandViewFactory$d;->c:Lcom/inmobi/ads/NativeStrandViewFactory$d;

    goto :goto_0

    .line 615
    :cond_1
    sget-object v0, Lcom/inmobi/ads/NativeStrandViewFactory$d;->d:Lcom/inmobi/ads/NativeStrandViewFactory$d;

    goto :goto_0

    .line 618
    :cond_2
    sget-object v0, Lcom/inmobi/ads/NativeStrandViewFactory$3;->b:[I

    invoke-virtual {p1}, Lcom/inmobi/ads/NativeV2Asset;->a()Lcom/inmobi/ads/NativeV2Asset$AssetType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeV2Asset$AssetType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 633
    const/4 v0, 0x0

    goto :goto_0

    .line 620
    :pswitch_1
    sget-object v0, Lcom/inmobi/ads/NativeStrandViewFactory$d;->e:Lcom/inmobi/ads/NativeStrandViewFactory$d;

    goto :goto_0

    .line 623
    :pswitch_2
    sget-object v0, Lcom/inmobi/ads/NativeStrandViewFactory$d;->g:Lcom/inmobi/ads/NativeStrandViewFactory$d;

    goto :goto_0

    .line 625
    :pswitch_3
    sget-object v0, Lcom/inmobi/ads/NativeStrandViewFactory$d;->h:Lcom/inmobi/ads/NativeStrandViewFactory$d;

    goto :goto_0

    .line 627
    :pswitch_4
    sget-object v0, Lcom/inmobi/ads/NativeStrandViewFactory$d;->f:Lcom/inmobi/ads/NativeStrandViewFactory$d;

    goto :goto_0

    .line 629
    :pswitch_5
    sget-object v0, Lcom/inmobi/ads/NativeStrandViewFactory$d;->i:Lcom/inmobi/ads/NativeStrandViewFactory$d;

    goto :goto_0

    .line 607
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 618
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static a(Landroid/content/Context;)Lcom/inmobi/ads/NativeStrandViewFactory;
    .locals 3
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 496
    sget-object v0, Lcom/inmobi/ads/NativeStrandViewFactory;->e:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_2

    move-object v0, v1

    .line 498
    :goto_0
    if-nez v0, :cond_1

    .line 499
    const-class v2, Lcom/inmobi/ads/NativeStrandViewFactory;

    monitor-enter v2

    .line 500
    :try_start_0
    sget-object v0, Lcom/inmobi/ads/NativeStrandViewFactory;->e:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_3

    move-object v0, v1

    .line 501
    :goto_1
    if-nez v0, :cond_0

    .line 502
    new-instance v0, Lcom/inmobi/ads/NativeStrandViewFactory;

    invoke-direct {v0}, Lcom/inmobi/ads/NativeStrandViewFactory;-><init>()V

    .line 503
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/inmobi/ads/NativeStrandViewFactory;->e:Ljava/lang/ref/WeakReference;

    .line 505
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 507
    :cond_1
    return-object v0

    .line 496
    :cond_2
    sget-object v0, Lcom/inmobi/ads/NativeStrandViewFactory;->e:Ljava/lang/ref/WeakReference;

    .line 497
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeStrandViewFactory;

    goto :goto_0

    .line 500
    :cond_3
    :try_start_1
    sget-object v0, Lcom/inmobi/ads/NativeStrandViewFactory;->e:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeStrandViewFactory;

    goto :goto_1

    .line 505
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/inmobi/ads/NativeStrandViewFactory;Ljava/lang/ref/WeakReference;)Ljava/lang/ref/WeakReference;
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/inmobi/ads/NativeStrandViewFactory;->f:Ljava/lang/ref/WeakReference;

    return-object p1
.end method

.method private a()V
    .locals 1

    .prologue
    .line 674
    invoke-direct {p0}, Lcom/inmobi/ads/NativeStrandViewFactory;->b()Lcom/inmobi/ads/NativeStrandViewFactory$c;

    move-result-object v0

    .line 675
    if-eqz v0, :cond_0

    .line 676
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandViewFactory$c;->b()V

    .line 682
    :cond_0
    return-void
.end method

.method static synthetic a(Landroid/app/Activity;Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 60
    invoke-static {p0, p1}, Lcom/inmobi/ads/NativeStrandViewFactory;->b(Landroid/app/Activity;Landroid/widget/ImageView;)V

    return-void
.end method

.method static synthetic a(Landroid/app/Activity;Landroid/widget/ImageView;Lcom/inmobi/ads/NativeV2Asset;)V
    .locals 0

    .prologue
    .line 60
    invoke-static {p0, p1, p2}, Lcom/inmobi/ads/NativeStrandViewFactory;->b(Landroid/app/Activity;Landroid/widget/ImageView;Lcom/inmobi/ads/NativeV2Asset;)V

    return-void
.end method

.method static a(Landroid/view/View;Lcom/inmobi/ads/NativeStrandAssetStyle;)V
    .locals 6
    .param p1    # Lcom/inmobi/ads/NativeStrandAssetStyle;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 1057
    const-string v0, "#00000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 1059
    :try_start_0
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeStrandAssetStyle;->g()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1067
    :goto_0
    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1068
    sget-object v1, Lcom/inmobi/ads/NativeStrandAssetStyle$b;->b:Lcom/inmobi/ads/NativeStrandAssetStyle$b;

    invoke-virtual {p1}, Lcom/inmobi/ads/NativeStrandAssetStyle;->c()Lcom/inmobi/ads/NativeStrandAssetStyle$b;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 1069
    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 1070
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 1071
    sget-object v0, Lcom/inmobi/ads/NativeStrandAssetStyle$a;->a:Lcom/inmobi/ads/NativeStrandAssetStyle$a;

    invoke-virtual {p1}, Lcom/inmobi/ads/NativeStrandAssetStyle;->d()Lcom/inmobi/ads/NativeStrandAssetStyle$a;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 1072
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeStrandAssetStyle;->e()F

    move-result v0

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1074
    :cond_0
    const-string v0, "#ff000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 1076
    :try_start_1
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeStrandAssetStyle;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v0

    .line 1083
    :goto_1
    const/4 v1, 0x1

    invoke-virtual {v2, v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 1084
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_2

    .line 1086
    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1091
    :cond_1
    :goto_2
    return-void

    .line 1060
    :catch_0
    move-exception v1

    .line 1061
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/NativeStrandViewFactory;->a:Ljava/lang/String;

    const-string v4, "Error parsing background color for container! Will fallback to default background color"

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1064
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v1}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0

    .line 1077
    :catch_1
    move-exception v1

    .line 1078
    sget-object v3, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v4, Lcom/inmobi/ads/NativeStrandViewFactory;->a:Ljava/lang/String;

    const-string v5, "Error parsing border color for container! Will fallback to default border color"

    invoke-static {v3, v4, v5}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1081
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v3

    new-instance v4, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v4, v1}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_1

    .line 1088
    :cond_2
    invoke-virtual {p0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method private a(Landroid/view/View;Lcom/inmobi/ads/NativeV2Asset;)V
    .locals 9
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/inmobi/ads/NativeV2Asset;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    .line 1019
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeV2Asset;->u()Lcom/inmobi/ads/NativeV2Asset;

    move-result-object v5

    .line 1021
    const/4 v2, 0x0

    .line 1023
    if-eqz v5, :cond_6

    sget-object v0, Lcom/inmobi/ads/NativeStrandAssetStyle$b;->b:Lcom/inmobi/ads/NativeStrandAssetStyle$b;

    invoke-virtual {v5}, Lcom/inmobi/ads/NativeV2Asset;->b()Lcom/inmobi/ads/NativeStrandAssetStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/ads/NativeStrandAssetStyle;->c()Lcom/inmobi/ads/NativeStrandAssetStyle$b;

    move-result-object v3

    if-ne v0, v3, :cond_6

    .line 1024
    invoke-virtual {v5}, Lcom/inmobi/ads/NativeV2Asset;->b()Lcom/inmobi/ads/NativeStrandAssetStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandAssetStyle;->b()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->x:I

    invoke-virtual {p2}, Lcom/inmobi/ads/NativeV2Asset;->b()Lcom/inmobi/ads/NativeStrandAssetStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/ads/NativeStrandAssetStyle;->b()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    if-ne v0, v3, :cond_5

    move v0, v1

    .line 1028
    :goto_0
    invoke-virtual {v5}, Lcom/inmobi/ads/NativeV2Asset;->b()Lcom/inmobi/ads/NativeStrandAssetStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/ads/NativeStrandAssetStyle;->a()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->x:I

    .line 1029
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeV2Asset;->b()Lcom/inmobi/ads/NativeStrandAssetStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inmobi/ads/NativeStrandAssetStyle;->a()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    invoke-virtual {p2}, Lcom/inmobi/ads/NativeV2Asset;->b()Lcom/inmobi/ads/NativeStrandAssetStyle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/inmobi/ads/NativeStrandAssetStyle;->b()Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    add-int/2addr v4, v6

    if-ne v3, v4, :cond_4

    move v3, v1

    .line 1033
    :goto_1
    invoke-virtual {v5}, Lcom/inmobi/ads/NativeV2Asset;->b()Lcom/inmobi/ads/NativeStrandAssetStyle;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inmobi/ads/NativeStrandAssetStyle;->b()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {p2}, Lcom/inmobi/ads/NativeV2Asset;->b()Lcom/inmobi/ads/NativeStrandAssetStyle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/inmobi/ads/NativeStrandAssetStyle;->b()Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    if-ne v4, v6, :cond_3

    move v4, v1

    .line 1037
    :goto_2
    invoke-virtual {v5}, Lcom/inmobi/ads/NativeV2Asset;->b()Lcom/inmobi/ads/NativeStrandAssetStyle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/inmobi/ads/NativeStrandAssetStyle;->a()Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->y:I

    .line 1038
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeV2Asset;->b()Lcom/inmobi/ads/NativeStrandAssetStyle;

    move-result-object v7

    invoke-virtual {v7}, Lcom/inmobi/ads/NativeStrandAssetStyle;->a()Landroid/graphics/Point;

    move-result-object v7

    iget v7, v7, Landroid/graphics/Point;->y:I

    invoke-virtual {p2}, Lcom/inmobi/ads/NativeV2Asset;->b()Lcom/inmobi/ads/NativeStrandAssetStyle;

    move-result-object v8

    invoke-virtual {v8}, Lcom/inmobi/ads/NativeStrandAssetStyle;->b()Landroid/graphics/Point;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    add-int/2addr v7, v8

    if-ne v6, v7, :cond_0

    move v2, v1

    .line 1042
    :cond_0
    invoke-virtual {v5}, Lcom/inmobi/ads/NativeV2Asset;->b()Lcom/inmobi/ads/NativeStrandAssetStyle;

    move-result-object v5

    invoke-virtual {v5}, Lcom/inmobi/ads/NativeStrandAssetStyle;->a()Landroid/graphics/Point;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Point;->x:I

    invoke-virtual {p2}, Lcom/inmobi/ads/NativeV2Asset;->b()Lcom/inmobi/ads/NativeStrandAssetStyle;

    move-result-object v6

    invoke-virtual {v6}, Lcom/inmobi/ads/NativeStrandAssetStyle;->a()Landroid/graphics/Point;

    move-result-object v6

    iget v6, v6, Landroid/graphics/Point;->x:I

    if-ne v5, v6, :cond_2

    move v0, v1

    .line 1047
    :goto_3
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x11

    if-ge v3, v5, :cond_1

    .line 1048
    invoke-virtual {p1, v0, v4, v1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 1052
    :goto_4
    return-void

    .line 1050
    :cond_1
    invoke-virtual {p1, v0, v4, v1, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_4

    :cond_2
    move v1, v3

    goto :goto_3

    :cond_3
    move v4, v2

    goto :goto_2

    :cond_4
    move v3, v2

    goto :goto_1

    :cond_5
    move v0, v2

    goto/16 :goto_0

    :cond_6
    move v1, v2

    move v4, v2

    move v0, v2

    goto :goto_3
.end method

.method private a(Landroid/widget/ImageView;Lcom/inmobi/ads/NativeV2Asset;)V
    .locals 6
    .param p1    # Landroid/widget/ImageView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/inmobi/ads/NativeV2Asset;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 741
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeV2Asset;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 742
    if-eqz v0, :cond_1

    .line 743
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeV2Asset;->b()Lcom/inmobi/ads/NativeStrandAssetStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeStrandAssetStyle;->a()Landroid/graphics/Point;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 744
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeV2Asset;->b()Lcom/inmobi/ads/NativeStrandAssetStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeStrandAssetStyle;->a()Landroid/graphics/Point;

    move-result-object v1

    iget v3, v1, Landroid/graphics/Point;->y:I

    .line 745
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeV2Asset;->b()Lcom/inmobi/ads/NativeStrandAssetStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeStrandAssetStyle;->h()Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;

    move-result-object v1

    .line 746
    sget-object v4, Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;->CONTENT_MODE_ASPECT_FIT:Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;

    if-ne v1, v4, :cond_2

    .line 747
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 756
    :goto_0
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandViewFactory;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    .line 757
    if-eqz v1, :cond_0

    .line 758
    if-lez v2, :cond_0

    if-lez v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    .line 759
    invoke-static {}, Lcom/inmobi/commons/core/a/a;->a()Z

    move-result v2

    if-nez v2, :cond_4

    .line 760
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->ERROR:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/NativeStrandViewFactory;->a:Ljava/lang/String;

    const-string v3, "Please include Picasso library as per integration guidelines."

    invoke-static {v0, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    invoke-static {v1, p1, p2}, Lcom/inmobi/ads/NativeStrandViewFactory;->b(Landroid/app/Activity;Landroid/widget/ImageView;Lcom/inmobi/ads/NativeV2Asset;)V

    .line 775
    :cond_0
    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/inmobi/ads/NativeStrandViewFactory;->a(Landroid/view/View;Lcom/inmobi/ads/NativeV2Asset;)V

    .line 776
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeV2Asset;->b()Lcom/inmobi/ads/NativeStrandAssetStyle;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/inmobi/ads/NativeStrandViewFactory;->a(Landroid/view/View;Lcom/inmobi/ads/NativeStrandAssetStyle;)V

    .line 778
    :cond_1
    return-void

    .line 748
    :cond_2
    sget-object v4, Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;->CONTENT_MODE_ASPECT_FILL:Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;

    if-ne v1, v4, :cond_3

    .line 749
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 751
    :cond_3
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 764
    :cond_4
    invoke-static {v1}, Lcom/inmobi/commons/core/a/a;->a(Landroid/app/Activity;)Lcom/squareup/picasso/Picasso;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v0

    new-instance v2, Lcom/inmobi/ads/NativeStrandViewFactory$PicassoCallback;

    invoke-direct {v2, v1, p1, p2}, Lcom/inmobi/ads/NativeStrandViewFactory$PicassoCallback;-><init>(Landroid/app/Activity;Landroid/widget/ImageView;Lcom/inmobi/ads/NativeV2Asset;)V

    .line 765
    invoke-virtual {v0, p1, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;Lcom/squareup/picasso/Callback;)V

    .line 766
    const-string v0, "cross_button"

    invoke-virtual {p2}, Lcom/inmobi/ads/NativeV2Asset;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 767
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeV2Asset;->r()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 769
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/inmobi/ads/NativeStrandViewFactory$a;

    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandViewFactory;->f:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {v2, v0, p1}, Lcom/inmobi/ads/NativeStrandViewFactory$a;-><init>(Landroid/app/Activity;Landroid/widget/ImageView;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1
.end method

.method static synthetic a(Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 60
    invoke-static {p0}, Lcom/inmobi/ads/NativeStrandViewFactory;->b(Landroid/widget/TextView;)V

    return-void
.end method

.method private a(Landroid/widget/TextView;Lcom/inmobi/ads/NativeV2Asset;)V
    .locals 7
    .param p1    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 888
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeV2Asset;->b()Lcom/inmobi/ads/NativeStrandAssetStyle;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/ar$a;

    .line 889
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 890
    invoke-virtual {v0}, Lcom/inmobi/ads/ar$a;->a()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v0}, Lcom/inmobi/ads/ar$a;->a()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 889
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 891
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeV2Asset;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 892
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 893
    invoke-direct {p0, p1, v0}, Lcom/inmobi/ads/NativeStrandViewFactory;->a(Landroid/widget/TextView;Lcom/inmobi/ads/ar$a;)V

    .line 896
    invoke-virtual {v0}, Lcom/inmobi/ads/ar$a;->i()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v6, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 899
    const-string v1, "#ff000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 901
    :try_start_0
    invoke-virtual {v0}, Lcom/inmobi/ads/ar$a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 908
    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 910
    const-string v1, "#00000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 912
    :try_start_1
    invoke-virtual {v0}, Lcom/inmobi/ads/ar$a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 919
    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 921
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 922
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setTextAlignment(I)V

    .line 924
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/ads/ar$a;->k()[Lcom/inmobi/ads/ar$a$b;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/inmobi/ads/NativeStrandViewFactory;->a(Landroid/widget/TextView;[Lcom/inmobi/ads/ar$a$b;)V

    .line 925
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 926
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    .line 927
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 928
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 929
    invoke-static {p1, v0}, Lcom/inmobi/ads/NativeStrandViewFactory;->a(Landroid/view/View;Lcom/inmobi/ads/NativeStrandAssetStyle;)V

    .line 930
    return-void

    .line 902
    :catch_0
    move-exception v2

    .line 903
    sget-object v3, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v4, Lcom/inmobi/ads/NativeStrandViewFactory;->a:Ljava/lang/String;

    const-string v5, "Error parsing color for text asset! Will fallback to default text color"

    invoke-static {v3, v4, v5}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v3

    new-instance v4, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v4, v2}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0

    .line 913
    :catch_1
    move-exception v2

    .line 914
    sget-object v3, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v4, Lcom/inmobi/ads/NativeStrandViewFactory;->a:Ljava/lang/String;

    const-string v5, "Error parsing background color for text asset! Will fallback to default background color"

    invoke-static {v3, v4, v5}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v3

    new-instance v4, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v4, v2}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_1
.end method

.method private a(Landroid/widget/TextView;Lcom/inmobi/ads/ar$a;)V
    .locals 2

    .prologue
    .line 933
    sget-object v0, Lcom/inmobi/ads/NativeStrandViewFactory$3;->c:[I

    invoke-virtual {p2}, Lcom/inmobi/ads/ar$a;->l()Lcom/inmobi/ads/ar$a$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/ar$a$a;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 936
    const v0, 0x800013

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 944
    :goto_0
    return-void

    .line 939
    :pswitch_0
    const v0, 0x800015

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 942
    :pswitch_1
    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_0

    .line 933
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static a(Landroid/widget/TextView;[Lcom/inmobi/ads/ar$a$b;)V
    .locals 7
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 947
    .line 948
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    .line 949
    array-length v3, p1

    move v2, v0

    move v6, v1

    move v1, v0

    move v0, v6

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v4, p1, v2

    .line 950
    sget-object v5, Lcom/inmobi/ads/NativeStrandViewFactory$3;->d:[I

    invoke-virtual {v4}, Lcom/inmobi/ads/ar$a$b;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_0

    .line 949
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 953
    :pswitch_0
    or-int/lit8 v1, v1, 0x1

    .line 954
    goto :goto_1

    .line 956
    :pswitch_1
    or-int/lit8 v1, v1, 0x2

    .line 957
    goto :goto_1

    .line 959
    :pswitch_2
    or-int/lit8 v0, v0, 0x10

    .line 960
    goto :goto_1

    .line 962
    :pswitch_3
    or-int/lit8 v0, v0, 0x8

    .line 963
    goto :goto_1

    .line 968
    :cond_0
    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p0, v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 969
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 970
    return-void

    .line 950
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private a(Lcom/inmobi/ads/NativeStrandTimerView;Lcom/inmobi/ads/NativeV2Asset;)V
    .locals 7

    .prologue
    const-wide/16 v2, 0x0

    .line 703
    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/inmobi/ads/NativeStrandTimerView;->setVisibility(I)V

    .line 704
    check-cast p2, Lcom/inmobi/ads/as;

    .line 705
    invoke-virtual {p2}, Lcom/inmobi/ads/as;->z()Lcom/inmobi/ads/as$a;

    move-result-object v0

    .line 706
    invoke-virtual {p2}, Lcom/inmobi/ads/as;->A()Lcom/inmobi/ads/as$a;

    move-result-object v6

    .line 709
    if-eqz v0, :cond_2

    .line 710
    :try_start_0
    invoke-virtual {v0}, Lcom/inmobi/ads/as$a;->a()J

    move-result-wide v0

    move-wide v4, v0

    .line 713
    :goto_0
    if-eqz v6, :cond_1

    .line 714
    invoke-virtual {v6}, Lcom/inmobi/ads/as$a;->a()J

    move-result-wide v0

    .line 716
    :goto_1
    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-virtual {p2}, Lcom/inmobi/ads/as;->y()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 717
    invoke-virtual {p1, v0, v1}, Lcom/inmobi/ads/NativeStrandTimerView;->setTimerValue(J)V

    .line 718
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/inmobi/ads/NativeStrandViewFactory$2;

    invoke-direct {v1, p0, p1}, Lcom/inmobi/ads/NativeStrandViewFactory$2;-><init>(Lcom/inmobi/ads/NativeStrandViewFactory;Lcom/inmobi/ads/NativeStrandTimerView;)V

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    :cond_0
    :goto_2
    return-void

    .line 728
    :catch_0
    move-exception v0

    .line 729
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/NativeStrandViewFactory;->a:Ljava/lang/String;

    const-string v3, "Error while converting timer duration to long"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_2

    :cond_1
    move-wide v0, v2

    goto :goto_1

    :cond_2
    move-wide v4, v2

    goto :goto_0
.end method

.method private a(Lcom/inmobi/ads/NativeStrandVideoWrapper;Lcom/inmobi/ads/NativeV2Asset;)V
    .locals 3
    .param p1    # Lcom/inmobi/ads/NativeStrandVideoWrapper;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    .prologue
    .line 867
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_1

    .line 868
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeV2Asset;->b()Lcom/inmobi/ads/NativeStrandAssetStyle;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/inmobi/ads/NativeStrandViewFactory;->a(Landroid/view/View;Lcom/inmobi/ads/NativeStrandAssetStyle;)V

    .line 869
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeV2Asset;->d()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/bk;

    invoke-interface {v0}, Lcom/inmobi/ads/bk;->b()Ljava/lang/String;

    move-result-object v1

    .line 871
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeV2Asset;->w()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 872
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeV2Asset;->w()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0}, Lcom/inmobi/ads/NativeStrandVideoWrapper;->setPosterImage(Landroid/graphics/Bitmap;)V

    .line 874
    :cond_0
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeStrandVideoWrapper;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 875
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeStrandVideoWrapper;->getVideoView()Lcom/inmobi/ads/NativeStrandVideoView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/NativeStrandVideoView;->setVideoPath(Ljava/lang/String;)V

    .line 877
    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/NativeStrandViewFactory;Landroid/widget/ImageView;Lcom/inmobi/ads/NativeV2Asset;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/inmobi/ads/NativeStrandViewFactory;->a(Landroid/widget/ImageView;Lcom/inmobi/ads/NativeV2Asset;)V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/NativeStrandViewFactory;Landroid/widget/TextView;Lcom/inmobi/ads/NativeV2Asset;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/inmobi/ads/NativeStrandViewFactory;->a(Landroid/widget/TextView;Lcom/inmobi/ads/NativeV2Asset;)V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/NativeStrandViewFactory;Lcom/inmobi/ads/NativeStrandTimerView;Lcom/inmobi/ads/NativeV2Asset;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/inmobi/ads/NativeStrandViewFactory;->a(Lcom/inmobi/ads/NativeStrandTimerView;Lcom/inmobi/ads/NativeV2Asset;)V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/NativeStrandViewFactory;Lcom/inmobi/ads/NativeStrandVideoWrapper;Lcom/inmobi/ads/NativeV2Asset;)V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0, p1, p2}, Lcom/inmobi/ads/NativeStrandViewFactory;->a(Lcom/inmobi/ads/NativeStrandVideoWrapper;Lcom/inmobi/ads/NativeV2Asset;)V

    return-void
.end method

.method static synthetic b(Lcom/inmobi/ads/NativeStrandViewFactory;)I
    .locals 2

    .prologue
    .line 60
    iget v0, p0, Lcom/inmobi/ads/NativeStrandViewFactory;->b:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/inmobi/ads/NativeStrandViewFactory;->b:I

    return v0
.end method

.method private static b(Landroid/widget/Button;Lcom/inmobi/ads/NativeV2Asset;)Landroid/widget/Button;
    .locals 7
    .param p0    # Landroid/widget/Button;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Lcom/inmobi/ads/NativeV2Asset;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x11
    .end annotation

    .prologue
    const/16 v6, 0x11

    .line 974
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeV2Asset;->b()Lcom/inmobi/ads/NativeStrandAssetStyle;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/ak$a;

    .line 975
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    .line 976
    invoke-virtual {v0}, Lcom/inmobi/ads/ak$a;->a()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v0}, Lcom/inmobi/ads/ak$a;->a()Landroid/graphics/Point;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Point;->y:I

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 975
    invoke-virtual {p0, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 978
    invoke-virtual {p1}, Lcom/inmobi/ads/NativeV2Asset;->d()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 981
    const/4 v1, 0x1

    invoke-virtual {v0}, Lcom/inmobi/ads/ak$a;->i()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v1, v2}, Landroid/widget/Button;->setTextSize(IF)V

    .line 983
    const-string v1, "#ff000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 985
    :try_start_0
    invoke-virtual {v0}, Lcom/inmobi/ads/ak$a;->j()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 992
    :goto_0
    invoke-virtual {p0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 994
    const-string v1, "#00000000"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    .line 996
    :try_start_1
    invoke-virtual {v0}, Lcom/inmobi/ads/ak$a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    .line 1003
    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 1005
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v1, v6, :cond_0

    .line 1006
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setTextAlignment(I)V

    .line 1008
    :cond_0
    invoke-virtual {p0, v6}, Landroid/widget/Button;->setGravity(I)V

    .line 1010
    invoke-virtual {v0}, Lcom/inmobi/ads/ak$a;->k()[Lcom/inmobi/ads/ar$a$b;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/inmobi/ads/NativeStrandViewFactory;->a(Landroid/widget/TextView;[Lcom/inmobi/ads/ar$a$b;)V

    .line 1011
    invoke-static {p0, v0}, Lcom/inmobi/ads/NativeStrandViewFactory;->a(Landroid/view/View;Lcom/inmobi/ads/NativeStrandAssetStyle;)V

    .line 1012
    return-object p0

    .line 986
    :catch_0
    move-exception v2

    .line 987
    sget-object v3, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v4, Lcom/inmobi/ads/NativeStrandViewFactory;->a:Ljava/lang/String;

    const-string v5, "Error parsing color for CTA asset! Will fallback to default text color"

    invoke-static {v3, v4, v5}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 990
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v3

    new-instance v4, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v4, v2}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0

    .line 997
    :catch_1
    move-exception v2

    .line 998
    sget-object v3, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v4, Lcom/inmobi/ads/NativeStrandViewFactory;->a:Ljava/lang/String;

    const-string v5, "Error parsing background color for CTA asset! Will fallback to default background color"

    invoke-static {v3, v4, v5}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v3

    new-instance v4, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v4, v2}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v3, v4}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_1
.end method

.method private b()Lcom/inmobi/ads/NativeStrandViewFactory$c;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 691
    const/4 v3, 0x0

    .line 692
    const/4 v2, 0x0

    .line 693
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandViewFactory;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 694
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/NativeStrandViewFactory$c;

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeStrandViewFactory$c;->a()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 695
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeStrandViewFactory$c;

    .line 696
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandViewFactory$c;->a()I

    move-result v1

    :goto_1
    move-object v2, v0

    move v3, v1

    .line 698
    goto :goto_0

    .line 699
    :cond_0
    return-object v2

    :cond_1
    move-object v0, v2

    move v1, v3

    goto :goto_1
.end method

.method private static b(Landroid/app/Activity;Landroid/widget/ImageView;)V
    .locals 3

    .prologue
    .line 788
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 789
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->a()Lcom/inmobi/commons/core/utilities/info/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/utilities/info/c;->c()F

    move-result v0

    .line 790
    new-instance v1, Lcom/inmobi/rendering/CustomView;

    sget-object v2, Lcom/inmobi/rendering/CustomView$SwitchIconType;->CLOSE_BUTTON:Lcom/inmobi/rendering/CustomView$SwitchIconType;

    invoke-direct {v1, p0, v0, v2}, Lcom/inmobi/rendering/CustomView;-><init>(Landroid/content/Context;FLcom/inmobi/rendering/CustomView$SwitchIconType;)V

    .line 791
    invoke-static {v1, v0}, Lcom/inmobi/ads/NativeStrandViewFactory;->a(Landroid/view/View;F)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 792
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 794
    :cond_0
    return-void
.end method

.method private static b(Landroid/app/Activity;Landroid/widget/ImageView;Lcom/inmobi/ads/NativeV2Asset;)V
    .locals 3

    .prologue
    .line 797
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeV2Asset;->q()Ljava/lang/String;

    .line 798
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeV2Asset;->r()Ljava/lang/String;

    move-result-object v0

    .line 799
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeV2Asset;->c()Ljava/lang/String;

    move-result-object v1

    .line 808
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 809
    const-string v2, "cross_button"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 810
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 811
    invoke-static {p0, p1}, Lcom/inmobi/ads/NativeStrandViewFactory;->b(Landroid/app/Activity;Landroid/widget/ImageView;)V

    .line 814
    :cond_0
    return-void
.end method

.method static synthetic b(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 60
    invoke-static {p0}, Lcom/inmobi/ads/NativeStrandViewFactory;->d(Landroid/view/View;)V

    return-void
.end method

.method private static b(Landroid/widget/TextView;)V
    .locals 2
    .param p0    # Landroid/widget/TextView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1103
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1104
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v0

    and-int/lit8 v0, v0, -0x11

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 1105
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v0

    and-int/lit8 v0, v0, -0x9

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setPaintFlags(I)V

    .line 1106
    return-void
.end method

.method static synthetic c(Lcom/inmobi/ads/NativeStrandViewFactory;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandViewFactory;->f:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method private c(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 646
    sget-object v0, Lcom/inmobi/ads/NativeStrandViewFactory;->c:Ljava/util/Map;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeStrandViewFactory$d;

    .line 647
    if-nez v0, :cond_0

    .line 648
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/NativeStrandViewFactory;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "View type unknown, ignoring recycle:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    :goto_0
    return-void

    .line 651
    :cond_0
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandViewFactory;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/NativeStrandViewFactory$c;

    .line 652
    if-nez v1, :cond_1

    .line 653
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/NativeStrandViewFactory;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported AssetType:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " failed to recycle view"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 657
    :cond_1
    iget v0, p0, Lcom/inmobi/ads/NativeStrandViewFactory;->b:I

    const/16 v2, 0x12c

    if-lt v0, v2, :cond_2

    .line 658
    invoke-direct {p0}, Lcom/inmobi/ads/NativeStrandViewFactory;->a()V

    .line 660
    :cond_2
    invoke-virtual {v1, p1}, Lcom/inmobi/ads/NativeStrandViewFactory$c;->a(Landroid/view/View;)Z

    goto :goto_0
.end method

.method private static d(Landroid/view/View;)V
    .locals 3
    .param p0    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 1117
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 1119
    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1123
    :goto_0
    return-void

    .line 1121
    :cond_0
    invoke-virtual {p0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/inmobi/ads/NativeV2Asset;)Landroid/view/View;
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/inmobi/ads/NativeV2Asset;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 520
    invoke-direct {p0, p2}, Lcom/inmobi/ads/NativeStrandViewFactory;->a(Lcom/inmobi/ads/NativeV2Asset;)Lcom/inmobi/ads/NativeStrandViewFactory$d;

    move-result-object v0

    .line 521
    if-nez v0, :cond_0

    .line 523
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/NativeStrandViewFactory;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported AssetType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 524
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeV2Asset;->a()Lcom/inmobi/ads/NativeV2Asset$AssetType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/ads/NativeV2Asset$AssetType;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " failed to instantiate view "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 523
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 526
    const/4 v0, 0x0

    .line 535
    :goto_0
    return-object v0

    .line 529
    :cond_0
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandViewFactory;->d:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeStrandViewFactory$c;

    .line 530
    invoke-virtual {v0, p1, p2}, Lcom/inmobi/ads/NativeStrandViewFactory$c;->a(Landroid/content/Context;Lcom/inmobi/ads/NativeV2Asset;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public a(Landroid/view/View;)V
    .locals 5
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 564
    instance-of v0, p1, Lcom/inmobi/ads/ag;

    if-nez v0, :cond_0

    instance-of v0, p1, Lcom/inmobi/ads/NativeStrandContainerLayout;

    if-eqz v0, :cond_5

    :cond_0
    move-object v0, p1

    .line 565
    check-cast v0, Lcom/inmobi/ads/NativeStrandContainerLayout;

    .line 567
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandContainerLayout;->getChildCount()I

    move-result v1

    if-nez v1, :cond_2

    .line 568
    invoke-direct {p0, p1}, Lcom/inmobi/ads/NativeStrandViewFactory;->c(Landroid/view/View;)V

    .line 592
    :cond_1
    :goto_0
    return-void

    .line 570
    :cond_2
    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    .line 571
    invoke-virtual {v3, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    :goto_1
    invoke-virtual {v3}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 573
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeStrandContainerLayout;

    .line 574
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandContainerLayout;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v2, v1

    :goto_2
    if-ltz v2, :cond_4

    .line 575
    invoke-virtual {v0, v2}, Lcom/inmobi/ads/NativeStrandContainerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 577
    invoke-virtual {v0, v2}, Lcom/inmobi/ads/NativeStrandContainerLayout;->removeViewAt(I)V

    .line 578
    instance-of v4, v1, Lcom/inmobi/ads/NativeStrandContainerLayout;

    if-eqz v4, :cond_3

    .line 579
    check-cast v1, Lcom/inmobi/ads/NativeStrandContainerLayout;

    invoke-virtual {v3, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 574
    :goto_3
    add-int/lit8 v1, v2, -0x1

    move v2, v1

    goto :goto_2

    .line 581
    :cond_3
    invoke-direct {p0, v1}, Lcom/inmobi/ads/NativeStrandViewFactory;->c(Landroid/view/View;)V

    goto :goto_3

    .line 585
    :cond_4
    invoke-direct {p0, v0}, Lcom/inmobi/ads/NativeStrandViewFactory;->c(Landroid/view/View;)V

    goto :goto_1

    .line 590
    :cond_5
    invoke-direct {p0, p1}, Lcom/inmobi/ads/NativeStrandViewFactory;->c(Landroid/view/View;)V

    goto :goto_0
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 544
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 545
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 546
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 547
    invoke-virtual {p0, v1}, Lcom/inmobi/ads/NativeStrandViewFactory;->a(Landroid/view/View;)V

    .line 544
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 549
    :cond_0
    return-void
.end method
