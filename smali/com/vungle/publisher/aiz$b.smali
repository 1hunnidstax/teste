.class final Lcom/vungle/publisher/aiz$b;
.super Lcom/vungle/publisher/ahu;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/aiz;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/aiz$b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/vungle/publisher/ahu",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final b:Lcom/vungle/publisher/ahu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/ahu",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final c:I

.field final d:I

.field e:J

.field final f:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque",
            "<",
            "Ljava/util/List",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field final g:Ljava/util/concurrent/atomic/AtomicLong;

.field h:J


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/ahu;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/ahu",
            "<-",
            "Ljava/util/List",
            "<TT;>;>;II)V"
        }
    .end annotation

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/vungle/publisher/ahu;-><init>()V

    .line 251
    iput-object p1, p0, Lcom/vungle/publisher/aiz$b;->b:Lcom/vungle/publisher/ahu;

    .line 252
    iput p2, p0, Lcom/vungle/publisher/aiz$b;->c:I

    .line 253
    iput p3, p0, Lcom/vungle/publisher/aiz$b;->d:I

    .line 254
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/aiz$b;->f:Ljava/util/ArrayDeque;

    .line 255
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/aiz$b;->g:Ljava/util/concurrent/atomic/AtomicLong;

    .line 256
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/vungle/publisher/aiz$b;->a(J)V

    .line 257
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    .line 294
    iget-wide v0, p0, Lcom/vungle/publisher/aiz$b;->h:J

    .line 296
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    .line 297
    iget-object v2, p0, Lcom/vungle/publisher/aiz$b;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 298
    iget-object v2, p0, Lcom/vungle/publisher/aiz$b;->b:Lcom/vungle/publisher/ahu;

    new-instance v3, Lcom/vungle/publisher/ahy;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "More produced than requested? "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/vungle/publisher/ahy;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/vungle/publisher/ahu;->a(Ljava/lang/Throwable;)V

    .line 305
    :goto_0
    return-void

    .line 301
    :cond_0
    iget-object v2, p0, Lcom/vungle/publisher/aiz$b;->g:Ljava/util/concurrent/atomic/AtomicLong;

    neg-long v0, v0

    invoke-virtual {v2, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->addAndGet(J)J

    .line 304
    :cond_1
    iget-object v0, p0, Lcom/vungle/publisher/aiz$b;->g:Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v1, p0, Lcom/vungle/publisher/aiz$b;->f:Ljava/util/ArrayDeque;

    iget-object v2, p0, Lcom/vungle/publisher/aiz$b;->b:Lcom/vungle/publisher/ahu;

    invoke-static {v0, v1, v2}, Lcom/vungle/publisher/aim;->a(Ljava/util/concurrent/atomic/AtomicLong;Ljava/util/Queue;Lcom/vungle/publisher/ahu;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x1

    const-wide/16 v4, 0x0

    .line 261
    iget-wide v0, p0, Lcom/vungle/publisher/aiz$b;->e:J

    .line 262
    cmp-long v2, v0, v4

    if-nez v2, :cond_0

    .line 263
    new-instance v2, Ljava/util/ArrayList;

    iget v3, p0, Lcom/vungle/publisher/aiz$b;->c:I

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 264
    iget-object v3, p0, Lcom/vungle/publisher/aiz$b;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v3, v2}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 266
    :cond_0
    add-long/2addr v0, v6

    .line 267
    iget v2, p0, Lcom/vungle/publisher/aiz$b;->d:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 268
    iput-wide v4, p0, Lcom/vungle/publisher/aiz$b;->e:J

    .line 273
    :goto_0
    iget-object v0, p0, Lcom/vungle/publisher/aiz$b;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 274
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 270
    :cond_1
    iput-wide v0, p0, Lcom/vungle/publisher/aiz$b;->e:J

    goto :goto_0

    .line 277
    :cond_2
    iget-object v0, p0, Lcom/vungle/publisher/aiz$b;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 278
    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lcom/vungle/publisher/aiz$b;->c:I

    if-ne v1, v2, :cond_3

    .line 279
    iget-object v1, p0, Lcom/vungle/publisher/aiz$b;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    .line 280
    iget-wide v2, p0, Lcom/vungle/publisher/aiz$b;->h:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/vungle/publisher/aiz$b;->h:J

    .line 281
    iget-object v1, p0, Lcom/vungle/publisher/aiz$b;->b:Lcom/vungle/publisher/ahu;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/ahu;->a(Ljava/lang/Object;)V

    .line 283
    :cond_3
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Lcom/vungle/publisher/aiz$b;->f:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 289
    iget-object v0, p0, Lcom/vungle/publisher/aiz$b;->b:Lcom/vungle/publisher/ahu;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/ahu;->a(Ljava/lang/Throwable;)V

    .line 290
    return-void
.end method
