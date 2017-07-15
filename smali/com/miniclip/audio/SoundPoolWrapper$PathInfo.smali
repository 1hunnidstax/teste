.class Lcom/miniclip/audio/SoundPoolWrapper$PathInfo;
.super Ljava/lang/Object;
.source "SoundPoolWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miniclip/audio/SoundPoolWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PathInfo"
.end annotation


# instance fields
.field public relativePath:Ljava/lang/String;

.field public storageType:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miniclip/audio/SoundPoolWrapper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miniclip/audio/SoundPoolWrapper$1;

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/miniclip/audio/SoundPoolWrapper$PathInfo;-><init>()V

    return-void
.end method
