.class Lcom/inmobi/ads/NativeStrandViewFactory$9;
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
    .line 416
    iput-object p1, p0, Lcom/inmobi/ads/NativeStrandViewFactory$9;->a:Lcom/inmobi/ads/NativeStrandViewFactory;

    invoke-direct {p0, p1}, Lcom/inmobi/ads/NativeStrandViewFactory$c;-><init>(Lcom/inmobi/ads/NativeStrandViewFactory;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 419
    new-instance v0, Lcom/inmobi/ads/NativeStrandViewFactory$b;

    invoke-direct {v0, p1}, Lcom/inmobi/ads/NativeStrandViewFactory$b;-><init>(Landroid/content/Context;)V

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
    .line 424
    invoke-super {p0, p1, p2}, Lcom/inmobi/ads/NativeStrandViewFactory$c;->a(Landroid/view/View;Lcom/inmobi/ads/NativeV2Asset;)V

    .line 425
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandViewFactory$9;->a:Lcom/inmobi/ads/NativeStrandViewFactory;

    check-cast p1, Landroid/widget/TextView;

    invoke-static {v0, p1, p2}, Lcom/inmobi/ads/NativeStrandViewFactory;->a(Lcom/inmobi/ads/NativeStrandViewFactory;Landroid/widget/TextView;Lcom/inmobi/ads/NativeV2Asset;)V

    .line 426
    return-void
.end method

.method public a(Landroid/view/View;)Z
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 430
    instance-of v0, p1, Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 431
    const/4 v0, 0x0

    .line 435
    :goto_0
    return v0

    :cond_0
    move-object v0, p1

    .line 434
    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0}, Lcom/inmobi/ads/NativeStrandViewFactory;->a(Landroid/widget/TextView;)V

    .line 435
    invoke-super {p0, p1}, Lcom/inmobi/ads/NativeStrandViewFactory$c;->a(Landroid/view/View;)Z

    move-result v0

    goto :goto_0
.end method
