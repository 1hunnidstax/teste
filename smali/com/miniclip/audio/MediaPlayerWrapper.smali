.class public Lcom/miniclip/audio/MediaPlayerWrapper;
.super Ljava/lang/Object;
.source "MediaPlayerWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static initialized:Z

.field private static mediaPlayerLastId:I

.field private static final mediaPlayers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/media/MediaPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 19
    const-class v0, Lcom/miniclip/audio/MediaPlayerWrapper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miniclip/audio/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    .line 21
    sput-boolean v1, Lcom/miniclip/audio/MediaPlayerWrapper;->initialized:Z

    .line 23
    sput v1, Lcom/miniclip/audio/MediaPlayerWrapper;->mediaPlayerLastId:I

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/miniclip/audio/MediaPlayerWrapper;->mediaPlayers:Ljava/util/Map;

    .line 27
    invoke-static {}, Lcom/miniclip/audio/MediaPlayerWrapper;->init()V

    .line 28
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/miniclip/audio/MediaPlayerWrapper;->mediaPlayers:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100(ILjava/lang/String;IZ)V
    .locals 0
    .param p0, "x0"    # I
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 18
    invoke-static {p0, p1, p2, p3}, Lcom/miniclip/audio/MediaPlayerWrapper;->nativeOnSoundLoaded(ILjava/lang/String;IZ)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/miniclip/audio/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static init()V
    .locals 2

    .prologue
    .line 31
    sget-boolean v0, Lcom/miniclip/audio/MediaPlayerWrapper;->initialized:Z

    if-eqz v0, :cond_0

    .line 32
    sget-object v0, Lcom/miniclip/audio/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    const-string v1, "Already initialized!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :goto_0
    return-void

    .line 35
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/miniclip/audio/MediaPlayerWrapper;->initialized:Z

    .line 37
    new-instance v0, Lcom/miniclip/audio/MediaPlayerWrapper$1;

    invoke-direct {v0}, Lcom/miniclip/audio/MediaPlayerWrapper$1;-><init>()V

    invoke-static {v0}, Lcom/miniclip/framework/Miniclip;->addListener(Lcom/miniclip/framework/ActivityListener;)Z

    goto :goto_0
.end method

.method public static load(ILjava/lang/String;)V
    .locals 11
    .param p0, "storageType"    # I
    .param p1, "relativePath"    # Ljava/lang/String;

    .prologue
    .line 61
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 62
    .local v0, "mediaPlayer":Landroid/media/MediaPlayer;
    sget-object v2, Lcom/miniclip/audio/MediaPlayerWrapper;->mediaPlayers:Ljava/util/Map;

    monitor-enter v2

    .line 63
    :try_start_0
    sget v1, Lcom/miniclip/audio/MediaPlayerWrapper;->mediaPlayerLastId:I

    add-int/lit8 v9, v1, 0x1

    sput v9, Lcom/miniclip/audio/MediaPlayerWrapper;->mediaPlayerLastId:I

    .line 64
    .local v9, "soundId":I
    sget-object v1, Lcom/miniclip/audio/MediaPlayerWrapper;->mediaPlayers:Ljava/util/Map;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 68
    new-instance v1, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v1}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v2, 0x2

    .line 69
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 70
    invoke-virtual {v1, v2}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v1

    .line 71
    invoke-virtual {v1}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v7

    .line 72
    .local v7, "attributes":Landroid/media/AudioAttributes;
    invoke-virtual {v0, v7}, Landroid/media/MediaPlayer;->setAudioAttributes(Landroid/media/AudioAttributes;)V

    .line 75
    .end local v7    # "attributes":Landroid/media/AudioAttributes;
    :cond_0
    new-instance v1, Lcom/miniclip/audio/MediaPlayerWrapper$2;

    invoke-direct {v1, v0, p0, p1, v9}, Lcom/miniclip/audio/MediaPlayerWrapper$2;-><init>(Landroid/media/MediaPlayer;ILjava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 83
    new-instance v1, Lcom/miniclip/audio/MediaPlayerWrapper$3;

    invoke-direct {v1, v9, p0, p1}, Lcom/miniclip/audio/MediaPlayerWrapper$3;-><init>(IILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 93
    const/4 v10, 0x0

    .line 96
    .local v10, "success":Z
    :try_start_1
    invoke-static {p0, p1}, Lcom/miniclip/filesystem/FileManager;->getAssetFileDescriptor(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 98
    .local v6, "afd":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 99
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 100
    const/4 v10, 0x1

    .line 112
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :goto_0
    if-nez v10, :cond_1

    .line 113
    invoke-static {v9}, Lcom/miniclip/audio/MediaPlayerWrapper;->unload(I)V

    .line 114
    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-static {p0, p1, v1, v2}, Lcom/miniclip/audio/MediaPlayerWrapper;->nativeOnSoundLoaded(ILjava/lang/String;IZ)V

    .line 116
    :cond_1
    return-void

    .line 65
    .end local v9    # "soundId":I
    .end local v10    # "success":Z
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 108
    .restart local v9    # "soundId":I
    .restart local v10    # "success":Z
    :catch_0
    move-exception v8

    .line 109
    .local v8, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/miniclip/audio/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading sound caught an exception for path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static native nativeOnSoundLoaded(ILjava/lang/String;IZ)V
.end method

.method public static pause(I)V
    .locals 5
    .param p0, "soundId"    # I

    .prologue
    .line 147
    sget-object v3, Lcom/miniclip/audio/MediaPlayerWrapper;->mediaPlayers:Ljava/util/Map;

    monitor-enter v3

    .line 148
    :try_start_0
    sget-object v2, Lcom/miniclip/audio/MediaPlayerWrapper;->mediaPlayers:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    .line 149
    .local v1, "mediaPlayer":Landroid/media/MediaPlayer;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    :try_start_1
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 155
    :goto_0
    return-void

    .line 149
    .end local v1    # "mediaPlayer":Landroid/media/MediaPlayer;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 152
    .restart local v1    # "mediaPlayer":Landroid/media/MediaPlayer;
    :catch_0
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/miniclip/audio/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught sound: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static seek(IIZ)V
    .locals 5
    .param p0, "soundId"    # I
    .param p1, "msec"    # I
    .param p2, "pause"    # Z

    .prologue
    .line 159
    sget-object v3, Lcom/miniclip/audio/MediaPlayerWrapper;->mediaPlayers:Ljava/util/Map;

    monitor-enter v3

    .line 160
    :try_start_0
    sget-object v2, Lcom/miniclip/audio/MediaPlayerWrapper;->mediaPlayers:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    .line 161
    .local v1, "mediaPlayer":Landroid/media/MediaPlayer;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 163
    if-eqz p2, :cond_0

    .line 164
    :try_start_1
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->pause()V

    .line 166
    :cond_0
    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 170
    :goto_0
    return-void

    .line 161
    .end local v1    # "mediaPlayer":Landroid/media/MediaPlayer;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 167
    .restart local v1    # "mediaPlayer":Landroid/media/MediaPlayer;
    :catch_0
    move-exception v0

    .line 168
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/miniclip/audio/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught sound: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setLooping(IZ)V
    .locals 5
    .param p0, "soundId"    # I
    .param p1, "looping"    # Z

    .prologue
    .line 186
    sget-object v3, Lcom/miniclip/audio/MediaPlayerWrapper;->mediaPlayers:Ljava/util/Map;

    monitor-enter v3

    .line 187
    :try_start_0
    sget-object v2, Lcom/miniclip/audio/MediaPlayerWrapper;->mediaPlayers:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    .line 188
    .local v1, "mediaPlayer":Landroid/media/MediaPlayer;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :try_start_1
    invoke-virtual {v1, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 194
    :goto_0
    return-void

    .line 188
    .end local v1    # "mediaPlayer":Landroid/media/MediaPlayer;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 191
    .restart local v1    # "mediaPlayer":Landroid/media/MediaPlayer;
    :catch_0
    move-exception v0

    .line 192
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/miniclip/audio/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught sound: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static setPlaybackParams(IFF)V
    .locals 6
    .param p0, "soundId"    # I
    .param p1, "pitch"    # F
    .param p2, "speed"    # F

    .prologue
    .line 198
    sget-object v4, Lcom/miniclip/audio/MediaPlayerWrapper;->mediaPlayers:Ljava/util/Map;

    monitor-enter v4

    .line 199
    :try_start_0
    sget-object v3, Lcom/miniclip/audio/MediaPlayerWrapper;->mediaPlayers:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    .line 200
    .local v1, "mediaPlayer":Landroid/media/MediaPlayer;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    :try_start_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x17

    if-lt v3, v4, :cond_0

    .line 203
    new-instance v2, Landroid/media/PlaybackParams;

    invoke-direct {v2}, Landroid/media/PlaybackParams;-><init>()V

    .line 204
    .local v2, "params":Landroid/media/PlaybackParams;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/media/PlaybackParams;->setAudioFallbackMode(I)Landroid/media/PlaybackParams;

    .line 205
    invoke-virtual {v2, p1}, Landroid/media/PlaybackParams;->setPitch(F)Landroid/media/PlaybackParams;

    .line 206
    invoke-virtual {v2, p2}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    .line 207
    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 212
    .end local v2    # "params":Landroid/media/PlaybackParams;
    :cond_0
    :goto_0
    return-void

    .line 200
    .end local v1    # "mediaPlayer":Landroid/media/MediaPlayer;
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 209
    .restart local v1    # "mediaPlayer":Landroid/media/MediaPlayer;
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/miniclip/audio/MediaPlayerWrapper;->TAG:Ljava/lang/String;

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
.end method

.method public static setVolume(IFF)V
    .locals 5
    .param p0, "soundId"    # I
    .param p1, "leftVolume"    # F
    .param p2, "rightVolume"    # F

    .prologue
    .line 174
    sget-object v3, Lcom/miniclip/audio/MediaPlayerWrapper;->mediaPlayers:Ljava/util/Map;

    monitor-enter v3

    .line 175
    :try_start_0
    sget-object v2, Lcom/miniclip/audio/MediaPlayerWrapper;->mediaPlayers:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    .line 176
    .local v1, "mediaPlayer":Landroid/media/MediaPlayer;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    :try_start_1
    invoke-virtual {v1, p1, p2}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 182
    :goto_0
    return-void

    .line 176
    .end local v1    # "mediaPlayer":Landroid/media/MediaPlayer;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 179
    .restart local v1    # "mediaPlayer":Landroid/media/MediaPlayer;
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/miniclip/audio/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught sound: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static start(I)V
    .locals 5
    .param p0, "soundId"    # I

    .prologue
    .line 135
    sget-object v3, Lcom/miniclip/audio/MediaPlayerWrapper;->mediaPlayers:Ljava/util/Map;

    monitor-enter v3

    .line 136
    :try_start_0
    sget-object v2, Lcom/miniclip/audio/MediaPlayerWrapper;->mediaPlayers:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    .line 137
    .local v1, "mediaPlayer":Landroid/media/MediaPlayer;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    :try_start_1
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 143
    :goto_0
    return-void

    .line 137
    .end local v1    # "mediaPlayer":Landroid/media/MediaPlayer;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 140
    .restart local v1    # "mediaPlayer":Landroid/media/MediaPlayer;
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/miniclip/audio/MediaPlayerWrapper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught sound: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static unload(I)V
    .locals 5
    .param p0, "soundId"    # I

    .prologue
    .line 121
    sget-object v3, Lcom/miniclip/audio/MediaPlayerWrapper;->mediaPlayers:Ljava/util/Map;

    monitor-enter v3

    .line 122
    :try_start_0
    sget-object v2, Lcom/miniclip/audio/MediaPlayerWrapper;->mediaPlayers:Ljava/util/Map;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    .line 123
    .local v1, "mediaPlayer":Landroid/media/MediaPlayer;
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    const/4 v2, 0x0

    :try_start_1
    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 126
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 127
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 131
    :goto_0
    return-void

    .line 123
    .end local v1    # "mediaPlayer":Landroid/media/MediaPlayer;
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 128
    .restart local v1    # "mediaPlayer":Landroid/media/MediaPlayer;
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/miniclip/audio/MediaPlayerWrapper;->TAG:Ljava/lang/String;

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

    goto :goto_0
.end method
