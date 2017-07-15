.class public final Lcom/vungle/publisher/all;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ahq;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/all$a;
    }
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
.field private final a:Lcom/vungle/publisher/ahq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/ahq",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private b:Z

.field private volatile c:Z

.field private d:Lcom/vungle/publisher/all$a;

.field private final e:Lcom/vungle/publisher/aio;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/aio",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/ahq;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/ahq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Lcom/vungle/publisher/aio;->a()Lcom/vungle/publisher/aio;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/all;->e:Lcom/vungle/publisher/aio;

    .line 68
    iput-object p1, p0, Lcom/vungle/publisher/all;->a:Lcom/vungle/publisher/ahq;

    .line 69
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/vungle/publisher/all;->c:Z

    if-eqz v0, :cond_0

    .line 178
    :goto_0
    return-void

    .line 161
    :cond_0
    monitor-enter p0

    .line 162
    :try_start_0
    iget-boolean v0, p0, Lcom/vungle/publisher/all;->c:Z

    if-eqz v0, :cond_1

    .line 163
    monitor-exit p0

    goto :goto_0

    .line 176
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 165
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/vungle/publisher/all;->c:Z

    .line 166
    iget-boolean v0, p0, Lcom/vungle/publisher/all;->b:Z

    if-eqz v0, :cond_3

    .line 167
    iget-object v0, p0, Lcom/vungle/publisher/all;->d:Lcom/vungle/publisher/all$a;

    .line 168
    if-nez v0, :cond_2

    .line 169
    new-instance v0, Lcom/vungle/publisher/all$a;

    invoke-direct {v0}, Lcom/vungle/publisher/all$a;-><init>()V

    .line 170
    iput-object v0, p0, Lcom/vungle/publisher/all;->d:Lcom/vungle/publisher/all$a;

    .line 172
    :cond_2
    invoke-static {}, Lcom/vungle/publisher/aio;->b()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/all$a;->a(Ljava/lang/Object;)V

    .line 173
    monitor-exit p0

    goto :goto_0

    .line 175
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/publisher/all;->b:Z

    .line 176
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 177
    iget-object v0, p0, Lcom/vungle/publisher/all;->a:Lcom/vungle/publisher/ahq;

    invoke-interface {v0}, Lcom/vungle/publisher/ahq;->a()V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x1

    .line 73
    iget-boolean v0, p0, Lcom/vungle/publisher/all;->c:Z

    if-eqz v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 76
    :cond_0
    monitor-enter p0

    .line 77
    :try_start_0
    iget-boolean v0, p0, Lcom/vungle/publisher/all;->c:Z

    if-eqz v0, :cond_1

    .line 78
    monitor-exit p0

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 80
    :cond_1
    :try_start_1
    iget-boolean v0, p0, Lcom/vungle/publisher/all;->b:Z

    if-eqz v0, :cond_3

    .line 81
    iget-object v0, p0, Lcom/vungle/publisher/all;->d:Lcom/vungle/publisher/all$a;

    .line 82
    if-nez v0, :cond_2

    .line 83
    new-instance v0, Lcom/vungle/publisher/all$a;

    invoke-direct {v0}, Lcom/vungle/publisher/all$a;-><init>()V

    .line 84
    iput-object v0, p0, Lcom/vungle/publisher/all;->d:Lcom/vungle/publisher/all$a;

    .line 86
    :cond_2
    invoke-static {p1}, Lcom/vungle/publisher/aio;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/all$a;->a(Ljava/lang/Object;)V

    .line 87
    monitor-exit p0

    goto :goto_0

    .line 89
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/publisher/all;->b:Z

    .line 90
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    :try_start_2
    iget-object v0, p0, Lcom/vungle/publisher/all;->a:Lcom/vungle/publisher/ahq;

    invoke-interface {v0, p1}, Lcom/vungle/publisher/ahq;->a(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 100
    :cond_4
    monitor-enter p0

    .line 101
    :try_start_3
    iget-object v0, p0, Lcom/vungle/publisher/all;->d:Lcom/vungle/publisher/all$a;

    .line 102
    if-nez v0, :cond_5

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/vungle/publisher/all;->b:Z

    .line 104
    monitor-exit p0

    goto :goto_0

    .line 107
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    iput-boolean v6, p0, Lcom/vungle/publisher/all;->c:Z

    .line 95
    iget-object v1, p0, Lcom/vungle/publisher/all;->a:Lcom/vungle/publisher/ahq;

    invoke-static {v0, v1, p1}, Lcom/vungle/publisher/ahx;->a(Ljava/lang/Throwable;Lcom/vungle/publisher/ahq;Ljava/lang/Object;)V

    goto :goto_0

    .line 106
    :cond_5
    const/4 v2, 0x0

    :try_start_4
    iput-object v2, p0, Lcom/vungle/publisher/all;->d:Lcom/vungle/publisher/all$a;

    .line 107
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 108
    iget-object v2, v0, Lcom/vungle/publisher/all$a;->a:[Ljava/lang/Object;

    array-length v3, v2

    move v0, v1

    :goto_1
    if-ge v0, v3, :cond_4

    aget-object v4, v2, v0

    .line 109
    if-eqz v4, :cond_4

    .line 110
    :try_start_5
    iget-object v5, p0, Lcom/vungle/publisher/all;->a:Lcom/vungle/publisher/ahq;

    invoke-static {v5, v4}, Lcom/vungle/publisher/aio;->a(Lcom/vungle/publisher/ahq;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/publisher/all;->c:Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 117
    :catch_1
    move-exception v0

    .line 118
    iput-boolean v6, p0, Lcom/vungle/publisher/all;->c:Z

    .line 119
    invoke-static {v0}, Lcom/vungle/publisher/ahx;->b(Ljava/lang/Throwable;)V

    .line 120
    iget-object v1, p0, Lcom/vungle/publisher/all;->a:Lcom/vungle/publisher/ahq;

    invoke-static {v0, p1}, Lcom/vungle/publisher/aic;->a(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/vungle/publisher/ahq;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 108
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 129
    invoke-static {p1}, Lcom/vungle/publisher/ahx;->b(Ljava/lang/Throwable;)V

    .line 130
    iget-boolean v0, p0, Lcom/vungle/publisher/all;->c:Z

    if-eqz v0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 133
    :cond_0
    monitor-enter p0

    .line 134
    :try_start_0
    iget-boolean v0, p0, Lcom/vungle/publisher/all;->c:Z

    if-eqz v0, :cond_1

    .line 135
    monitor-exit p0

    goto :goto_0

    .line 152
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 137
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/vungle/publisher/all;->c:Z

    .line 138
    iget-boolean v0, p0, Lcom/vungle/publisher/all;->b:Z

    if-eqz v0, :cond_3

    .line 143
    iget-object v0, p0, Lcom/vungle/publisher/all;->d:Lcom/vungle/publisher/all$a;

    .line 144
    if-nez v0, :cond_2

    .line 145
    new-instance v0, Lcom/vungle/publisher/all$a;

    invoke-direct {v0}, Lcom/vungle/publisher/all$a;-><init>()V

    .line 146
    iput-object v0, p0, Lcom/vungle/publisher/all;->d:Lcom/vungle/publisher/all$a;

    .line 148
    :cond_2
    invoke-static {p1}, Lcom/vungle/publisher/aio;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/all$a;->a(Ljava/lang/Object;)V

    .line 149
    monitor-exit p0

    goto :goto_0

    .line 151
    :cond_3
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/publisher/all;->b:Z

    .line 152
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 153
    iget-object v0, p0, Lcom/vungle/publisher/all;->a:Lcom/vungle/publisher/ahq;

    invoke-interface {v0, p1}, Lcom/vungle/publisher/ahq;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
