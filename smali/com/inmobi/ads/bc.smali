.class Lcom/inmobi/ads/bc;
.super Lcom/inmobi/ads/NativeV2ScrollableContainer;
.source "ScrollableDeckPagesContainer.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Landroid/support/v4/view/ViewPager;

.field private c:Landroid/graphics/Point;

.field private d:Landroid/graphics/Point;

.field private e:Z

.field private f:Z

.field private g:Lcom/inmobi/ads/NativeV2ScrollableContainer$a;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lcom/inmobi/ads/bc;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/bc;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/inmobi/ads/NativeV2ScrollableContainer$TYPE;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/inmobi/ads/NativeV2ScrollableContainer;-><init>(Landroid/content/Context;Lcom/inmobi/ads/NativeV2ScrollableContainer$TYPE;)V

    .line 47
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/bc;->c:Landroid/graphics/Point;

    .line 48
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/bc;->d:Landroid/graphics/Point;

    .line 51
    iput-boolean v1, p0, Lcom/inmobi/ads/bc;->f:Z

    .line 63
    invoke-virtual {p0, v1}, Lcom/inmobi/ads/bc;->setClipChildren(Z)V

    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 68
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/ads/bc;->setLayerType(ILandroid/graphics/Paint;)V

    .line 72
    :cond_0
    new-instance v0, Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0}, Lcom/inmobi/ads/bc;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/ViewPager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inmobi/ads/bc;->b:Landroid/support/v4/view/ViewPager;

    .line 73
    iget-object v0, p0, Lcom/inmobi/ads/bc;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p0}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 74
    iget-object v0, p0, Lcom/inmobi/ads/bc;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/bc;->addView(Landroid/view/View;)V

    .line 75
    return-void
.end method

.method private a(FF)I
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 176
    iget-object v1, p0, Lcom/inmobi/ads/bc;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    .line 177
    iget-object v2, p0, Lcom/inmobi/ads/bc;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v2

    .line 178
    iget-object v3, p0, Lcom/inmobi/ads/bc;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getWidth()I

    move-result v3

    .line 179
    invoke-virtual {p0}, Lcom/inmobi/ads/bc;->getWidth()I

    move-result v4

    .line 185
    if-eqz v1, :cond_0

    add-int/lit8 v2, v2, -0x1

    if-ne v2, v1, :cond_3

    .line 186
    :cond_0
    sub-int v2, v4, v3

    .line 188
    if-nez v1, :cond_2

    .line 189
    int-to-float v1, v2

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    int-to-float v1, v2

    cmpl-float v1, p2, v1

    if-lez v1, :cond_1

    .line 190
    int-to-float v0, v2

    sub-float v0, p2, v0

    int-to-float v1, v3

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    .line 210
    :cond_1
    :goto_0
    return v0

    .line 194
    :cond_2
    int-to-float v1, v2

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    int-to-float v1, v2

    cmpg-float v1, p2, v1

    if-gez v1, :cond_1

    .line 195
    int-to-float v0, v2

    sub-float/2addr v0, p2

    int-to-float v1, v3

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    neg-int v0, v0

    goto :goto_0

    .line 200
    :cond_3
    sub-int v1, v4, v3

    div-int/lit8 v1, v1, 0x2

    .line 202
    int-to-float v2, v1

    cmpg-float v2, p1, v2

    if-gez v2, :cond_4

    int-to-float v2, v1

    cmpg-float v2, p2, v2

    if-gez v2, :cond_4

    .line 203
    int-to-float v0, v1

    sub-float/2addr v0, p2

    int-to-float v1, v3

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    neg-int v0, v0

    goto :goto_0

    .line 205
    :cond_4
    add-int v1, v4, v3

    div-int/lit8 v1, v1, 0x2

    .line 206
    int-to-float v2, v1

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    int-to-float v2, v1

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    .line 207
    int-to-float v0, v1

    sub-float v0, p2, v0

    int-to-float v1, v3

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_0
.end method


# virtual methods
.method a()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/ads/bc;->g:Lcom/inmobi/ads/NativeV2ScrollableContainer$a;

    .line 79
    return-void
.end method

.method public a(Lcom/inmobi/ads/aj;Lcom/inmobi/ads/ap;IILcom/inmobi/ads/NativeV2ScrollableContainer$a;)V
    .locals 5
    .param p1    # Lcom/inmobi/ads/aj;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/inmobi/ads/ap;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/inmobi/ads/NativeV2ScrollableContainer$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x14

    .line 91
    .line 92
    invoke-virtual {p1, v4}, Lcom/inmobi/ads/aj;->b(I)Lcom/inmobi/ads/NativeV2Asset;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/inmobi/ads/NativeStrandViewFactory;->a(Lcom/inmobi/ads/NativeV2Asset;Landroid/view/ViewGroup;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 93
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 94
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 95
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 99
    :goto_0
    iput p4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 100
    iget-object v1, p0, Lcom/inmobi/ads/bc;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    iget-object v0, p0, Lcom/inmobi/ads/bc;->b:Landroid/support/v4/view/ViewPager;

    check-cast p2, Lcom/inmobi/ads/ad;

    invoke-virtual {v0, p2}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 104
    iget-object v0, p0, Lcom/inmobi/ads/bc;->b:Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOffscreenPageLimit(I)V

    .line 105
    iget-object v0, p0, Lcom/inmobi/ads/bc;->b:Landroid/support/v4/view/ViewPager;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setPageMargin(I)V

    .line 106
    iget-object v0, p0, Lcom/inmobi/ads/bc;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 107
    iput-object p5, p0, Lcom/inmobi/ads/bc;->g:Lcom/inmobi/ads/NativeV2ScrollableContainer$a;

    .line 108
    return-void

    .line 97
    :cond_0
    invoke-virtual {v0, v3, v4, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    .prologue
    .line 172
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/inmobi/ads/bc;->e:Z

    .line 173
    return-void

    .line 172
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/inmobi/ads/bc;->e:Z

    if-eqz v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/inmobi/ads/bc;->invalidate()V

    .line 156
    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    .prologue
    .line 160
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/bc;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Page Selected:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/inmobi/ads/bc;->b:Landroid/support/v4/view/ViewPager;

    .line 162
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 163
    iget-object v1, p0, Lcom/inmobi/ads/bc;->g:Lcom/inmobi/ads/NativeV2ScrollableContainer$a;

    if-eqz v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/inmobi/ads/bc;->g:Lcom/inmobi/ads/NativeV2ScrollableContainer$a;

    invoke-interface {v1, p1}, Lcom/inmobi/ads/NativeV2ScrollableContainer$a;->a(I)I

    move-result v1

    .line 165
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 166
    iget-object v0, p0, Lcom/inmobi/ads/bc;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->requestLayout()V

    .line 168
    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/inmobi/ads/bc;->c:Landroid/graphics/Point;

    div-int/lit8 v1, p1, 0x2

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 122
    iget-object v0, p0, Lcom/inmobi/ads/bc;->c:Landroid/graphics/Point;

    div-int/lit8 v1, p2, 0x2

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 123
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 129
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 142
    :goto_0
    iget-object v0, p0, Lcom/inmobi/ads/bc;->c:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/inmobi/ads/bc;->d:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/inmobi/ads/bc;->c:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/inmobi/ads/bc;->d:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 146
    :goto_1
    iget-object v0, p0, Lcom/inmobi/ads/bc;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, p1}, Landroid/support/v4/view/ViewPager;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    .line 131
    :pswitch_0
    iget-object v0, p0, Lcom/inmobi/ads/bc;->d:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/inmobi/ads/bc;->a(FF)I

    move-result v0

    .line 132
    if-eqz v0, :cond_0

    .line 133
    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 134
    iget-object v1, p0, Lcom/inmobi/ads/bc;->b:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Lcom/inmobi/ads/bc;->b:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v2

    add-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/bc;->c:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lcom/inmobi/ads/bc;->d:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget-object v1, p0, Lcom/inmobi/ads/bc;->c:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/inmobi/ads/bc;->d:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_1

    .line 139
    :pswitch_1
    iget-object v0, p0, Lcom/inmobi/ads/bc;->d:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 140
    iget-object v0, p0, Lcom/inmobi/ads/bc;->d:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    goto :goto_0

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
