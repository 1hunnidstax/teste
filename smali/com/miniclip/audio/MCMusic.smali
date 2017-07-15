.class public Lcom/miniclip/audio/MCMusic;
.super Ljava/lang/Object;
.source "MCMusic.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "MCMusic"


# instance fields
.field private mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

.field private mContext:Landroid/content/Context;

.field private mCurrentPath:Ljava/lang/String;

.field private mIsGamePaused:Z

.field private mIsPaused:Z

.field private mIsPrepared:Z

.field private mLeftVolume:F

.field private mPlayAfterPrepared:Z

.field private mRightVolume:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/miniclip/audio/MCMusic;->mContext:Landroid/content/Context;

    .line 27
    iput-boolean v0, p0, Lcom/miniclip/audio/MCMusic;->mIsGamePaused:Z

    .line 28
    iput-boolean v0, p0, Lcom/miniclip/audio/MCMusic;->mIsPrepared:Z

    .line 29
    iput-boolean v0, p0, Lcom/miniclip/audio/MCMusic;->mPlayAfterPrepared:Z

    .line 31
    invoke-direct {p0}, Lcom/miniclip/audio/MCMusic;->initData()V

    .line 32
    return-void
.end method

.method private createMediaplayerFromAssets(Ljava/lang/String;Z)Landroid/media/MediaPlayer;
    .locals 13
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "playAfterPrepared"    # Z

    .prologue
    .line 171
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 173
    .local v0, "mediaPlayer":Landroid/media/MediaPlayer;
    iput-boolean p2, p0, Lcom/miniclip/audio/MCMusic;->mPlayAfterPrepared:Z

    .line 177
    :try_start_0
    invoke-static {p1}, Lcom/miniclip/audio/MCAudio;->findAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 178
    .local v7, "assetPath":Ljava/lang/String;
    if-eqz v7, :cond_0

    .line 179
    const-string v1, "MCMusic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createMediaplayerFromAssets: asset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v1, p0, Lcom/miniclip/audio/MCMusic;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 181
    .local v6, "assetFileDescritor":Landroid/content/res/AssetFileDescriptor;
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 183
    iget v1, p0, Lcom/miniclip/audio/MCMusic;->mLeftVolume:F

    iget v2, p0, Lcom/miniclip/audio/MCMusic;->mRightVolume:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 185
    invoke-virtual {p0, v0}, Lcom/miniclip/audio/MCMusic;->prepareMusicOnMediaPlayer(Landroid/media/MediaPlayer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    .end local v6    # "assetFileDescritor":Landroid/content/res/AssetFileDescriptor;
    .end local v7    # "assetPath":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v0

    .line 188
    :catch_0
    move-exception v8

    .line 192
    .local v8, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 193
    .local v10, "f":Ljava/io/File;
    new-instance v12, Ljava/io/FileInputStream;

    invoke-direct {v12, v10}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 195
    .local v12, "fis":Ljava/io/FileInputStream;
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 196
    invoke-virtual {v12}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v11

    .line 198
    .local v11, "fd":Ljava/io/FileDescriptor;
    invoke-virtual {v0, v11}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 199
    invoke-virtual {p0, v0}, Lcom/miniclip/audio/MCMusic;->prepareMusicOnMediaPlayer(Landroid/media/MediaPlayer;)V

    .line 201
    iget v1, p0, Lcom/miniclip/audio/MCMusic;->mLeftVolume:F

    iget v2, p0, Lcom/miniclip/audio/MCMusic;->mRightVolume:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 203
    .end local v10    # "f":Ljava/io/File;
    .end local v11    # "fd":Ljava/io/FileDescriptor;
    .end local v12    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v9

    .line 205
    .local v9, "ex":Ljava/lang/Exception;
    const/4 v0, 0x0

    .line 206
    const-string v1, "MCMusic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private initData()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/high16 v0, 0x3f000000    # 0.5f

    .line 34
    iput v0, p0, Lcom/miniclip/audio/MCMusic;->mLeftVolume:F

    .line 35
    iput v0, p0, Lcom/miniclip/audio/MCMusic;->mRightVolume:F

    .line 36
    iput-object v1, p0, Lcom/miniclip/audio/MCMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    .line 37
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miniclip/audio/MCMusic;->mIsPaused:Z

    .line 38
    iput-object v1, p0, Lcom/miniclip/audio/MCMusic;->mCurrentPath:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public getBackgroundVolume()F
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/miniclip/audio/MCMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miniclip/audio/MCMusic;->mLeftVolume:F

    iget v1, p0, Lcom/miniclip/audio/MCMusic;->mRightVolume:F

    add-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDurationForSound(Ljava/lang/String;)I
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 231
    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/miniclip/audio/MCMusic;->createMediaplayerFromAssets(Ljava/lang/String;Z)Landroid/media/MediaPlayer;

    move-result-object v1

    .line 232
    .local v1, "mp":Landroid/media/MediaPlayer;
    if-nez v1, :cond_0

    .line 233
    const/4 v0, -0x1

    .line 237
    :goto_0
    return v0

    .line 235
    :cond_0
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    .line 236
    .local v0, "duration":I
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    goto :goto_0
.end method

.method public isBackgroundMusicPlaying()Z
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/miniclip/audio/MCMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miniclip/audio/MCMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 3
    .param p1, "player"    # Landroid/media/MediaPlayer;

    .prologue
    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miniclip/audio/MCMusic;->mIsPrepared:Z

    .line 46
    const-string v0, "MCMusic"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "music finished loading "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    iget-object v0, p0, Lcom/miniclip/audio/MCMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/miniclip/audio/MCMusic;->mPlayAfterPrepared:Z

    if-eqz v0, :cond_0

    .line 49
    const-string v0, "MCMusic"

    const-string v1, "music is going to play"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v0, p0, Lcom/miniclip/audio/MCMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miniclip/audio/MCMusic;->mIsPaused:Z

    .line 57
    :cond_0
    return-void
.end method

.method public pauseBackgroundMusic()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 116
    iget-object v0, p0, Lcom/miniclip/audio/MCMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miniclip/audio/MCMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/miniclip/audio/MCMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 118
    iput-boolean v1, p0, Lcom/miniclip/audio/MCMusic;->mIsPaused:Z

    .line 121
    :cond_0
    iput-boolean v1, p0, Lcom/miniclip/audio/MCMusic;->mIsGamePaused:Z

    .line 122
    return-void
.end method

.method public playBackgroundMusic(Ljava/lang/String;Z)V
    .locals 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "isLoop"    # Z

    .prologue
    const/4 v3, 0x1

    .line 61
    const-string v0, "SoccerStarsActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playbackgroundmusic with path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object v0, p0, Lcom/miniclip/audio/MCMusic;->mCurrentPath:Ljava/lang/String;

    if-nez v0, :cond_3

    .line 66
    invoke-direct {p0, p1, v3}, Lcom/miniclip/audio/MCMusic;->createMediaplayerFromAssets(Ljava/lang/String;Z)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/miniclip/audio/MCMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    .line 67
    iput-object p1, p0, Lcom/miniclip/audio/MCMusic;->mCurrentPath:Ljava/lang/String;

    .line 86
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/miniclip/audio/MCMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_5

    .line 87
    const-string v0, "MCMusic"

    const-string v1, "playBackgroundMusic: background media player is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_1
    :goto_1
    iget-boolean v0, p0, Lcom/miniclip/audio/MCMusic;->mIsGamePaused:Z

    if-eqz v0, :cond_2

    .line 102
    invoke-virtual {p0}, Lcom/miniclip/audio/MCMusic;->pauseBackgroundMusic()V

    .line 103
    :cond_2
    return-void

    .line 70
    :cond_3
    iget-object v0, p0, Lcom/miniclip/audio/MCMusic;->mCurrentPath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/miniclip/audio/MCMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_4

    .line 75
    iget-object v0, p0, Lcom/miniclip/audio/MCMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 77
    :cond_4
    invoke-direct {p0, p1, v3}, Lcom/miniclip/audio/MCMusic;->createMediaplayerFromAssets(Ljava/lang/String;Z)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/miniclip/audio/MCMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    .line 80
    iput-object p1, p0, Lcom/miniclip/audio/MCMusic;->mCurrentPath:Ljava/lang/String;

    .line 82
    const-string v0, "MCMusic"

    const-string v1, "playBackgroundMusic: new music"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 92
    :cond_5
    iget-object v0, p0, Lcom/miniclip/audio/MCMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p2}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 93
    iget-boolean v0, p0, Lcom/miniclip/audio/MCMusic;->mIsPrepared:Z

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/miniclip/audio/MCMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 95
    iget-object v0, p0, Lcom/miniclip/audio/MCMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    goto :goto_1
.end method

.method prepareMusicOnMediaPlayer(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 215
    iget-boolean v1, p0, Lcom/miniclip/audio/MCMusic;->mPlayAfterPrepared:Z

    if-eqz v1, :cond_0

    .line 216
    invoke-virtual {p1, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 217
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miniclip/audio/MCMusic;->mIsPrepared:Z

    .line 218
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 228
    :goto_0
    return-void

    .line 221
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 223
    :catch_0
    move-exception v0

    .line 225
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "MCMusic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public resumeBackgroundMusic()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 125
    iget-object v0, p0, Lcom/miniclip/audio/MCMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miniclip/audio/MCMusic;->mIsPaused:Z

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/miniclip/audio/MCMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 127
    iput-boolean v1, p0, Lcom/miniclip/audio/MCMusic;->mIsPaused:Z

    .line 130
    :cond_0
    iput-boolean v1, p0, Lcom/miniclip/audio/MCMusic;->mIsGamePaused:Z

    .line 131
    return-void
.end method

.method public rewindBackgroundMusic()V
    .locals 3

    .prologue
    .line 134
    iget-object v1, p0, Lcom/miniclip/audio/MCMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/miniclip/audio/MCMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/miniclip/audio/MCMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 139
    iget-object v1, p0, Lcom/miniclip/audio/MCMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 141
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miniclip/audio/MCMusic;->mIsPaused:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "MCMusic"

    const-string v2, "rewindBackgroundMusic: error state"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setBackgroundVolume(F)V
    .locals 3
    .param p1, "volume"    # F

    .prologue
    .line 157
    iput p1, p0, Lcom/miniclip/audio/MCMusic;->mRightVolume:F

    iput p1, p0, Lcom/miniclip/audio/MCMusic;->mLeftVolume:F

    .line 158
    iget-object v0, p0, Lcom/miniclip/audio/MCMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/miniclip/audio/MCMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    iget v1, p0, Lcom/miniclip/audio/MCMusic;->mLeftVolume:F

    iget v2, p0, Lcom/miniclip/audio/MCMusic;->mRightVolume:F

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 161
    :cond_0
    return-void
.end method

.method public stopBackgroundMusic()V
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/miniclip/audio/MCMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/miniclip/audio/MCMusic;->mBackgroundMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miniclip/audio/MCMusic;->mIsPaused:Z

    .line 113
    :cond_0
    return-void
.end method
