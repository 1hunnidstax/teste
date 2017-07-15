.class public Lcom/miniclip/audio/MCAudio;
.super Ljava/lang/Object;
.source "MCAudio.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miniclip/audio/MCAudio$MCAudioActivityListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MCAudio"

.field private static activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

.field private static backgroundMusicPlayer:Lcom/miniclip/audio/MCMusic;

.field private static isInitialized:Z

.field private static soundPlayer:Lcom/miniclip/audio/MCSound;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lcom/miniclip/audio/MCAudio;->isInitialized:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static findAssetPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 183
    :try_start_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 184
    .local v3, "filename":Ljava/lang/String;
    sget-object v6, Lcom/miniclip/audio/MCAudio;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    invoke-virtual {v6}, Lcom/miniclip/framework/MiniclipAndroidActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v3    # "filename":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 187
    :catch_0
    move-exception v0

    .line 190
    .local v0, "e1":Ljava/lang/Exception;
    :try_start_1
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 191
    .restart local v3    # "filename":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unpack/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 192
    sget-object v6, Lcom/miniclip/audio/MCAudio;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    invoke-virtual {v6}, Lcom/miniclip/framework/MiniclipAndroidActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 195
    .end local v3    # "filename":Ljava/lang/String;
    :catch_1
    move-exception v1

    .line 199
    .local v1, "e2":Ljava/lang/Exception;
    const/4 v6, 0x0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x3

    invoke-virtual {p0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 200
    .local v4, "newPath":Ljava/lang/String;
    const-string v6, "wav"

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 201
    .local v5, "wavPath":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    .line 202
    .restart local v3    # "filename":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unpack/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 203
    sget-object v6, Lcom/miniclip/audio/MCAudio;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    invoke-virtual {v6}, Lcom/miniclip/framework/MiniclipAndroidActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 206
    .end local v3    # "filename":Ljava/lang/String;
    .end local v4    # "newPath":Ljava/lang/String;
    .end local v5    # "wavPath":Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 207
    .local v2, "e3":Ljava/lang/Exception;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getBackgroundMusicVolume()F
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/miniclip/audio/MCAudio;->backgroundMusicPlayer:Lcom/miniclip/audio/MCMusic;

    invoke-virtual {v0}, Lcom/miniclip/audio/MCMusic;->getBackgroundVolume()F

    move-result v0

    return v0
.end method

.method public static getDurationForSound(Ljava/lang/String;)I
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 72
    sget-object v0, Lcom/miniclip/audio/MCAudio;->backgroundMusicPlayer:Lcom/miniclip/audio/MCMusic;

    invoke-virtual {v0, p0}, Lcom/miniclip/audio/MCMusic;->getDurationForSound(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getEffectsVolume()F
    .locals 1

    .prologue
    .line 154
    sget-object v0, Lcom/miniclip/audio/MCAudio;->soundPlayer:Lcom/miniclip/audio/MCSound;

    invoke-virtual {v0}, Lcom/miniclip/audio/MCSound;->getEffectsVolume()F

    move-result v0

    return v0
.end method

.method public static init(Lcom/miniclip/framework/MiniclipAndroidActivity;)V
    .locals 3
    .param p0, "miniclipActivity"    # Lcom/miniclip/framework/MiniclipAndroidActivity;

    .prologue
    .line 53
    sget-boolean v0, Lcom/miniclip/audio/MCAudio;->isInitialized:Z

    if-eqz v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 56
    :cond_0
    sput-object p0, Lcom/miniclip/audio/MCAudio;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    .line 57
    new-instance v0, Lcom/miniclip/audio/MCMusic;

    sget-object v1, Lcom/miniclip/audio/MCAudio;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    invoke-direct {v0, v1}, Lcom/miniclip/audio/MCMusic;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miniclip/audio/MCAudio;->backgroundMusicPlayer:Lcom/miniclip/audio/MCMusic;

    .line 58
    new-instance v0, Lcom/miniclip/audio/MCSound;

    sget-object v1, Lcom/miniclip/audio/MCAudio;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    invoke-direct {v0, v1}, Lcom/miniclip/audio/MCSound;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miniclip/audio/MCAudio;->soundPlayer:Lcom/miniclip/audio/MCSound;

    .line 59
    sget-object v0, Lcom/miniclip/audio/MCAudio;->activity:Lcom/miniclip/framework/MiniclipAndroidActivity;

    new-instance v1, Lcom/miniclip/audio/MCAudio$MCAudioActivityListener;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/miniclip/audio/MCAudio$MCAudioActivityListener;-><init>(Lcom/miniclip/audio/MCAudio$1;)V

    invoke-virtual {v0, v1}, Lcom/miniclip/framework/MiniclipAndroidActivity;->addListener(Lcom/miniclip/framework/ActivityListener;)Z

    .line 61
    const/4 v0, 0x1

    sput-boolean v0, Lcom/miniclip/audio/MCAudio;->isInitialized:Z

    goto :goto_0
.end method

.method public static isBackgroundMusicPlaying()Z
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/miniclip/audio/MCAudio;->backgroundMusicPlayer:Lcom/miniclip/audio/MCMusic;

    invoke-virtual {v0}, Lcom/miniclip/audio/MCMusic;->isBackgroundMusicPlaying()Z

    move-result v0

    return v0
.end method

.method public static isInitialized()Z
    .locals 1

    .prologue
    .line 65
    sget-boolean v0, Lcom/miniclip/audio/MCAudio;->isInitialized:Z

    return v0
.end method

.method public static pauseAllSounds()V
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/miniclip/audio/MCAudio;->soundPlayer:Lcom/miniclip/audio/MCSound;

    invoke-virtual {v0}, Lcom/miniclip/audio/MCSound;->pauseAllSounds()V

    .line 171
    return-void
.end method

.method public static pauseBackgroundMusic()V
    .locals 1

    .prologue
    .line 84
    sget-object v0, Lcom/miniclip/audio/MCAudio;->backgroundMusicPlayer:Lcom/miniclip/audio/MCMusic;

    invoke-virtual {v0}, Lcom/miniclip/audio/MCMusic;->pauseBackgroundMusic()V

    .line 85
    return-void
.end method

.method public static pauseEffect(I)V
    .locals 1
    .param p0, "soundId"    # I

    .prologue
    .line 134
    sget-object v0, Lcom/miniclip/audio/MCAudio;->soundPlayer:Lcom/miniclip/audio/MCSound;

    invoke-virtual {v0, p0}, Lcom/miniclip/audio/MCSound;->pauseEffect(I)V

    .line 135
    return-void
.end method

.method public static playBackgroundMusic(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "isLoop"    # Z

    .prologue
    .line 76
    sget-object v0, Lcom/miniclip/audio/MCAudio;->backgroundMusicPlayer:Lcom/miniclip/audio/MCMusic;

    invoke-virtual {v0, p0, p1}, Lcom/miniclip/audio/MCMusic;->playBackgroundMusic(Ljava/lang/String;Z)V

    .line 77
    return-void
.end method

.method public static playEffect(I)V
    .locals 7
    .param p0, "soundId"    # I

    .prologue
    .line 111
    sget-object v0, Lcom/miniclip/audio/MCAudio;->soundPlayer:Lcom/miniclip/audio/MCSound;

    sget-object v1, Lcom/miniclip/audio/MCAudio;->soundPlayer:Lcom/miniclip/audio/MCSound;

    iget v2, v1, Lcom/miniclip/audio/MCSound;->mLeftVolume:F

    sget-object v1, Lcom/miniclip/audio/MCAudio;->soundPlayer:Lcom/miniclip/audio/MCSound;

    iget v3, v1, Lcom/miniclip/audio/MCSound;->mRightVolume:F

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    move v1, p0

    invoke-virtual/range {v0 .. v6}, Lcom/miniclip/audio/MCSound;->playEffect(IFFIIF)V

    .line 113
    return-void
.end method

.method public static playEffect(IFFIF)V
    .locals 7
    .param p0, "soundId"    # I
    .param p1, "leftGain"    # F
    .param p2, "rightGain"    # F
    .param p3, "loopTime"    # I
    .param p4, "pitch"    # F

    .prologue
    .line 126
    sget-object v0, Lcom/miniclip/audio/MCAudio;->soundPlayer:Lcom/miniclip/audio/MCSound;

    const/4 v4, 0x1

    move v1, p0

    move v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/miniclip/audio/MCSound;->playEffect(IFFIIF)V

    .line 127
    return-void
.end method

.method public static playEffect(IFFIIF)V
    .locals 7
    .param p0, "soundId"    # I
    .param p1, "leftGain"    # F
    .param p2, "rightGain"    # F
    .param p3, "priority"    # I
    .param p4, "loopTime"    # I
    .param p5, "pitch"    # F

    .prologue
    .line 130
    sget-object v0, Lcom/miniclip/audio/MCAudio;->soundPlayer:Lcom/miniclip/audio/MCSound;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/miniclip/audio/MCSound;->playEffect(IFFIIF)V

    .line 131
    return-void
.end method

.method public static playEffect(IIF)V
    .locals 7
    .param p0, "soundId"    # I
    .param p1, "loopTime"    # I
    .param p2, "pitch"    # F

    .prologue
    .line 116
    sget-object v0, Lcom/miniclip/audio/MCAudio;->soundPlayer:Lcom/miniclip/audio/MCSound;

    sget-object v1, Lcom/miniclip/audio/MCAudio;->soundPlayer:Lcom/miniclip/audio/MCSound;

    iget v2, v1, Lcom/miniclip/audio/MCSound;->mLeftVolume:F

    sget-object v1, Lcom/miniclip/audio/MCAudio;->soundPlayer:Lcom/miniclip/audio/MCSound;

    iget v3, v1, Lcom/miniclip/audio/MCSound;->mRightVolume:F

    const/4 v4, 0x1

    move v1, p0

    move v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/miniclip/audio/MCSound;->playEffect(IFFIIF)V

    .line 118
    return-void
.end method

.method public static playEffect(IIIF)V
    .locals 7
    .param p0, "soundId"    # I
    .param p1, "priority"    # I
    .param p2, "loopTime"    # I
    .param p3, "pitch"    # F

    .prologue
    .line 121
    sget-object v0, Lcom/miniclip/audio/MCAudio;->soundPlayer:Lcom/miniclip/audio/MCSound;

    sget-object v1, Lcom/miniclip/audio/MCAudio;->soundPlayer:Lcom/miniclip/audio/MCSound;

    iget v2, v1, Lcom/miniclip/audio/MCSound;->mLeftVolume:F

    sget-object v1, Lcom/miniclip/audio/MCAudio;->soundPlayer:Lcom/miniclip/audio/MCSound;

    iget v3, v1, Lcom/miniclip/audio/MCSound;->mRightVolume:F

    move v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/miniclip/audio/MCSound;->playEffect(IFFIIF)V

    .line 123
    return-void
.end method

.method public static preloadEffect(Ljava/lang/String;)I
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 162
    sget-object v0, Lcom/miniclip/audio/MCAudio;->soundPlayer:Lcom/miniclip/audio/MCSound;

    invoke-virtual {v0, p0}, Lcom/miniclip/audio/MCSound;->preloadEffect(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static resumeAllSounds()V
    .locals 1

    .prologue
    .line 174
    sget-object v0, Lcom/miniclip/audio/MCAudio;->soundPlayer:Lcom/miniclip/audio/MCSound;

    invoke-virtual {v0}, Lcom/miniclip/audio/MCSound;->resumeAllSounds()V

    .line 175
    return-void
.end method

.method public static resumeBackgroundMusic()V
    .locals 1

    .prologue
    .line 88
    sget-object v0, Lcom/miniclip/audio/MCAudio;->backgroundMusicPlayer:Lcom/miniclip/audio/MCMusic;

    invoke-virtual {v0}, Lcom/miniclip/audio/MCMusic;->resumeBackgroundMusic()V

    .line 89
    return-void
.end method

.method public static rewindBackgroundMusic()V
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lcom/miniclip/audio/MCAudio;->backgroundMusicPlayer:Lcom/miniclip/audio/MCMusic;

    invoke-virtual {v0}, Lcom/miniclip/audio/MCMusic;->rewindBackgroundMusic()V

    .line 93
    return-void
.end method

.method public static setBackgroundMusicVolume(F)V
    .locals 1
    .param p0, "volume"    # F

    .prologue
    .line 104
    sget-object v0, Lcom/miniclip/audio/MCAudio;->backgroundMusicPlayer:Lcom/miniclip/audio/MCMusic;

    invoke-virtual {v0, p0}, Lcom/miniclip/audio/MCMusic;->setBackgroundVolume(F)V

    .line 105
    return-void
.end method

.method public static setEffectGain(IF)V
    .locals 1
    .param p0, "soundId"    # I
    .param p1, "gain"    # F

    .prologue
    .line 146
    sget-object v0, Lcom/miniclip/audio/MCAudio;->soundPlayer:Lcom/miniclip/audio/MCSound;

    invoke-virtual {v0, p0, p1}, Lcom/miniclip/audio/MCSound;->setEffectGain(IF)V

    .line 147
    return-void
.end method

.method public static setEffectLooping(IZ)V
    .locals 1
    .param p0, "soundId"    # I
    .param p1, "loop"    # Z

    .prologue
    .line 142
    sget-object v0, Lcom/miniclip/audio/MCAudio;->soundPlayer:Lcom/miniclip/audio/MCSound;

    invoke-virtual {v0, p0, p1}, Lcom/miniclip/audio/MCSound;->setEffectLooping(IZ)V

    .line 143
    return-void
.end method

.method public static setEffectPitch(IF)V
    .locals 1
    .param p0, "soundId"    # I
    .param p1, "pitch"    # F

    .prologue
    .line 150
    sget-object v0, Lcom/miniclip/audio/MCAudio;->soundPlayer:Lcom/miniclip/audio/MCSound;

    invoke-virtual {v0, p0, p1}, Lcom/miniclip/audio/MCSound;->setEffectPitch(IF)V

    .line 151
    return-void
.end method

.method public static setEffectsVolume(F)V
    .locals 1
    .param p0, "volume"    # F

    .prologue
    .line 158
    sget-object v0, Lcom/miniclip/audio/MCAudio;->soundPlayer:Lcom/miniclip/audio/MCSound;

    invoke-virtual {v0, p0}, Lcom/miniclip/audio/MCSound;->setEffectsVolume(F)V

    .line 159
    return-void
.end method

.method public static stopBackgroundMusic()V
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/miniclip/audio/MCAudio;->backgroundMusicPlayer:Lcom/miniclip/audio/MCMusic;

    invoke-virtual {v0}, Lcom/miniclip/audio/MCMusic;->stopBackgroundMusic()V

    .line 81
    return-void
.end method

.method public static stopEffect(I)V
    .locals 1
    .param p0, "soundId"    # I

    .prologue
    .line 138
    sget-object v0, Lcom/miniclip/audio/MCAudio;->soundPlayer:Lcom/miniclip/audio/MCSound;

    invoke-virtual {v0, p0}, Lcom/miniclip/audio/MCSound;->stopEffect(I)V

    .line 139
    return-void
.end method

.method public static unloadEffect(Ljava/lang/String;)V
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 166
    sget-object v0, Lcom/miniclip/audio/MCAudio;->soundPlayer:Lcom/miniclip/audio/MCSound;

    invoke-virtual {v0, p0}, Lcom/miniclip/audio/MCSound;->unloadEffect(Ljava/lang/String;)V

    .line 167
    return-void
.end method
