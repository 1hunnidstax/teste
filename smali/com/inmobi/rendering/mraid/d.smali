.class final Lcom/inmobi/rendering/mraid/d;
.super Landroid/widget/VideoView;
.source "MediaRenderView.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/rendering/mraid/d$a;,
        Lcom/inmobi/rendering/mraid/d$b;
    }
.end annotation


# static fields
.field private static final h:Ljava/lang/String;


# instance fields
.field a:I

.field b:Z

.field c:Ljava/lang/String;

.field d:Ljava/lang/String;

.field e:Z

.field f:I

.field g:I

.field private i:Lcom/inmobi/rendering/mraid/d$a;

.field private j:Landroid/graphics/Bitmap;

.field private k:Landroid/view/ViewGroup;

.field private l:Lcom/inmobi/rendering/mraid/d$b;

.field private m:Z

.field private n:Landroid/media/MediaPlayer;

.field private o:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/inmobi/rendering/mraid/d;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/rendering/mraid/d;->h:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 67
    invoke-direct {p0, p1}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;)V

    .line 54
    iput-boolean v1, p0, Lcom/inmobi/rendering/mraid/d;->m:Z

    .line 69
    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/mraid/d;->setZOrderOnTop(Z)V

    .line 70
    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/mraid/d;->setFocusable(Z)V

    .line 71
    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/mraid/d;->setFocusableInTouchMode(Z)V

    .line 72
    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/mraid/d;->setDrawingCacheEnabled(Z)V

    .line 73
    const/16 v0, 0x64

    iput v0, p0, Lcom/inmobi/rendering/mraid/d;->a:I

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lcom/inmobi/rendering/mraid/d;->f:I

    .line 75
    iput v1, p0, Lcom/inmobi/rendering/mraid/d;->g:I

    .line 76
    iput-boolean v1, p0, Lcom/inmobi/rendering/mraid/d;->b:Z

    .line 77
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/d;->o:Ljava/lang/ref/WeakReference;

    .line 78
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 79
    return-void
.end method

.method static synthetic a(Lcom/inmobi/rendering/mraid/d;)Lcom/inmobi/rendering/mraid/d$a;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/d;->i:Lcom/inmobi/rendering/mraid/d$a;

    return-object v0
.end method

.method static synthetic a(Lcom/inmobi/rendering/mraid/d;Lcom/inmobi/rendering/mraid/d$a;)Lcom/inmobi/rendering/mraid/d$a;
    .locals 0

    .prologue
    .line 33
    iput-object p1, p0, Lcom/inmobi/rendering/mraid/d;->i:Lcom/inmobi/rendering/mraid/d$a;

    return-object p1
.end method

.method private a(B)Ljava/lang/String;
    .locals 4

    .prologue
    .line 285
    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    .line 287
    const/4 v1, 0x2

    new-array v1, v1, [C

    const/4 v2, 0x0

    shr-int/lit8 v3, p1, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-char v3, v0, v3

    aput-char v3, v1, v2

    const/4 v2, 0x1

    and-int/lit8 v3, p1, 0xf

    aget-char v0, v0, v3

    aput-char v0, v1, v2

    .line 288
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0

    .line 285
    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 248
    const-string v1, ""

    .line 249
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    .line 251
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 252
    array-length v4, v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_1

    aget-byte v5, v2, v0

    .line 253
    and-int/lit16 v6, v5, 0x80

    if-lez v6, :cond_0

    .line 254
    const-string v6, "%"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, v5}, Lcom/inmobi/rendering/mraid/d;->a(B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 256
    :cond_0
    int-to-char v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 261
    :cond_1
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const-string v3, "ISO-8859-1"

    invoke-direct {v0, v2, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    :goto_2
    return-object v0

    .line 262
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 263
    goto :goto_2
.end method

.method private c(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 270
    :try_start_0
    const-string v0, "android.media.ThumbnailUtils"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 271
    const-string v2, "createVideoThumbnail"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 272
    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    .line 280
    :goto_0
    return-object v0

    .line 273
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 274
    goto :goto_0

    .line 275
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 276
    goto :goto_0

    .line 277
    :catch_2
    move-exception v0

    move-object v0, v1

    .line 278
    goto :goto_0

    .line 279
    :catch_3
    move-exception v0

    move-object v0, v1

    .line 280
    goto :goto_0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    sget-object v0, Lcom/inmobi/rendering/mraid/d;->h:Ljava/lang/String;

    return-object v0
.end method

.method private e()V
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/d;->k:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    .line 232
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/d;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 233
    if-eqz v0, :cond_0

    .line 234
    iget-object v1, p0, Lcom/inmobi/rendering/mraid/d;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 237
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/rendering/mraid/d;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 238
    if-eqz v0, :cond_1

    .line 239
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 242
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/mraid/d;->setBackgroundColor(I)V

    .line 243
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/d;->k:Landroid/view/ViewGroup;

    .line 245
    :cond_2
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/d;->d:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/mraid/d;->setVideoPath(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0, p0}, Lcom/inmobi/rendering/mraid/d;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 180
    invoke-virtual {p0, p0}, Lcom/inmobi/rendering/mraid/d;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 181
    invoke-virtual {p0, p0}, Lcom/inmobi/rendering/mraid/d;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 189
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/d;->i:Lcom/inmobi/rendering/mraid/d$a;

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 190
    new-instance v0, Lcom/inmobi/rendering/mraid/d$a;

    invoke-virtual {p0}, Lcom/inmobi/rendering/mraid/d;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/inmobi/rendering/mraid/d$a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/d;->i:Lcom/inmobi/rendering/mraid/d$a;

    .line 191
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/d;->i:Lcom/inmobi/rendering/mraid/d$a;

    invoke-virtual {v0, p0}, Lcom/inmobi/rendering/mraid/d$a;->setAnchorView(Landroid/view/View;)V

    .line 192
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/d;->i:Lcom/inmobi/rendering/mraid/d$a;

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/mraid/d;->setMediaController(Landroid/widget/MediaController;)V

    .line 194
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 197
    invoke-virtual {p0}, Lcom/inmobi/rendering/mraid/d;->getDuration()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 198
    iput p1, p0, Lcom/inmobi/rendering/mraid/d;->g:I

    .line 199
    invoke-virtual {p0, p1}, Lcom/inmobi/rendering/mraid/d;->seekTo(I)V

    .line 201
    :cond_0
    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/inmobi/rendering/mraid/d;->k:Landroid/view/ViewGroup;

    .line 220
    return-void
.end method

.method public a(Lcom/inmobi/rendering/mraid/d$b;)V
    .locals 0

    .prologue
    .line 223
    iput-object p1, p0, Lcom/inmobi/rendering/mraid/d;->l:Lcom/inmobi/rendering/mraid/d$b;

    .line 224
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    const/16 v1, 0x18

    .line 153
    invoke-direct {p0, p1}, Lcom/inmobi/rendering/mraid/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/d;->d:Ljava/lang/String;

    .line 154
    const-string v0, "anonymous"

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/d;->c:Ljava/lang/String;

    .line 156
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/d;->j:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 157
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/d;->j:Landroid/graphics/Bitmap;

    .line 158
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/d;->d:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/inmobi/rendering/mraid/d;->c(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/rendering/mraid/d;->j:Landroid/graphics/Bitmap;

    .line 160
    :cond_0
    return-void
.end method

.method public b()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 204
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/mraid/d;->h:Ljava/lang/String;

    const-string v2, "Release the media render view"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/inmobi/rendering/mraid/d;->stopPlayback()V

    .line 206
    invoke-direct {p0}, Lcom/inmobi/rendering/mraid/d;->e()V

    .line 207
    invoke-super {p0, v3}, Landroid/widget/VideoView;->setMediaController(Landroid/widget/MediaController;)V

    .line 208
    iput-object v3, p0, Lcom/inmobi/rendering/mraid/d;->i:Lcom/inmobi/rendering/mraid/d$a;

    .line 209
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/d;->l:Lcom/inmobi/rendering/mraid/d$b;

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/d;->l:Lcom/inmobi/rendering/mraid/d$b;

    invoke-interface {v0, p0}, Lcom/inmobi/rendering/mraid/d$b;->a(Lcom/inmobi/rendering/mraid/d;)V

    .line 212
    :cond_0
    return-void
.end method

.method public c()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/d;->k:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 350
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 392
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 394
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 370
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 365
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 388
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/d;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/rendering/mraid/d;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/rendering/mraid/d;->m:Z

    .line 358
    invoke-virtual {p0}, Lcom/inmobi/rendering/mraid/d;->start()V

    .line 360
    :cond_0
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/d;->o:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 375
    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 376
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/rendering/mraid/d;->m:Z

    .line 377
    invoke-virtual {p0}, Lcom/inmobi/rendering/mraid/d;->getCurrentPosition()I

    move-result v0

    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {p0}, Lcom/inmobi/rendering/mraid/d;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lcom/inmobi/rendering/mraid/d;->g:I

    .line 380
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/rendering/mraid/d;->pause()V

    .line 383
    :cond_1
    return-void
.end method

.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 3

    .prologue
    .line 113
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/mraid/d;->h:Ljava/lang/String;

    const-string v2, ">>> onCompletion"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4

    .prologue
    .line 118
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/mraid/d;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> onError ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/inmobi/rendering/mraid/d;->b()V

    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .prologue
    .line 89
    invoke-super/range {p0 .. p5}, Landroid/widget/VideoView;->onLayout(ZIIII)V

    .line 90
    invoke-virtual {p0}, Lcom/inmobi/rendering/mraid/d;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->setSizeFromLayout()V

    .line 91
    return-void
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3

    .prologue
    .line 125
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/mraid/d;->h:Ljava/lang/String;

    const-string v2, ">>> onPrepared"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iput-object p1, p0, Lcom/inmobi/rendering/mraid/d;->n:Landroid/media/MediaPlayer;

    .line 132
    new-instance v0, Lcom/inmobi/rendering/mraid/d$1;

    invoke-direct {v0, p0}, Lcom/inmobi/rendering/mraid/d$1;-><init>(Lcom/inmobi/rendering/mraid/d;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 146
    iget v0, p0, Lcom/inmobi/rendering/mraid/d;->g:I

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/mraid/d;->a(I)V

    .line 147
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/rendering/mraid/d;->e:Z

    .line 148
    iget-object v0, p0, Lcom/inmobi/rendering/mraid/d;->l:Lcom/inmobi/rendering/mraid/d$b;

    invoke-interface {v0, p0}, Lcom/inmobi/rendering/mraid/d$b;->b(Lcom/inmobi/rendering/mraid/d;)V

    .line 149
    invoke-virtual {p0}, Lcom/inmobi/rendering/mraid/d;->start()V

    .line 150
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 97
    invoke-super {p0, p1, p2}, Landroid/widget/VideoView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 98
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/mraid/d;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> onVisibilityChanged ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    if-nez p2, :cond_0

    .line 100
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 101
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_0

    .line 103
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v2, p0, Lcom/inmobi/rendering/mraid/d;->j:Landroid/graphics/Bitmap;

    invoke-direct {v1, v0, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v1}, Lcom/inmobi/rendering/mraid/d;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 109
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/inmobi/rendering/mraid/d;->j:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/mraid/d;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 4

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/widget/VideoView;->onWindowVisibilityChanged(I)V

    .line 84
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/mraid/d;->h:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">>> onWindowVisibilityChanged ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 173
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/mraid/d;->h:Ljava/lang/String;

    const-string v2, "Pause media playback"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-super {p0}, Landroid/widget/VideoView;->pause()V

    .line 175
    return-void
.end method

.method public start()V
    .locals 3

    .prologue
    .line 164
    iget-boolean v0, p0, Lcom/inmobi/rendering/mraid/d;->m:Z

    if-eqz v0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 167
    :cond_0
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/rendering/mraid/d;->h:Ljava/lang/String;

    const-string v2, "Start media playback"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-super {p0}, Landroid/widget/VideoView;->start()V

    goto :goto_0
.end method
