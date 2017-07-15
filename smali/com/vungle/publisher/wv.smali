.class public abstract Lcom/vungle/publisher/wv;
.super Lcom/vungle/publisher/vz;
.source "vungle"


# instance fields
.field private a:I

.field private b:I

.field public e:I

.field public f:I

.field g:I

.field protected h:Lcom/vungle/publisher/bt;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/vungle/publisher/vz;-><init>()V

    .line 37
    const/16 v0, 0xa

    iput v0, p0, Lcom/vungle/publisher/wv;->e:I

    .line 43
    const/4 v0, 0x5

    iput v0, p0, Lcom/vungle/publisher/wv;->f:I

    .line 54
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/vungle/publisher/wv;->a:I

    .line 59
    const v0, 0xea60

    iput v0, p0, Lcom/vungle/publisher/wv;->b:I

    return-void
.end method


# virtual methods
.method protected final c(Lcom/vungle/publisher/we;Lcom/vungle/publisher/vy;)V
    .locals 10

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 86
    iget-object v4, p1, Lcom/vungle/publisher/we;->c:Lcom/vungle/publisher/xk;

    .line 87
    iget v5, v4, Lcom/vungle/publisher/xk;->b:I

    .line 89
    iget v0, p0, Lcom/vungle/publisher/wv;->e:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/vungle/publisher/wv;->e:I

    if-le v5, v0, :cond_2

    move v0, v1

    :goto_0
    if-nez v0, :cond_7

    .line 90
    iget-wide v6, v4, Lcom/vungle/publisher/xk;->a:J

    iget v0, p0, Lcom/vungle/publisher/wv;->g:I

    if-lez v0, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v6, v8, v6

    iget v0, p0, Lcom/vungle/publisher/wv;->g:I

    int-to-long v8, v0

    cmp-long v0, v6, v8

    if-ltz v0, :cond_3

    move v0, v1

    :goto_1
    if-nez v0, :cond_7

    .line 92
    iget v3, p2, Lcom/vungle/publisher/vy;->b:I

    .line 94
    invoke-static {v3}, Lcom/vungle/publisher/wv;->a(I)Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x259

    if-eq v3, v0, :cond_4

    move v0, v1

    :goto_2
    if-eqz v0, :cond_7

    .line 95
    iget v0, v4, Lcom/vungle/publisher/xk;->c:I

    .line 96
    const/16 v6, 0x198

    if-eq v3, v6, :cond_5

    const/16 v6, 0x25b

    if-eq v3, v6, :cond_5

    move v3, v1

    .line 98
    :goto_3
    if-nez v3, :cond_1

    .line 100
    iget v0, v4, Lcom/vungle/publisher/xk;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v4, Lcom/vungle/publisher/xk;->c:I

    if-gez v0, :cond_0

    const-string v0, "VungleNetwork"

    const-string v3, "Attempted to decrement softRetryCount < 0"

    invoke-static {v0, v3}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v2, v4, Lcom/vungle/publisher/xk;->c:I

    :cond_0
    iget v0, v4, Lcom/vungle/publisher/xk;->c:I

    .line 103
    :cond_1
    iget v3, p0, Lcom/vungle/publisher/wv;->f:I

    if-lez v3, :cond_6

    iget v3, p0, Lcom/vungle/publisher/wv;->f:I

    if-le v0, v3, :cond_6

    move v0, v1

    :goto_4
    if-nez v0, :cond_7

    .line 105
    iget v0, p0, Lcom/vungle/publisher/wv;->a:I

    iget v1, p0, Lcom/vungle/publisher/wv;->b:I

    invoke-static {v5, v0, v1}, Lcom/vungle/publisher/agv;->a(III)I

    move-result v0

    .line 106
    const-string v1, "VungleNetwork"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Retrying "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    div-int/lit16 v3, v0, 0x3e8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seconds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object v1, p0, Lcom/vungle/publisher/wv;->h:Lcom/vungle/publisher/bt;

    new-instance v2, Lcom/vungle/publisher/xj;

    invoke-direct {v2, p1}, Lcom/vungle/publisher/xj;-><init>(Lcom/vungle/publisher/we;)V

    iget-object v3, p1, Lcom/vungle/publisher/we;->d:Lcom/vungle/publisher/bt$b;

    int-to-long v4, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/vungle/publisher/bt;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/bt$b;J)V

    .line 116
    :goto_5
    return-void

    :cond_2
    move v0, v2

    .line 89
    goto/16 :goto_0

    :cond_3
    move v0, v2

    .line 90
    goto :goto_1

    :cond_4
    move v0, v2

    .line 94
    goto :goto_2

    :cond_5
    move v3, v2

    .line 96
    goto :goto_3

    :cond_6
    move v0, v2

    .line 103
    goto :goto_4

    .line 115
    :cond_7
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/vz;->c(Lcom/vungle/publisher/we;Lcom/vungle/publisher/vy;)V

    goto :goto_5
.end method
