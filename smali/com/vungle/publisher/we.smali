.class public final Lcom/vungle/publisher/we;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/we$a;
    }
.end annotation


# instance fields
.field public a:Lcom/vungle/publisher/vs;

.field b:Lcom/vungle/publisher/vz;

.field public c:Lcom/vungle/publisher/xk;

.field d:Lcom/vungle/publisher/bt$b;

.field e:Lcom/vungle/publisher/wi;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 6

    .prologue
    .line 61
    iget-object v0, p0, Lcom/vungle/publisher/we;->c:Lcom/vungle/publisher/xk;

    iget-wide v2, v0, Lcom/vungle/publisher/xk;->a:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gtz v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/vungle/publisher/xk;->a:J

    :cond_0
    iget v1, v0, Lcom/vungle/publisher/xk;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/vungle/publisher/xk;->b:I

    iget v1, v0, Lcom/vungle/publisher/xk;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/vungle/publisher/xk;->c:I

    .line 62
    iget-object v0, p0, Lcom/vungle/publisher/we;->b:Lcom/vungle/publisher/vz;

    iget-object v1, p0, Lcom/vungle/publisher/we;->e:Lcom/vungle/publisher/wi;

    iget-object v2, p0, Lcom/vungle/publisher/we;->a:Lcom/vungle/publisher/vs;

    .line 64
    invoke-virtual {v1, v2}, Lcom/vungle/publisher/wi;->a(Lcom/vungle/publisher/vs;)Lcom/vungle/publisher/vy;

    move-result-object v1

    .line 62
    invoke-virtual {v0, p0, v1}, Lcom/vungle/publisher/vz;->b(Lcom/vungle/publisher/we;Lcom/vungle/publisher/vy;)V

    .line 65
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vungle/publisher/we;->a:Lcom/vungle/publisher/vs;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/publisher/we;->c:Lcom/vungle/publisher/xk;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
