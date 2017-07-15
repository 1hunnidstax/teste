.class final Lcom/vungle/publisher/ajp$b;
.super Ljava/util/concurrent/atomic/AtomicBoolean;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ahv;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/ajp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation


# instance fields
.field final a:Lcom/vungle/publisher/ajp;

.field final b:Lcom/vungle/publisher/amc;


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/ajp;Lcom/vungle/publisher/amc;)V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 159
    iput-object p1, p0, Lcom/vungle/publisher/ajp$b;->a:Lcom/vungle/publisher/ajp;

    .line 160
    iput-object p2, p0, Lcom/vungle/publisher/ajp$b;->b:Lcom/vungle/publisher/amc;

    .line 161
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 2

    .prologue
    .line 170
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/vungle/publisher/ajp$b;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/vungle/publisher/ajp$b;->b:Lcom/vungle/publisher/amc;

    iget-object v1, p0, Lcom/vungle/publisher/ajp$b;->a:Lcom/vungle/publisher/ajp;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/amc;->b(Lcom/vungle/publisher/ahv;)V

    .line 173
    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/vungle/publisher/ajp$b;->a:Lcom/vungle/publisher/ajp;

    iget-object v0, v0, Lcom/vungle/publisher/ajp;->a:Lcom/vungle/publisher/akd;

    iget-boolean v0, v0, Lcom/vungle/publisher/akd;->b:Z

    return v0
.end method
