.class Lcom/miniclip/audio/MCSound$1;
.super Ljava/lang/Object;
.source "MCSound.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/audio/MCSound;->loadSound(Ljava/lang/String;Lcom/miniclip/audio/MCSound$SoundInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miniclip/audio/MCSound;

.field final synthetic val$info:Lcom/miniclip/audio/MCSound$SoundInfo;

.field final synthetic val$path:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/miniclip/audio/MCSound;Ljava/lang/String;Lcom/miniclip/audio/MCSound$SoundInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/miniclip/audio/MCSound;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/miniclip/audio/MCSound$1;->this$0:Lcom/miniclip/audio/MCSound;

    iput-object p2, p0, Lcom/miniclip/audio/MCSound$1;->val$path:Ljava/lang/String;

    iput-object p3, p0, Lcom/miniclip/audio/MCSound$1;->val$info:Lcom/miniclip/audio/MCSound$SoundInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 110
    :try_start_0
    iget-object v3, p0, Lcom/miniclip/audio/MCSound$1;->val$path:Ljava/lang/String;

    invoke-static {v3}, Lcom/miniclip/audio/MCAudio;->findAssetPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "assetPath":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 113
    const-string v3, "MCSound"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadSound from asset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iget-object v3, p0, Lcom/miniclip/audio/MCSound$1;->val$info:Lcom/miniclip/audio/MCSound$SoundInfo;

    iget-object v4, p0, Lcom/miniclip/audio/MCSound$1;->this$0:Lcom/miniclip/audio/MCSound;

    # getter for: Lcom/miniclip/audio/MCSound;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v4}, Lcom/miniclip/audio/MCSound;->access$200(Lcom/miniclip/audio/MCSound;)Landroid/media/SoundPool;

    move-result-object v4

    iget-object v5, p0, Lcom/miniclip/audio/MCSound$1;->this$0:Lcom/miniclip/audio/MCSound;

    # getter for: Lcom/miniclip/audio/MCSound;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/miniclip/audio/MCSound;->access$100(Lcom/miniclip/audio/MCSound;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/media/SoundPool;->load(Landroid/content/res/AssetFileDescriptor;I)I

    move-result v4

    iput v4, v3, Lcom/miniclip/audio/MCSound$SoundInfo;->sampleId:I

    .line 115
    iget-object v3, p0, Lcom/miniclip/audio/MCSound$1;->this$0:Lcom/miniclip/audio/MCSound;

    iget-object v3, v3, Lcom/miniclip/audio/MCSound;->sampleIdToSoundInfo:Ljava/util/Map;

    iget-object v4, p0, Lcom/miniclip/audio/MCSound$1;->val$info:Lcom/miniclip/audio/MCSound$SoundInfo;

    iget v4, v4, Lcom/miniclip/audio/MCSound$SoundInfo;->sampleId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/miniclip/audio/MCSound$1;->val$info:Lcom/miniclip/audio/MCSound$SoundInfo;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    .end local v0    # "assetPath":Ljava/lang/String;
    :goto_0
    return-void

    .line 119
    .restart local v0    # "assetPath":Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/miniclip/audio/MCSound$1;->val$path:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 120
    .local v2, "f":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v3

    if-nez v3, :cond_1

    .line 121
    const-string v3, "MCSound"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadSound from file: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/miniclip/audio/MCSound$1;->val$path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object v3, p0, Lcom/miniclip/audio/MCSound$1;->val$info:Lcom/miniclip/audio/MCSound$SoundInfo;

    iget-object v4, p0, Lcom/miniclip/audio/MCSound$1;->this$0:Lcom/miniclip/audio/MCSound;

    # getter for: Lcom/miniclip/audio/MCSound;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v4}, Lcom/miniclip/audio/MCSound;->access$200(Lcom/miniclip/audio/MCSound;)Landroid/media/SoundPool;

    move-result-object v4

    iget-object v5, p0, Lcom/miniclip/audio/MCSound$1;->val$path:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v4

    iput v4, v3, Lcom/miniclip/audio/MCSound$SoundInfo;->sampleId:I

    .line 123
    iget-object v3, p0, Lcom/miniclip/audio/MCSound$1;->this$0:Lcom/miniclip/audio/MCSound;

    iget-object v3, v3, Lcom/miniclip/audio/MCSound;->sampleIdToSoundInfo:Ljava/util/Map;

    iget-object v4, p0, Lcom/miniclip/audio/MCSound$1;->val$info:Lcom/miniclip/audio/MCSound$SoundInfo;

    iget v4, v4, Lcom/miniclip/audio/MCSound$SoundInfo;->sampleId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/miniclip/audio/MCSound$1;->val$info:Lcom/miniclip/audio/MCSound$SoundInfo;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 129
    .end local v0    # "assetPath":Ljava/lang/String;
    .end local v2    # "f":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 130
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "MCSound"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadSound caught an exception for path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/miniclip/audio/MCSound$1;->val$path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 127
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "assetPath":Ljava/lang/String;
    .restart local v2    # "f":Ljava/io/File;
    :cond_1
    :try_start_1
    const-string v3, "MCSound"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadSound failed for path: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/miniclip/audio/MCSound$1;->val$path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
