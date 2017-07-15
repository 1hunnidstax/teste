.class public Lcom/inmobi/ads/NativeStrandVideoWrapper;
.super Landroid/widget/RelativeLayout;
.source "NativeStrandVideoWrapper.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/inmobi/ads/NativeStrandVideoView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ProgressBar;

.field private e:Lcom/inmobi/ads/NativeStrandVideoController;

.field private f:Lcom/inmobi/ads/aw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/inmobi/ads/NativeStrandVideoWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/NativeStrandVideoWrapper;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0}, Lcom/inmobi/ads/NativeStrandVideoWrapper;->b()V

    .line 34
    return-void
.end method

.method private b()V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, -0x2

    const/16 v4, 0xd

    const/4 v3, -0x1

    .line 37
    new-instance v0, Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/inmobi/ads/NativeStrandVideoView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoWrapper;->b:Lcom/inmobi/ads/NativeStrandVideoView;

    .line 38
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 41
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 42
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoWrapper;->b:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {p0, v1, v0}, Lcom/inmobi/ads/NativeStrandVideoWrapper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoWrapper;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoWrapper;->c:Landroid/widget/ImageView;

    .line 45
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoWrapper;->c:Landroid/widget/ImageView;

    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 46
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoWrapper;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 47
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoWrapper;->c:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v0}, Lcom/inmobi/ads/NativeStrandVideoWrapper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 49
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoWrapper;->d:Landroid/widget/ProgressBar;

    .line 50
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoWrapper;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 51
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v5, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 52
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 53
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoWrapper;->d:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1, v0}, Lcom/inmobi/ads/NativeStrandVideoWrapper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 55
    new-instance v0, Lcom/inmobi/ads/NativeStrandVideoController;

    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoWrapper;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/inmobi/ads/NativeStrandVideoController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoWrapper;->e:Lcom/inmobi/ads/NativeStrandVideoController;

    .line 56
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 59
    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 60
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoWrapper;->b:Lcom/inmobi/ads/NativeStrandVideoView;

    iget-object v2, p0, Lcom/inmobi/ads/NativeStrandVideoWrapper;->e:Lcom/inmobi/ads/NativeStrandVideoController;

    invoke-virtual {v1, v2}, Lcom/inmobi/ads/NativeStrandVideoView;->setMediaController(Lcom/inmobi/ads/NativeStrandVideoController;)V

    .line 61
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoWrapper;->e:Lcom/inmobi/ads/NativeStrandVideoController;

    invoke-virtual {p0, v1, v0}, Lcom/inmobi/ads/NativeStrandVideoWrapper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    return-void
.end method


# virtual methods
.method public a()V
    .locals 13

    .prologue
    const/4 v12, -0x1

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 65
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoWrapper;->b:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/av;

    .line 66
    if-eqz v0, :cond_0

    .line 69
    :try_start_0
    invoke-virtual {v0}, Lcom/inmobi/ads/av;->D()Lcom/inmobi/ads/bk;

    move-result-object v1

    invoke-interface {v1}, Lcom/inmobi/ads/bk;->b()Ljava/lang/String;

    move-result-object v1

    .line 70
    new-instance v2, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 71
    invoke-virtual {v2, v1}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    .line 72
    const/16 v1, 0x12

    invoke-virtual {v2, v1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 73
    const/16 v3, 0x13

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 74
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V

    .line 76
    invoke-virtual {v0}, Lcom/inmobi/ads/av;->b()Lcom/inmobi/ads/NativeStrandAssetStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandAssetStyle;->a()Landroid/graphics/Point;

    move-result-object v0

    .line 77
    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-double v2, v2

    iget v5, v0, Landroid/graphics/Point;->y:I

    int-to-double v6, v5

    div-double/2addr v2, v6

    .line 78
    int-to-double v6, v1

    int-to-double v8, v4

    div-double/2addr v6, v8

    .line 80
    cmpl-double v2, v2, v6

    if-lez v2, :cond_1

    .line 81
    int-to-double v2, v1

    iget v1, v0, Landroid/graphics/Point;->y:I

    int-to-double v6, v1

    mul-double/2addr v6, v10

    int-to-double v4, v4

    div-double v4, v6, v4

    mul-double/2addr v2, v4

    .line 82
    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-double v0, v0

    move-wide v4, v2

    move-wide v2, v0

    .line 87
    :goto_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    double-to-int v1, v4

    double-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_1
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 97
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoWrapper;->b:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/NativeStrandVideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    :cond_0
    return-void

    .line 84
    :cond_1
    :try_start_1
    iget v2, v0, Landroid/graphics/Point;->x:I

    int-to-double v2, v2

    .line 85
    int-to-double v4, v4

    iget v0, v0, Landroid/graphics/Point;->x:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    int-to-double v6, v0

    mul-double/2addr v6, v10

    int-to-double v0, v1

    div-double v0, v6, v0

    mul-double/2addr v0, v4

    move-wide v4, v2

    move-wide v2, v0

    goto :goto_0

    .line 90
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 91
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/NativeStrandVideoWrapper;->a:Ljava/lang/String;

    const-string v3, "SDK encountered unexpected error in computing aspect ratio for video"

    invoke-static {v0, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 94
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v1}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_1
.end method

.method public getPoster()Landroid/widget/ImageView;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoWrapper;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getProgressBar()Landroid/widget/ProgressBar;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoWrapper;->d:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public getVideoController()Lcom/inmobi/ads/NativeStrandVideoController;
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoWrapper;->e:Lcom/inmobi/ads/NativeStrandVideoController;

    return-object v0
.end method

.method public getVideoView()Lcom/inmobi/ads/NativeStrandVideoView;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoWrapper;->b:Lcom/inmobi/ads/NativeStrandVideoView;

    return-object v0
.end method

.method public setPosterImage(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 102
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoWrapper;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 103
    return-void
.end method

.method public setVideoEventListener(Lcom/inmobi/ads/aw;)V
    .locals 0

    .prologue
    .line 125
    iput-object p1, p0, Lcom/inmobi/ads/NativeStrandVideoWrapper;->f:Lcom/inmobi/ads/aw;

    .line 126
    return-void
.end method
