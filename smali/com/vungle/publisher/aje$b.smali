.class final Lcom/vungle/publisher/aje$b;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ahr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/aje;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lcom/vungle/publisher/ahr;"
    }
.end annotation


# instance fields
.field final a:Lcom/vungle/publisher/aje$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/aje$a",
            "<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/aje$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/aje$a",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 156
    iput-object p1, p0, Lcom/vungle/publisher/aje$b;->a:Lcom/vungle/publisher/aje$a;

    .line 157
    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 1

    .prologue
    .line 161
    invoke-static {p0, p1, p2}, Lcom/vungle/publisher/aim;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 163
    iget-object v0, p0, Lcom/vungle/publisher/aje$b;->a:Lcom/vungle/publisher/aje$a;

    invoke-virtual {v0}, Lcom/vungle/publisher/aje$a;->a()V

    .line 164
    return-void
.end method
