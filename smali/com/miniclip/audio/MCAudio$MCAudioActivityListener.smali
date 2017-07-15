.class Lcom/miniclip/audio/MCAudio$MCAudioActivityListener;
.super Lcom/miniclip/framework/AbstractActivityListener;
.source "MCAudio.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miniclip/audio/MCAudio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MCAudioActivityListener"
.end annotation


# instance fields
.field private hasWindowFocus:Z

.field private resumeOnFocus:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9
    invoke-direct {p0}, Lcom/miniclip/framework/AbstractActivityListener;-><init>()V

    .line 10
    iput-boolean v0, p0, Lcom/miniclip/audio/MCAudio$MCAudioActivityListener;->hasWindowFocus:Z

    .line 11
    iput-boolean v0, p0, Lcom/miniclip/audio/MCAudio$MCAudioActivityListener;->resumeOnFocus:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/miniclip/audio/MCAudio$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miniclip/audio/MCAudio$1;

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/miniclip/audio/MCAudio$MCAudioActivityListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPause()V
    .locals 0

    .prologue
    .line 15
    invoke-static {}, Lcom/miniclip/audio/MCAudio;->pauseBackgroundMusic()V

    .line 16
    invoke-static {}, Lcom/miniclip/audio/MCAudio;->pauseAllSounds()V

    .line 17
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/miniclip/audio/MCAudio$MCAudioActivityListener;->hasWindowFocus:Z

    if-eqz v0, :cond_0

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miniclip/audio/MCAudio$MCAudioActivityListener;->resumeOnFocus:Z

    .line 36
    invoke-static {}, Lcom/miniclip/audio/MCAudio;->resumeBackgroundMusic()V

    .line 37
    invoke-static {}, Lcom/miniclip/audio/MCAudio;->resumeAllSounds()V

    .line 41
    :goto_0
    return-void

    .line 39
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miniclip/audio/MCAudio$MCAudioActivityListener;->resumeOnFocus:Z

    goto :goto_0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1
    .param p1, "nowHasWindowFocus"    # Z

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/miniclip/audio/MCAudio$MCAudioActivityListener;->hasWindowFocus:Z

    .line 22
    iget-boolean v0, p0, Lcom/miniclip/audio/MCAudio$MCAudioActivityListener;->hasWindowFocus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miniclip/audio/MCAudio$MCAudioActivityListener;->resumeOnFocus:Z

    if-eqz v0, :cond_0

    .line 23
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miniclip/audio/MCAudio$MCAudioActivityListener;->resumeOnFocus:Z

    .line 25
    invoke-static {}, Lcom/miniclip/audio/MCAudio;->resumeBackgroundMusic()V

    .line 26
    invoke-static {}, Lcom/miniclip/audio/MCAudio;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    invoke-static {}, Lcom/miniclip/audio/MCAudio;->resumeAllSounds()V

    .line 30
    :cond_0
    return-void
.end method
