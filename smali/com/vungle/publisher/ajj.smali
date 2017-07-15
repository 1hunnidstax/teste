.class public final Lcom/vungle/publisher/ajj;
.super Lcom/vungle/publisher/ahs;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ajq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/ajj$c;,
        Lcom/vungle/publisher/ajj$a;,
        Lcom/vungle/publisher/ajj$b;
    }
.end annotation


# static fields
.field static final b:I

.field static final c:Lcom/vungle/publisher/ajj$c;

.field static final d:Lcom/vungle/publisher/ajj$b;


# instance fields
.field final e:Ljava/util/concurrent/ThreadFactory;

.field public final f:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/vungle/publisher/ajj$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 35
    const-string v0, "rx.scheduler.max-computation-threads"

    invoke-static {v0, v2}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 36
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    .line 38
    if-lez v0, :cond_0

    if-le v0, v1, :cond_1

    :cond_0
    move v0, v1

    .line 41
    :cond_1
    sput v0, Lcom/vungle/publisher/ajj;->b:I

    .line 48
    new-instance v0, Lcom/vungle/publisher/ajj$c;

    sget-object v1, Lcom/vungle/publisher/akb;->a:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1}, Lcom/vungle/publisher/ajj$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    .line 49
    sput-object v0, Lcom/vungle/publisher/ajj;->c:Lcom/vungle/publisher/ajj$c;

    invoke-virtual {v0}, Lcom/vungle/publisher/ajj$c;->b()V

    .line 53
    new-instance v0, Lcom/vungle/publisher/ajj$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/ajj$b;-><init>(Ljava/util/concurrent/ThreadFactory;I)V

    sput-object v0, Lcom/vungle/publisher/ajj;->d:Lcom/vungle/publisher/ajj$b;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 3

    .prologue
    .line 95
    invoke-direct {p0}, Lcom/vungle/publisher/ahs;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/vungle/publisher/ajj;->e:Ljava/util/concurrent/ThreadFactory;

    .line 97
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lcom/vungle/publisher/ajj;->d:Lcom/vungle/publisher/ajj$b;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/vungle/publisher/ajj;->f:Ljava/util/concurrent/atomic/AtomicReference;

    .line 98
    new-instance v0, Lcom/vungle/publisher/ajj$b;

    iget-object v1, p0, Lcom/vungle/publisher/ajj;->e:Ljava/util/concurrent/ThreadFactory;

    sget v2, Lcom/vungle/publisher/ajj;->b:I

    invoke-direct {v0, v1, v2}, Lcom/vungle/publisher/ajj$b;-><init>(Ljava/util/concurrent/ThreadFactory;I)V

    iget-object v1, p0, Lcom/vungle/publisher/ajj;->f:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/vungle/publisher/ajj;->d:Lcom/vungle/publisher/ajj$b;

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/vungle/publisher/ajj$b;->b()V

    .line 99
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()Lcom/vungle/publisher/ahs$a;
    .locals 2

    .prologue
    .line 103
    new-instance v1, Lcom/vungle/publisher/ajj$a;

    iget-object v0, p0, Lcom/vungle/publisher/ajj;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ajj$b;

    invoke-virtual {v0}, Lcom/vungle/publisher/ajj$b;->a()Lcom/vungle/publisher/ajj$c;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/vungle/publisher/ajj$a;-><init>(Lcom/vungle/publisher/ajj$c;)V

    return-object v1
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 117
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/ajj;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ajj$b;

    .line 118
    sget-object v1, Lcom/vungle/publisher/ajj;->d:Lcom/vungle/publisher/ajj$b;

    if-ne v0, v1, :cond_1

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v1, p0, Lcom/vungle/publisher/ajj;->f:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v2, Lcom/vungle/publisher/ajj;->d:Lcom/vungle/publisher/ajj$b;

    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {v0}, Lcom/vungle/publisher/ajj$b;->b()V

    goto :goto_0
.end method
