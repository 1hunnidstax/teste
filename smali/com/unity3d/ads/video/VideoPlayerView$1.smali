.class Lcom/unity3d/ads/video/VideoPlayerView$1;
.super Ljava/util/TimerTask;
.source "VideoPlayerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/unity3d/ads/video/VideoPlayerView;->startVideoProgressTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/unity3d/ads/video/VideoPlayerView;


# direct methods
.method constructor <init>(Lcom/unity3d/ads/video/VideoPlayerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/unity3d/ads/video/VideoPlayerView;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/unity3d/ads/video/VideoPlayerView$1;->this$0:Lcom/unity3d/ads/video/VideoPlayerView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 31
    const/4 v1, 0x0

    .line 33
    .local v1, "isPlaying":Z
    :try_start_0
    iget-object v2, p0, Lcom/unity3d/ads/video/VideoPlayerView$1;->this$0:Lcom/unity3d/ads/video/VideoPlayerView;

    invoke-virtual {v2}, Lcom/unity3d/ads/video/VideoPlayerView;->isPlaying()Z

    move-result v1

    .line 34
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v2

    sget-object v3, Lcom/unity3d/ads/webview/WebViewEventCategory;->VIDEOPLAYER:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v4, Lcom/unity3d/ads/video/VideoPlayerEvent;->PROGRESS:Lcom/unity3d/ads/video/VideoPlayerEvent;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/unity3d/ads/video/VideoPlayerView$1;->this$0:Lcom/unity3d/ads/video/VideoPlayerView;

    invoke-virtual {v7}, Lcom/unity3d/ads/video/VideoPlayerView;->getCurrentPosition()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/IllegalStateException;
    const-string v2, "Exception while sending current position to webapp"

    invoke-static {v2, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 38
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v2

    sget-object v3, Lcom/unity3d/ads/webview/WebViewEventCategory;->VIDEOPLAYER:Lcom/unity3d/ads/webview/WebViewEventCategory;

    sget-object v4, Lcom/unity3d/ads/video/VideoPlayerEvent;->ILLEGAL_STATE:Lcom/unity3d/ads/video/VideoPlayerEvent;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    sget-object v6, Lcom/unity3d/ads/video/VideoPlayerEvent;->PROGRESS:Lcom/unity3d/ads/video/VideoPlayerEvent;

    aput-object v6, v5, v8

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v9

    invoke-virtual {v2, v3, v4, v5}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    goto :goto_0
.end method
