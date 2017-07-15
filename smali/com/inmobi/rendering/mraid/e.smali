.class public final Lcom/inmobi/rendering/mraid/e;
.super Ljava/lang/Object;
.source "MraidExpandProcessor.java"


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/inmobi/rendering/RenderView;

.field private c:Z

.field private d:Landroid/view/ViewGroup;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/inmobi/rendering/mraid/e;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/rendering/mraid/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/inmobi/rendering/RenderView;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/inmobi/rendering/mraid/e;->b:Lcom/inmobi/rendering/RenderView;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/rendering/mraid/e;->c:Z

    .line 38
    return-void
.end method

.method private b()V
    .locals 4

    .prologue
    .line 80
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/e;->b:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->getRenderViewContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 81
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget-object v2, p0, Lcom/inmobi/rendering/mraid/e;->b:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v2}, Lcom/inmobi/rendering/RenderView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/inmobi/rendering/mraid/e;->b:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v3}, Lcom/inmobi/rendering/RenderView;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 84
    const v2, 0xffff

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setId(I)V

    .line 85
    iget-object v2, p0, Lcom/inmobi/rendering/mraid/e;->d:Landroid/view/ViewGroup;

    iget v3, p0, Lcom/inmobi/rendering/mraid/e;->e:I

    invoke-virtual {v2, v0, v3, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 86
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/e;->d:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/e;->b:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 87
    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 90
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/e;->b:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getOriginalRenderView()Lcom/inmobi/rendering/RenderView;

    move-result-object v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/e;->d:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0xffff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 94
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/e;->b:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 95
    iget-object v2, p0, Lcom/inmobi/rendering/mraid/e;->b:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 96
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 98
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/e;->d:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/e;->b:Lcom/inmobi/rendering/RenderView;

    iget v2, p0, Lcom/inmobi/rendering/mraid/e;->e:I

    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v4, p0, Lcom/inmobi/rendering/mraid/e;->d:Landroid/view/ViewGroup;

    .line 99
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    iget-object v5, p0, Lcom/inmobi/rendering/mraid/e;->d:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    invoke-direct {v3, v4, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 98
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 100
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/e;->b:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->n()V

    .line 102
    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 41
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/e;->d:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/e;->b:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/e;->d:Landroid/view/ViewGroup;

    .line 43
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/e;->d:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/e;->b:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/inmobi/rendering/mraid/e;->e:I

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/e;->b:Lcom/inmobi/rendering/RenderView;

    if-nez v0, :cond_1

    .line 47
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/mraid/e;->a:Ljava/lang/String;

    const-string v2, "Please check if the MRAID processor was initialized correctly."

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :goto_0
    return-void

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/e;->b:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getExpandProperties()Lcom/inmobi/rendering/mraid/c;

    move-result-object v1

    .line 53
    invoke-static {p2}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/inmobi/rendering/mraid/e;->c:Z

    .line 56
    iget-boolean v0, p0, Lcom/inmobi/rendering/mraid/e;->c:Z

    if-eqz v0, :cond_3

    .line 57
    new-instance v2, Lcom/inmobi/rendering/RenderView;

    iget-object v0, p0, Lcom/inmobi/rendering/mraid/e;->b:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getRenderViewContext()Landroid/content/Context;

    move-result-object v0

    new-instance v3, Lcom/inmobi/ads/AdContainer$RenderingProperties;

    sget-object v4, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_INLINE:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    invoke-direct {v3, v4}, Lcom/inmobi/ads/AdContainer$RenderingProperties;-><init>(Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;)V

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4}, Lcom/inmobi/rendering/RenderView;-><init>(Landroid/content/Context;Lcom/inmobi/ads/AdContainer$RenderingProperties;Ljava/util/Set;)V

    .line 59
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/e;->b:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getListener()Lcom/inmobi/rendering/RenderView$a;

    move-result-object v0

    iget-object v3, p0, Lcom/inmobi/rendering/mraid/e;->b:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v3}, Lcom/inmobi/rendering/RenderView;->getRenderingConfig()Lcom/inmobi/ads/c$f;

    move-result-object v3

    iget-object v4, p0, Lcom/inmobi/rendering/mraid/e;->b:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v4}, Lcom/inmobi/rendering/RenderView;->getMraidConfig()Lcom/inmobi/ads/c$d;

    move-result-object v4

    invoke-virtual {v2, v0, v3, v4}, Lcom/inmobi/rendering/RenderView;->a(Lcom/inmobi/rendering/RenderView$a;Lcom/inmobi/ads/c$f;Lcom/inmobi/ads/c$d;)V

    .line 60
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/e;->b:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v2, v0}, Lcom/inmobi/rendering/RenderView;->setOriginalRenderView(Lcom/inmobi/rendering/RenderView;)V

    .line 61
    invoke-virtual {v2, p2}, Lcom/inmobi/rendering/RenderView;->loadUrl(Ljava/lang/String;)V

    .line 62
    invoke-static {v2}, Lcom/inmobi/rendering/InMobiAdActivity;->a(Lcom/inmobi/ads/AdContainer;)I

    move-result v0

    .line 63
    if-eqz v1, :cond_2

    .line 64
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/e;->b:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->h()Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/inmobi/rendering/RenderView;->setUseCustomClose(Z)V

    .line 71
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/e;->b:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v1}, Lcom/inmobi/rendering/RenderView;->getRenderViewContext()Landroid/content/Context;

    move-result-object v1

    .line 72
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/inmobi/rendering/InMobiAdActivity;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 73
    const-string v1, "com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_TYPE"

    const/16 v3, 0x66

    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 74
    const-string v1, "com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_INDEX"

    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 75
    const-string v0, "com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_TYPE"

    const/16 v1, 0xc8

    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 76
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/e;->b:Lcom/inmobi/rendering/RenderView;

    invoke-virtual {v0}, Lcom/inmobi/rendering/RenderView;->getRenderViewContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/inmobi/commons/a/a;->a(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 67
    :cond_3
    invoke-direct {p0}, Lcom/inmobi/rendering/mraid/e;->b()V

    .line 68
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/e;->b:Lcom/inmobi/rendering/RenderView;

    invoke-static {v0}, Lcom/inmobi/rendering/InMobiAdActivity;->a(Lcom/inmobi/ads/AdContainer;)I

    move-result v0

    goto :goto_1
.end method
