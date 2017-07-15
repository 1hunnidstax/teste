.class public Lcom/inmobi/ads/NativeStrandVideoView;
.super Landroid/view/TextureView;
.source "NativeStrandVideoView.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xf
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/NativeStrandVideoView$b;,
        Lcom/inmobi/ads/NativeStrandVideoView$a;,
        Lcom/inmobi/ads/NativeStrandVideoView$OnPlaybackEventListener;,
        Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field private final A:Landroid/view/TextureView$SurfaceTextureListener;

.field a:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field b:Landroid/media/MediaPlayer$OnPreparedListener;

.field c:Lcom/inmobi/commons/core/utilities/f$b;

.field private e:Landroid/net/Uri;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private g:Landroid/view/Surface;

.field private h:Lcom/inmobi/ads/af;

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener;

.field private o:Lcom/inmobi/ads/NativeStrandVideoView$OnPlaybackEventListener;

.field private p:Lcom/inmobi/ads/NativeStrandVideoView$a;

.field private q:Lcom/inmobi/ads/NativeStrandVideoView$b;

.field private r:Lcom/inmobi/ads/NativeStrandVideoController;

.field private s:I

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Landroid/media/MediaPlayer$OnCompletionListener;

.field private x:Landroid/media/MediaPlayer$OnInfoListener;

.field private y:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private z:Landroid/media/MediaPlayer$OnErrorListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lcom/inmobi/ads/NativeStrandVideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/NativeStrandVideoView;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 392
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 68
    iput-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->g:Landroid/view/Surface;

    .line 69
    iput-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->m:I

    .line 183
    new-instance v0, Lcom/inmobi/ads/NativeStrandVideoView$1;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/NativeStrandVideoView$1;-><init>(Lcom/inmobi/ads/NativeStrandVideoView;)V

    iput-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->a:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 194
    new-instance v0, Lcom/inmobi/ads/NativeStrandVideoView$2;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/NativeStrandVideoView$2;-><init>(Lcom/inmobi/ads/NativeStrandVideoView;)V

    iput-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->b:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 250
    new-instance v0, Lcom/inmobi/ads/NativeStrandVideoView$3;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/NativeStrandVideoView$3;-><init>(Lcom/inmobi/ads/NativeStrandVideoView;)V

    iput-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->w:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 313
    new-instance v0, Lcom/inmobi/ads/NativeStrandVideoView$4;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/NativeStrandVideoView$4;-><init>(Lcom/inmobi/ads/NativeStrandVideoView;)V

    iput-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->x:Landroid/media/MediaPlayer$OnInfoListener;

    .line 324
    new-instance v0, Lcom/inmobi/ads/NativeStrandVideoView$5;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/NativeStrandVideoView$5;-><init>(Lcom/inmobi/ads/NativeStrandVideoView;)V

    iput-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->y:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 330
    new-instance v0, Lcom/inmobi/ads/NativeStrandVideoView$6;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/NativeStrandVideoView$6;-><init>(Lcom/inmobi/ads/NativeStrandVideoView;)V

    iput-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->z:Landroid/media/MediaPlayer$OnErrorListener;

    .line 348
    new-instance v0, Lcom/inmobi/ads/NativeStrandVideoView$7;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/NativeStrandVideoView$7;-><init>(Lcom/inmobi/ads/NativeStrandVideoView;)V

    iput-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->A:Landroid/view/TextureView$SurfaceTextureListener;

    .line 422
    new-instance v0, Lcom/inmobi/ads/NativeStrandVideoView$8;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/NativeStrandVideoView$8;-><init>(Lcom/inmobi/ads/NativeStrandVideoView;)V

    iput-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->c:Lcom/inmobi/commons/core/utilities/f$b;

    .line 393
    invoke-direct {p0}, Lcom/inmobi/ads/NativeStrandVideoView;->j()V

    .line 394
    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/NativeStrandVideoView;)I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->j:I

    return v0
.end method

.method static synthetic a(Lcom/inmobi/ads/NativeStrandVideoView;I)I
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/inmobi/ads/NativeStrandVideoView;->j:I

    return p1
.end method

.method static synthetic a(Lcom/inmobi/ads/NativeStrandVideoView;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/inmobi/ads/NativeStrandVideoView;->g:Landroid/view/Surface;

    return-object p1
.end method

.method private a(Lcom/inmobi/ads/av;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 304
    if-eqz p1, :cond_0

    .line 305
    invoke-virtual {p1}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "didCompleteQ1"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    invoke-virtual {p1}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "didCompleteQ2"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    invoke-virtual {p1}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "didCompleteQ3"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    invoke-virtual {p1}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "didPause"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    invoke-virtual {p1}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "didStartPlaying"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/NativeStrandVideoView;Z)Z
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/inmobi/ads/NativeStrandVideoView;->t:Z

    return p1
.end method

.method static synthetic b(Lcom/inmobi/ads/NativeStrandVideoView;)I
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->k:I

    return v0
.end method

.method static synthetic b(Lcom/inmobi/ads/NativeStrandVideoView;I)I
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/inmobi/ads/NativeStrandVideoView;->k:I

    return p1
.end method

.method static synthetic b(Lcom/inmobi/ads/NativeStrandVideoView;Z)Z
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/inmobi/ads/NativeStrandVideoView;->u:Z

    return p1
.end method

.method static synthetic c(Lcom/inmobi/ads/NativeStrandVideoView;I)I
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/inmobi/ads/NativeStrandVideoView;->s:I

    return p1
.end method

.method static synthetic c(Lcom/inmobi/ads/NativeStrandVideoView;)Lcom/inmobi/ads/af;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    return-object v0
.end method

.method static synthetic c(Lcom/inmobi/ads/NativeStrandVideoView;Z)Z
    .locals 0

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/inmobi/ads/NativeStrandVideoView;->v:Z

    return p1
.end method

.method static synthetic d(Lcom/inmobi/ads/NativeStrandVideoView;)Lcom/inmobi/ads/NativeStrandVideoController;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->r:Lcom/inmobi/ads/NativeStrandVideoController;

    return-object v0
.end method

.method static synthetic e(Lcom/inmobi/ads/NativeStrandVideoView;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/inmobi/ads/NativeStrandVideoView;->i()V

    return-void
.end method

.method static synthetic f(Lcom/inmobi/ads/NativeStrandVideoView;)Lcom/inmobi/ads/NativeStrandVideoView$a;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->p:Lcom/inmobi/ads/NativeStrandVideoView$a;

    return-object v0
.end method

.method static synthetic g(Lcom/inmobi/ads/NativeStrandVideoView;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/inmobi/ads/NativeStrandVideoView;->k()V

    return-void
.end method

.method static synthetic h(Lcom/inmobi/ads/NativeStrandVideoView;)Landroid/view/Surface;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->g:Landroid/view/Surface;

    return-object v0
.end method

.method static synthetic h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/inmobi/ads/NativeStrandVideoView;->d:Ljava/lang/String;

    return-object v0
.end method

.method private i()V
    .locals 5

    .prologue
    const/4 v1, 0x5

    const/4 v4, 0x1

    .line 266
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    if-eqz v0, :cond_0

    .line 267
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/af;->a(I)V

    .line 268
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/af;->b(I)V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->r:Lcom/inmobi/ads/NativeStrandVideoController;

    if-eqz v0, :cond_1

    .line 271
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->r:Lcom/inmobi/ads/NativeStrandVideoController;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoController;->c()V

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->q:Lcom/inmobi/ads/NativeStrandVideoView$b;

    if-eqz v0, :cond_2

    .line 274
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->q:Lcom/inmobi/ads/NativeStrandVideoView$b;

    invoke-virtual {v0, v4}, Lcom/inmobi/ads/NativeStrandVideoView$b;->removeMessages(I)V

    .line 277
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 278
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/av;

    .line 279
    invoke-virtual {v0}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v1

    const-string v2, "didCompleteQ4"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_3

    .line 280
    invoke-virtual {v0}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v1

    const-string v2, "didCompleteQ4"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoView;->getQuartileCompletedListener()Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 282
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoView;->getQuartileCompletedListener()Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener;

    move-result-object v1

    sget-object v2, Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;->Q4:Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;

    invoke-interface {v1, v2}, Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener;->a(Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener$Quartile;)V

    .line 286
    :cond_3
    invoke-virtual {v0}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v1

    const-string v2, "didSignalVideoCompleted"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    invoke-direct {p0, v0}, Lcom/inmobi/ads/NativeStrandVideoView;->a(Lcom/inmobi/ads/av;)V

    .line 293
    invoke-virtual {v0}, Lcom/inmobi/ads/av;->B()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 294
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoView;->start()V

    .line 301
    :cond_4
    :goto_0
    return-void

    .line 296
    :cond_5
    invoke-virtual {v0}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "isFullScreen"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 297
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/ads/NativeStrandVideoView;->a(II)V

    goto :goto_0
.end method

.method private j()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 397
    iput v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->j:I

    .line 398
    iput v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->k:I

    .line 399
    new-instance v0, Lcom/inmobi/ads/NativeStrandVideoView$b;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/NativeStrandVideoView$b;-><init>(Lcom/inmobi/ads/NativeStrandVideoView;)V

    iput-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->q:Lcom/inmobi/ads/NativeStrandVideoView$b;

    .line 400
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->A:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/NativeStrandVideoView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 401
    invoke-virtual {p0, v1}, Lcom/inmobi/ads/NativeStrandVideoView;->setFocusable(Z)V

    .line 402
    invoke-virtual {p0, v1}, Lcom/inmobi/ads/NativeStrandVideoView;->setFocusableInTouchMode(Z)V

    .line 403
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoView;->requestFocus()Z

    .line 404
    return-void
.end method

.method private k()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    const/4 v2, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 718
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->e:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->g:Landroid/view/Surface;

    if-nez v0, :cond_1

    .line 779
    :cond_0
    :goto_0
    return-void

    .line 723
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 724
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v6}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 727
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/av;

    .line 728
    sget-object v1, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_FULLSCREEN:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 729
    if-eqz v0, :cond_2

    .line 731
    invoke-virtual {v0}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v1

    const-string v2, "placementType"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    .line 733
    :cond_2
    sget-object v2, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_FULLSCREEN:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    if-ne v2, v1, :cond_5

    new-instance v1, Lcom/inmobi/ads/af;

    invoke-direct {v1}, Lcom/inmobi/ads/af;-><init>()V

    .line 735
    :goto_1
    iput-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    .line 736
    iget v1, p0, Lcom/inmobi/ads/NativeStrandVideoView;->i:I

    if-eqz v1, :cond_6

    .line 737
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    iget v2, p0, Lcom/inmobi/ads/NativeStrandVideoView;->i:I

    invoke-virtual {v1, v2}, Lcom/inmobi/ads/af;->setAudioSessionId(I)V

    .line 741
    :goto_2
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    iget-object v2, p0, Lcom/inmobi/ads/NativeStrandVideoView;->b:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v1, v2}, Lcom/inmobi/ads/af;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 742
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    iget-object v2, p0, Lcom/inmobi/ads/NativeStrandVideoView;->a:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v1, v2}, Lcom/inmobi/ads/af;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 743
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    iget-object v2, p0, Lcom/inmobi/ads/NativeStrandVideoView;->w:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v1, v2}, Lcom/inmobi/ads/af;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 744
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    iget-object v2, p0, Lcom/inmobi/ads/NativeStrandVideoView;->z:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v1, v2}, Lcom/inmobi/ads/af;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 745
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    iget-object v2, p0, Lcom/inmobi/ads/NativeStrandVideoView;->x:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v1, v2}, Lcom/inmobi/ads/af;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 746
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    iget-object v2, p0, Lcom/inmobi/ads/NativeStrandVideoView;->y:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v1, v2}, Lcom/inmobi/ads/af;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 747
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    iget-object v2, p0, Lcom/inmobi/ads/NativeStrandVideoView;->g:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Lcom/inmobi/ads/af;->setSurface(Landroid/view/Surface;)V

    .line 748
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/inmobi/ads/af;->setAudioStreamType(I)V

    .line 749
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/ads/NativeStrandVideoView;->e:Landroid/net/Uri;

    iget-object v4, p0, Lcom/inmobi/ads/NativeStrandVideoView;->f:Ljava/util/Map;

    invoke-virtual {v1, v2, v3, v4}, Lcom/inmobi/ads/af;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 750
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    invoke-virtual {v1}, Lcom/inmobi/ads/af;->prepareAsync()V

    .line 751
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoView;->f()V

    .line 752
    const/4 v1, 0x0

    iput v1, p0, Lcom/inmobi/ads/NativeStrandVideoView;->s:I

    .line 753
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/inmobi/ads/af;->a(I)V

    .line 755
    invoke-direct {p0}, Lcom/inmobi/ads/NativeStrandVideoView;->m()V

    .line 756
    if-eqz v0, :cond_7

    .line 758
    invoke-virtual {v0}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v1

    const-string v2, "shouldAutoPlay"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 759
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/inmobi/ads/af;->b(I)V

    .line 762
    :cond_3
    invoke-virtual {v0}, Lcom/inmobi/ads/av;->z()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 763
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoView;->g()V

    .line 765
    :cond_4
    invoke-virtual {v0}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "didCompleteQ4"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 766
    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/ads/NativeStrandVideoView;->a(II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto/16 :goto_0

    .line 772
    :catch_0
    move-exception v0

    .line 773
    :goto_3
    sget-object v1, Lcom/inmobi/ads/NativeStrandVideoView;->d:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to open content: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/inmobi/ads/NativeStrandVideoView;->e:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 774
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    invoke-virtual {v1, v7}, Lcom/inmobi/ads/af;->a(I)V

    .line 775
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    invoke-virtual {v1, v7}, Lcom/inmobi/ads/af;->b(I)V

    .line 776
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoView;->z:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v2, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    invoke-interface {v1, v2, v6, v5}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    .line 777
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto/16 :goto_0

    .line 735
    :cond_5
    :try_start_1
    invoke-static {}, Lcom/inmobi/ads/af;->a()Lcom/inmobi/ads/af;

    move-result-object v1

    goto/16 :goto_1

    .line 739
    :cond_6
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    invoke-virtual {v1}, Lcom/inmobi/ads/af;->getAudioSessionId()I

    move-result v1

    iput v1, p0, Lcom/inmobi/ads/NativeStrandVideoView;->i:I

    goto/16 :goto_2

    .line 772
    :catch_1
    move-exception v0

    goto :goto_3

    .line 771
    :cond_7
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/inmobi/ads/NativeStrandVideoView;->a(II)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0
.end method

.method private l()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 818
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/af;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 819
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/af;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 820
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/af;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 821
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/af;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 822
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/af;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 823
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/af;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 824
    return-void
.end method

.method private m()V
    .locals 2

    .prologue
    .line 856
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->r:Lcom/inmobi/ads/NativeStrandVideoController;

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->r:Lcom/inmobi/ads/NativeStrandVideoController;

    invoke-virtual {v0, p0}, Lcom/inmobi/ads/NativeStrandVideoController;->setMediaPlayer(Lcom/inmobi/ads/NativeStrandVideoView;)V

    .line 858
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->r:Lcom/inmobi/ads/NativeStrandVideoController;

    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoView;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/NativeStrandVideoController;->setEnabled(Z)V

    .line 859
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->r:Lcom/inmobi/ads/NativeStrandVideoController;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoController;->a()V

    .line 861
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 412
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/av;

    .line 413
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "isFullScreen"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    invoke-static {}, Lcom/inmobi/commons/core/utilities/f;->a()Lcom/inmobi/commons/core/utilities/f;

    move-result-object v0

    const-string v1, "android.intent.action.USER_PRESENT"

    iget-object v2, p0, Lcom/inmobi/ads/NativeStrandVideoView;->c:Lcom/inmobi/commons/core/utilities/f$b;

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/f;->a(Ljava/lang/String;Lcom/inmobi/commons/core/utilities/f$b;)V

    .line 416
    :cond_0
    return-void
.end method

.method a(I)V
    .locals 1

    .prologue
    .line 655
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/af;->seekTo(I)V

    .line 658
    :cond_0
    return-void
.end method

.method a(II)V
    .locals 2

    .prologue
    .line 864
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    if-eqz v0, :cond_0

    .line 865
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeStrandVideoWrapper;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoWrapper;->getProgressBar()Landroid/widget/ProgressBar;

    move-result-object v1

    .line 866
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/NativeStrandVideoWrapper;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoWrapper;->getPoster()Landroid/widget/ImageView;

    move-result-object v0

    .line 867
    invoke-virtual {v1, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 868
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 870
    :cond_0
    return-void
.end method

.method a(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 782
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    if-eqz v0, :cond_4

    .line 783
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->q:Lcom/inmobi/ads/NativeStrandVideoView$b;

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->q:Lcom/inmobi/ads/NativeStrandVideoView$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/NativeStrandVideoView$b;->removeMessages(I)V

    .line 787
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 788
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/av;

    .line 789
    invoke-virtual {v0}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "seekPosition"

    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoView;->getCurrentPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    invoke-virtual {v0, v3}, Lcom/inmobi/ads/af;->a(I)V

    .line 792
    if-eqz p1, :cond_2

    .line 793
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    invoke-virtual {v0, v3}, Lcom/inmobi/ads/af;->b(I)V

    .line 795
    :cond_2
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    invoke-virtual {v0}, Lcom/inmobi/ads/af;->reset()V

    .line 796
    invoke-direct {p0}, Lcom/inmobi/ads/NativeStrandVideoView;->l()V

    .line 797
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 798
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/av;

    .line 799
    sget-object v1, Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;->PLACEMENT_TYPE_INLINE:Lcom/inmobi/ads/AdContainer$RenderingProperties$PlacementType;

    invoke-virtual {v0}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v0

    const-string v2, "placementType"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-ne v1, v0, :cond_3

    .line 800
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    invoke-virtual {v0}, Lcom/inmobi/ads/af;->d()V

    .line 805
    :cond_3
    :goto_0
    iput-object v4, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    .line 806
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 807
    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 808
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/NativeStrandVideoView;->d:Ljava/lang/String;

    const-string v2, "Media Player released"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 810
    :cond_4
    return-void

    .line 803
    :cond_5
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    invoke-virtual {v0}, Lcom/inmobi/ads/af;->d()V

    goto :goto_0
.end method

.method public b()V
    .locals 3

    .prologue
    .line 419
    invoke-static {}, Lcom/inmobi/commons/core/utilities/f;->a()Lcom/inmobi/commons/core/utilities/f;

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoView;->c:Lcom/inmobi/commons/core/utilities/f$b;

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/f;->a(Lcom/inmobi/commons/core/utilities/f$b;Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->g:Landroid/view/Surface;

    if-eqz v0, :cond_0

    .line 454
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->g:Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 455
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->g:Landroid/view/Surface;

    .line 457
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/NativeStrandVideoView;->a(Z)V

    .line 458
    return-void
.end method

.method public canPause()Z
    .locals 1

    .prologue
    .line 679
    iget-boolean v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->t:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 684
    iget-boolean v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->u:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 689
    iget-boolean v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->v:Z

    return v0
.end method

.method d()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 549
    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    .line 550
    invoke-virtual {v1}, Lcom/inmobi/ads/af;->b()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    .line 551
    invoke-virtual {v1}, Lcom/inmobi/ads/af;->b()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    .line 552
    invoke-virtual {v1}, Lcom/inmobi/ads/af;->b()I

    move-result v1

    if-eq v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 618
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoView;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 619
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    invoke-virtual {v0}, Lcom/inmobi/ads/af;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 620
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    invoke-virtual {v0}, Lcom/inmobi/ads/af;->pause()V

    .line 621
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    invoke-virtual {v0, v4}, Lcom/inmobi/ads/af;->seekTo(I)V

    .line 622
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 623
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/av;

    .line 624
    invoke-virtual {v0}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v1

    const-string v2, "didPause"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    invoke-virtual {v0}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v1

    const-string v2, "seekPosition"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    invoke-virtual {v0}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "didCompleteQ4"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    invoke-virtual {v0, v6}, Lcom/inmobi/ads/af;->a(I)V

    .line 629
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoView;->getPlaybackEventListener()Lcom/inmobi/ads/NativeStrandVideoView$OnPlaybackEventListener;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/NativeStrandVideoView$OnPlaybackEventListener$PlaybackEvent;->PLAYBACK_EVENT_STOP:Lcom/inmobi/ads/NativeStrandVideoView$OnPlaybackEventListener$PlaybackEvent;

    invoke-interface {v0, v1}, Lcom/inmobi/ads/NativeStrandVideoView$OnPlaybackEventListener;->a(Lcom/inmobi/ads/NativeStrandVideoView$OnPlaybackEventListener$PlaybackEvent;)V

    .line 632
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    if-eqz v0, :cond_2

    .line 633
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    invoke-virtual {v0, v6}, Lcom/inmobi/ads/af;->b(I)V

    .line 635
    :cond_2
    return-void
.end method

.method public f()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 827
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    if-eqz v0, :cond_0

    .line 828
    iput v2, p0, Lcom/inmobi/ads/NativeStrandVideoView;->l:I

    .line 829
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    invoke-virtual {v0, v1, v1}, Lcom/inmobi/ads/af;->setVolume(FF)V

    .line 830
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 831
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/av;

    .line 832
    invoke-virtual {v0}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "currentMediaVolume"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 835
    :cond_0
    return-void
.end method

.method public g()V
    .locals 3

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 838
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    if-eqz v0, :cond_0

    .line 839
    const/4 v0, 0x1

    iput v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->l:I

    .line 840
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    invoke-virtual {v0, v1, v1}, Lcom/inmobi/ads/af;->setVolume(FF)V

    .line 841
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 842
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/av;

    .line 843
    invoke-virtual {v0}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "currentMediaVolume"

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 846
    :cond_0
    return-void
.end method

.method public getAudioSessionId()I
    .locals 2

    .prologue
    .line 693
    iget v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->i:I

    if-nez v0, :cond_0

    .line 694
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 695
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v1

    iput v1, p0, Lcom/inmobi/ads/NativeStrandVideoView;->i:I

    .line 696
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 698
    :cond_0
    iget v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->i:I

    return v0
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 671
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    if-eqz v0, :cond_0

    .line 672
    iget v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->s:I

    .line 674
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 648
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 649
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    invoke-virtual {v0}, Lcom/inmobi/ads/af;->getCurrentPosition()I

    move-result v0

    .line 651
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 639
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    invoke-virtual {v0}, Lcom/inmobi/ads/af;->getDuration()I

    move-result v0

    .line 643
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method getMediaController()Lcom/inmobi/ads/NativeStrandVideoController;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 545
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->r:Lcom/inmobi/ads/NativeStrandVideoController;

    return-object v0
.end method

.method public getMediaPlayer()Lcom/inmobi/ads/af;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 438
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    return-object v0
.end method

.method public getPlaybackEventListener()Lcom/inmobi/ads/NativeStrandVideoView$OnPlaybackEventListener;
    .locals 1

    .prologue
    .line 888
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->o:Lcom/inmobi/ads/NativeStrandVideoView$OnPlaybackEventListener;

    return-object v0
.end method

.method public getQuartileCompletedListener()Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener;
    .locals 1

    .prologue
    .line 880
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->n:Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    invoke-virtual {v0}, Lcom/inmobi/ads/af;->b()I

    move-result v0

    .line 477
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVolume()I
    .locals 1

    .prologue
    .line 849
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 850
    iget v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->l:I

    .line 852
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 666
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoView;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    invoke-virtual {v0}, Lcom/inmobi/ads/af;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 7

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v6, -0x80000000

    .line 483
    :try_start_0
    iget v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->j:I

    invoke-static {v0, p1}, Lcom/inmobi/ads/NativeStrandVideoView;->getDefaultSize(II)I

    move-result v1

    .line 484
    iget v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->k:I

    invoke-static {v0, p2}, Lcom/inmobi/ads/NativeStrandVideoView;->getDefaultSize(II)I

    move-result v0

    .line 485
    iget v2, p0, Lcom/inmobi/ads/NativeStrandVideoView;->j:I

    if-lez v2, :cond_0

    iget v2, p0, Lcom/inmobi/ads/NativeStrandVideoView;->k:I

    if-lez v2, :cond_0

    .line 487
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 488
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 489
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 490
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 492
    if-ne v4, v3, :cond_2

    if-ne v5, v3, :cond_2

    .line 496
    iget v1, p0, Lcom/inmobi/ads/NativeStrandVideoView;->j:I

    mul-int/2addr v1, v0

    iget v3, p0, Lcom/inmobi/ads/NativeStrandVideoView;->k:I

    mul-int/2addr v3, v2

    if-ge v1, v3, :cond_1

    .line 498
    iget v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->k:I

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/inmobi/ads/NativeStrandVideoView;->j:I

    div-int/2addr v0, v1

    move v1, v2

    .line 535
    :cond_0
    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/inmobi/ads/NativeStrandVideoView;->setMeasuredDimension(II)V

    .line 541
    :goto_1
    return-void

    .line 499
    :cond_1
    iget v1, p0, Lcom/inmobi/ads/NativeStrandVideoView;->j:I

    mul-int/2addr v1, v0

    iget v3, p0, Lcom/inmobi/ads/NativeStrandVideoView;->k:I

    mul-int/2addr v3, v2

    if-le v1, v3, :cond_7

    .line 501
    iget v1, p0, Lcom/inmobi/ads/NativeStrandVideoView;->j:I

    mul-int/2addr v1, v0

    iget v2, p0, Lcom/inmobi/ads/NativeStrandVideoView;->k:I

    div-int/2addr v1, v2

    goto :goto_0

    .line 503
    :cond_2
    if-ne v4, v3, :cond_3

    .line 506
    iget v1, p0, Lcom/inmobi/ads/NativeStrandVideoView;->k:I

    mul-int/2addr v1, v2

    iget v3, p0, Lcom/inmobi/ads/NativeStrandVideoView;->j:I

    div-int/2addr v1, v3

    .line 507
    if-ne v5, v6, :cond_6

    if-le v1, v0, :cond_6

    move v1, v2

    .line 509
    goto :goto_0

    .line 511
    :cond_3
    if-ne v5, v3, :cond_4

    .line 514
    iget v1, p0, Lcom/inmobi/ads/NativeStrandVideoView;->j:I

    mul-int/2addr v1, v0

    iget v3, p0, Lcom/inmobi/ads/NativeStrandVideoView;->k:I

    div-int/2addr v1, v3

    .line 515
    if-ne v4, v6, :cond_0

    if-le v1, v2, :cond_0

    move v1, v2

    .line 517
    goto :goto_0

    .line 521
    :cond_4
    iget v3, p0, Lcom/inmobi/ads/NativeStrandVideoView;->j:I

    .line 522
    iget v1, p0, Lcom/inmobi/ads/NativeStrandVideoView;->k:I

    .line 523
    if-ne v5, v6, :cond_5

    if-le v1, v0, :cond_5

    .line 526
    iget v1, p0, Lcom/inmobi/ads/NativeStrandVideoView;->j:I

    mul-int/2addr v1, v0

    iget v3, p0, Lcom/inmobi/ads/NativeStrandVideoView;->k:I

    div-int/2addr v1, v3

    .line 528
    :goto_2
    if-ne v4, v6, :cond_0

    if-le v1, v2, :cond_0

    .line 531
    iget v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->k:I

    mul-int/2addr v0, v2

    iget v1, p0, Lcom/inmobi/ads/NativeStrandVideoView;->j:I

    div-int/2addr v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    .line 536
    :catch_0
    move-exception v0

    .line 537
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/NativeStrandVideoView;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDK encountered unexpected error in handling the onMeasure event; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 539
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 537
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    move v0, v1

    move v1, v3

    goto :goto_2

    :cond_6
    move v0, v1

    move v1, v2

    goto :goto_0

    :cond_7
    move v1, v2

    goto :goto_0
.end method

.method public pause()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    .line 600
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoView;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 601
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    invoke-virtual {v0}, Lcom/inmobi/ads/af;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 602
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 603
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/av;

    .line 604
    invoke-virtual {v0}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v1

    const-string v2, "didPause"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    invoke-virtual {v0}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "seekPosition"

    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoView;->getCurrentPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    invoke-virtual {v0}, Lcom/inmobi/ads/af;->pause()V

    .line 608
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    invoke-virtual {v0, v4}, Lcom/inmobi/ads/af;->a(I)V

    .line 609
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoView;->getPlaybackEventListener()Lcom/inmobi/ads/NativeStrandVideoView$OnPlaybackEventListener;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/NativeStrandVideoView$OnPlaybackEventListener$PlaybackEvent;->PLAYBACK_EVENT_PAUSE:Lcom/inmobi/ads/NativeStrandVideoView$OnPlaybackEventListener$PlaybackEvent;

    invoke-interface {v0, v1}, Lcom/inmobi/ads/NativeStrandVideoView$OnPlaybackEventListener;->a(Lcom/inmobi/ads/NativeStrandVideoView$OnPlaybackEventListener$PlaybackEvent;)V

    .line 612
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    if-eqz v0, :cond_2

    .line 613
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    invoke-virtual {v0, v4}, Lcom/inmobi/ads/af;->b(I)V

    .line 615
    :cond_2
    return-void
.end method

.method public seekTo(I)V
    .locals 0

    .prologue
    .line 662
    return-void
.end method

.method public setMediaController(Lcom/inmobi/ads/NativeStrandVideoController;)V
    .locals 0

    .prologue
    .line 873
    if-eqz p1, :cond_0

    .line 874
    iput-object p1, p0, Lcom/inmobi/ads/NativeStrandVideoView;->r:Lcom/inmobi/ads/NativeStrandVideoController;

    .line 875
    invoke-direct {p0}, Lcom/inmobi/ads/NativeStrandVideoView;->m()V

    .line 877
    :cond_0
    return-void
.end method

.method public setMediaErrorListener(Lcom/inmobi/ads/NativeStrandVideoView$a;)V
    .locals 0

    .prologue
    .line 896
    iput-object p1, p0, Lcom/inmobi/ads/NativeStrandVideoView;->p:Lcom/inmobi/ads/NativeStrandVideoView$a;

    .line 897
    return-void
.end method

.method public setPlaybackEventListener(Lcom/inmobi/ads/NativeStrandVideoView$OnPlaybackEventListener;)V
    .locals 0

    .prologue
    .line 892
    iput-object p1, p0, Lcom/inmobi/ads/NativeStrandVideoView;->o:Lcom/inmobi/ads/NativeStrandVideoView$OnPlaybackEventListener;

    .line 893
    return-void
.end method

.method public setQuartileCompletedListener(Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener;)V
    .locals 0

    .prologue
    .line 884
    iput-object p1, p0, Lcom/inmobi/ads/NativeStrandVideoView;->n:Lcom/inmobi/ads/NativeStrandVideoView$OnQuartileCompletedListener;

    .line 885
    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 702
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/NativeStrandVideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 703
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1

    .prologue
    .line 706
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/inmobi/ads/NativeStrandVideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 707
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 710
    iput-object p1, p0, Lcom/inmobi/ads/NativeStrandVideoView;->e:Landroid/net/Uri;

    .line 711
    iput-object p2, p0, Lcom/inmobi/ads/NativeStrandVideoView;->f:Ljava/util/Map;

    .line 712
    invoke-direct {p0}, Lcom/inmobi/ads/NativeStrandVideoView;->k()V

    .line 713
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoView;->requestLayout()V

    .line 714
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoView;->invalidate()V

    .line 715
    return-void
.end method

.method public start()V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x14
    .end annotation

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 566
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 567
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "keyguard"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 568
    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    .line 569
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x14

    if-ge v4, v5, :cond_3

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 570
    :cond_0
    if-nez v1, :cond_4

    move v0, v3

    .line 572
    :goto_0
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoView;->d()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 573
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    invoke-virtual {v0}, Lcom/inmobi/ads/af;->start()V

    .line 574
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    invoke-virtual {v0, v6}, Lcom/inmobi/ads/af;->a(I)V

    .line 575
    invoke-virtual {p0, v7, v7}, Lcom/inmobi/ads/NativeStrandVideoView;->a(II)V

    .line 576
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 577
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/av;

    .line 578
    invoke-virtual {v0}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v1

    const-string v4, "didCompleteQ4"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    invoke-virtual {v0}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v1

    const-string v4, "didPause"

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 580
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoView;->getPlaybackEventListener()Lcom/inmobi/ads/NativeStrandVideoView$OnPlaybackEventListener;

    move-result-object v1

    sget-object v4, Lcom/inmobi/ads/NativeStrandVideoView$OnPlaybackEventListener$PlaybackEvent;->PLAYBACK_EVENT_RESUME:Lcom/inmobi/ads/NativeStrandVideoView$OnPlaybackEventListener$PlaybackEvent;

    invoke-interface {v1, v4}, Lcom/inmobi/ads/NativeStrandVideoView$OnPlaybackEventListener;->a(Lcom/inmobi/ads/NativeStrandVideoView$OnPlaybackEventListener$PlaybackEvent;)V

    .line 581
    invoke-virtual {v0}, Lcom/inmobi/ads/av;->v()Ljava/util/Map;

    move-result-object v0

    const-string v1, "didPause"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    :goto_1
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->q:Lcom/inmobi/ads/NativeStrandVideoView$b;

    if-eqz v0, :cond_1

    .line 586
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->q:Lcom/inmobi/ads/NativeStrandVideoView$b;

    invoke-virtual {v0, v3}, Lcom/inmobi/ads/NativeStrandVideoView$b;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 587
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->q:Lcom/inmobi/ads/NativeStrandVideoView$b;

    invoke-virtual {v0, v3}, Lcom/inmobi/ads/NativeStrandVideoView$b;->sendEmptyMessage(I)Z

    .line 591
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->r:Lcom/inmobi/ads/NativeStrandVideoController;

    if-eqz v0, :cond_2

    .line 592
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->r:Lcom/inmobi/ads/NativeStrandVideoController;

    invoke-virtual {v0}, Lcom/inmobi/ads/NativeStrandVideoController;->a()V

    .line 595
    :cond_2
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandVideoView;->h:Lcom/inmobi/ads/af;

    invoke-virtual {v0, v6}, Lcom/inmobi/ads/af;->b(I)V

    .line 596
    return-void

    .line 570
    :cond_3
    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_0

    :cond_4
    move v0, v2

    goto :goto_0

    .line 583
    :cond_5
    invoke-virtual {p0}, Lcom/inmobi/ads/NativeStrandVideoView;->getPlaybackEventListener()Lcom/inmobi/ads/NativeStrandVideoView$OnPlaybackEventListener;

    move-result-object v0

    sget-object v1, Lcom/inmobi/ads/NativeStrandVideoView$OnPlaybackEventListener$PlaybackEvent;->PLAYBACK_EVENT_PLAY:Lcom/inmobi/ads/NativeStrandVideoView$OnPlaybackEventListener$PlaybackEvent;

    invoke-interface {v0, v1}, Lcom/inmobi/ads/NativeStrandVideoView$OnPlaybackEventListener;->a(Lcom/inmobi/ads/NativeStrandVideoView$OnPlaybackEventListener$PlaybackEvent;)V

    goto :goto_1
.end method
