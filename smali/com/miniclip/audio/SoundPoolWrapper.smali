.class public Lcom/miniclip/audio/SoundPoolWrapper;
.super Ljava/lang/Object;
.source "SoundPoolWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;,
        Lcom/miniclip/audio/SoundPoolWrapper$PathInfo;
    }
.end annotation


# static fields
.field private static final DEFAULT_MAX_STREAMS:I = 0xa

.field private static final TAG:Ljava/lang/String;

.field private static initialized:Z

.field private static final soundIdsMutex:Ljava/lang/Object;

.field private static soundPoolLastId:I

.field private static final soundPoolState:Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;

.field private static final threadedExecutor:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    const-class v0, Lcom/miniclip/audio/SoundPoolWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miniclip/audio/SoundPoolWrapper;->TAG:Ljava/lang/String;

    .line 38
    sput-boolean v1, Lcom/miniclip/audio/SoundPoolWrapper;->initialized:Z

    .line 39
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/miniclip/audio/SoundPoolWrapper;->threadedExecutor:Ljava/util/concurrent/ExecutorService;

    .line 40
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/miniclip/audio/SoundPoolWrapper;->soundIdsMutex:Ljava/lang/Object;

    .line 41
    sput v1, Lcom/miniclip/audio/SoundPoolWrapper;->soundPoolLastId:I

    .line 42
    new-instance v0, Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;

    const/16 v1, 0xa

    invoke-static {v1}, Lcom/miniclip/audio/SoundPoolWrapper;->createSoundPool(I)Landroid/media/SoundPool;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;-><init>(Landroid/media/SoundPool;)V

    sput-object v0, Lcom/miniclip/audio/SoundPoolWrapper;->soundPoolState:Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;

    .line 45
    invoke-static {}, Lcom/miniclip/audio/SoundPoolWrapper;->init()V

    .line 46
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/miniclip/audio/SoundPoolWrapper;->soundIdsMutex:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/miniclip/audio/SoundPoolWrapper;->soundPoolState:Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;

    return-object v0
.end method

.method static synthetic access$200(ILjava/lang/String;IZ)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 18
    invoke-static {p0, p1, p2, p3}, Lcom/miniclip/audio/SoundPoolWrapper;->nativeOnSoundLoaded(ILjava/lang/String;IZ)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/miniclip/audio/SoundPoolWrapper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static createSoundPool(I)Landroid/media/SoundPool;
    .locals 5
    .param p0, "maxStreams"    # I

    .prologue
    .line 94
    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "GT-I9100"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xe

    if-ge v2, v3, :cond_0

    .line 96
    sget-object v2, Lcom/miniclip/audio/SoundPoolWrapper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The phone is a "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": enabling single stream sound pool"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/4 p0, 0x1

    .line 101
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_1

    .line 102
    new-instance v1, Landroid/media/SoundPool;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    .line 114
    .local v1, "sp":Landroid/media/SoundPool;
    :goto_0
    return-object v1

    .line 104
    .end local v1    # "sp":Landroid/media/SoundPool;
    :cond_1
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v3, 0x2

    .line 105
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    const/4 v3, 0x1

    .line 106
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 107
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    .line 108
    .local v0, "attributes":Landroid/media/AudioAttributes;
    new-instance v2, Landroid/media/SoundPool$Builder;

    invoke-direct {v2}, Landroid/media/SoundPool$Builder;-><init>()V

    .line 109
    invoke-virtual {v2, v0}, Landroid/media/SoundPool$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/SoundPool$Builder;

    move-result-object v2

    .line 110
    invoke-virtual {v2, p0}, Landroid/media/SoundPool$Builder;->setMaxStreams(I)Landroid/media/SoundPool$Builder;

    move-result-object v2

    .line 111
    invoke-virtual {v2}, Landroid/media/SoundPool$Builder;->build()Landroid/media/SoundPool;

    move-result-object v1

    .restart local v1    # "sp":Landroid/media/SoundPool;
    goto :goto_0
.end method

.method public static init()V
    .locals 2

    .prologue
    .line 51
    sget-boolean v0, Lcom/miniclip/audio/SoundPoolWrapper;->initialized:Z

    if-eqz v0, :cond_0

    .line 52
    sget-object v0, Lcom/miniclip/audio/SoundPoolWrapper;->TAG:Ljava/lang/String;

    const-string v1, "Already initialized!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    :goto_0
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/miniclip/audio/SoundPoolWrapper;->initialized:Z

    .line 57
    sget-object v0, Lcom/miniclip/audio/SoundPoolWrapper;->soundPoolState:Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;

    iget-object v0, v0, Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;->soundPool:Landroid/media/SoundPool;

    new-instance v1, Lcom/miniclip/audio/SoundPoolWrapper$1;

    invoke-direct {v1}, Lcom/miniclip/audio/SoundPoolWrapper$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 78
    new-instance v0, Lcom/miniclip/audio/SoundPoolWrapper$2;

    invoke-direct {v0}, Lcom/miniclip/audio/SoundPoolWrapper$2;-><init>()V

    invoke-static {v0}, Lcom/miniclip/framework/Miniclip;->addListener(Lcom/miniclip/framework/ActivityListener;)Z

    goto :goto_0
.end method

.method public static load(ILjava/lang/String;)V
    .locals 2
    .param p0, "storageType"    # I
    .param p1, "relativePath"    # Ljava/lang/String;

    .prologue
    .line 119
    sget-object v0, Lcom/miniclip/audio/SoundPoolWrapper;->threadedExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/miniclip/audio/SoundPoolWrapper$3;

    invoke-direct {v1, p0, p1}, Lcom/miniclip/audio/SoundPoolWrapper$3;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 153
    return-void
.end method

.method private static native nativeOnSoundLoaded(ILjava/lang/String;IZ)V
.end method

.method public static pause(II)V
    .locals 4
    .param p0, "soundId"    # I
    .param p1, "streamId"    # I

    .prologue
    .line 193
    :try_start_0
    sget-object v1, Lcom/miniclip/audio/SoundPoolWrapper;->soundPoolState:Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;

    iget-object v1, v1, Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, p1}, Landroid/media/SoundPool;->pause(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    .line 195
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/miniclip/audio/SoundPoolWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught sound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static play(IFFIF)I
    .locals 10
    .param p0, "soundId"    # I
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F
    .param p3, "loop"    # I
    .param p4, "rate"    # F

    .prologue
    const/4 v9, 0x0

    .line 173
    :try_start_0
    sget-object v0, Lcom/miniclip/audio/SoundPoolWrapper;->soundPoolState:Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;

    iget-object v0, v0, Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;->soundPool:Landroid/media/SoundPool;

    const/4 v4, 0x0

    move v1, p0

    move v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v8

    .line 174
    .local v8, "streamId":I
    sget-object v0, Lcom/miniclip/audio/SoundPoolWrapper;->soundPoolState:Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;

    iget-object v0, v0, Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;->instances:Ljava/util/Set;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .end local v8    # "streamId":I
    :goto_0
    return v8

    .line 176
    :catch_0
    move-exception v7

    .line 177
    .local v7, "e":Ljava/lang/Exception;
    sget-object v0, Lcom/miniclip/audio/SoundPoolWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception caught sound: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v8, v9

    .line 178
    goto :goto_0
.end method

.method public static release(I)V
    .locals 6
    .param p0, "soundId"    # I

    .prologue
    .line 157
    sget-object v2, Lcom/miniclip/audio/SoundPoolWrapper;->soundPoolState:Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;

    iget-object v2, v2, Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;->soundPool:Landroid/media/SoundPool;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 159
    sget-object v2, Lcom/miniclip/audio/SoundPoolWrapper;->soundPoolState:Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;

    iget-object v2, v2, Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;->instances:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 160
    .local v1, "streamId":Ljava/lang/Integer;
    :try_start_0
    sget-object v3, Lcom/miniclip/audio/SoundPoolWrapper;->soundPoolState:Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;

    iget-object v3, v3, Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/media/SoundPool;->stop(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 161
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/miniclip/audio/SoundPoolWrapper;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception caught sound: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 164
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "streamId":Ljava/lang/Integer;
    :cond_0
    :try_start_1
    sget-object v2, Lcom/miniclip/audio/SoundPoolWrapper;->soundPoolState:Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;

    iget-object v2, v2, Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;->soundPool:Landroid/media/SoundPool;

    sget-object v3, Lcom/miniclip/audio/SoundPoolWrapper;->soundPoolState:Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;

    iget v3, v3, Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;->soundId:I

    invoke-virtual {v2, v3}, Landroid/media/SoundPool;->unload(I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 167
    :goto_1
    :try_start_2
    sget-object v2, Lcom/miniclip/audio/SoundPoolWrapper;->soundPoolState:Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;

    iget-object v2, v2, Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v2}, Landroid/media/SoundPool;->release()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 169
    :goto_2
    return-void

    .line 165
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v2, Lcom/miniclip/audio/SoundPoolWrapper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught when unloading sound: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 168
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v2, Lcom/miniclip/audio/SoundPoolWrapper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught when releasing sound: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public static resume(II)V
    .locals 4
    .param p0, "soundId"    # I
    .param p1, "streamId"    # I

    .prologue
    .line 201
    :try_start_0
    sget-object v1, Lcom/miniclip/audio/SoundPoolWrapper;->soundPoolState:Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;

    iget-object v1, v1, Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, p1}, Landroid/media/SoundPool;->resume(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 205
    :goto_0
    return-void

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/miniclip/audio/SoundPoolWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught sound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setLoop(III)V
    .locals 4
    .param p0, "soundId"    # I
    .param p1, "streamId"    # I
    .param p2, "loop"    # I

    .prologue
    .line 217
    :try_start_0
    sget-object v1, Lcom/miniclip/audio/SoundPoolWrapper;->soundPoolState:Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;

    iget-object v1, v1, Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, p1, p2}, Landroid/media/SoundPool;->setLoop(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/miniclip/audio/SoundPoolWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught sound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setRate(IIF)V
    .locals 4
    .param p0, "soundId"    # I
    .param p1, "streamId"    # I
    .param p2, "rate"    # F

    .prologue
    .line 225
    :try_start_0
    sget-object v1, Lcom/miniclip/audio/SoundPoolWrapper;->soundPoolState:Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;

    iget-object v1, v1, Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, p1, p2}, Landroid/media/SoundPool;->setRate(IF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    :goto_0
    return-void

    .line 226
    :catch_0
    move-exception v0

    .line 227
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/miniclip/audio/SoundPoolWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught sound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setVolume(IIFF)V
    .locals 4
    .param p0, "soundId"    # I
    .param p1, "streamId"    # I
    .param p2, "leftVolume"    # F
    .param p3, "rightVolume"    # F

    .prologue
    .line 209
    :try_start_0
    sget-object v1, Lcom/miniclip/audio/SoundPoolWrapper;->soundPoolState:Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;

    iget-object v1, v1, Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, p1, p2, p3}, Landroid/media/SoundPool;->setVolume(IFF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/miniclip/audio/SoundPoolWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught sound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static stop(II)V
    .locals 4
    .param p0, "soundId"    # I
    .param p1, "streamId"    # I

    .prologue
    .line 183
    sget-object v1, Lcom/miniclip/audio/SoundPoolWrapper;->soundPoolState:Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;

    iget-object v1, v1, Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;->instances:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 185
    :try_start_0
    sget-object v1, Lcom/miniclip/audio/SoundPoolWrapper;->soundPoolState:Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;

    iget-object v1, v1, Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v1, p1}, Landroid/media/SoundPool;->stop(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 189
    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/miniclip/audio/SoundPoolWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception caught sound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
