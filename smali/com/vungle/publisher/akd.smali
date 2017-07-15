.class public final Lcom/vungle/publisher/akd;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ahv;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/ahv;",
            ">;"
        }
    .end annotation
.end field

.field public volatile b:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Lcom/vungle/publisher/ahv;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/akd;->a:Ljava/util/List;

    .line 54
    iget-object v0, p0, Lcom/vungle/publisher/akd;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    return-void
.end method

.method public varargs constructor <init>([Lcom/vungle/publisher/ahv;)V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/vungle/publisher/akd;->a:Ljava/util/List;

    .line 46
    return-void
.end method


# virtual methods
.method public final a(Lcom/vungle/publisher/ahv;)V
    .locals 1

    .prologue
    .line 71
    invoke-interface {p1}, Lcom/vungle/publisher/ahv;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-boolean v0, p0, Lcom/vungle/publisher/akd;->b:Z

    if-nez v0, :cond_3

    .line 75
    monitor-enter p0

    .line 76
    :try_start_0
    iget-boolean v0, p0, Lcom/vungle/publisher/akd;->b:Z

    if-nez v0, :cond_2

    .line 77
    iget-object v0, p0, Lcom/vungle/publisher/akd;->a:Ljava/util/List;

    .line 78
    if-nez v0, :cond_1

    .line 79
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 80
    iput-object v0, p0, Lcom/vungle/publisher/akd;->a:Ljava/util/List;

    .line 82
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    monitor-exit p0

    goto :goto_0

    .line 85
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 88
    :cond_3
    invoke-interface {p1}, Lcom/vungle/publisher/ahv;->b()V

    goto :goto_0
.end method

.method public final b()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 114
    iget-boolean v0, p0, Lcom/vungle/publisher/akd;->b:Z

    if-nez v0, :cond_0

    .line 116
    monitor-enter p0

    .line 117
    :try_start_0
    iget-boolean v0, p0, Lcom/vungle/publisher/akd;->b:Z

    if-eqz v0, :cond_1

    .line 118
    monitor-exit p0

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 120
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/publisher/akd;->b:Z

    .line 121
    iget-object v0, p0, Lcom/vungle/publisher/akd;->a:Ljava/util/List;

    .line 122
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/vungle/publisher/akd;->a:Ljava/util/List;

    .line 123
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ahv;

    :try_start_1
    invoke-interface {v0}, Lcom/vungle/publisher/ahv;->b()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    if-nez v1, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    goto :goto_1

    .line 123
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 125
    :cond_2
    invoke-static {v1}, Lcom/vungle/publisher/ahx;->a(Ljava/util/List;)V

    goto :goto_0

    :cond_3
    move-object v0, v1

    goto :goto_2
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/vungle/publisher/akd;->b:Z

    return v0
.end method
