.class final Lcom/vungle/publisher/aji$a$2;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/aji$a;-><init>(Ljava/util/concurrent/ThreadFactory;JLjava/util/concurrent/TimeUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/aji$a;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/aji$a;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/vungle/publisher/aji$a$2;->a:Lcom/vungle/publisher/aji$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .prologue
    .line 75
    iget-object v1, p0, Lcom/vungle/publisher/aji$a$2;->a:Lcom/vungle/publisher/aji$a;

    iget-object v0, v1, Lcom/vungle/publisher/aji$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-object v0, v1, Lcom/vungle/publisher/aji$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/aji$c;

    iget-wide v6, v0, Lcom/vungle/publisher/aji$c;->a:J

    cmp-long v5, v6, v2

    if-gtz v5, :cond_1

    iget-object v5, v1, Lcom/vungle/publisher/aji$a;->b:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v5, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v1, Lcom/vungle/publisher/aji$a;->c:Lcom/vungle/publisher/amc;

    invoke-virtual {v5, v0}, Lcom/vungle/publisher/amc;->b(Lcom/vungle/publisher/ahv;)V

    goto :goto_0

    .line 76
    :cond_1
    return-void
.end method
