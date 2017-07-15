.class Lcom/inmobi/ads/NativeStrandVideoView$7;
.super Ljava/lang/Object;
.source "NativeStrandVideoView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/NativeStrandVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/NativeStrandVideoView;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/NativeStrandVideoView;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/inmobi/ads/NativeStrandVideoView$7;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 353
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView$7;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    new-instance v1, Landroid/view/Surface;

    invoke-direct {v1, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    invoke-static {v0, v1}, Lcom/inmobi/ads/NativeStrandVideoView;->a(Lcom/inmobi/ads/NativeStrandVideoView;Landroid/view/Surface;)Landroid/view/Surface;

    .line 354
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView$7;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-static {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->g(Lcom/inmobi/ads/NativeStrandVideoView;)V

    .line 355
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 376
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView$7;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-static {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->h(Lcom/inmobi/ads/NativeStrandVideoView;)Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView$7;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-static {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->h(Lcom/inmobi/ads/NativeStrandVideoView;)Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 378
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView$7;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inmobi/ads/NativeStrandVideoView;->a(Lcom/inmobi/ads/NativeStrandVideoView;Landroid/view/Surface;)Landroid/view/Surface;

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView$7;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-static {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->d(Lcom/inmobi/ads/NativeStrandVideoView;)Lcom/inmobi/ads/NativeStrandVideoController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView$7;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-static {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->d(Lcom/inmobi/ads/NativeStrandVideoView;)Lcom/inmobi/ads/NativeStrandVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoController;->c()V

    .line 381
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView$7;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {v0, v2}, Lcom/inmobi/ads/NativeStrandVideoView;->a(Z)V

    .line 382
    return v2
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 360
    iget-object v2, p0, Lcom/inmobi/ads/NativeStrandVideoView$7;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-static {v2}, Lcom/inmobi/ads/NativeStrandVideoView;->c(Lcom/inmobi/ads/NativeStrandVideoView;)Lcom/inmobi/ads/af;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/inmobi/ads/NativeStrandVideoView$7;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-static {v2}, Lcom/inmobi/ads/NativeStrandVideoView;->c(Lcom/inmobi/ads/NativeStrandVideoView;)Lcom/inmobi/ads/af;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/ads/af;->c()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    move v2, v0

    .line 361
    :goto_0
    if-lez p2, :cond_3

    if-lez p3, :cond_3

    .line 362
    :goto_1
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoView$7;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-static {v1}, Lcom/inmobi/ads/NativeStrandVideoView;->c(Lcom/inmobi/ads/NativeStrandVideoView;)Lcom/inmobi/ads/af;

    move-result-object v1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView$7;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView$7;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/av;

    .line 365
    invoke-virtual {v0}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "seekPosition"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 366
    if-eqz v0, :cond_0

    .line 367
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoView$7;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/NativeStrandVideoView;->a(I)V

    .line 370
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView$7;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->start()V

    .line 372
    :cond_1
    return-void

    :cond_2
    move v2, v1

    .line 360
    goto :goto_0

    :cond_3
    move v0, v1

    .line 361
    goto :goto_1
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .prologue
    .line 388
    return-void
.end method
