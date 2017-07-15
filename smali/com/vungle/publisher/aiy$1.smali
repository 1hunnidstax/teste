.class final Lcom/vungle/publisher/aiy$1;
.super Lcom/vungle/publisher/ahu;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/aiy;->a(Lcom/vungle/publisher/ahu;)Lcom/vungle/publisher/ahu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/ahu",
        "<TT;>;"
    }
.end annotation


# instance fields
.field b:Z

.field c:Z

.field final synthetic d:Lcom/vungle/publisher/ajg;

.field final synthetic e:Lcom/vungle/publisher/ahu;

.field final synthetic f:Lcom/vungle/publisher/aiy;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/aiy;Lcom/vungle/publisher/ajg;Lcom/vungle/publisher/ahu;)V
    .locals 0

    .prologue
    .line 43
    iput-object p1, p0, Lcom/vungle/publisher/aiy$1;->f:Lcom/vungle/publisher/aiy;

    iput-object p2, p0, Lcom/vungle/publisher/aiy$1;->d:Lcom/vungle/publisher/ajg;

    iput-object p3, p0, Lcom/vungle/publisher/aiy$1;->e:Lcom/vungle/publisher/ahu;

    invoke-direct {p0}, Lcom/vungle/publisher/ahu;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/vungle/publisher/aiy$1;->c:Z

    if-nez v0, :cond_0

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/publisher/aiy$1;->c:Z

    .line 83
    iget-boolean v0, p0, Lcom/vungle/publisher/aiy$1;->b:Z

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/vungle/publisher/aiy$1;->d:Lcom/vungle/publisher/ajg;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ajg;->a(Ljava/lang/Object;)V

    .line 89
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/vungle/publisher/aiy$1;->d:Lcom/vungle/publisher/ajg;

    iget-object v1, p0, Lcom/vungle/publisher/aiy$1;->f:Lcom/vungle/publisher/aiy;

    iget-boolean v1, v1, Lcom/vungle/publisher/aiy;->b:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ajg;->a(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 49
    iget-boolean v0, p0, Lcom/vungle/publisher/aiy$1;->c:Z

    if-eqz v0, :cond_1

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 52
    :cond_1
    iput-boolean v1, p0, Lcom/vungle/publisher/aiy$1;->b:Z

    .line 55
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/aiy$1;->f:Lcom/vungle/publisher/aiy;

    iget-object v0, v0, Lcom/vungle/publisher/aiy;->a:Lcom/vungle/publisher/aii;

    invoke-interface {v0, p1}, Lcom/vungle/publisher/aii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    iput-boolean v1, p0, Lcom/vungle/publisher/aiy$1;->c:Z

    .line 62
    iget-object v2, p0, Lcom/vungle/publisher/aiy$1;->d:Lcom/vungle/publisher/ajg;

    iget-object v0, p0, Lcom/vungle/publisher/aiy$1;->f:Lcom/vungle/publisher/aiy;

    iget-boolean v0, v0, Lcom/vungle/publisher/aiy;->b:Z

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/vungle/publisher/ajg;->a(Ljava/lang/Object;)V

    .line 63
    iget-object v0, p0, Lcom/vungle/publisher/ahu;->a:Lcom/vungle/publisher/akd;

    invoke-virtual {v0}, Lcom/vungle/publisher/akd;->b()V

    goto :goto_0

    .line 56
    :catch_0
    move-exception v0

    invoke-static {v0, p0, p1}, Lcom/vungle/publisher/ahx;->a(Ljava/lang/Throwable;Lcom/vungle/publisher/ahq;Ljava/lang/Object;)V

    goto :goto_0

    .line 62
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/vungle/publisher/aiy$1;->c:Z

    if-nez v0, :cond_0

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/publisher/aiy$1;->c:Z

    .line 73
    iget-object v0, p0, Lcom/vungle/publisher/aiy$1;->e:Lcom/vungle/publisher/ahu;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/ahu;->a(Ljava/lang/Throwable;)V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    invoke-static {p1}, Lcom/vungle/publisher/alp;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
