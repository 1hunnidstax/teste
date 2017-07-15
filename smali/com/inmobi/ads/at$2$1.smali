.class Lcom/inmobi/ads/at$2$1;
.super Ljava/lang/Object;
.source "NativeV2VideoAdContainer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inmobi/ads/at$2;->a(Lcom/inmobi/ads/NativeStrandVideoView;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/inmobi/ads/av;

.field final synthetic b:Z

.field final synthetic c:Lcom/inmobi/ads/NativeStrandVideoView;

.field final synthetic d:Lcom/inmobi/ads/at$2;


# direct methods
.method constructor <init>(Lcom/inmobi/ads/at$2;Lcom/inmobi/ads/av;ZLcom/inmobi/ads/NativeStrandVideoView;)V
    .locals 0

    .prologue
    .line 184
    iput-object p1, p0, Lcom/inmobi/ads/at$2$1;->d:Lcom/inmobi/ads/at$2;

    iput-object p2, p0, Lcom/inmobi/ads/at$2$1;->a:Lcom/inmobi/ads/av;

    iput-boolean p3, p0, Lcom/inmobi/ads/at$2$1;->b:Z

    iput-object p4, p0, Lcom/inmobi/ads/at$2$1;->c:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    .line 187
    iget-object v0, p0, Lcom/inmobi/ads/at$2$1;->a:Lcom/inmobi/ads/av;

    invoke-virtual {v0}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "isFullScreen"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/inmobi/ads/at$2$1;->a:Lcom/inmobi/ads/av;

    invoke-virtual {v0}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "visible"

    iget-boolean v2, p0, Lcom/inmobi/ads/at$2$1;->b:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    iget-boolean v0, p0, Lcom/inmobi/ads/at$2$1;->b:Z

    if-eqz v0, :cond_4

    .line 190
    iget-object v0, p0, Lcom/inmobi/ads/at$2$1;->a:Lcom/inmobi/ads/av;

    invoke-virtual {v0}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "lastVisibleTimestamp"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    iget-object v0, p0, Lcom/inmobi/ads/at$2$1;->d:Lcom/inmobi/ads/at$2;

    iget-object v0, v0, Lcom/inmobi/ads/at$2;->a:Lcom/inmobi/ads/at;

    iget-boolean v0, v0, Lcom/inmobi/ads/at;->f:Z

    if-eqz v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/inmobi/ads/at$2$1;->c:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->pause()V

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/inmobi/ads/at$2$1;->c:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeStrandVideoView;->getState()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 194
    iget-object v0, p0, Lcom/inmobi/ads/at$2$1;->c:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->getMediaPlayer()Lcom/inmobi/ads/af;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/inmobi/ads/af;->b(I)V

    goto :goto_0

    .line 195
    :cond_2
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/inmobi/ads/at$2$1;->c:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {v1}, Lcom/inmobi/ads/NativeStrandVideoView;->getState()I

    move-result v1

    if-eq v0, v1, :cond_3

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/inmobi/ads/at$2$1;->c:Lcom/inmobi/ads/NativeStrandVideoView;

    .line 196
    invoke-virtual {v1}, Lcom/inmobi/ads/NativeStrandVideoView;->getState()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/at$2$1;->d:Lcom/inmobi/ads/at$2;

    iget-object v0, v0, Lcom/inmobi/ads/at$2;->a:Lcom/inmobi/ads/at;

    iget-boolean v0, v0, Lcom/inmobi/ads/at;->f:Z

    if-nez v0, :cond_0

    .line 197
    :cond_3
    iget-object v0, p0, Lcom/inmobi/ads/at$2$1;->c:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->start()V

    goto :goto_0

    .line 200
    :cond_4
    iget-object v0, p0, Lcom/inmobi/ads/at$2$1;->c:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->getState()I

    move-result v0

    if-ne v4, v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/inmobi/ads/at$2$1;->c:Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->pause()V

    goto :goto_0
.end method
