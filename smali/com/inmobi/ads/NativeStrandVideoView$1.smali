.class Lcom/inmobi/ads/NativeStrandVideoView$1;
.super Ljava/lang/Object;
.source "NativeStrandVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


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
    .line 184
    iput-object p1, p0, Lcom/inmobi/ads/NativeStrandVideoView$1;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView$1;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/inmobi/ads/NativeStrandVideoView;->a(Lcom/inmobi/ads/NativeStrandVideoView;I)I

    .line 187
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView$1;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/inmobi/ads/NativeStrandVideoView;->b(Lcom/inmobi/ads/NativeStrandVideoView;I)I

    .line 188
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView$1;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-static {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->a(Lcom/inmobi/ads/NativeStrandVideoView;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView$1;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-static {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->b(Lcom/inmobi/ads/NativeStrandVideoView;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView$1;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->requestLayout()V

    .line 191
    :cond_0
    return-void
.end method
