.class public Lcom/inmobi/rendering/CustomView;
.super Landroid/view/View;
.source "CustomView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/rendering/CustomView$SwitchIconType;
    }
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:Lcom/inmobi/rendering/CustomView$SwitchIconType;

.field private g:I

.field private h:Landroid/graphics/Paint;

.field private i:Landroid/graphics/Path;

.field private j:Landroid/graphics/RectF;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FLcom/inmobi/rendering/CustomView$SwitchIconType;)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/inmobi/rendering/CustomView;-><init>(Landroid/content/Context;)V

    .line 49
    iput-object p3, p0, Lcom/inmobi/rendering/CustomView;->f:Lcom/inmobi/rendering/CustomView$SwitchIconType;

    .line 50
    iput p2, p0, Lcom/inmobi/rendering/CustomView;->a:F

    .line 51
    const/16 v0, 0xf

    iput v0, p0, Lcom/inmobi/rendering/CustomView;->g:I

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    .line 53
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/inmobi/rendering/CustomView;->j:Landroid/graphics/RectF;

    .line 54
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    .line 55
    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    const/high16 v5, 0x40e00000    # 7.0f

    const/high16 v4, 0x40c00000    # 6.0f

    const/high16 v2, 0x40a00000    # 5.0f

    .line 248
    const/high16 v0, 0x42480000    # 50.0f

    iget v1, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/inmobi/rendering/CustomView;->d:F

    .line 249
    iget v0, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/inmobi/rendering/CustomView;->b:F

    .line 250
    iget v0, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v0, v2

    iput v0, p0, Lcom/inmobi/rendering/CustomView;->c:F

    .line 252
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 253
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 254
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 255
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 256
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    iget v1, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->b:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->c:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 257
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    iget v1, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->c:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 258
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    iget v1, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->c:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 259
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    iget v1, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v2, v5

    add-float/2addr v1, v2

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->c:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 260
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    iget v1, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->c:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 261
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    iget v1, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->b:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->c:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 262
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    iget v1, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->b:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->c:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 263
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 264
    return-void
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 11

    .prologue
    const/high16 v3, 0x42b40000    # 90.0f

    const/high16 v10, 0x41200000    # 10.0f

    const/high16 v9, 0x40a00000    # 5.0f

    const/high16 v8, 0x40400000    # 3.0f

    const/high16 v2, -0x3dcc0000    # -45.0f

    .line 267
    new-instance v1, Landroid/graphics/RectF;

    iget v0, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v4, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v4, v10

    sub-float/2addr v0, v4

    iget v4, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v5, p0, Lcom/inmobi/rendering/CustomView;->c:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v5, v8

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/inmobi/rendering/CustomView;->d:F

    const/high16 v6, 0x41700000    # 15.0f

    iget v7, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v7, p0, Lcom/inmobi/rendering/CustomView;->c:F

    add-float/2addr v6, v7

    iget v7, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    invoke-direct {v1, v0, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 268
    new-instance v6, Landroid/graphics/RectF;

    iget v0, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v4, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v4, v10

    sub-float/2addr v0, v4

    iget v4, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v5, p0, Lcom/inmobi/rendering/CustomView;->c:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v5, v9

    sub-float/2addr v4, v5

    iget v5, p0, Lcom/inmobi/rendering/CustomView;->d:F

    const/high16 v7, 0x41a00000    # 20.0f

    iget v8, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v7, v8

    add-float/2addr v5, v7

    iget v7, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v8, p0, Lcom/inmobi/rendering/CustomView;->c:F

    add-float/2addr v7, v8

    iget v8, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-direct {v6, v0, v4, v5, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 269
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    const/4 v4, -0x1

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 270
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    const/high16 v4, 0x40800000    # 4.0f

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 271
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 272
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 273
    const/4 v4, 0x0

    iget-object v5, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    move-object v0, p1

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 274
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 275
    return-void
.end method

.method private c(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    .line 279
    const/high16 v0, 0x41c80000    # 25.0f

    iget v1, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/inmobi/rendering/CustomView;->e:F

    .line 280
    const/high16 v0, 0x41f00000    # 30.0f

    iget v1, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/inmobi/rendering/CustomView;->d:F

    .line 281
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 282
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 283
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    const/high16 v1, 0x40e00000    # 7.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 284
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 285
    iget v0, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v1, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->e:F

    iget-object v3, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 286
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x1

    const/high16 v4, 0x40a00000    # 5.0f

    const/high16 v5, 0x40400000    # 3.0f

    const/high16 v7, 0x40000000    # 2.0f

    .line 59
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 60
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 61
    sget-object v0, Lcom/inmobi/rendering/CustomView$1;->a:[I

    iget-object v1, p0, Lcom/inmobi/rendering/CustomView;->f:Lcom/inmobi/rendering/CustomView$SwitchIconType;

    invoke-virtual {v1}, Lcom/inmobi/rendering/CustomView$SwitchIconType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 245
    :goto_0
    return-void

    .line 64
    :pswitch_0
    const/high16 v0, 0x42480000    # 50.0f

    iget v1, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v0, v1

    div-float/2addr v0, v7

    iput v0, p0, Lcom/inmobi/rendering/CustomView;->d:F

    .line 65
    iget v0, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v0, v5

    iput v0, p0, Lcom/inmobi/rendering/CustomView;->b:F

    .line 66
    iget v0, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v0, v5

    iput v0, p0, Lcom/inmobi/rendering/CustomView;->c:F

    .line 68
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 69
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 70
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    iget v1, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->b:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->c:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 73
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    iget v1, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->b:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->c:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 74
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    iget v1, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->b:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->c:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 76
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    iget v1, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->b:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->c:F

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 78
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    iget v1, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->b:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->c:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 79
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    iget v1, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->b:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->c:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 81
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    iget v1, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->b:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->c:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 83
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    iget v1, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->b:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->c:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 84
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    iget v1, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->b:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->c:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 86
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    iget v1, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->b:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->c:F

    add-float/2addr v2, v3

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 88
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    iget v1, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->b:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->c:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 89
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    iget v1, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->b:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v2, v4

    add-float/2addr v1, v2

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->c:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 91
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 95
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/inmobi/rendering/CustomView;->a(Landroid/graphics/Canvas;)V

    .line 96
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    const/high16 v1, 0x40800000    # 4.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 98
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 99
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    iget v1, p0, Lcom/inmobi/rendering/CustomView;->d:F

    const/high16 v2, 0x41400000    # 12.0f

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->c:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 100
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    iget v1, p0, Lcom/inmobi/rendering/CustomView;->d:F

    const/high16 v2, 0x41a00000    # 20.0f

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->c:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 101
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    iget v1, p0, Lcom/inmobi/rendering/CustomView;->d:F

    const/high16 v2, 0x41a00000    # 20.0f

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->c:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 102
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    iget v1, p0, Lcom/inmobi/rendering/CustomView;->d:F

    const/high16 v2, 0x41400000    # 12.0f

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->c:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 103
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 107
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/inmobi/rendering/CustomView;->a(Landroid/graphics/Canvas;)V

    .line 108
    invoke-direct {p0, p1}, Lcom/inmobi/rendering/CustomView;->b(Landroid/graphics/Canvas;)V

    .line 109
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 112
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/inmobi/rendering/CustomView;->c(Landroid/graphics/Canvas;)V

    .line 113
    iget v0, p0, Lcom/inmobi/rendering/CustomView;->e:F

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/inmobi/rendering/CustomView;->b:F

    .line 114
    iget v0, p0, Lcom/inmobi/rendering/CustomView;->e:F

    div-float/2addr v0, v5

    iput v0, p0, Lcom/inmobi/rendering/CustomView;->c:F

    .line 116
    iget v0, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v1, p0, Lcom/inmobi/rendering/CustomView;->b:F

    sub-float v1, v0, v1

    iget v0, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->c:F

    sub-float v2, v0, v2

    iget v0, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->b:F

    sub-float v3, v0, v3

    iget v0, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v4, p0, Lcom/inmobi/rendering/CustomView;->c:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 117
    iget v0, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v1, p0, Lcom/inmobi/rendering/CustomView;->b:F

    add-float/2addr v1, v0

    iget v0, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->c:F

    sub-float v2, v0, v2

    iget v0, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->b:F

    add-float/2addr v3, v0

    iget v0, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v4, p0, Lcom/inmobi/rendering/CustomView;->c:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 121
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/inmobi/rendering/CustomView;->c(Landroid/graphics/Canvas;)V

    .line 122
    iget v0, p0, Lcom/inmobi/rendering/CustomView;->e:F

    div-float/2addr v0, v5

    iput v0, p0, Lcom/inmobi/rendering/CustomView;->b:F

    .line 123
    iget v0, p0, Lcom/inmobi/rendering/CustomView;->e:F

    div-float/2addr v0, v5

    iput v0, p0, Lcom/inmobi/rendering/CustomView;->c:F

    .line 125
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 127
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    iget v1, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->b:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->d:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 128
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    iget v1, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->b:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->c:F

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 129
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    iget v1, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->b:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->c:F

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 130
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    iget v1, p0, Lcom/inmobi/rendering/CustomView;->d:F

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->b:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->d:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 131
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 135
    :pswitch_5
    const/high16 v0, 0x42480000    # 50.0f

    iget v1, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v0, v1

    div-float v6, v0, v7

    .line 136
    const/high16 v0, 0x41f00000    # 30.0f

    iget v1, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v0, v1

    div-float v7, v0, v7

    .line 137
    div-float v0, v7, v5

    sub-float v1, v6, v0

    .line 138
    div-float v0, v7, v5

    add-float v3, v6, v0

    .line 140
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 141
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 143
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 144
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v6, v7, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 145
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 147
    iget-object v5, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 148
    iget-object v5, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v3

    move v4, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 149
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v6, v7, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 153
    :pswitch_6
    const/high16 v0, 0x42480000    # 50.0f

    iget v1, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v0, v1

    div-float/2addr v0, v7

    .line 154
    const/high16 v1, 0x41f00000    # 30.0f

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v1, v2

    div-float/2addr v1, v7

    .line 156
    iget-object v2, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 157
    iget-object v2, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v2, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 158
    iget-object v2, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    iget-object v2, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 160
    iget-object v2, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 161
    iget-object v2, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 163
    iget-object v2, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 164
    iget-object v2, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 165
    iget-object v2, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 166
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->j:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/inmobi/rendering/CustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/rendering/CustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->g:I

    int-to-float v3, v3

    iget v4, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/inmobi/rendering/CustomView;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    iget v4, p0, Lcom/inmobi/rendering/CustomView;->g:I

    int-to-float v4, v4

    iget v5, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    invoke-virtual {p0}, Lcom/inmobi/rendering/CustomView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    iget v5, p0, Lcom/inmobi/rendering/CustomView;->g:I

    int-to-float v5, v5

    iget v6, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v5, v6

    div-float/2addr v5, v7

    add-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 167
    iget-object v1, p0, Lcom/inmobi/rendering/CustomView;->j:Landroid/graphics/RectF;

    const/4 v2, 0x0

    const/high16 v3, 0x43870000    # 270.0f

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 168
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 169
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/inmobi/rendering/CustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/rendering/CustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v3, v7

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 170
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/inmobi/rendering/CustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    add-float/2addr v1, v2

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v2, v7

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/rendering/CustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 171
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/inmobi/rendering/CustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    add-float/2addr v1, v2

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v2, v7

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/rendering/CustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 172
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/inmobi/rendering/CustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/rendering/CustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v3, v7

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 173
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 174
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 175
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 179
    :pswitch_7
    const/high16 v0, 0x42480000    # 50.0f

    iget v1, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v0, v1

    div-float/2addr v0, v7

    .line 180
    iget-object v1, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v1, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 181
    iget-object v1, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 182
    iget-object v1, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v1, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 183
    iget-object v1, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 184
    iget-object v1, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v0, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 188
    :pswitch_8
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 189
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 190
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/inmobi/rendering/CustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/rendering/CustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->g:I

    int-to-float v3, v3

    iget v4, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 191
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/inmobi/rendering/CustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/rendering/CustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 192
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/inmobi/rendering/CustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/rendering/CustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->g:I

    int-to-float v3, v3

    iget v4, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 193
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/inmobi/rendering/CustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/rendering/CustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->g:I

    int-to-float v3, v3

    iget v4, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 194
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 196
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 197
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 198
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 199
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 200
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 204
    :pswitch_9
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 205
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 206
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/inmobi/rendering/CustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/rendering/CustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->g:I

    int-to-float v3, v3

    iget v4, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 207
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/inmobi/rendering/CustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/rendering/CustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 208
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/inmobi/rendering/CustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/rendering/CustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->g:I

    int-to-float v3, v3

    iget v4, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 209
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/inmobi/rendering/CustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/rendering/CustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->g:I

    int-to-float v3, v3

    iget v4, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 210
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 212
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 213
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    const v1, -0xbbbbbc

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 214
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 215
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 216
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 220
    :pswitch_a
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 221
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 222
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/inmobi/rendering/CustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/rendering/CustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 223
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/inmobi/rendering/CustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/rendering/CustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->g:I

    int-to-float v3, v3

    iget v4, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v7

    sub-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 224
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/inmobi/rendering/CustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    add-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/rendering/CustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->g:I

    int-to-float v3, v3

    iget v4, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 225
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/inmobi/rendering/CustomView;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/inmobi/rendering/CustomView;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 226
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 228
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 229
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 230
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 231
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 232
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->i:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 236
    :pswitch_b
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 237
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 238
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 239
    iget-object v0, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 240
    invoke-virtual {p0}, Lcom/inmobi/rendering/CustomView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/inmobi/rendering/CustomView;->g:I

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v1, v2

    div-float/2addr v1, v7

    sub-float v1, v0, v1

    invoke-virtual {p0}, Lcom/inmobi/rendering/CustomView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    sub-float v2, v0, v2

    invoke-virtual {p0}, Lcom/inmobi/rendering/CustomView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->g:I

    int-to-float v3, v3

    iget v4, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v3, v0

    invoke-virtual {p0}, Lcom/inmobi/rendering/CustomView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v4, p0, Lcom/inmobi/rendering/CustomView;->g:I

    int-to-float v4, v4

    iget v5, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 241
    invoke-virtual {p0}, Lcom/inmobi/rendering/CustomView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/inmobi/rendering/CustomView;->g:I

    int-to-float v1, v1

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v1, v2

    div-float/2addr v1, v7

    sub-float v1, v0, v1

    invoke-virtual {p0}, Lcom/inmobi/rendering/CustomView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v2, p0, Lcom/inmobi/rendering/CustomView;->g:I

    int-to-float v2, v2

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v2, v3

    div-float/2addr v2, v7

    add-float/2addr v2, v0

    invoke-virtual {p0}, Lcom/inmobi/rendering/CustomView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v3, p0, Lcom/inmobi/rendering/CustomView;->g:I

    int-to-float v3, v3

    iget v4, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v3, v4

    div-float/2addr v3, v7

    add-float/2addr v3, v0

    invoke-virtual {p0}, Lcom/inmobi/rendering/CustomView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v4, p0, Lcom/inmobi/rendering/CustomView;->g:I

    int-to-float v4, v4

    iget v5, p0, Lcom/inmobi/rendering/CustomView;->a:F

    mul-float/2addr v4, v5

    div-float/2addr v4, v7

    sub-float v4, v0, v4

    iget-object v5, p0, Lcom/inmobi/rendering/CustomView;->h:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 61
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public setSwitchInt(Lcom/inmobi/rendering/CustomView$SwitchIconType;)V
    .locals 0

    .prologue
    .line 289
    iput-object p1, p0, Lcom/inmobi/rendering/CustomView;->f:Lcom/inmobi/rendering/CustomView$SwitchIconType;

    .line 290
    return-void
.end method
