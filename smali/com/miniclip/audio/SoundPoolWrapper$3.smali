.class final Lcom/miniclip/audio/SoundPoolWrapper$3;
.super Ljava/lang/Object;
.source "SoundPoolWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/audio/SoundPoolWrapper;->load(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$relativePath:Ljava/lang/String;

.field final synthetic val$storageType:I


# direct methods
.method constructor <init>(ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 119
    iput p1, p0, Lcom/miniclip/audio/SoundPoolWrapper$3;->val$storageType:I

    iput-object p2, p0, Lcom/miniclip/audio/SoundPoolWrapper$3;->val$relativePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 124
    const/4 v4, 0x0

    .line 127
    .local v4, "success":Z
    :try_start_0
    iget v5, p0, Lcom/miniclip/audio/SoundPoolWrapper$3;->val$storageType:I

    iget-object v6, p0, Lcom/miniclip/audio/SoundPoolWrapper$3;->val$relativePath:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/miniclip/filesystem/FileManager;->getAssetFileDescriptor(ILjava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 129
    .local v0, "afd":Landroid/content/res/AssetFileDescriptor;
    # getter for: Lcom/miniclip/audio/SoundPoolWrapper;->soundPoolState:Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;
    invoke-static {}, Lcom/miniclip/audio/SoundPoolWrapper;->access$100()Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;

    move-result-object v5

    iget-object v5, v5, Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;->soundPool:Landroid/media/SoundPool;

    const/4 v6, 0x1

    invoke-virtual {v5, v0, v6}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v3

    .line 130
    .local v3, "soundId":I
    # getter for: Lcom/miniclip/audio/SoundPoolWrapper;->soundIdsMutex:Ljava/lang/Object;
    invoke-static {}, Lcom/miniclip/audio/SoundPoolWrapper;->access$000()Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :try_start_1
    new-instance v2, Lcom/miniclip/audio/SoundPoolWrapper$PathInfo;

    const/4 v5, 0x0

    invoke-direct {v2, v5}, Lcom/miniclip/audio/SoundPoolWrapper$PathInfo;-><init>(Lcom/miniclip/audio/SoundPoolWrapper$1;)V

    .line 132
    .local v2, "info":Lcom/miniclip/audio/SoundPoolWrapper$PathInfo;
    iget v5, p0, Lcom/miniclip/audio/SoundPoolWrapper$3;->val$storageType:I

    iput v5, v2, Lcom/miniclip/audio/SoundPoolWrapper$PathInfo;->storageType:I

    .line 133
    iget-object v5, p0, Lcom/miniclip/audio/SoundPoolWrapper$3;->val$relativePath:Ljava/lang/String;

    iput-object v5, v2, Lcom/miniclip/audio/SoundPoolWrapper$PathInfo;->relativePath:Ljava/lang/String;

    .line 134
    # getter for: Lcom/miniclip/audio/SoundPoolWrapper;->soundPoolState:Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;
    invoke-static {}, Lcom/miniclip/audio/SoundPoolWrapper;->access$100()Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;

    move-result-object v5

    iget-object v5, v5, Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;->soundPaths:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 136
    const/4 v4, 0x1

    .line 139
    :try_start_2
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 148
    .end local v0    # "afd":Landroid/content/res/AssetFileDescriptor;
    .end local v2    # "info":Lcom/miniclip/audio/SoundPoolWrapper$PathInfo;
    .end local v3    # "soundId":I
    :goto_0
    if-nez v4, :cond_0

    .line 149
    iget v5, p0, Lcom/miniclip/audio/SoundPoolWrapper$3;->val$storageType:I

    iget-object v6, p0, Lcom/miniclip/audio/SoundPoolWrapper$3;->val$relativePath:Ljava/lang/String;

    const/4 v7, -0x1

    const/4 v8, 0x0

    # invokes: Lcom/miniclip/audio/SoundPoolWrapper;->nativeOnSoundLoaded(ILjava/lang/String;IZ)V
    invoke-static {v5, v6, v7, v8}, Lcom/miniclip/audio/SoundPoolWrapper;->access$200(ILjava/lang/String;IZ)V

    .line 151
    :cond_0
    return-void

    .line 135
    .restart local v0    # "afd":Landroid/content/res/AssetFileDescriptor;
    .restart local v3    # "soundId":I
    :catchall_0
    move-exception v5

    :try_start_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 144
    .end local v0    # "afd":Landroid/content/res/AssetFileDescriptor;
    .end local v3    # "soundId":I
    :catch_0
    move-exception v1

    .line 145
    .local v1, "e":Ljava/lang/Exception;
    # getter for: Lcom/miniclip/audio/SoundPoolWrapper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/miniclip/audio/SoundPoolWrapper;->access$300()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Loading sound caught an exception for path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/miniclip/audio/SoundPoolWrapper$3;->val$relativePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 141
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "afd":Landroid/content/res/AssetFileDescriptor;
    .restart local v2    # "info":Lcom/miniclip/audio/SoundPoolWrapper$PathInfo;
    .restart local v3    # "soundId":I
    :catch_1
    move-exception v1

    .line 142
    .restart local v1    # "e":Ljava/lang/Exception;
    :try_start_5
    # getter for: Lcom/miniclip/audio/SoundPoolWrapper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/miniclip/audio/SoundPoolWrapper;->access$300()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Closing file descriptor caught an exception for path: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/miniclip/audio/SoundPoolWrapper$3;->val$relativePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0
.end method
