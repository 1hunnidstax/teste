.class Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;
.super Ljava/lang/Object;
.source "SoundPoolWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miniclip/audio/SoundPoolWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoundPoolState"
.end annotation


# instance fields
.field public instances:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public soundId:I

.field public soundPaths:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/miniclip/audio/SoundPoolWrapper$PathInfo;",
            ">;"
        }
    .end annotation
.end field

.field public soundPool:Landroid/media/SoundPool;


# direct methods
.method constructor <init>(Landroid/media/SoundPool;)V
    .locals 1
    .param p1, "soundPool"    # Landroid/media/SoundPool;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;->instances:Ljava/util/Set;

    .line 31
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;->soundPaths:Ljava/util/HashMap;

    .line 34
    iput-object p1, p0, Lcom/miniclip/audio/SoundPoolWrapper$SoundPoolState;->soundPool:Landroid/media/SoundPool;

    .line 35
    return-void
.end method
