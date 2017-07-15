.class final Lcom/miniclip/audio/MediaPlayerWrapper$2;
.super Ljava/lang/Object;
.source "MediaPlayerWrapper.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miniclip/audio/MediaPlayerWrapper;->load(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mediaPlayer:Landroid/media/MediaPlayer;

.field final synthetic val$relativePath:Ljava/lang/String;

.field final synthetic val$soundId:I

.field final synthetic val$storageType:I


# direct methods
.method constructor <init>(Landroid/media/MediaPlayer;ILjava/lang/String;I)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/miniclip/audio/MediaPlayerWrapper$2;->val$mediaPlayer:Landroid/media/MediaPlayer;

    iput p2, p0, Lcom/miniclip/audio/MediaPlayerWrapper$2;->val$storageType:I

    iput-object p3, p0, Lcom/miniclip/audio/MediaPlayerWrapper$2;->val$relativePath:Ljava/lang/String;

    iput p4, p0, Lcom/miniclip/audio/MediaPlayerWrapper$2;->val$soundId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v1, 0x0

    .line 78
    iget-object v0, p0, Lcom/miniclip/audio/MediaPlayerWrapper$2;->val$mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 79
    iget-object v0, p0, Lcom/miniclip/audio/MediaPlayerWrapper$2;->val$mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 80
    iget v0, p0, Lcom/miniclip/audio/MediaPlayerWrapper$2;->val$storageType:I

    iget-object v1, p0, Lcom/miniclip/audio/MediaPlayerWrapper$2;->val$relativePath:Ljava/lang/String;

    iget v2, p0, Lcom/miniclip/audio/MediaPlayerWrapper$2;->val$soundId:I

    const/4 v3, 0x1

    # invokes: Lcom/miniclip/audio/MediaPlayerWrapper;->nativeOnSoundLoaded(ILjava/lang/String;IZ)V
    invoke-static {v0, v1, v2, v3}, Lcom/miniclip/audio/MediaPlayerWrapper;->access$100(ILjava/lang/String;IZ)V

    .line 81
    return-void
.end method
