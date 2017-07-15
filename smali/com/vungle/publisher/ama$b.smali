.class public final Lcom/vungle/publisher/ama$b;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ahq;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ama;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/vungle/publisher/ahq",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final a:Lcom/vungle/publisher/ahu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/ahu",
            "<-TT;>;"
        }
    .end annotation
.end field

.field b:Z

.field c:Z

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field e:Z


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/ahu;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/ahu",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 210
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/publisher/ama$b;->b:Z

    .line 221
    iput-object p1, p0, Lcom/vungle/publisher/ama$b;->a:Lcom/vungle/publisher/ahu;

    .line 222
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/vungle/publisher/ama$b;->a:Lcom/vungle/publisher/ahu;

    invoke-virtual {v0}, Lcom/vungle/publisher/ahu;->a()V

    .line 234
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 225
    iget-object v0, p0, Lcom/vungle/publisher/ama$b;->a:Lcom/vungle/publisher/ahu;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/ahu;->a(Ljava/lang/Object;)V

    .line 226
    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/vungle/publisher/ama$b;->a:Lcom/vungle/publisher/ahu;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/ahu;->a(Ljava/lang/Throwable;)V

    .line 230
    return-void
.end method

.method final b(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/vungle/publisher/ama$b;->e:Z

    if-nez v0, :cond_2

    .line 243
    monitor-enter p0

    .line 244
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/vungle/publisher/ama$b;->b:Z

    .line 245
    iget-boolean v0, p0, Lcom/vungle/publisher/ama$b;->c:Z

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/vungle/publisher/ama$b;->d:Ljava/util/List;

    if-nez v0, :cond_0

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/ama$b;->d:Ljava/util/List;

    .line 249
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/ama$b;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    monitor-exit p0

    .line 256
    :goto_0
    return-void

    .line 252
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/publisher/ama$b;->e:Z

    .line 255
    :cond_2
    iget-object v0, p0, Lcom/vungle/publisher/ama$b;->a:Lcom/vungle/publisher/ahu;

    invoke-static {v0, p1}, Lcom/vungle/publisher/aio;->a(Lcom/vungle/publisher/ahq;Ljava/lang/Object;)Z

    goto :goto_0

    .line 252
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method final c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 319
    if-eqz p1, :cond_0

    .line 320
    iget-object v0, p0, Lcom/vungle/publisher/ama$b;->a:Lcom/vungle/publisher/ahu;

    invoke-static {v0, p1}, Lcom/vungle/publisher/aio;->a(Lcom/vungle/publisher/ahq;Ljava/lang/Object;)Z

    .line 322
    :cond_0
    return-void
.end method
