.class final Lcom/vungle/publisher/ajr;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/aie;


# instance fields
.field private final a:Lcom/vungle/publisher/aie;

.field private final b:Lcom/vungle/publisher/ahs$a;

.field private final c:J


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/aie;Lcom/vungle/publisher/ahs$a;J)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/vungle/publisher/ajr;->a:Lcom/vungle/publisher/aie;

    .line 29
    iput-object p2, p0, Lcom/vungle/publisher/ajr;->b:Lcom/vungle/publisher/ahs$a;

    .line 30
    iput-wide p3, p0, Lcom/vungle/publisher/ajr;->c:J

    .line 31
    return-void
.end method


# virtual methods
.method public final d()V
    .locals 4

    .prologue
    .line 35
    iget-object v0, p0, Lcom/vungle/publisher/ajr;->b:Lcom/vungle/publisher/ahs$a;

    invoke-virtual {v0}, Lcom/vungle/publisher/ahs$a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 54
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    iget-wide v0, p0, Lcom/vungle/publisher/ajr;->c:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 40
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 42
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/vungle/publisher/ajr;->b:Lcom/vungle/publisher/ahs$a;

    invoke-virtual {v0}, Lcom/vungle/publisher/ahs$a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/vungle/publisher/ajr;->a:Lcom/vungle/publisher/aie;

    invoke-interface {v0}, Lcom/vungle/publisher/aie;->d()V

    goto :goto_0

    .line 43
    :catch_0
    move-exception v0

    .line 44
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 45
    invoke-static {v0}, Lcom/vungle/publisher/ahx;->a(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    goto :goto_1
.end method
