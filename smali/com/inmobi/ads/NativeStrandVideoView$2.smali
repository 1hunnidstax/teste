.class Lcom/inmobi/ads/NativeStrandVideoView$2;
.super Ljava/lang/Object;
.source "NativeStrandVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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
    .line 194
    iput-object p1, p0, Lcom/inmobi/ads/NativeStrandVideoView$2;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 196
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView$2;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-static {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->c(Lcom/inmobi/ads/NativeStrandVideoView;)Lcom/inmobi/ads/af;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/af;->a(I)V

    .line 197
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView$2;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoView$2;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    iget-object v3, p0, Lcom/inmobi/ads/NativeStrandVideoView$2;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-static {v3, v4}, Lcom/inmobi/ads/NativeStrandVideoView;->c(Lcom/inmobi/ads/NativeStrandVideoView;Z)Z

    move-result v3

    invoke-static {v1, v3}, Lcom/inmobi/ads/NativeStrandVideoView;->b(Lcom/inmobi/ads/NativeStrandVideoView;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/inmobi/ads/NativeStrandVideoView;->a(Lcom/inmobi/ads/NativeStrandVideoView;Z)Z

    .line 199
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView$2;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-static {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->d(Lcom/inmobi/ads/NativeStrandVideoView;)Lcom/inmobi/ads/NativeStrandVideoController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView$2;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-static {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->d(Lcom/inmobi/ads/NativeStrandVideoView;)Lcom/inmobi/ads/NativeStrandVideoController;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/inmobi/ads/NativeStrandVideoController;->setEnabled(Z)V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView$2;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/inmobi/ads/NativeStrandVideoView;->a(Lcom/inmobi/ads/NativeStrandVideoView;I)I

    .line 204
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView$2;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/inmobi/ads/NativeStrandVideoView;->b(Lcom/inmobi/ads/NativeStrandVideoView;I)I

    .line 206
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView$2;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/av;

    .line 207
    if-eqz v0, :cond_2

    .line 208
    invoke-virtual {v0}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v1

    const-string v3, "didCompleteQ4"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 209
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView$2;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/ads/NativeStrandVideoView;->a(II)V

    .line 247
    :cond_1
    :goto_0
    return-void

    .line 214
    :cond_2
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoView$2;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeStrandVideoView;->getPlaybackEventListener()Lcom/inmobi/ads/NativeStrandVideoView$OnPlaybackEventListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 215
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoView$2;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeStrandVideoView;->getPlaybackEventListener()Lcom/inmobi/ads/NativeStrandVideoView$OnPlaybackEventListener;

    move-result-object v1

    sget-object v3, Lcom/inmobi/ads/NativeStrandVideoView$OnPlaybackEventListener$PlaybackEvent;->PLAYBACK_EVENT_PREPARED:Lcom/inmobi/ads/NativeStrandVideoView$OnPlaybackEventListener$PlaybackEvent;

    invoke-interface {v1, v3}, Lcom/inmobi/ads/NativeStrandVideoView$OnPlaybackEventListener;->a(Lcom/inmobi/ads/NativeStrandVideoView$OnPlaybackEventListener$PlaybackEvent;)V

    .line 219
    :cond_3
    if-eqz v0, :cond_7

    .line 220
    invoke-virtual {v0}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v1

    const-string v3, "didCompleteQ4"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_7

    .line 221
    invoke-virtual {v0}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "seekPosition"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 224
    :goto_1
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoView$2;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {v1, v0}, Lcom/inmobi/ads/NativeStrandVideoView;->a(I)V

    .line 226
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoView$2;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-static {v1}, Lcom/inmobi/ads/NativeStrandVideoView;->a(Lcom/inmobi/ads/NativeStrandVideoView;)I

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoView$2;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-static {v1}, Lcom/inmobi/ads/NativeStrandVideoView;->b(Lcom/inmobi/ads/NativeStrandVideoView;)I

    move-result v1

    if-eqz v1, :cond_6

    .line 229
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoView$2;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-static {v1}, Lcom/inmobi/ads/NativeStrandVideoView;->c(Lcom/inmobi/ads/NativeStrandVideoView;)Lcom/inmobi/ads/af;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/af;->c()I

    move-result v1

    if-ne v5, v1, :cond_4

    .line 230
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView$2;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->start()V

    .line 231
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView$2;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-static {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->d(Lcom/inmobi/ads/NativeStrandVideoView;)Lcom/inmobi/ads/NativeStrandVideoController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 232
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView$2;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-static {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->d(Lcom/inmobi/ads/NativeStrandVideoView;)Lcom/inmobi/ads/NativeStrandVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoController;->a()V

    goto :goto_0

    .line 234
    :cond_4
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoView$2;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeStrandVideoView;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView$2;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->getCurrentPosition()I

    move-result v0

    if-lez v0, :cond_1

    .line 235
    :cond_5
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView$2;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-static {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->d(Lcom/inmobi/ads/NativeStrandVideoView;)Lcom/inmobi/ads/NativeStrandVideoController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView$2;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-static {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->d(Lcom/inmobi/ads/NativeStrandVideoView;)Lcom/inmobi/ads/NativeStrandVideoController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/inmobi/ads/NativeStrandVideoController;->a(I)V

    goto/16 :goto_0

    .line 243
    :cond_6
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView$2;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-static {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->c(Lcom/inmobi/ads/NativeStrandVideoView;)Lcom/inmobi/ads/af;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/af;->c()I

    move-result v0

    if-ne v5, v0, :cond_1

    .line 244
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView$2;->a:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->start()V

    goto/16 :goto_0

    :cond_7
    move v0, v2

    goto :goto_1
.end method
