.class final Lcom/vungle/publisher/ajj$a;
.super Lcom/vungle/publisher/ahs$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ajj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field final a:Lcom/vungle/publisher/akd;

.field private final b:Lcom/vungle/publisher/akd;

.field private final c:Lcom/vungle/publisher/amc;

.field private final d:Lcom/vungle/publisher/ajj$c;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/ajj$c;)V
    .locals 4

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/vungle/publisher/ahs$a;-><init>()V

    .line 140
    new-instance v0, Lcom/vungle/publisher/akd;

    invoke-direct {v0}, Lcom/vungle/publisher/akd;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/ajj$a;->b:Lcom/vungle/publisher/akd;

    .line 141
    new-instance v0, Lcom/vungle/publisher/amc;

    invoke-direct {v0}, Lcom/vungle/publisher/amc;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/ajj$a;->c:Lcom/vungle/publisher/amc;

    .line 142
    new-instance v0, Lcom/vungle/publisher/akd;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/vungle/publisher/ahv;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/vungle/publisher/ajj$a;->b:Lcom/vungle/publisher/akd;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/vungle/publisher/ajj$a;->c:Lcom/vungle/publisher/amc;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lcom/vungle/publisher/akd;-><init>([Lcom/vungle/publisher/ahv;)V

    iput-object v0, p0, Lcom/vungle/publisher/ajj$a;->a:Lcom/vungle/publisher/akd;

    .line 146
    iput-object p1, p0, Lcom/vungle/publisher/ajj$a;->d:Lcom/vungle/publisher/ajj$c;

    .line 148
    return-void
.end method


# virtual methods
.method public final a(Lcom/vungle/publisher/aie;)Lcom/vungle/publisher/ahv;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 162
    iget-object v0, p0, Lcom/vungle/publisher/ajj$a;->a:Lcom/vungle/publisher/akd;

    iget-boolean v0, v0, Lcom/vungle/publisher/akd;->b:Z

    if-eqz v0, :cond_0

    .line 163
    invoke-static {}, Lcom/vungle/publisher/ame;->a()Lcom/vungle/publisher/ahv;

    move-result-object v0

    .line 166
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/ajj$a;->d:Lcom/vungle/publisher/ajj$c;

    new-instance v1, Lcom/vungle/publisher/ajj$a$1;

    invoke-direct {v1, p0, p1}, Lcom/vungle/publisher/ajj$a$1;-><init>(Lcom/vungle/publisher/ajj$a;Lcom/vungle/publisher/aie;)V

    iget-object v2, p0, Lcom/vungle/publisher/ajj$a;->b:Lcom/vungle/publisher/akd;

    invoke-static {v1}, Lcom/vungle/publisher/alp;->a(Lcom/vungle/publisher/aie;)Lcom/vungle/publisher/aie;

    move-result-object v3

    new-instance v1, Lcom/vungle/publisher/ajp;

    invoke-direct {v1, v3, v2}, Lcom/vungle/publisher/ajp;-><init>(Lcom/vungle/publisher/aie;Lcom/vungle/publisher/akd;)V

    invoke-virtual {v2, v1}, Lcom/vungle/publisher/akd;->a(Lcom/vungle/publisher/ahv;)V

    cmp-long v2, v4, v4

    if-gtz v2, :cond_1

    iget-object v0, v0, Lcom/vungle/publisher/ajo;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/vungle/publisher/ajp;->a(Ljava/util/concurrent/Future;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/vungle/publisher/ajo;->b:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v4, v5, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    goto :goto_1
.end method

.method public final a(Lcom/vungle/publisher/aie;JLjava/util/concurrent/TimeUnit;)Lcom/vungle/publisher/ahv;
    .locals 4

    .prologue
    .line 179
    iget-object v0, p0, Lcom/vungle/publisher/ajj$a;->a:Lcom/vungle/publisher/akd;

    iget-boolean v0, v0, Lcom/vungle/publisher/akd;->b:Z

    if-eqz v0, :cond_0

    .line 180
    invoke-static {}, Lcom/vungle/publisher/ame;->a()Lcom/vungle/publisher/ahv;

    move-result-object v0

    .line 183
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/ajj$a;->d:Lcom/vungle/publisher/ajj$c;

    new-instance v1, Lcom/vungle/publisher/ajj$a$2;

    invoke-direct {v1, p0, p1}, Lcom/vungle/publisher/ajj$a$2;-><init>(Lcom/vungle/publisher/ajj$a;Lcom/vungle/publisher/aie;)V

    iget-object v2, p0, Lcom/vungle/publisher/ajj$a;->c:Lcom/vungle/publisher/amc;

    invoke-static {v1}, Lcom/vungle/publisher/alp;->a(Lcom/vungle/publisher/aie;)Lcom/vungle/publisher/aie;

    move-result-object v3

    new-instance v1, Lcom/vungle/publisher/ajp;

    invoke-direct {v1, v3, v2}, Lcom/vungle/publisher/ajp;-><init>(Lcom/vungle/publisher/aie;Lcom/vungle/publisher/amc;)V

    invoke-virtual {v2, v1}, Lcom/vungle/publisher/amc;->a(Lcom/vungle/publisher/ahv;)V

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gtz v2, :cond_1

    iget-object v0, v0, Lcom/vungle/publisher/ajo;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/vungle/publisher/ajp;->a(Ljava/util/concurrent/Future;)V

    move-object v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lcom/vungle/publisher/ajo;->b:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0, v1, p2, p3, p4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    goto :goto_1
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/vungle/publisher/ajj$a;->a:Lcom/vungle/publisher/akd;

    invoke-virtual {v0}, Lcom/vungle/publisher/akd;->b()V

    .line 153
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/vungle/publisher/ajj$a;->a:Lcom/vungle/publisher/akd;

    iget-boolean v0, v0, Lcom/vungle/publisher/akd;->b:Z

    return v0
.end method
