.class final Lcom/vungle/publisher/aji$c;
.super Lcom/vungle/publisher/ajo;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/aji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "c"
.end annotation


# instance fields
.field a:J


# direct methods
.method constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 2

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lcom/vungle/publisher/ajo;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 242
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/vungle/publisher/aji$c;->a:J

    .line 243
    return-void
.end method
