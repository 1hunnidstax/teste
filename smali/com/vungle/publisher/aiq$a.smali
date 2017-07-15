.class final Lcom/vungle/publisher/aiq$a;
.super Lcom/vungle/publisher/ahu;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/aiq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
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
.field private final b:Lcom/vungle/publisher/ahu;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/ahu",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private final c:Lcom/vungle/publisher/ahq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/ahq",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private d:Z


# direct methods
.method constructor <init>(Lcom/vungle/publisher/ahu;Lcom/vungle/publisher/ahq;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/ahu",
            "<-TT;>;",
            "Lcom/vungle/publisher/ahq",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/vungle/publisher/ahu;-><init>(Lcom/vungle/publisher/ahu;)V

    .line 53
    iput-object p1, p0, Lcom/vungle/publisher/aiq$a;->b:Lcom/vungle/publisher/ahu;

    .line 54
    iput-object p2, p0, Lcom/vungle/publisher/aiq$a;->c:Lcom/vungle/publisher/ahq;

    .line 55
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/vungle/publisher/aiq$a;->d:Z

    if-eqz v0, :cond_0

    .line 71
    :goto_0
    return-void

    .line 63
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/aiq$a;->c:Lcom/vungle/publisher/ahq;

    invoke-interface {v0}, Lcom/vungle/publisher/ahq;->a()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/publisher/aiq$a;->d:Z

    .line 70
    iget-object v0, p0, Lcom/vungle/publisher/aiq$a;->b:Lcom/vungle/publisher/ahu;

    invoke-virtual {v0}, Lcom/vungle/publisher/ahu;->a()V

    goto :goto_0

    .line 64
    :catch_0
    move-exception v0

    invoke-static {v0, p0}, Lcom/vungle/publisher/ahx;->a(Ljava/lang/Throwable;Lcom/vungle/publisher/ahq;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/vungle/publisher/aiq$a;->d:Z

    if-eqz v0, :cond_0

    .line 102
    :goto_0
    return-void

    .line 96
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/aiq$a;->c:Lcom/vungle/publisher/ahq;

    invoke-interface {v0, p1}, Lcom/vungle/publisher/ahq;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    iget-object v0, p0, Lcom/vungle/publisher/aiq$a;->b:Lcom/vungle/publisher/ahu;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/ahu;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 97
    :catch_0
    move-exception v0

    invoke-static {v0, p0, p1}, Lcom/vungle/publisher/ahx;->a(Ljava/lang/Throwable;Lcom/vungle/publisher/ahq;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 75
    iget-boolean v0, p0, Lcom/vungle/publisher/aiq$a;->d:Z

    if-eqz v0, :cond_0

    .line 76
    invoke-static {p1}, Lcom/vungle/publisher/alp;->a(Ljava/lang/Throwable;)V

    .line 88
    :goto_0
    return-void

    .line 79
    :cond_0
    iput-boolean v5, p0, Lcom/vungle/publisher/aiq$a;->d:Z

    .line 81
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/aiq$a;->c:Lcom/vungle/publisher/ahq;

    invoke-interface {v0, p1}, Lcom/vungle/publisher/ahq;->a(Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    iget-object v0, p0, Lcom/vungle/publisher/aiq$a;->b:Lcom/vungle/publisher/ahu;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/ahu;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    invoke-static {v0}, Lcom/vungle/publisher/ahx;->b(Ljava/lang/Throwable;)V

    .line 84
    iget-object v1, p0, Lcom/vungle/publisher/aiq$a;->b:Lcom/vungle/publisher/ahu;

    new-instance v2, Lcom/vungle/publisher/ahw;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Throwable;

    aput-object p1, v3, v4

    aput-object v0, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v2, v0, v4}, Lcom/vungle/publisher/ahw;-><init>(Ljava/util/Collection;B)V

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/ahu;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
