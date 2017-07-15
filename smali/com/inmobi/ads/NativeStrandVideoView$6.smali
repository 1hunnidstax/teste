.class Lcom/inmobi/ads/NativeStrandVideoView$6;
.super Ljava/lang/Object;
.source "NativeStrandVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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
    .line 330
    iput-object p1, p0, Lcom/inmobi/ads/NativeStrandVideoView$6;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 332
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    invoke-static {}, Lcom/inmobi/ads/NativeStrandVideoView;->h()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Media Play Error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView$6;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-static {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->f(Lcom/inmobi/ads/NativeStrandVideoView;)Lcom/inmobi/ads/NativeStrandVideoView$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView$6;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-static {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->f(Lcom/inmobi/ads/NativeStrandVideoView;)Lcom/inmobi/ads/NativeStrandVideoView$a;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/inmobi/ads/NativeStrandVideoView$a;->a(I)V

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView$6;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-static {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->c(Lcom/inmobi/ads/NativeStrandVideoView;)Lcom/inmobi/ads/af;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 337
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView$6;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-static {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->c(Lcom/inmobi/ads/NativeStrandVideoView;)Lcom/inmobi/ads/af;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/inmobi/ads/af;->a(I)V

    .line 338
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView$6;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-static {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->c(Lcom/inmobi/ads/NativeStrandVideoView;)Lcom/inmobi/ads/af;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/inmobi/ads/af;->b(I)V

    .line 341
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView$6;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-static {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->d(Lcom/inmobi/ads/NativeStrandVideoView;)Lcom/inmobi/ads/NativeStrandVideoController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 342
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView$6;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-static {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->d(Lcom/inmobi/ads/NativeStrandVideoView;)Lcom/inmobi/ads/NativeStrandVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoController;->c()V

    .line 345
    :cond_2
    const/4 v0, 0x1

    return v0
.end method
