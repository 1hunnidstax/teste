.class Lcom/inmobi/ads/NativeStrandViewFactory$5;
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
    .line 319
    iput-object p1, p0, Lcom/inmobi/ads/NativeStrandViewFactory$5;->a:Lcom/inmobi/ads/NativeStrandViewFactory;

    invoke-direct {p0, p1}, Lcom/inmobi/ads/NativeStrandViewFactory$c;-><init>(Lcom/inmobi/ads/NativeStrandViewFactory;)V

    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Landroid/view/View;
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 322
    new-instance v0, Lcom/inmobi/ads/bc;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/inmobi/ads/NativeV2ScrollableContainer$TYPE;->TYPE_PAGED:Lcom/inmobi/ads/NativeV2ScrollableContainer$TYPE;

    invoke-direct {v0, v1, v2}, Lcom/inmobi/ads/bc;-><init>(Landroid/content/Context;Lcom/inmobi/ads/NativeV2ScrollableContainer$TYPE;)V

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
    .line 327
    invoke-super {p0, p1, p2}, Lcom/inmobi/ads/NativeStrandViewFactory$c;->a(Landroid/view/View;Lcom/inmobi/ads/NativeV2Asset;)V

    .line 328
    invoke-virtual {p2}, Lcom/inmobi/ads/NativeV2Asset;->b()Lcom/inmobi/ads/NativeStrandAssetStyle;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/inmobi/ads/NativeStrandViewFactory;->a(Landroid/view/View;Lcom/inmobi/ads/NativeStrandAssetStyle;)V

    .line 329
    return-void
.end method

.method public a(Landroid/view/View;)Z
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 333
    move-object v0, p1

    check-cast v0, Lcom/inmobi/ads/bc;

    invoke-virtual {v0}, Lcom/inmobi/ads/bc;->a()V

    .line 334
    invoke-super {p0, p1}, Lcom/inmobi/ads/NativeStrandViewFactory$c;->a(Landroid/view/View;)Z

    move-result v0

    return v0
.end method
