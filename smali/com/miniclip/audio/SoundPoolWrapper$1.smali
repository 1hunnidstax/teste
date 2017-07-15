.class final Lcom/miniclip/audio/SoundPoolWrapper$1;
.super Ljava/lang/Object;
.source "SoundPoolWrapper.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/audio/SoundPoolWrapper;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 6
    .param p1, "soundPool"    # Landroid/media/SoundPool;
    .param p2, "soundId"    # I
    .param p3, "status"    # I

    .prologue
    .line 62
    # getter for: Lcom/miniclip/audio/SoundPoolWrapper;->soundIdsMutex:Ljava/lang/Object;
    invoke-static {}, Lcom/miniclip/audio/SoundPoolWrapper;->access$000()Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 63
    :try_start_0
    # getter for: Lcom/miniclip/audio/SoundPoolWrapper;->soundPoolState:Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;
    invoke-static {}, Lcom/miniclip/audio/SoundPoolWrapper;->access$100()Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;

    move-result-object v3

    iget-object v3, v3, Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;->soundPaths:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miniclip/audio/SoundPoolWrapper$PathInfo;

    .line 64
    .local v0, "info":Lcom/miniclip/audio/SoundPoolWrapper$PathInfo;
    if-nez v0, :cond_0

    .line 65
    monitor-exit v4

    .line 75
    :goto_0
    return-void

    .line 66
    :cond_0
    iget v2, v0, Lcom/miniclip/audio/SoundPoolWrapper$PathInfo;->storageType:I

    .line 67
    .local v2, "storageType":I
    iget-object v1, v0, Lcom/miniclip/audio/SoundPoolWrapper$PathInfo;->relativePath:Ljava/lang/String;

    .line 68
    .local v1, "relativePath":Ljava/lang/String;
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    if-nez p3, :cond_1

    .line 70
    const/4 v3, 0x1

    # invokes: Lcom/miniclip/audio/SoundPoolWrapper;->nativeOnSoundLoaded(ILjava/lang/String;IZ)V
    invoke-static {v2, v1, p2, v3}, Lcom/miniclip/audio/SoundPoolWrapper;->access$200(ILjava/lang/String;IZ)V

    goto :goto_0

    .line 68
    .end local v0    # "info":Lcom/miniclip/audio/SoundPoolWrapper$PathInfo;
    .end local v1    # "relativePath":Ljava/lang/String;
    .end local v2    # "storageType":I
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 72
    .restart local v0    # "info":Lcom/miniclip/audio/SoundPoolWrapper$PathInfo;
    .restart local v1    # "relativePath":Ljava/lang/String;
    .restart local v2    # "storageType":I
    :cond_1
    const/4 v3, -0x1

    const/4 v4, 0x0

    # invokes: Lcom/miniclip/audio/SoundPoolWrapper;->nativeOnSoundLoaded(ILjava/lang/String;IZ)V
    invoke-static {v2, v1, v3, v4}, Lcom/miniclip/audio/SoundPoolWrapper;->access$200(ILjava/lang/String;IZ)V

    .line 73
    # getter for: Lcom/miniclip/audio/SoundPoolWrapper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/miniclip/audio/SoundPoolWrapper;->access$300()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onLoadComplete: Error ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") when loading the sound: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
