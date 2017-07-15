.class public Lcom/miniclip/audio/MCSound;
.super Ljava/lang/Object;
.source "MCSound.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miniclip/audio/MCSound$SoundInfo;,
        Lcom/miniclip/audio/MCSound$PlayEffectInfo;
    }
.end annotation


# static fields
.field private static MAX_SIMULTANEOUS_STREAMS_DEFAULT:I = 0x0

.field public static final SOUND_LOOP_TIME:I = 0x0

.field public static final SOUND_PRIORITY:I = 0x1

.field private static final SOUND_QUALITY:I = 0x5

.field public static final SOUND_RATE:F = 1.0f

.field private static final TAG:Ljava/lang/String; = "MCSound"

.field private static final soundIdGenerator:Ljava/util/Random;


# instance fields
.field private loadSoundExecutor:Ljava/util/concurrent/ExecutorService;

.field private mContext:Landroid/content/Context;

.field public mLeftVolume:F

.field public mRightVolume:F

.field private mSoundPool:Landroid/media/SoundPool;

.field final pathToSoundInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/miniclip/audio/MCSound$SoundInfo;",
            ">;"
        }
    .end annotation
.end field

.field final sampleIdToSoundInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/miniclip/audio/MCSound$SoundInfo;",
            ">;"
        }
    .end annotation
.end field

.field final soundIdToSoundInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/miniclip/audio/MCSound$SoundInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/16 v0, 0xa

    sput v0, Lcom/miniclip/audio/MCSound;->MAX_SIMULTANEOUS_STREAMS_DEFAULT:I

    .line 29
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/miniclip/audio/MCSound;->soundIdGenerator:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/high16 v4, 0x3f000000    # 0.5f

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/miniclip/audio/MCSound;->loadSoundExecutor:Ljava/util/concurrent/ExecutorService;

    .line 74
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miniclip/audio/MCSound;->pathToSoundInfo:Ljava/util/Map;

    .line 75
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miniclip/audio/MCSound;->soundIdToSoundInfo:Ljava/util/Map;

    .line 76
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/miniclip/audio/MCSound;->sampleIdToSoundInfo:Ljava/util/Map;

    .line 59
    iput-object p1, p0, Lcom/miniclip/audio/MCSound;->mContext:Landroid/content/Context;

    .line 60
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "GT-I9100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 62
    const-string v0, "MCSound"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The phone is a "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": enabling single stream sound pool"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const/4 v0, 0x1

    sput v0, Lcom/miniclip/audio/MCSound;->MAX_SIMULTANEOUS_STREAMS_DEFAULT:I

    .line 66
    :cond_0
    new-instance v0, Landroid/media/SoundPool;

    sget v1, Lcom/miniclip/audio/MCSound;->MAX_SIMULTANEOUS_STREAMS_DEFAULT:I

    const/4 v2, 0x3

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v0, p0, Lcom/miniclip/audio/MCSound;->mSoundPool:Landroid/media/SoundPool;

    .line 67
    iget-object v0, p0, Lcom/miniclip/audio/MCSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0, p0}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 69
    iput v4, p0, Lcom/miniclip/audio/MCSound;->mLeftVolume:F

    .line 70
    iput v4, p0, Lcom/miniclip/audio/MCSound;->mRightVolume:F

    .line 71
    return-void
.end method

.method static synthetic access$100(Lcom/miniclip/audio/MCSound;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/miniclip/audio/MCSound;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/miniclip/audio/MCSound;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miniclip/audio/MCSound;)Landroid/media/SoundPool;
    .locals 1
    .param p0, "x0"    # Lcom/miniclip/audio/MCSound;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/miniclip/audio/MCSound;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method private loadSound(Ljava/lang/String;Lcom/miniclip/audio/MCSound$SoundInfo;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/miniclip/audio/MCSound$SoundInfo;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/miniclip/audio/MCSound;->loadSoundExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/miniclip/audio/MCSound$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/miniclip/audio/MCSound$1;-><init>(Lcom/miniclip/audio/MCSound;Ljava/lang/String;Lcom/miniclip/audio/MCSound$SoundInfo;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 134
    return-void
.end method


# virtual methods
.method public getEffectsVolume()F
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 274
    iget-object v1, p0, Lcom/miniclip/audio/MCSound;->mContext:Landroid/content/Context;

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 275
    .local v0, "audioManager":Landroid/media/AudioManager;
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v1

    int-to-float v1, v1

    .line 276
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 275
    return v1
.end method

.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 8
    .param p1, "soundPool"    # Landroid/media/SoundPool;
    .param p2, "sampleId"    # I
    .param p3, "status"    # I

    .prologue
    .line 306
    iget-object v0, p0, Lcom/miniclip/audio/MCSound;->sampleIdToSoundInfo:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miniclip/audio/MCSound$SoundInfo;

    .line 307
    .local v7, "info":Lcom/miniclip/audio/MCSound$SoundInfo;
    if-nez v7, :cond_1

    .line 308
    const-string v0, "MCSound"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadComplete: Unknown sample id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_0
    :goto_0
    return-void

    .line 310
    :cond_1
    if-eqz p3, :cond_2

    .line 311
    const-string v0, "MCSound"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadComplete: Unable to load sound: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v7, Lcom/miniclip/audio/MCSound$SoundInfo;->soundId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 315
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, v7, Lcom/miniclip/audio/MCSound$SoundInfo;->loaded:Z

    .line 316
    iget-object v0, v7, Lcom/miniclip/audio/MCSound$SoundInfo;->playOnLoad:Lcom/miniclip/audio/MCSound$PlayEffectInfo;

    if-eqz v0, :cond_0

    .line 317
    iget v1, v7, Lcom/miniclip/audio/MCSound$SoundInfo;->soundId:I

    iget-object v0, v7, Lcom/miniclip/audio/MCSound$SoundInfo;->playOnLoad:Lcom/miniclip/audio/MCSound$PlayEffectInfo;

    iget v2, v0, Lcom/miniclip/audio/MCSound$PlayEffectInfo;->leftGain:F

    iget-object v0, v7, Lcom/miniclip/audio/MCSound$SoundInfo;->playOnLoad:Lcom/miniclip/audio/MCSound$PlayEffectInfo;

    iget v3, v0, Lcom/miniclip/audio/MCSound$PlayEffectInfo;->rightGain:F

    iget-object v0, v7, Lcom/miniclip/audio/MCSound$SoundInfo;->playOnLoad:Lcom/miniclip/audio/MCSound$PlayEffectInfo;

    iget v4, v0, Lcom/miniclip/audio/MCSound$PlayEffectInfo;->priority:I

    iget-object v0, v7, Lcom/miniclip/audio/MCSound$SoundInfo;->playOnLoad:Lcom/miniclip/audio/MCSound$PlayEffectInfo;

    iget v5, v0, Lcom/miniclip/audio/MCSound$PlayEffectInfo;->loopTime:I

    iget-object v0, v7, Lcom/miniclip/audio/MCSound$SoundInfo;->playOnLoad:Lcom/miniclip/audio/MCSound$PlayEffectInfo;

    iget v6, v0, Lcom/miniclip/audio/MCSound$PlayEffectInfo;->pitch:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/miniclip/audio/MCSound;->playEffect(IFFIIF)V

    goto :goto_0
.end method

.method public pauseAllSounds()V
    .locals 2

    .prologue
    .line 285
    :try_start_0
    iget-object v1, p0, Lcom/miniclip/audio/MCSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1}, Landroid/media/SoundPool;->autoPause()V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :goto_0
    return-void

    .line 287
    :catch_0
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0
.end method

.method public pauseEffect(I)V
    .locals 4
    .param p1, "soundId"    # I

    .prologue
    .line 211
    iget-object v1, p0, Lcom/miniclip/audio/MCSound;->soundIdToSoundInfo:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miniclip/audio/MCSound$SoundInfo;

    .line 212
    .local v0, "info":Lcom/miniclip/audio/MCSound$SoundInfo;
    if-nez v0, :cond_1

    .line 213
    const-string v1, "MCSound"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pauseEffect: Unknown sound id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 217
    :cond_1
    iget-boolean v1, v0, Lcom/miniclip/audio/MCSound$SoundInfo;->playing:Z

    if-eqz v1, :cond_2

    .line 218
    iget-object v1, p0, Lcom/miniclip/audio/MCSound;->mSoundPool:Landroid/media/SoundPool;

    iget v2, v0, Lcom/miniclip/audio/MCSound$SoundInfo;->streamId:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->pause(I)V

    goto :goto_0

    .line 219
    :cond_2
    iget-object v1, v0, Lcom/miniclip/audio/MCSound$SoundInfo;->playOnLoad:Lcom/miniclip/audio/MCSound$PlayEffectInfo;

    if-eqz v1, :cond_0

    .line 223
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/miniclip/audio/MCSound$SoundInfo;->playOnLoad:Lcom/miniclip/audio/MCSound$PlayEffectInfo;

    goto :goto_0
.end method

.method public playEffect(IFFIIF)V
    .locals 8
    .param p1, "soundId"    # I
    .param p2, "leftGain"    # F
    .param p3, "rightGain"    # F
    .param p4, "priority"    # I
    .param p5, "loopTime"    # I
    .param p6, "pitch"    # F

    .prologue
    .line 171
    iget-object v0, p0, Lcom/miniclip/audio/MCSound;->soundIdToSoundInfo:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miniclip/audio/MCSound$SoundInfo;

    .line 172
    .local v7, "info":Lcom/miniclip/audio/MCSound$SoundInfo;
    if-nez v7, :cond_0

    .line 173
    const-string v0, "MCSound"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playEffect: Unknown sound id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :goto_0
    return-void

    .line 177
    :cond_0
    iget-boolean v0, v7, Lcom/miniclip/audio/MCSound$SoundInfo;->playing:Z

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/miniclip/audio/MCSound;->mSoundPool:Landroid/media/SoundPool;

    iget v1, v7, Lcom/miniclip/audio/MCSound$SoundInfo;->streamId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->stop(I)V

    .line 179
    const/4 v0, 0x0

    iput-boolean v0, v7, Lcom/miniclip/audio/MCSound$SoundInfo;->playing:Z

    .line 182
    :cond_1
    iget-boolean v0, v7, Lcom/miniclip/audio/MCSound$SoundInfo;->loaded:Z

    if-eqz v0, :cond_2

    .line 183
    iget-object v0, p0, Lcom/miniclip/audio/MCSound;->mSoundPool:Landroid/media/SoundPool;

    iget v1, v7, Lcom/miniclip/audio/MCSound$SoundInfo;->sampleId:I

    iget v2, p0, Lcom/miniclip/audio/MCSound;->mLeftVolume:F

    mul-float/2addr v2, p2

    iget v3, p0, Lcom/miniclip/audio/MCSound;->mRightVolume:F

    mul-float/2addr v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    move-result v0

    iput v0, v7, Lcom/miniclip/audio/MCSound$SoundInfo;->streamId:I

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, v7, Lcom/miniclip/audio/MCSound$SoundInfo;->playing:Z

    goto :goto_0

    .line 186
    :cond_2
    new-instance v0, Lcom/miniclip/audio/MCSound$PlayEffectInfo;

    move-object v1, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/miniclip/audio/MCSound$PlayEffectInfo;-><init>(Lcom/miniclip/audio/MCSound;FFIIF)V

    iput-object v0, v7, Lcom/miniclip/audio/MCSound$SoundInfo;->playOnLoad:Lcom/miniclip/audio/MCSound$PlayEffectInfo;

    goto :goto_0
.end method

.method public preloadEffect(Ljava/lang/String;)I
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 81
    monitor-enter p0

    .line 82
    :try_start_0
    iget-object v1, p0, Lcom/miniclip/audio/MCSound;->pathToSoundInfo:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miniclip/audio/MCSound$SoundInfo;

    .line 83
    .local v0, "info":Lcom/miniclip/audio/MCSound$SoundInfo;
    if-eqz v0, :cond_0

    .line 85
    iget v1, v0, Lcom/miniclip/audio/MCSound$SoundInfo;->soundId:I

    monitor-exit p0

    .line 102
    :goto_0
    return v1

    .line 88
    :cond_0
    new-instance v0, Lcom/miniclip/audio/MCSound$SoundInfo;

    .end local v0    # "info":Lcom/miniclip/audio/MCSound$SoundInfo;
    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miniclip/audio/MCSound$SoundInfo;-><init>(Lcom/miniclip/audio/MCSound;Lcom/miniclip/audio/MCSound$1;)V

    .line 91
    .restart local v0    # "info":Lcom/miniclip/audio/MCSound$SoundInfo;
    :cond_1
    sget-object v1, Lcom/miniclip/audio/MCSound;->soundIdGenerator:Ljava/util/Random;

    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    iput v1, v0, Lcom/miniclip/audio/MCSound$SoundInfo;->soundId:I

    .line 92
    iget-object v1, p0, Lcom/miniclip/audio/MCSound;->soundIdToSoundInfo:Ljava/util/Map;

    iget v2, v0, Lcom/miniclip/audio/MCSound$SoundInfo;->soundId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 94
    iget-object v1, p0, Lcom/miniclip/audio/MCSound;->pathToSoundInfo:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v1, p0, Lcom/miniclip/audio/MCSound;->soundIdToSoundInfo:Ljava/util/Map;

    iget v2, v0, Lcom/miniclip/audio/MCSound$SoundInfo;->soundId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 98
    const-string v1, "MCSound"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preloadEffect: loading: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-direct {p0, p1, v0}, Lcom/miniclip/audio/MCSound;->loadSound(Ljava/lang/String;Lcom/miniclip/audio/MCSound$SoundInfo;)V

    .line 102
    iget v1, v0, Lcom/miniclip/audio/MCSound$SoundInfo;->soundId:I

    goto :goto_0

    .line 96
    .end local v0    # "info":Lcom/miniclip/audio/MCSound$SoundInfo;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public resumeAllSounds()V
    .locals 2

    .prologue
    .line 294
    :try_start_0
    iget-object v1, p0, Lcom/miniclip/audio/MCSound;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v1}, Landroid/media/SoundPool;->autoResume()V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    :goto_0
    return-void

    .line 296
    :catch_0
    move-exception v0

    .line 297
    .local v0, "e":Ljava/lang/NoSuchMethodError;
    invoke-virtual {v0}, Ljava/lang/NoSuchMethodError;->printStackTrace()V

    goto :goto_0
.end method

.method public setEffectGain(IF)V
    .locals 5
    .param p1, "soundId"    # I
    .param p2, "gain"    # F

    .prologue
    .line 257
    iget-object v1, p0, Lcom/miniclip/audio/MCSound;->soundIdToSoundInfo:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miniclip/audio/MCSound$SoundInfo;

    .line 258
    .local v0, "info":Lcom/miniclip/audio/MCSound$SoundInfo;
    if-nez v0, :cond_1

    .line 259
    const-string v1, "MCSound"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEffectGain: Unknown sound id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :cond_0
    :goto_0
    return-void

    .line 263
    :cond_1
    iget-boolean v1, v0, Lcom/miniclip/audio/MCSound$SoundInfo;->playing:Z

    if-eqz v1, :cond_2

    .line 264
    iget-object v1, p0, Lcom/miniclip/audio/MCSound;->mSoundPool:Landroid/media/SoundPool;

    iget v2, v0, Lcom/miniclip/audio/MCSound$SoundInfo;->streamId:I

    iget v3, p0, Lcom/miniclip/audio/MCSound;->mLeftVolume:F

    mul-float/2addr v3, p2

    iget v4, p0, Lcom/miniclip/audio/MCSound;->mRightVolume:F

    mul-float/2addr v4, p2

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/SoundPool;->setVolume(IFF)V

    goto :goto_0

    .line 265
    :cond_2
    iget-object v1, v0, Lcom/miniclip/audio/MCSound$SoundInfo;->playOnLoad:Lcom/miniclip/audio/MCSound$PlayEffectInfo;

    if-eqz v1, :cond_0

    .line 266
    iget-object v1, v0, Lcom/miniclip/audio/MCSound$SoundInfo;->playOnLoad:Lcom/miniclip/audio/MCSound$PlayEffectInfo;

    iput p2, v1, Lcom/miniclip/audio/MCSound$PlayEffectInfo;->leftGain:F

    .line 267
    iget-object v1, v0, Lcom/miniclip/audio/MCSound$SoundInfo;->playOnLoad:Lcom/miniclip/audio/MCSound$PlayEffectInfo;

    iput p2, v1, Lcom/miniclip/audio/MCSound$PlayEffectInfo;->rightGain:F

    goto :goto_0
.end method

.method public setEffectLooping(IZ)V
    .locals 5
    .param p1, "soundId"    # I
    .param p2, "loop"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 243
    iget-object v3, p0, Lcom/miniclip/audio/MCSound;->soundIdToSoundInfo:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miniclip/audio/MCSound$SoundInfo;

    .line 244
    .local v0, "info":Lcom/miniclip/audio/MCSound$SoundInfo;
    if-nez v0, :cond_1

    .line 245
    const-string v1, "MCSound"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEffectLooping: Unknown sound id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_0
    :goto_0
    return-void

    .line 249
    :cond_1
    iget-boolean v3, v0, Lcom/miniclip/audio/MCSound$SoundInfo;->playing:Z

    if-eqz v3, :cond_3

    .line 250
    iget-object v3, p0, Lcom/miniclip/audio/MCSound;->mSoundPool:Landroid/media/SoundPool;

    iget v4, v0, Lcom/miniclip/audio/MCSound$SoundInfo;->streamId:I

    if-eqz p2, :cond_2

    :goto_1
    invoke-virtual {v3, v4, v1}, Landroid/media/SoundPool;->setLoop(II)V

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1

    .line 251
    :cond_3
    iget-object v3, v0, Lcom/miniclip/audio/MCSound$SoundInfo;->playOnLoad:Lcom/miniclip/audio/MCSound$PlayEffectInfo;

    if-eqz v3, :cond_0

    .line 252
    iget-object v3, v0, Lcom/miniclip/audio/MCSound$SoundInfo;->playOnLoad:Lcom/miniclip/audio/MCSound$PlayEffectInfo;

    if-eqz p2, :cond_4

    :goto_2
    iput v1, v3, Lcom/miniclip/audio/MCSound$PlayEffectInfo;->loopTime:I

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_2
.end method

.method public setEffectPitch(IF)V
    .locals 4
    .param p1, "soundId"    # I
    .param p2, "pitch"    # F

    .prologue
    .line 191
    iget-object v1, p0, Lcom/miniclip/audio/MCSound;->soundIdToSoundInfo:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miniclip/audio/MCSound$SoundInfo;

    .line 192
    .local v0, "info":Lcom/miniclip/audio/MCSound$SoundInfo;
    if-nez v0, :cond_1

    .line 193
    const-string v1, "MCSound"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEffectPitch: Unknown sound id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    const/high16 v1, 0x3f000000    # 0.5f

    cmpg-float v1, p2, v1

    if-gez v1, :cond_3

    .line 198
    const/high16 p2, 0x3f000000    # 0.5f

    .line 203
    :cond_2
    :goto_1
    iget-boolean v1, v0, Lcom/miniclip/audio/MCSound$SoundInfo;->playing:Z

    if-eqz v1, :cond_4

    .line 204
    iget-object v1, p0, Lcom/miniclip/audio/MCSound;->mSoundPool:Landroid/media/SoundPool;

    iget v2, v0, Lcom/miniclip/audio/MCSound$SoundInfo;->streamId:I

    invoke-virtual {v1, v2, p2}, Landroid/media/SoundPool;->setRate(IF)V

    goto :goto_0

    .line 199
    :cond_3
    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v1, p2, v1

    if-lez v1, :cond_2

    .line 200
    const/high16 p2, 0x40000000    # 2.0f

    goto :goto_1

    .line 205
    :cond_4
    iget-object v1, v0, Lcom/miniclip/audio/MCSound$SoundInfo;->playOnLoad:Lcom/miniclip/audio/MCSound$PlayEffectInfo;

    if-eqz v1, :cond_0

    .line 206
    iget-object v1, v0, Lcom/miniclip/audio/MCSound$SoundInfo;->playOnLoad:Lcom/miniclip/audio/MCSound$PlayEffectInfo;

    iput p2, v1, Lcom/miniclip/audio/MCSound$PlayEffectInfo;->pitch:F

    goto :goto_0
.end method

.method public setEffectsVolume(F)V
    .locals 0
    .param p1, "volume"    # F

    .prologue
    .line 280
    iput p1, p0, Lcom/miniclip/audio/MCSound;->mRightVolume:F

    iput p1, p0, Lcom/miniclip/audio/MCSound;->mLeftVolume:F

    .line 281
    return-void
.end method

.method public stopEffect(I)V
    .locals 4
    .param p1, "soundId"    # I

    .prologue
    .line 228
    iget-object v1, p0, Lcom/miniclip/audio/MCSound;->soundIdToSoundInfo:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miniclip/audio/MCSound$SoundInfo;

    .line 229
    .local v0, "info":Lcom/miniclip/audio/MCSound$SoundInfo;
    if-nez v0, :cond_1

    .line 230
    const-string v1, "MCSound"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopEffect: Unknown sound id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    :cond_0
    :goto_0
    return-void

    .line 234
    :cond_1
    iget-boolean v1, v0, Lcom/miniclip/audio/MCSound$SoundInfo;->playing:Z

    if-eqz v1, :cond_2

    .line 235
    iget-object v1, p0, Lcom/miniclip/audio/MCSound;->mSoundPool:Landroid/media/SoundPool;

    iget v2, v0, Lcom/miniclip/audio/MCSound$SoundInfo;->streamId:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->stop(I)V

    .line 236
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/miniclip/audio/MCSound$SoundInfo;->playing:Z

    goto :goto_0

    .line 237
    :cond_2
    iget-object v1, v0, Lcom/miniclip/audio/MCSound$SoundInfo;->playOnLoad:Lcom/miniclip/audio/MCSound$PlayEffectInfo;

    if-eqz v1, :cond_0

    .line 238
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/miniclip/audio/MCSound$SoundInfo;->playOnLoad:Lcom/miniclip/audio/MCSound$PlayEffectInfo;

    goto :goto_0
.end method

.method public unloadEffect(Ljava/lang/String;)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 139
    monitor-enter p0

    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/miniclip/audio/MCSound;->pathToSoundInfo:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miniclip/audio/MCSound$SoundInfo;

    .line 142
    .local v0, "info":Lcom/miniclip/audio/MCSound$SoundInfo;
    if-eqz v0, :cond_0

    .line 143
    iget-boolean v1, v0, Lcom/miniclip/audio/MCSound$SoundInfo;->loaded:Z

    if-eqz v1, :cond_1

    .line 144
    iget-object v1, p0, Lcom/miniclip/audio/MCSound;->pathToSoundInfo:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v1, p0, Lcom/miniclip/audio/MCSound;->soundIdToSoundInfo:Ljava/util/Map;

    iget v2, v0, Lcom/miniclip/audio/MCSound$SoundInfo;->soundId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v1, p0, Lcom/miniclip/audio/MCSound;->sampleIdToSoundInfo:Ljava/util/Map;

    iget v2, v0, Lcom/miniclip/audio/MCSound$SoundInfo;->sampleId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    :cond_0
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    if-nez v0, :cond_2

    .line 154
    const-string v1, "MCSound"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unloadEffect: Unknown sound path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :goto_1
    return-void

    .line 148
    :cond_1
    const/4 v1, 0x0

    :try_start_1
    iput-object v1, v0, Lcom/miniclip/audio/MCSound$SoundInfo;->playOnLoad:Lcom/miniclip/audio/MCSound$PlayEffectInfo;

    goto :goto_0

    .line 151
    .end local v0    # "info":Lcom/miniclip/audio/MCSound$SoundInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 158
    .restart local v0    # "info":Lcom/miniclip/audio/MCSound$SoundInfo;
    :cond_2
    iget-boolean v1, v0, Lcom/miniclip/audio/MCSound$SoundInfo;->loaded:Z

    if-eqz v1, :cond_3

    .line 159
    const-string v1, "MCSound"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unloadEffect: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v1, p0, Lcom/miniclip/audio/MCSound;->mSoundPool:Landroid/media/SoundPool;

    iget v2, v0, Lcom/miniclip/audio/MCSound$SoundInfo;->streamId:I

    invoke-virtual {v1, v2}, Landroid/media/SoundPool;->unload(I)Z

    goto :goto_1

    .line 163
    :cond_3
    const-string v1, "MCSound"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unloadEffect: Unable to unload a sound (was not loaded yet): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
