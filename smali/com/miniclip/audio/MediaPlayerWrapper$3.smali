.class final Lcom/miniclip/audio/MediaPlayerWrapper$3;
.super Ljava/lang/Object;
.source "MediaPlayerWrapper.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/audio/MediaPlayerWrapper;->load(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$relativePath:Ljava/lang/String;

.field final synthetic val$soundId:I

.field final synthetic val$storageType:I


# direct methods
.method constructor <init>(IILjava/lang/String;)V
    .locals 0

    .prologue
    .line 83
    iput p1, p0, Lcom/miniclip/audio/MediaPlayerWrapper$3;->val$soundId:I

    iput p2, p0, Lcom/miniclip/audio/MediaPlayerWrapper$3;->val$storageType:I

    iput-object p3, p0, Lcom/miniclip/audio/MediaPlayerWrapper$3;->val$relativePath:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v3, 0x0

    .line 86
    iget v0, p0, Lcom/miniclip/audio/MediaPlayerWrapper$3;->val$soundId:I

    invoke-static {v0}, Lcom/miniclip/audio/MediaPlayerWrapper;->unload(I)V

    .line 87
    iget v0, p0, Lcom/miniclip/audio/MediaPlayerWrapper$3;->val$storageType:I

    iget-object v1, p0, Lcom/miniclip/audio/MediaPlayerWrapper$3;->val$relativePath:Ljava/lang/String;

    const/4 v2, -0x1

    # invokes: Lcom/miniclip/audio/MediaPlayerWrapper;->nativeOnSoundLoaded(ILjava/lang/String;IZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/miniclip/audio/MediaPlayerWrapper;->access$100(ILjava/lang/String;IZ)V

    .line 88
    # getter for: Lcom/miniclip/audio/MediaPlayerWrapper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/miniclip/audio/MediaPlayerWrapper;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onError: Error ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") when loading the sound: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miniclip/audio/MediaPlayerWrapper$3;->val$soundId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miniclip/audio/MediaPlayerWrapper$3;->val$relativePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return v3
.end method
