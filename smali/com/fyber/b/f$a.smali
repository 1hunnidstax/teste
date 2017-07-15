.class final Lcom/fyber/b/f$a;
.super Ljava/lang/Thread;
.source "ExecutorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fyber/b/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 36
    const-string v0, "FyberExecutorThread"

    invoke-virtual {p0, v0}, Lcom/fyber/b/f$a;->setName(Ljava/lang/String;)V

    .line 37
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 41
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 42
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 43
    return-void
.end method
