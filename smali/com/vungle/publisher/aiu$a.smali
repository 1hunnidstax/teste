.class final Lcom/vungle/publisher/aiu$a;
.super Lcom/vungle/publisher/ahu;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/aiu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
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
            "<-TR;>;"
        }
    .end annotation
.end field

.field final c:Lcom/vungle/publisher/aii;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/aii",
            "<-TT;+TR;>;"
        }
    .end annotation
.end field

.field d:Z


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/ahu;Lcom/vungle/publisher/aii;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/ahu",
            "<-TR;>;",
            "Lcom/vungle/publisher/aii",
            "<-TT;+TR;>;)V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/vungle/publisher/ahu;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/vungle/publisher/aiu$a;->b:Lcom/vungle/publisher/ahu;

    .line 61
    iput-object p2, p0, Lcom/vungle/publisher/aiu$a;->c:Lcom/vungle/publisher/aii;

    .line 62
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/vungle/publisher/aiu$a;->d:Z

    if-eqz v0, :cond_0

    .line 98
    :goto_0
    return-void

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/aiu$a;->b:Lcom/vungle/publisher/ahu;

    invoke-virtual {v0}, Lcom/vungle/publisher/ahu;->a()V

    goto :goto_0
.end method

.method public final a(Lcom/vungle/publisher/ahr;)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/vungle/publisher/aiu$a;->b:Lcom/vungle/publisher/ahu;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/ahu;->a(Lcom/vungle/publisher/ahr;)V

    .line 103
    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/aiu$a;->c:Lcom/vungle/publisher/aii;

    invoke-interface {v0, p1}, Lcom/vungle/publisher/aii;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 77
    iget-object v1, p0, Lcom/vungle/publisher/aiu$a;->b:Lcom/vungle/publisher/ahu;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/ahu;->a(Ljava/lang/Object;)V

    .line 78
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v0

    .line 71
    invoke-static {v0}, Lcom/vungle/publisher/ahx;->b(Ljava/lang/Throwable;)V

    .line 72
    iget-object v1, p0, Lcom/vungle/publisher/ahu;->a:Lcom/vungle/publisher/akd;

    invoke-virtual {v1}, Lcom/vungle/publisher/akd;->b()V

    .line 73
    invoke-static {v0, p1}, Lcom/vungle/publisher/aic;->a(Ljava/lang/Throwable;Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/aiu$a;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/vungle/publisher/aiu$a;->d:Z

    if-eqz v0, :cond_0

    .line 83
    invoke-static {p1}, Lcom/vungle/publisher/alp;->a(Ljava/lang/Throwable;)V

    .line 89
    :goto_0
    return-void

    .line 86
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/publisher/aiu$a;->d:Z

    .line 88
    iget-object v0, p0, Lcom/vungle/publisher/aiu$a;->b:Lcom/vungle/publisher/ahu;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/ahu;->a(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
