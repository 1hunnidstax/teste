.class Lcom/inmobi/ads/z;
.super Lcom/inmobi/ads/bm;
.source "MoatTrackedNativeV2VideoAd.java"


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Ljava/lang/ref/WeakReference;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/moat/analytics/mobile/inm/NativeVideoTracker;

.field private e:Landroid/media/MediaPlayer;

.field private f:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/inmobi/ads/ViewableAd;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/inmobi/ads/z;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/z;->b:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lcom/inmobi/ads/ViewableAd;Lcom/inmobi/ads/at;Ljava/util/Map;)V
    .locals 1
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/inmobi/ads/ViewableAd;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/inmobi/ads/at;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/inmobi/ads/ViewableAd;",
            "Lcom/inmobi/ads/at;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 46
    invoke-direct {p0, p3}, Lcom/inmobi/ads/bm;-><init>(Lcom/inmobi/ads/AdContainer;)V

    .line 47
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/ads/z;->c:Ljava/lang/ref/WeakReference;

    .line 48
    iput-object p2, p0, Lcom/inmobi/ads/z;->g:Lcom/inmobi/ads/ViewableAd;

    .line 49
    iput-object p4, p0, Lcom/inmobi/ads/z;->f:Ljava/util/Map;

    .line 50
    return-void
.end method

.method private f()V
    .locals 5

    .prologue
    .line 93
    .line 94
    invoke-virtual {p0}, Lcom/inmobi/ads/z;->e()Lcom/inmobi/ads/AdContainer;

    move-result-object v0

    invoke-interface {v0}, Lcom/inmobi/ads/AdContainer;->getVideoContainerView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeStrandVideoWrapper;

    .line 95
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/inmobi/ads/z;->d:Lcom/moat/analytics/mobile/inm/NativeVideoTracker;

    if-eqz v1, :cond_0

    .line 96
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoWrapper;->getVideoView()Lcom/inmobi/ads/NativeStrandVideoView;

    move-result-object v0

    .line 97
    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoView;->getMediaPlayer()Lcom/inmobi/ads/af;

    move-result-object v1

    iput-object v1, p0, Lcom/inmobi/ads/z;->e:Landroid/media/MediaPlayer;

    .line 98
    iget-object v1, p0, Lcom/inmobi/ads/z;->d:Lcom/moat/analytics/mobile/inm/NativeVideoTracker;

    invoke-direct {p0}, Lcom/inmobi/ads/z;->g()Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/ads/z;->e:Landroid/media/MediaPlayer;

    invoke-interface {v1, v2, v3, v0}, Lcom/moat/analytics/mobile/inm/NativeVideoTracker;->trackVideoAd(Ljava/util/Map;Landroid/media/MediaPlayer;Landroid/view/View;)Z

    move-result v0

    .line 99
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/z;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Moat init result for Video : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :cond_0
    return-void
.end method

.method private g()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    const-string v2, "level"

    const-string v3, "slicer"

    iget-object v0, p0, Lcom/inmobi/ads/z;->f:Ljava/util/Map;

    const-string v1, "clientLevels"

    .line 154
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/inmobi/ads/z;->f:Ljava/util/Map;

    const-string v4, "clientSlicers"

    .line 155
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONArray;

    .line 153
    invoke-static {v2, v3, v0, v1}, Lcom/inmobi/ads/AdUnit$d;->a(Ljava/lang/String;Ljava/lang/String;Lorg/json/JSONArray;Lorg/json/JSONArray;)Ljava/util/HashMap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/inmobi/ads/z;->g:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1, p2, p3}, Lcom/inmobi/ads/ViewableAd;->a(Landroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V
    .locals 6

    .prologue
    .line 106
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/z;->d:Lcom/moat/analytics/mobile/inm/NativeVideoTracker;

    if-eqz v0, :cond_0

    .line 107
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/z;->b:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received event : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 108
    invoke-virtual {p1}, Lcom/inmobi/ads/ViewableAd$AdEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for VideoTracker("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/ads/z;->d:Lcom/moat/analytics/mobile/inm/NativeVideoTracker;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    sget-object v0, Lcom/inmobi/ads/z$1;->a:[I

    invoke-virtual {p1}, Lcom/inmobi/ads/ViewableAd$AdEvent;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v0, :pswitch_data_0

    .line 140
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/inmobi/ads/z;->g:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V

    .line 142
    :goto_1
    return-void

    .line 111
    :pswitch_0
    :try_start_1
    invoke-direct {p0}, Lcom/inmobi/ads/z;->f()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 135
    :catch_0
    move-exception v0

    .line 136
    :try_start_2
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/z;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in onAdEvent with message : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 137
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 136
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    iget-object v0, p0, Lcom/inmobi/ads/z;->g:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V

    goto :goto_1

    .line 115
    :pswitch_1
    :try_start_3
    iget-object v2, p0, Lcom/inmobi/ads/z;->d:Lcom/moat/analytics/mobile/inm/NativeVideoTracker;

    new-instance v3, Lcom/moat/analytics/mobile/inm/MoatAdEvent;

    sget-object v4, Lcom/moat/analytics/mobile/inm/MoatAdEventType;->AD_EVT_VOLUME_CHANGE:Lcom/moat/analytics/mobile/inm/MoatAdEventType;

    iget-object v0, p0, Lcom/inmobi/ads/z;->e:Landroid/media/MediaPlayer;

    .line 116
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget-object v0, Lcom/inmobi/ads/ViewableAd$AdEvent;->AD_EVENT_VIDEO_UNMUTE:Lcom/inmobi/ads/ViewableAd$AdEvent;

    if-ne p1, v0, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 117
    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {v3, v4, v5, v0}, Lcom/moat/analytics/mobile/inm/MoatAdEvent;-><init>(Lcom/moat/analytics/mobile/inm/MoatAdEventType;Ljava/lang/Integer;Ljava/lang/Double;)V

    .line 115
    invoke-interface {v2, v3}, Lcom/moat/analytics/mobile/inm/NativeVideoTracker;->dispatchEvent(Lcom/moat/analytics/mobile/inm/MoatAdEvent;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 140
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/inmobi/ads/z;->g:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v1, p1}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/ViewableAd$AdEvent;)V

    throw v0

    .line 116
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_2

    .line 120
    :pswitch_2
    :try_start_4
    iget-object v0, p0, Lcom/inmobi/ads/z;->d:Lcom/moat/analytics/mobile/inm/NativeVideoTracker;

    new-instance v1, Lcom/moat/analytics/mobile/inm/MoatAdEvent;

    sget-object v2, Lcom/moat/analytics/mobile/inm/MoatAdEventType;->AD_EVT_ENTER_FULLSCREEN:Lcom/moat/analytics/mobile/inm/MoatAdEventType;

    invoke-direct {v1, v2}, Lcom/moat/analytics/mobile/inm/MoatAdEvent;-><init>(Lcom/moat/analytics/mobile/inm/MoatAdEventType;)V

    invoke-interface {v0, v1}, Lcom/moat/analytics/mobile/inm/NativeVideoTracker;->dispatchEvent(Lcom/moat/analytics/mobile/inm/MoatAdEvent;)V

    goto :goto_0

    .line 124
    :pswitch_3
    iget-object v0, p0, Lcom/inmobi/ads/z;->d:Lcom/moat/analytics/mobile/inm/NativeVideoTracker;

    new-instance v1, Lcom/moat/analytics/mobile/inm/MoatAdEvent;

    sget-object v2, Lcom/moat/analytics/mobile/inm/MoatAdEventType;->AD_EVT_EXIT_FULLSCREEN:Lcom/moat/analytics/mobile/inm/MoatAdEventType;

    invoke-direct {v1, v2}, Lcom/moat/analytics/mobile/inm/MoatAdEvent;-><init>(Lcom/moat/analytics/mobile/inm/MoatAdEventType;)V

    invoke-interface {v0, v1}, Lcom/moat/analytics/mobile/inm/NativeVideoTracker;->dispatchEvent(Lcom/moat/analytics/mobile/inm/MoatAdEvent;)V

    goto :goto_0

    .line 128
    :pswitch_4
    iget-object v0, p0, Lcom/inmobi/ads/z;->d:Lcom/moat/analytics/mobile/inm/NativeVideoTracker;

    new-instance v1, Lcom/moat/analytics/mobile/inm/MoatAdEvent;

    sget-object v2, Lcom/moat/analytics/mobile/inm/MoatAdEventType;->AD_EVT_COMPLETE:Lcom/moat/analytics/mobile/inm/MoatAdEventType;

    invoke-direct {v1, v2}, Lcom/moat/analytics/mobile/inm/MoatAdEvent;-><init>(Lcom/moat/analytics/mobile/inm/MoatAdEventType;)V

    invoke-interface {v0, v1}, Lcom/moat/analytics/mobile/inm/NativeVideoTracker;->dispatchEvent(Lcom/moat/analytics/mobile/inm/MoatAdEvent;)V

    goto/16 :goto_0

    .line 131
    :pswitch_5
    iget-object v0, p0, Lcom/inmobi/ads/z;->d:Lcom/moat/analytics/mobile/inm/NativeVideoTracker;

    new-instance v1, Lcom/moat/analytics/mobile/inm/MoatAdEvent;

    sget-object v2, Lcom/moat/analytics/mobile/inm/MoatAdEventType;->AD_EVT_COMPLETE:Lcom/moat/analytics/mobile/inm/MoatAdEventType;

    invoke-direct {v1, v2}, Lcom/moat/analytics/mobile/inm/MoatAdEvent;-><init>(Lcom/moat/analytics/mobile/inm/MoatAdEventType;)V

    invoke-interface {v0, v1}, Lcom/moat/analytics/mobile/inm/NativeVideoTracker;->dispatchEvent(Lcom/moat/analytics/mobile/inm/MoatAdEvent;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public varargs a(Lcom/inmobi/ads/c$h;[Landroid/view/View;)V
    .locals 5
    .param p1    # Lcom/inmobi/ads/c$h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # [Landroid/view/View;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 68
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/z;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 69
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/ads/z;->e()Lcom/inmobi/ads/AdContainer;

    move-result-object v1

    instance-of v1, v1, Lcom/inmobi/ads/at;

    if-eqz v1, :cond_0

    .line 70
    invoke-virtual {p1}, Lcom/inmobi/ads/c$h;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/ads/z;->f:Ljava/util/Map;

    const-string v2, "enabled"

    .line 71
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/inmobi/ads/z;->d:Lcom/moat/analytics/mobile/inm/NativeVideoTracker;

    if-nez v1, :cond_0

    .line 73
    invoke-static {v0}, Lcom/moat/analytics/mobile/inm/MoatFactory;->create(Landroid/app/Activity;)Lcom/moat/analytics/mobile/inm/MoatFactory;

    move-result-object v1

    iget-object v0, p0, Lcom/inmobi/ads/z;->f:Ljava/util/Map;

    const-string v2, "partnerCode"

    .line 74
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 73
    invoke-virtual {v1, v0}, Lcom/moat/analytics/mobile/inm/MoatFactory;->createNativeVideoTracker(Ljava/lang/String;)Lcom/moat/analytics/mobile/inm/NativeVideoTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/z;->d:Lcom/moat/analytics/mobile/inm/NativeVideoTracker;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/z;->g:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/c$h;[Landroid/view/View;)V

    .line 85
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    :try_start_1
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/z;->b:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in startTrackingForImpression with message : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 80
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 79
    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    iget-object v0, p0, Lcom/inmobi/ads/z;->g:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0, p1, p2}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/c$h;[Landroid/view/View;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/inmobi/ads/z;->g:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v1, p1, p2}, Lcom/inmobi/ads/ViewableAd;->a(Lcom/inmobi/ads/c$h;[Landroid/view/View;)V

    throw v0
.end method

.method public b()Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/inmobi/ads/z;->g:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->b()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/inmobi/ads/z;->g:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->c()V

    .line 90
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/ads/z;->d:Lcom/moat/analytics/mobile/inm/NativeVideoTracker;

    .line 147
    iget-object v0, p0, Lcom/inmobi/ads/z;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 148
    invoke-super {p0}, Lcom/inmobi/ads/bm;->d()V

    .line 149
    iget-object v0, p0, Lcom/inmobi/ads/z;->g:Lcom/inmobi/ads/ViewableAd;

    invoke-virtual {v0}, Lcom/inmobi/ads/ViewableAd;->d()V

    .line 150
    return-void
.end method
