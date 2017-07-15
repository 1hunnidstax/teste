.class public final Lcom/vungle/publisher/ajt;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ahv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference",
        "<",
        "Lcom/vungle/publisher/ahv;",
        ">;",
        "Lcom/vungle/publisher/ahv;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 39
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .prologue
    .line 176
    invoke-virtual {p0}, Lcom/vungle/publisher/ajt;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ahv;

    .line 177
    sget-object v1, Lcom/vungle/publisher/aju;->a:Lcom/vungle/publisher/aju;

    if-eq v0, v1, :cond_0

    .line 178
    sget-object v0, Lcom/vungle/publisher/aju;->a:Lcom/vungle/publisher/aju;

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/ajt;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ahv;

    .line 179
    if-eqz v0, :cond_0

    sget-object v1, Lcom/vungle/publisher/aju;->a:Lcom/vungle/publisher/aju;

    if-eq v0, v1, :cond_0

    .line 180
    invoke-interface {v0}, Lcom/vungle/publisher/ahv;->b()V

    .line 183
    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 2

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/vungle/publisher/ajt;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/vungle/publisher/aju;->a:Lcom/vungle/publisher/aju;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
