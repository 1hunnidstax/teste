.class public Lcom/inmobi/ads/NativeStrandTimerView;
.super Landroid/view/View;
.source "NativeStrandTimerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/NativeStrandTimerView$a;
    }
.end annotation


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:Landroid/graphics/Canvas;

.field private c:Landroid/graphics/RectF;

.field private d:Landroid/graphics/RectF;

.field private e:Landroid/graphics/Rect;

.field private f:J

.field private g:Landroid/graphics/Paint;

.field private h:Landroid/graphics/Paint;

.field private i:Landroid/graphics/Paint;

.field private j:Landroid/graphics/Paint;

.field private k:Landroid/graphics/Paint;

.field private l:F

.field private m:J

.field private n:Landroid/animation/ValueAnimator;

.field private o:Lcom/inmobi/ads/NativeStrandTimerView$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/inmobi/ads/NativeStrandTimerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/inmobi/ads/NativeStrandTimerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/high16 v4, -0x1000000

    const/4 v3, 0x1

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/ads/NativeStrandTimerView;->f:J

    .line 77
    const-string v0, "#F4F4F4"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    .line 81
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/inmobi/ads/NativeStrandTimerView;->g:Landroid/graphics/Paint;

    .line 82
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandTimerView;->g:Landroid/graphics/Paint;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 83
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandTimerView;->g:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/NativeStrandTimerView;->k:Landroid/graphics/Paint;

    .line 86
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandTimerView;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 87
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandTimerView;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 88
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandTimerView;->k:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 89
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandTimerView;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 91
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/NativeStrandTimerView;->e:Landroid/graphics/Rect;

    .line 93
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/NativeStrandTimerView;->h:Landroid/graphics/Paint;

    .line 94
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandTimerView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 95
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandTimerView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/NativeStrandTimerView;->i:Landroid/graphics/Paint;

    .line 98
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandTimerView;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 99
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandTimerView;->i:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 100
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandTimerView;->i:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 102
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/NativeStrandTimerView;->j:Landroid/graphics/Paint;

    .line 103
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandTimerView;->j:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 104
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandTimerView;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 105
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandTimerView;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    return-void
.end method

.method private a(F)V
    .locals 1

    .prologue
    .line 204
    const/high16 v0, 0x43b40000    # 360.0f

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/inmobi/ads/NativeStrandTimerView;->l:F

    .line 206
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandTimerView;->invalidate()V

    .line 207
    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/NativeStrandTimerView;F)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/inmobi/ads/NativeStrandTimerView;->a(F)V

    return-void
.end method

.method private e()V
    .locals 8

    .prologue
    const v5, 0x3be56042    # 0.007f

    .line 210
    const/high16 v0, 0x40800000    # 4.0f

    .line 211
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandTimerView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    mul-float/2addr v0, v5

    float-to-int v0, v0

    .line 210
    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->a(I)I

    move-result v0

    int-to-float v0, v0

    .line 212
    const/high16 v1, 0x41600000    # 14.0f

    .line 213
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandTimerView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    mul-float/2addr v1, v5

    float-to-int v1, v1

    .line 212
    invoke-static {v1}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->a(I)I

    move-result v1

    int-to-float v1, v1

    .line 214
    const/high16 v2, 0x40a00000    # 5.0f

    .line 215
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandTimerView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    mul-float/2addr v2, v5

    float-to-int v2, v2

    .line 214
    invoke-static {v2}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->a(I)I

    move-result v2

    int-to-float v2, v2

    .line 216
    const/high16 v3, 0x3fc00000    # 1.5f

    .line 217
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandTimerView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    mul-float/2addr v3, v5

    float-to-int v3, v3

    .line 216
    invoke-static {v3}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->a(I)I

    move-result v3

    int-to-float v3, v3

    .line 218
    new-instance v4, Landroid/graphics/RectF;

    .line 219
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandTimerView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v2

    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandTimerView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v2

    invoke-direct {v4, v2, v2, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/inmobi/ads/NativeStrandTimerView;->c:Landroid/graphics/RectF;

    .line 220
    new-instance v2, Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/inmobi/ads/NativeStrandTimerView;->c:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/inmobi/ads/NativeStrandTimerView;->c:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    add-float/2addr v5, v0

    iget-object v6, p0, Lcom/inmobi/ads/NativeStrandTimerView;->c:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    sub-float/2addr v6, v0

    iget-object v7, p0, Lcom/inmobi/ads/NativeStrandTimerView;->c:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    sub-float v0, v7, v0

    invoke-direct {v2, v4, v5, v6, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/inmobi/ads/NativeStrandTimerView;->d:Landroid/graphics/RectF;

    .line 222
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandTimerView;->j:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 225
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandTimerView;->k:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 226
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandTimerView;->invalidate()V

    .line 227
    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    .prologue
    .line 170
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/NativeStrandTimerView;->n:Landroid/animation/ValueAnimator;

    .line 171
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandTimerView;->n:Landroid/animation/ValueAnimator;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p0, Lcom/inmobi/ads/NativeStrandTimerView;->f:J

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 172
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandTimerView;->n:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 173
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandTimerView;->n:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/inmobi/ads/NativeStrandTimerView$1;

    invoke-direct {v1, p0}, Lcom/inmobi/ads/NativeStrandTimerView$1;-><init>(Lcom/inmobi/ads/NativeStrandTimerView;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 179
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandTimerView;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 180
    return-void

    .line 170
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Rect;Ljava/lang/String;)V
    .locals 3
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Paint;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/Rect;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 232
    const/4 v0, 0x0

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2, p4, v0, v1, p3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 233
    invoke-virtual {p2}, Landroid/graphics/Paint;->descent()F

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Paint;->ascent()F

    move-result v1

    sub-float/2addr v0, v1

    .line 234
    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-virtual {p2}, Landroid/graphics/Paint;->descent()F

    move-result v1

    sub-float/2addr v0, v1

    .line 235
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandTimerView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandTimerView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    add-float/2addr v0, v2

    invoke-virtual {p1, p4, v1, v0, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 236
    return-void
.end method

.method public b()V
    .locals 6

    .prologue
    .line 183
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandTimerView;->n:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandTimerView;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandTimerView;->n:Landroid/animation/ValueAnimator;

    iget-wide v2, p0, Lcom/inmobi/ads/NativeStrandTimerView;->f:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 185
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Lcom/inmobi/ads/NativeStrandTimerView;->a(F)V

    .line 187
    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandTimerView;->n:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandTimerView;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandTimerView;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/ads/NativeStrandTimerView;->m:J

    .line 192
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandTimerView;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 194
    :cond_0
    return-void
.end method

.method public d()V
    .locals 4

    .prologue
    .line 197
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandTimerView;->n:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandTimerView;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandTimerView;->n:Landroid/animation/ValueAnimator;

    iget-wide v2, p0, Lcom/inmobi/ads/NativeStrandTimerView;->m:J

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setCurrentPlayTime(J)V

    .line 199
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandTimerView;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 201
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v1, 0x0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const/4 v9, 0x0

    .line 133
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandTimerView;->b:Landroid/graphics/Canvas;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 135
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandTimerView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 136
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandTimerView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 137
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 138
    const/high16 v4, 0x40e00000    # 7.0f

    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandTimerView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v4, v5

    const v5, 0x3be56042    # 0.007f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-static {v4}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->a(I)I

    move-result v4

    .line 140
    int-to-float v5, v0

    int-to-float v6, v2

    int-to-float v7, v3

    iget-object v8, p0, Lcom/inmobi/ads/NativeStrandTimerView;->g:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 141
    int-to-float v0, v0

    int-to-float v2, v2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/inmobi/ads/NativeStrandTimerView;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 143
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandTimerView;->n:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 144
    iget-wide v2, p0, Lcom/inmobi/ads/NativeStrandTimerView;->f:J

    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandTimerView;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    sub-long/2addr v2, v4

    long-to-int v2, v2

    .line 146
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandTimerView;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v4, v0

    cmpl-double v0, v4, v10

    if-ltz v0, :cond_2

    move v0, v1

    .line 149
    :goto_0
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandTimerView;->k:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/inmobi/ads/NativeStrandTimerView;->e:Landroid/graphics/Rect;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v1, v2, v0}, Lcom/inmobi/ads/NativeStrandTimerView;->a(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/Rect;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandTimerView;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    float-to-double v0, v0

    cmpl-double v0, v0, v10

    if-ltz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandTimerView;->o:Lcom/inmobi/ads/NativeStrandTimerView$a;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandTimerView;->o:Lcom/inmobi/ads/NativeStrandTimerView$a;

    invoke-interface {v0}, Lcom/inmobi/ads/NativeStrandTimerView$a;->a()V

    .line 153
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandTimerView;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 154
    iput-object v12, p0, Lcom/inmobi/ads/NativeStrandTimerView;->n:Landroid/animation/ValueAnimator;

    .line 158
    :cond_0
    iget v0, p0, Lcom/inmobi/ads/NativeStrandTimerView;->l:F

    cmpl-float v0, v0, v9

    if-lez v0, :cond_1

    .line 159
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandTimerView;->b:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandTimerView;->c:Landroid/graphics/RectF;

    const/high16 v2, 0x43870000    # 270.0f

    iget v3, p0, Lcom/inmobi/ads/NativeStrandTimerView;->l:F

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/inmobi/ads/NativeStrandTimerView;->h:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 160
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandTimerView;->b:Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandTimerView;->d:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/inmobi/ads/NativeStrandTimerView;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandTimerView;->a:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v9, v9, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 163
    return-void

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 0

    .prologue
    .line 115
    invoke-super {p0, p1, p1}, Landroid/view/View;->onMeasure(II)V

    .line 116
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    .line 120
    if-ne p1, p3, :cond_0

    if-eq p2, p4, :cond_1

    .line 121
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/NativeStrandTimerView;->a:Landroid/graphics/Bitmap;

    .line 122
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandTimerView;->a:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 123
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandTimerView;->a:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lcom/inmobi/ads/NativeStrandTimerView;->b:Landroid/graphics/Canvas;

    .line 126
    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 127
    invoke-direct {p0}, Lcom/inmobi/ads/NativeStrandTimerView;->e()V

    .line 128
    return-void
.end method

.method public setTimerEventsListener(Lcom/inmobi/ads/NativeStrandTimerView$a;)V
    .locals 0

    .prologue
    .line 109
    iput-object p1, p0, Lcom/inmobi/ads/NativeStrandTimerView;->o:Lcom/inmobi/ads/NativeStrandTimerView$a;

    .line 110
    return-void
.end method

.method public setTimerValue(J)V
    .locals 1

    .prologue
    .line 166
    iput-wide p1, p0, Lcom/inmobi/ads/NativeStrandTimerView;->f:J

    .line 167
    return-void
.end method
