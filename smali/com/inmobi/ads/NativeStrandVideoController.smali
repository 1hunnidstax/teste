.class public Lcom/inmobi/ads/NativeStrandVideoController;
.super Landroid/widget/FrameLayout;
.source "NativeStrandVideoController.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xf
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/NativeStrandVideoController$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/inmobi/ads/at;

.field private c:Lcom/inmobi/ads/NativeStrandVideoController$a;

.field private d:Lcom/inmobi/ads/NativeStrandVideoView;

.field private e:Z

.field private f:Lcom/inmobi/rendering/CustomView;

.field private g:Lcom/inmobi/rendering/CustomView;

.field private h:Landroid/widget/ProgressBar;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Z

.field private k:F

.field private final l:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/inmobi/ads/NativeStrandVideoController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/NativeStrandVideoController;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/inmobi/ads/NativeStrandVideoController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/inmobi/ads/NativeStrandVideoController;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/ads/NativeStrandVideoController;->j:Z

    .line 329
    new-instance v0, Lcom/inmobi/ads/NativeStrandVideoController$1;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/NativeStrandVideoController$1;-><init>(Lcom/inmobi/ads/NativeStrandVideoController;)V

    iput-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoController;->l:Landroid/view/View$OnClickListener;

    .line 63
    invoke-direct {p0}, Lcom/inmobi/ads/NativeStrandVideoController;->e()V

    .line 64
    invoke-direct {p0}, Lcom/inmobi/ads/NativeStrandVideoController;->f()V

    .line 65
    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/NativeStrandVideoController;)I
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/inmobi/ads/NativeStrandVideoController;->j()I

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/inmobi/ads/NativeStrandVideoController;)Lcom/inmobi/ads/NativeStrandVideoView;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoController;->d:Lcom/inmobi/ads/NativeStrandVideoView;

    return-object v0
.end method

.method static synthetic c(Lcom/inmobi/ads/NativeStrandVideoController;)V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/inmobi/ads/NativeStrandVideoController;->m()V

    return-void
.end method

.method private e()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 68
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoController;->i:Landroid/widget/RelativeLayout;

    .line 69
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 70
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoController;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v1, v0}, Lcom/inmobi/ads/NativeStrandVideoController;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoController;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 72
    return-void
.end method

.method private f()V
    .locals 4

    .prologue
    .line 75
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoController;->i:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_0

    .line 76
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->a()Lcom/inmobi/commons/core/utilities/info/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/utilities/info/c;->c()F

    move-result v0

    iput v0, p0, Lcom/inmobi/ads/NativeStrandVideoController;->k:F

    .line 77
    new-instance v0, Lcom/inmobi/rendering/CustomView;

    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoController;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/inmobi/ads/NativeStrandVideoController;->k:F

    sget-object v3, Lcom/inmobi/rendering/CustomView$SwitchIconType;->MUTE_BUTTON:Lcom/inmobi/rendering/CustomView$SwitchIconType;

    invoke-direct {v0, v1, v2, v3}, Lcom/inmobi/rendering/CustomView;-><init>(Landroid/content/Context;FLcom/inmobi/rendering/CustomView$SwitchIconType;)V

    iput-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoController;->f:Lcom/inmobi/rendering/CustomView;

    .line 78
    new-instance v0, Lcom/inmobi/rendering/CustomView;

    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoController;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/inmobi/ads/NativeStrandVideoController;->k:F

    sget-object v3, Lcom/inmobi/rendering/CustomView$SwitchIconType;->UNMUTE_BUTTON:Lcom/inmobi/rendering/CustomView$SwitchIconType;

    invoke-direct {v0, v1, v2, v3}, Lcom/inmobi/rendering/CustomView;-><init>(Landroid/content/Context;FLcom/inmobi/rendering/CustomView$SwitchIconType;)V

    iput-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoController;->g:Lcom/inmobi/rendering/CustomView;

    .line 79
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoController;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x1010078

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoController;->h:Landroid/widget/ProgressBar;

    .line 81
    invoke-direct {p0}, Lcom/inmobi/ads/NativeStrandVideoController;->g()V

    .line 82
    invoke-direct {p0}, Lcom/inmobi/ads/NativeStrandVideoController;->i()V

    .line 84
    :cond_0
    new-instance v0, Lcom/inmobi/ads/NativeStrandVideoController$a;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/NativeStrandVideoController$a;-><init>(Lcom/inmobi/ads/NativeStrandVideoController;)V

    iput-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoController;->c:Lcom/inmobi/ads/NativeStrandVideoController$a;

    .line 85
    return-void
.end method

.method private g()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/high16 v4, 0x42480000    # 50.0f

    const/4 v3, 0x0

    .line 94
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/inmobi/ads/NativeStrandVideoController;->k:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iget v2, p0, Lcom/inmobi/ads/NativeStrandVideoController;->k:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 95
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 96
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 97
    const/high16 v1, 0x40a00000    # 5.0f

    iget v2, p0, Lcom/inmobi/ads/NativeStrandVideoController;->k:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 98
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoController;->i:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/inmobi/ads/NativeStrandVideoController;->f:Lcom/inmobi/rendering/CustomView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoController;->f:Lcom/inmobi/rendering/CustomView;

    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoController;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/CustomView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    return-void
.end method

.method private h()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/high16 v4, 0x42480000    # 50.0f

    const/4 v3, 0x0

    .line 103
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/inmobi/ads/NativeStrandVideoController;->k:F

    mul-float/2addr v1, v4

    float-to-int v1, v1

    iget v2, p0, Lcom/inmobi/ads/NativeStrandVideoController;->k:F

    mul-float/2addr v2, v4

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 104
    const/16 v1, 0x9

    invoke-virtual {v0, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 105
    const/16 v1, 0xc

    invoke-virtual {v0, v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 106
    const/high16 v1, 0x40a00000    # 5.0f

    iget v2, p0, Lcom/inmobi/ads/NativeStrandVideoController;->k:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v3, v3, v3, v1}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 107
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoController;->i:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/inmobi/ads/NativeStrandVideoController;->g:Lcom/inmobi/rendering/CustomView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoController;->g:Lcom/inmobi/rendering/CustomView;

    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoController;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/inmobi/rendering/CustomView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    return-void
.end method

.method private i()V
    .locals 5

    .prologue
    const/4 v2, -0x1

    const/high16 v4, -0x3f400000    # -6.0f

    const/4 v3, 0x0

    .line 112
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {v1, v2, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 113
    const/16 v0, 0xc

    invoke-virtual {v1, v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 114
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->a()Lcom/inmobi/commons/core/utilities/info/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/utilities/info/c;->c()F

    move-result v0

    .line 115
    mul-float v2, v4, v0

    float-to-int v2, v2

    mul-float/2addr v0, v4

    float-to-int v0, v0

    invoke-virtual {v1, v3, v2, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 117
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoController;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 118
    if-eqz v0, :cond_0

    .line 119
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const-string v3, "#FFFFFFFF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 120
    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v2, "#FFFB0006"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoController;->i:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/inmobi/ads/NativeStrandVideoController;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    return-void
.end method

.method private j()I
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    .prologue
    .line 164
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoController;->d:Lcom/inmobi/ads/NativeStrandVideoView;

    if-nez v0, :cond_2

    .line 166
    :cond_0
    const/4 v0, 0x0

    .line 173
    :cond_1
    :goto_0
    return v0

    .line 168
    :cond_2
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoController;->d:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->getCurrentPosition()I

    move-result v0

    .line 169
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoController;->d:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeStrandVideoView;->getDuration()I

    move-result v1

    .line 170
    iget-object v2, p0, Lcom/inmobi/ads/NativeStrandVideoController;->h:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 171
    iget-object v2, p0, Lcom/inmobi/ads/NativeStrandVideoController;->h:Landroid/widget/ProgressBar;

    mul-int/lit8 v3, v0, 0x64

    div-int v1, v3, v1

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0
.end method

.method private k()V
    .locals 2

    .prologue
    .line 228
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoController;->d:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/av;

    .line 229
    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {v0}, Lcom/inmobi/ads/av;->A()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 231
    invoke-virtual {v0}, Lcom/inmobi/ads/av;->z()Z

    move-result v0

    if-nez v0, :cond_0

    .line 232
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/NativeStrandVideoController;->j:Z

    .line 233
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoController;->i:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoController;->g:Lcom/inmobi/rendering/CustomView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 234
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoController;->i:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoController;->f:Lcom/inmobi/rendering/CustomView;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 235
    invoke-direct {p0}, Lcom/inmobi/ads/NativeStrandVideoController;->h()V

    .line 239
    :cond_0
    return-void
.end method

.method private l()V
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoController;->d:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoController;->d:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->pause()V

    .line 248
    :goto_0
    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoController;->d:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->start()V

    goto :goto_0
.end method

.method private m()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 337
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoController;->d:Lcom/inmobi/ads/NativeStrandVideoView;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoController;->d:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->getMediaPlayer()Lcom/inmobi/ads/af;

    .line 339
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoController;->d:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/av;

    .line 340
    iget-boolean v1, p0, Lcom/inmobi/ads/NativeStrandVideoController;->j:Z

    if-eqz v1, :cond_1

    .line 341
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoController;->d:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeStrandVideoView;->g()V

    .line 342
    iput-boolean v2, p0, Lcom/inmobi/ads/NativeStrandVideoController;->j:Z

    .line 343
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoController;->i:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/inmobi/ads/NativeStrandVideoController;->g:Lcom/inmobi/rendering/CustomView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 344
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoController;->i:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/inmobi/ads/NativeStrandVideoController;->f:Lcom/inmobi/rendering/CustomView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 345
    invoke-direct {p0}, Lcom/inmobi/ads/NativeStrandVideoController;->g()V

    .line 346
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoController;->b:Lcom/inmobi/ads/at;

    if-eqz v1, :cond_0

    .line 348
    :try_start_0
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoController;->b:Lcom/inmobi/ads/at;

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/at;->f(Lcom/inmobi/ads/av;)V

    .line 349
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/av;->b(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 350
    :catch_0
    move-exception v0

    .line 351
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/NativeStrandVideoController;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDK encountered unexpected error in handling the onVideoUnMuted event; "

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

    goto :goto_0

    .line 358
    :cond_1
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoController;->d:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeStrandVideoView;->f()V

    .line 359
    iput-boolean v3, p0, Lcom/inmobi/ads/NativeStrandVideoController;->j:Z

    .line 360
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoController;->i:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/inmobi/ads/NativeStrandVideoController;->f:Lcom/inmobi/rendering/CustomView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 361
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoController;->i:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/inmobi/ads/NativeStrandVideoController;->g:Lcom/inmobi/rendering/CustomView;

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    .line 362
    invoke-direct {p0}, Lcom/inmobi/ads/NativeStrandVideoController;->h()V

    .line 363
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoController;->b:Lcom/inmobi/ads/at;

    if-eqz v1, :cond_0

    .line 365
    :try_start_1
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoController;->b:Lcom/inmobi/ads/at;

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/at;->e(Lcom/inmobi/ads/av;)V

    .line 366
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/av;->b(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 367
    :catch_1
    move-exception v0

    .line 368
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/NativeStrandVideoController;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDK encountered unexpected error in handling the onVideoMuted event; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 370
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 368
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 126
    const/16 v0, 0x5dc

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/NativeStrandVideoController;->a(I)V

    .line 127
    return-void
.end method

.method public a(I)V
    .locals 5

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 130
    iget-boolean v0, p0, Lcom/inmobi/ads/NativeStrandVideoController;->e:Z

    if-nez v0, :cond_2

    .line 131
    invoke-direct {p0}, Lcom/inmobi/ads/NativeStrandVideoController;->j()I

    .line 132
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/NativeStrandVideoController;->e:Z

    .line 133
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoController;->d:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/av;

    .line 134
    if-eqz v0, :cond_1

    .line 135
    iget-object v4, p0, Lcom/inmobi/ads/NativeStrandVideoController;->f:Lcom/inmobi/rendering/CustomView;

    invoke-virtual {v0}, Lcom/inmobi/ads/av;->A()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Lcom/inmobi/rendering/CustomView;->setVisibility(I)V

    .line 136
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoController;->h:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Lcom/inmobi/ads/av;->C()Z

    move-result v0

    if-eqz v0, :cond_0

    move v3, v2

    :cond_0
    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 138
    :cond_1
    invoke-virtual {p0, v2}, Lcom/inmobi/ads/NativeStrandVideoController;->setVisibility(I)V

    .line 141
    :cond_2
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoController;->c:Lcom/inmobi/ads/NativeStrandVideoController$a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/NativeStrandVideoController$a;->sendEmptyMessage(I)Z

    .line 142
    return-void

    :cond_3
    move v1, v3

    .line 135
    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/inmobi/ads/NativeStrandVideoController;->e:Z

    return v0
.end method

.method public c()V
    .locals 4

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/inmobi/ads/NativeStrandVideoController;->e:Z

    if-eqz v0, :cond_0

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoController;->c:Lcom/inmobi/ads/NativeStrandVideoController$a;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/NativeStrandVideoController$a;->removeMessages(I)V

    .line 152
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/NativeStrandVideoController;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/ads/NativeStrandVideoController;->e:Z

    .line 160
    :cond_0
    return-void

    .line 153
    :catch_0
    move-exception v0

    .line 154
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/NativeStrandVideoController;->a:Ljava/lang/String;

    const-string v3, "MediaController already removed"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method

.method d()V
    .locals 1

    .prologue
    .line 379
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoController;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoController;->c()V

    .line 384
    :goto_0
    return-void

    .line 382
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoController;->a()V

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    .prologue
    const/16 v5, 0x5dc

    const/4 v1, 0x1

    .line 189
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    .line 190
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_2

    .line 191
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    .line 192
    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xf

    if-lt v3, v4, :cond_9

    .line 193
    const/16 v3, 0x4f

    if-eq v2, v3, :cond_0

    const/16 v3, 0x55

    if-eq v2, v3, :cond_0

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_3

    .line 196
    :cond_0
    if-eqz v0, :cond_1

    .line 197
    invoke-direct {p0}, Lcom/inmobi/ads/NativeStrandVideoController;->l()V

    .line 198
    invoke-virtual {p0, v5}, Lcom/inmobi/ads/NativeStrandVideoController;->a(I)V

    .line 224
    :cond_1
    :goto_1
    return v1

    .line 191
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 201
    :cond_3
    const/16 v3, 0x7e

    if-ne v2, v3, :cond_4

    .line 202
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoController;->d:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoController;->d:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->start()V

    .line 204
    invoke-virtual {p0, v5}, Lcom/inmobi/ads/NativeStrandVideoController;->a(I)V

    goto :goto_1

    .line 207
    :cond_4
    const/16 v3, 0x56

    if-eq v2, v3, :cond_5

    const/16 v3, 0x7f

    if-ne v2, v3, :cond_6

    .line 209
    :cond_5
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoController;->d:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoController;->d:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->pause()V

    .line 211
    invoke-virtual {p0, v5}, Lcom/inmobi/ads/NativeStrandVideoController;->a(I)V

    goto :goto_1

    .line 214
    :cond_6
    const/16 v0, 0x19

    if-eq v2, v0, :cond_7

    const/16 v0, 0x18

    if-eq v2, v0, :cond_7

    const/16 v0, 0xa4

    if-eq v2, v0, :cond_7

    const/16 v0, 0x1b

    if-ne v2, v0, :cond_8

    .line 219
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1

    .line 221
    :cond_8
    invoke-virtual {p0, v5}, Lcom/inmobi/ads/NativeStrandVideoController;->a(I)V

    .line 224
    :cond_9
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_1
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .prologue
    .line 257
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 258
    const-class v0, Lcom/inmobi/ads/NativeStrandVideoController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 259
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    .prologue
    .line 264
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 265
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    .line 266
    const-class v0, Lcom/inmobi/ads/NativeStrandVideoController;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 268
    :cond_0
    return-void
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    .prologue
    .line 179
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xf

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoController;->d:Lcom/inmobi/ads/NativeStrandVideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoController;->d:Lcom/inmobi/ads/NativeStrandVideoView;

    .line 180
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoController;->d()V

    .line 183
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setEnabled(Z)V
    .locals 0

    .prologue
    .line 252
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 253
    return-void
.end method

.method public setMediaPlayer(Lcom/inmobi/ads/NativeStrandVideoView;)V
    .locals 0
    .param p1    # Lcom/inmobi/ads/NativeStrandVideoView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 88
    iput-object p1, p0, Lcom/inmobi/ads/NativeStrandVideoController;->d:Lcom/inmobi/ads/NativeStrandVideoView;

    .line 90
    invoke-direct {p0}, Lcom/inmobi/ads/NativeStrandVideoController;->k()V

    .line 91
    return-void
.end method

.method public setVideoAd(Lcom/inmobi/ads/at;)V
    .locals 0

    .prologue
    .line 387
    iput-object p1, p0, Lcom/inmobi/ads/NativeStrandVideoController;->b:Lcom/inmobi/ads/at;

    .line 388
    return-void
.end method
