.class Lcom/miniclip/audio/MCSound$SoundInfo;
.super Ljava/lang/Object;
.source "MCSound.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miniclip/audio/MCSound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SoundInfo"
.end annotation


# instance fields
.field public loaded:Z

.field public playOnLoad:Lcom/miniclip/audio/MCSound$PlayEffectInfo;

.field public playing:Z

.field public sampleId:I

.field public soundId:I

.field public streamId:I

.field final synthetic this$0:Lcom/miniclip/audio/MCSound;


# direct methods
.method private constructor <init>(Lcom/miniclip/audio/MCSound;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, -0x1

    .line 48
    iput-object p1, p0, Lcom/miniclip/audio/MCSound$SoundInfo;->this$0:Lcom/miniclip/audio/MCSound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput v0, p0, Lcom/miniclip/audio/MCSound$SoundInfo;->soundId:I

    .line 51
    iput-boolean v1, p0, Lcom/miniclip/audio/MCSound$SoundInfo;->loaded:Z

    .line 52
    iput-boolean v1, p0, Lcom/miniclip/audio/MCSound$SoundInfo;->playing:Z

    .line 53
    iput v0, p0, Lcom/miniclip/audio/MCSound$SoundInfo;->sampleId:I

    .line 54
    iput v0, p0, Lcom/miniclip/audio/MCSound$SoundInfo;->streamId:I

    .line 55
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miniclip/audio/MCSound$SoundInfo;->playOnLoad:Lcom/miniclip/audio/MCSound$PlayEffectInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miniclip/audio/MCSound;Lcom/miniclip/audio/MCSound$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miniclip/audio/MCSound;
    .param p2, "x1"    # Lcom/miniclip/audio/MCSound$1;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/miniclip/audio/MCSound$SoundInfo;-><init>(Lcom/miniclip/audio/MCSound;)V

    return-void
.end method
