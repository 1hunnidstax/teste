.class Lcom/inmobi/ads/NativeStrandViewFactory$8;
.super Lcom/inmobi/ads/NativeStrandViewFactory$c;
.source "NativeStrandViewFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/NativeStrandViewFactory;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/NativeStrandViewFactory;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/NativeStrandViewFactory;)V
    .locals 0

    .prologue
    .line 385
    iput-object p1, p0, Lcom/inmobi/ads/NativeStrandViewFactory$8;->a:Lcom/inmobi/ads/NativeStrandViewFactory;

    invoke-direct {p0, p1}, Lcom/inmobi/ads/NativeStrandViewFactory$c;-><init>(Lcom/inmobi/ads/NativeStrandViewFactory;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Landroid/view/View;
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 388
    new-instance v0, Lcom/inmobi/ads/NativeStrandVideoWrapper;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/inmobi/ads/NativeStrandVideoWrapper;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected a(Landroid/view/View;Lcom/inmobi/ads/NativeV2Asset;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/inmobi/ads/NativeV2Asset;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 393
    invoke-super {p0, p1, p2}, Lcom/inmobi/ads/NativeStrandViewFactory$c;->a(Landroid/view/View;Lcom/inmobi/ads/NativeV2Asset;)V

    .line 394
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandViewFactory$8;->a:Lcom/inmobi/ads/NativeStrandViewFactory;

    check-cast p1, Lcom/inmobi/ads/NativeStrandVideoWrapper;

    invoke-static {v0, p1, p2}, Lcom/inmobi/ads/NativeStrandViewFactory;->a(Lcom/inmobi/ads/NativeStrandViewFactory;Lcom/inmobi/ads/NativeStrandVideoWrapper;Lcom/inmobi/ads/NativeV2Asset;)V

    .line 395
    return-void
.end method

.method public a(Landroid/view/View;)Z
    .locals 2
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0xf
    .end annotation

    .prologue
    .line 400
    instance-of v0, p1, Lcom/inmobi/ads/NativeStrandVideoWrapper;

    if-nez v0, :cond_0

    .line 401
    const/4 v0, 0x0

    .line 410
    :goto_0
    return v0

    :cond_0
    move-object v0, p1

    .line 403
    check-cast v0, Lcom/inmobi/ads/NativeStrandVideoWrapper;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoWrapper;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v0

    .line 404
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    move-object v0, p1

    .line 405
    check-cast v0, Lcom/inmobi/ads/NativeStrandVideoWrapper;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoWrapper;->getPoster()Landroid/widget/ImageView;

    move-result-object v0

    .line 406
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    move-object v0, p1

    .line 407
    check-cast v0, Lcom/inmobi/ads/NativeStrandVideoWrapper;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoWrapper;->getVideoView()Lcom/inmobi/ads/NativeStrandVideoView;

    move-result-object v0

    .line 408
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->c()V

    .line 410
    invoke-super {p0, p1}, Lcom/inmobi/ads/NativeStrandViewFactory$c;->a(Landroid/view/View;)Z

    move-result v0

    goto :goto_0
.end method
