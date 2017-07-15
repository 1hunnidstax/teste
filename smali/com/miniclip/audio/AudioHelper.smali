.class public Lcom/miniclip/audio/AudioHelper;
.super Ljava/lang/Object;
.source "AudioHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/miniclip/audio/AudioHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miniclip/audio/AudioHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSoundDuration(ILjava/lang/String;)I
    .locals 9
    .param p0, "storageType"    # I
    .param p1, "relativePath"    # Ljava/lang/String;

    .prologue
    .line 18
    const/4 v8, 0x0

    .line 20
    .local v8, "mediaPlayer":Landroid/media/MediaPlayer;
    :try_start_0
    invoke-static {p0, p1}, Lcom/miniclip/filesystem/FileManager;->getAssetFileDescriptor(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    .line 21
    .local v6, "afd":Landroid/content/res/AssetFileDescriptor;
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .end local v8    # "mediaPlayer":Landroid/media/MediaPlayer;
    .local v0, "mediaPlayer":Landroid/media/MediaPlayer;
    :try_start_1
    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 23
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 24
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v7

    .line 33
    .local v7, "duration":I
    if-lez v7, :cond_0

    .line 39
    invoke-static {v0}, Lcom/miniclip/audio/AudioHelper;->safeRelease(Landroid/media/MediaPlayer;)V

    .line 43
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    .end local v7    # "duration":I
    :goto_0
    return v7

    .line 39
    .restart local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    .restart local v7    # "duration":I
    :cond_0
    invoke-static {v0}, Lcom/miniclip/audio/AudioHelper;->safeRelease(Landroid/media/MediaPlayer;)V

    .line 43
    .end local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    .end local v7    # "duration":I
    :goto_1
    const/4 v7, -0x1

    goto :goto_0

    .line 37
    .end local v0    # "mediaPlayer":Landroid/media/MediaPlayer;
    .restart local v8    # "mediaPlayer":Landroid/media/MediaPlayer;
    :catch_0
    move-exception v1

    move-object v0, v8

    .line 39
    .end local v8    # "mediaPlayer":Landroid/media/MediaPlayer;
    .restart local v0    # "mediaPlayer":Landroid/media/MediaPlayer;
    :goto_2
    invoke-static {v0}, Lcom/miniclip/audio/AudioHelper;->safeRelease(Landroid/media/MediaPlayer;)V

    goto :goto_1

    .end local v0    # "mediaPlayer":Landroid/media/MediaPlayer;
    .restart local v8    # "mediaPlayer":Landroid/media/MediaPlayer;
    :catchall_0
    move-exception v1

    move-object v0, v8

    .end local v8    # "mediaPlayer":Landroid/media/MediaPlayer;
    .restart local v0    # "mediaPlayer":Landroid/media/MediaPlayer;
    :goto_3
    invoke-static {v0}, Lcom/miniclip/audio/AudioHelper;->safeRelease(Landroid/media/MediaPlayer;)V

    throw v1

    .restart local v6    # "afd":Landroid/content/res/AssetFileDescriptor;
    :catchall_1
    move-exception v1

    goto :goto_3

    .line 37
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method private static safeRelease(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p0, "mediaPlayer"    # Landroid/media/MediaPlayer;

    .prologue
    .line 47
    if-eqz p0, :cond_0

    .line 49
    :try_start_0
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :cond_0
    :goto_0
    return-void

    .line 50
    :catch_0
    move-exception v0

    goto :goto_0
.end method
