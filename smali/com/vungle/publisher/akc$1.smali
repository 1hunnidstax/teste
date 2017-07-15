.class final Lcom/vungle/publisher/akc$1;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/aii;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/akc;->a(Lcom/vungle/publisher/ahs;)Lcom/vungle/publisher/ahp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vungle/publisher/aii",
        "<",
        "Lcom/vungle/publisher/aie;",
        "Lcom/vungle/publisher/ahv;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/ajj;

.field final synthetic b:Lcom/vungle/publisher/akc;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/akc;Lcom/vungle/publisher/ajj;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/vungle/publisher/akc$1;->b:Lcom/vungle/publisher/akc;

    iput-object p2, p0, Lcom/vungle/publisher/akc$1;->a:Lcom/vungle/publisher/ajj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 99
    check-cast p1, Lcom/vungle/publisher/aie;

    iget-object v0, p0, Lcom/vungle/publisher/akc$1;->a:Lcom/vungle/publisher/ajj;

    iget-object v0, v0, Lcom/vungle/publisher/ajj;->f:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ajj$b;

    invoke-virtual {v0}, Lcom/vungle/publisher/ajj$b;->a()Lcom/vungle/publisher/ajj$c;

    move-result-object v0

    const-wide/16 v2, -0x1

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, v2, v3, v1}, Lcom/vungle/publisher/ajj$c;->b(Lcom/vungle/publisher/aie;JLjava/util/concurrent/TimeUnit;)Lcom/vungle/publisher/ajp;

    move-result-object v0

    return-object v0
.end method
