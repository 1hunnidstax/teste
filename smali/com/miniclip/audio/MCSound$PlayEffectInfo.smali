.class Lcom/miniclip/audio/MCSound$PlayEffectInfo;
.super Ljava/lang/Object;
.source "MCSound.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miniclip/audio/MCSound;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PlayEffectInfo"
.end annotation


# instance fields
.field public leftGain:F

.field public loopTime:I

.field public pitch:F

.field public priority:I

.field public rightGain:F

.field final synthetic this$0:Lcom/miniclip/audio/MCSound;


# direct methods
.method public constructor <init>(Lcom/miniclip/audio/MCSound;FFIIF)V
    .locals 0
    .param p2, "leftGain"    # F
    .param p3, "rightGain"    # F
    .param p4, "priority"    # I
    .param p5, "loopTime"    # I
    .param p6, "pitch"    # F

    .prologue
    .line 39
    iput-object p1, p0, Lcom/miniclip/audio/MCSound$PlayEffectInfo;->this$0:Lcom/miniclip/audio/MCSound;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p2, p0, Lcom/miniclip/audio/MCSound$PlayEffectInfo;->leftGain:F

    .line 41
    iput p3, p0, Lcom/miniclip/audio/MCSound$PlayEffectInfo;->rightGain:F

    .line 42
    iput p4, p0, Lcom/miniclip/audio/MCSound$PlayEffectInfo;->priority:I

    .line 43
    iput p5, p0, Lcom/miniclip/audio/MCSound$PlayEffectInfo;->loopTime:I

    .line 44
    iput p6, p0, Lcom/miniclip/audio/MCSound$PlayEffectInfo;->pitch:F

    .line 45
    return-void
.end method
