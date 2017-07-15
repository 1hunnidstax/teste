.class final Lcom/miniclip/audio/SoundPoolWrapper$2;
.super Lcom/miniclip/framework/AbstractActivityListener;
.source "SoundPoolWrapper.java"


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
    .line 78
    invoke-direct {p0}, Lcom/miniclip/framework/AbstractActivityListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDestroy()V
    .locals 1

    .prologue
    .line 89
    # getter for: Lcom/miniclip/audio/SoundPoolWrapper;->soundPoolState:Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;
    invoke-static {}, Lcom/miniclip/audio/SoundPoolWrapper;->access$100()Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;

    move-result-object v0

    iget-object v0, v0, Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 90
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 81
    # getter for: Lcom/miniclip/audio/SoundPoolWrapper;->soundPoolState:Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;
    invoke-static {}, Lcom/miniclip/audio/SoundPoolWrapper;->access$100()Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;

    move-result-object v0

    iget-object v0, v0, Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->autoPause()V

    .line 82
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 85
    # getter for: Lcom/miniclip/audio/SoundPoolWrapper;->soundPoolState:Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;
    invoke-static {}, Lcom/miniclip/audio/SoundPoolWrapper;->access$100()Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;

    move-result-object v0

    iget-object v0, v0, Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;->soundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->autoResume()V

    .line 86
    return-void
.end method
