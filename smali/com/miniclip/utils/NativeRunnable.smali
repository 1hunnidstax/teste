.class public Lcom/miniclip/utils/NativeRunnable;
.super Ljava/lang/Object;
.source "NativeRunnable.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private id:J


# direct methods
.method public constructor <init>(J)V
    .locals 3
    .param p1, "id"    # J

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miniclip/utils/NativeRunnable;->id:J

    .line 9
    iput-wide p1, p0, Lcom/miniclip/utils/NativeRunnable;->id:J

    .line 10
    return-void
.end method

.method private static native runNative(J)V
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 13
    iget-wide v0, p0, Lcom/miniclip/utils/NativeRunnable;->id:J

    invoke-static {v0, v1}, Lcom/miniclip/utils/NativeRunnable;->runNative(J)V

    .line 14
    return-void
.end method
