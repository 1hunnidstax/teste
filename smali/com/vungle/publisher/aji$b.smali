.class final Lcom/vungle/publisher/aji$b;
.super Lcom/vungle/publisher/ahs$a;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/aie;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/aji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field final a:Lcom/vungle/publisher/amc;

.field final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final c:Lcom/vungle/publisher/aji$a;

.field private final d:Lcom/vungle/publisher/aji$c;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/aji$a;)V
    .locals 1

    .prologue
    .line 183
    invoke-direct {p0}, Lcom/vungle/publisher/ahs$a;-><init>()V

    .line 178
    new-instance v0, Lcom/vungle/publisher/amc;

    invoke-direct {v0}, Lcom/vungle/publisher/amc;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/aji$b;->a:Lcom/vungle/publisher/amc;

    .line 184
    iput-object p1, p0, Lcom/vungle/publisher/aji$b;->c:Lcom/vungle/publisher/aji$a;

    .line 185
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/aji$b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 186
    invoke-virtual {p1}, Lcom/vungle/publisher/aji$a;->a()Lcom/vungle/publisher/aji$c;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/aji$b;->d:Lcom/vungle/publisher/aji$c;

    .line 187
    return-void
.end method


# virtual methods
.method public final a(Lcom/vungle/publisher/aie;)Lcom/vungle/publisher/ahv;
    .locals 3

    .prologue
    .line 212
    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/vungle/publisher/aji$b;->a(Lcom/vungle/publisher/aie;JLjava/util/concurrent/TimeUnit;)Lcom/vungle/publisher/ahv;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/vungle/publisher/aie;JLjava/util/concurrent/TimeUnit;)Lcom/vungle/publisher/ahv;
    .locals 4

    .prologue
    .line 217
    iget-object v0, p0, Lcom/vungle/publisher/aji$b;->a:Lcom/vungle/publisher/amc;

    iget-boolean v0, v0, Lcom/vungle/publisher/amc;->a:Z

    if-eqz v0, :cond_0

    .line 219
    invoke-static {}, Lcom/vungle/publisher/ame;->a()Lcom/vungle/publisher/ahv;

    move-result-object v0

    .line 233
    :goto_0
    return-object v0

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/aji$b;->d:Lcom/vungle/publisher/aji$c;

    new-instance v1, Lcom/vungle/publisher/aji$b$1;

    invoke-direct {v1, p0, p1}, Lcom/vungle/publisher/aji$b$1;-><init>(Lcom/vungle/publisher/aji$b;Lcom/vungle/publisher/aie;)V

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/vungle/publisher/aji$c;->b(Lcom/vungle/publisher/aie;JLjava/util/concurrent/TimeUnit;)Lcom/vungle/publisher/ajp;

    move-result-object v0

    .line 231
    iget-object v1, p0, Lcom/vungle/publisher/aji$b;->a:Lcom/vungle/publisher/amc;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/amc;->a(Lcom/vungle/publisher/ahv;)V

    .line 232
    iget-object v1, p0, Lcom/vungle/publisher/aji$b;->a:Lcom/vungle/publisher/amc;

    iget-object v2, v0, Lcom/vungle/publisher/ajp;->a:Lcom/vungle/publisher/akd;

    new-instance v3, Lcom/vungle/publisher/ajp$b;

    invoke-direct {v3, v0, v1}, Lcom/vungle/publisher/ajp$b;-><init>(Lcom/vungle/publisher/ajp;Lcom/vungle/publisher/amc;)V

    invoke-virtual {v2, v3}, Lcom/vungle/publisher/akd;->a(Lcom/vungle/publisher/ahv;)V

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    .prologue
    .line 191
    iget-object v0, p0, Lcom/vungle/publisher/aji$b;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/vungle/publisher/aji$b;->d:Lcom/vungle/publisher/aji$c;

    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v2, v3, v1}, Lcom/vungle/publisher/ajo;->a(Lcom/vungle/publisher/aie;JLjava/util/concurrent/TimeUnit;)Lcom/vungle/publisher/ahv;

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/aji$b;->a:Lcom/vungle/publisher/amc;

    invoke-virtual {v0}, Lcom/vungle/publisher/amc;->b()V

    .line 198
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 207
    iget-object v0, p0, Lcom/vungle/publisher/aji$b;->a:Lcom/vungle/publisher/amc;

    iget-boolean v0, v0, Lcom/vungle/publisher/amc;->a:Z

    return v0
.end method

.method public final d()V
    .locals 6

    .prologue
    .line 202
    iget-object v0, p0, Lcom/vungle/publisher/aji$b;->c:Lcom/vungle/publisher/aji$a;

    iget-object v1, p0, Lcom/vungle/publisher/aji$b;->d:Lcom/vungle/publisher/aji$c;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/vungle/publisher/aji$a;->a:J

    add-long/2addr v2, v4

    iput-wide v2, v1, Lcom/vungle/publisher/aji$c;->a:J

    iget-object v0, v0, Lcom/vungle/publisher/aji$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    .line 203
    return-void
.end method
