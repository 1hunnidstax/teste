.class public abstract Lcom/vungle/publisher/ahu;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ahq;
.implements Lcom/vungle/publisher/ahv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/vungle/publisher/ahq",
        "<TT;>;",
        "Lcom/vungle/publisher/ahv;"
    }
.end annotation


# instance fields
.field public final a:Lcom/vungle/publisher/akd;

.field private final b:Lcom/vungle/publisher/ahu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/ahu",
            "<*>;"
        }
    .end annotation
.end field

.field private c:Lcom/vungle/publisher/ahr;

.field private d:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 46
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/vungle/publisher/ahu;-><init>(Lcom/vungle/publisher/ahu;Z)V

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/vungle/publisher/ahu;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/ahu",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 58
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/vungle/publisher/ahu;-><init>(Lcom/vungle/publisher/ahu;Z)V

    .line 59
    return-void
.end method

.method private constructor <init>(Lcom/vungle/publisher/ahu;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/ahu",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/vungle/publisher/ahu;->d:J

    .line 80
    iput-object p1, p0, Lcom/vungle/publisher/ahu;->b:Lcom/vungle/publisher/ahu;

    .line 81
    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/vungle/publisher/ahu;->a:Lcom/vungle/publisher/akd;

    :goto_0
    iput-object v0, p0, Lcom/vungle/publisher/ahu;->a:Lcom/vungle/publisher/akd;

    .line 82
    return-void

    .line 81
    :cond_0
    new-instance v0, Lcom/vungle/publisher/akd;

    invoke-direct {v0}, Lcom/vungle/publisher/akd;-><init>()V

    goto :goto_0
.end method


# virtual methods
.method public final a(J)V
    .locals 7

    .prologue
    const-wide/16 v4, 0x0

    .line 141
    cmp-long v0, p1, v4

    if-gez v0, :cond_0

    .line 142
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "number requested cannot be negative: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 148
    :cond_0
    monitor-enter p0

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/ahu;->c:Lcom/vungle/publisher/ahr;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/vungle/publisher/ahu;->c:Lcom/vungle/publisher/ahr;

    .line 155
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 157
    invoke-interface {v0, p1, p2}, Lcom/vungle/publisher/ahr;->a(J)V

    .line 158
    :goto_0
    return-void

    .line 152
    :cond_1
    :try_start_1
    iget-wide v0, p0, Lcom/vungle/publisher/ahu;->d:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iput-wide p1, p0, Lcom/vungle/publisher/ahu;->d:J

    .line 153
    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 152
    :cond_2
    :try_start_2
    iget-wide v0, p0, Lcom/vungle/publisher/ahu;->d:J

    add-long/2addr v0, p1

    cmp-long v2, v0, v4

    if-gez v2, :cond_3

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/vungle/publisher/ahu;->d:J

    goto :goto_1

    :cond_3
    iput-wide v0, p0, Lcom/vungle/publisher/ahu;->d:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public a(Lcom/vungle/publisher/ahr;)V
    .locals 6

    .prologue
    const-wide/high16 v4, -0x8000000000000000L

    .line 191
    const/4 v0, 0x0

    .line 192
    monitor-enter p0

    .line 193
    :try_start_0
    iget-wide v2, p0, Lcom/vungle/publisher/ahu;->d:J

    .line 194
    iput-object p1, p0, Lcom/vungle/publisher/ahu;->c:Lcom/vungle/publisher/ahr;

    .line 195
    iget-object v1, p0, Lcom/vungle/publisher/ahu;->b:Lcom/vungle/publisher/ahu;

    if-eqz v1, :cond_0

    .line 197
    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    .line 199
    const/4 v0, 0x1

    .line 202
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/vungle/publisher/ahu;->b:Lcom/vungle/publisher/ahu;

    iget-object v1, p0, Lcom/vungle/publisher/ahu;->c:Lcom/vungle/publisher/ahr;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ahu;->a(Lcom/vungle/publisher/ahr;)V

    .line 214
    :goto_0
    return-void

    .line 202
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 208
    :cond_1
    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 209
    iget-object v0, p0, Lcom/vungle/publisher/ahu;->c:Lcom/vungle/publisher/ahr;

    const-wide v2, 0x7fffffffffffffffL

    invoke-interface {v0, v2, v3}, Lcom/vungle/publisher/ahr;->a(J)V

    goto :goto_0

    .line 211
    :cond_2
    iget-object v0, p0, Lcom/vungle/publisher/ahu;->c:Lcom/vungle/publisher/ahr;

    invoke-interface {v0, v2, v3}, Lcom/vungle/publisher/ahr;->a(J)V

    goto :goto_0
.end method

.method public final a(Lcom/vungle/publisher/ahv;)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/vungle/publisher/ahu;->a:Lcom/vungle/publisher/akd;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/akd;->a(Lcom/vungle/publisher/ahv;)V

    .line 94
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/vungle/publisher/ahu;->a:Lcom/vungle/publisher/akd;

    invoke-virtual {v0}, Lcom/vungle/publisher/akd;->b()V

    .line 99
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/vungle/publisher/ahu;->a:Lcom/vungle/publisher/akd;

    iget-boolean v0, v0, Lcom/vungle/publisher/akd;->b:Z

    return v0
.end method

.method public k_()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method
