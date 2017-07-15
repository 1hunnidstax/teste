.class final Lcom/vungle/publisher/nh$c;
.super Lcom/vungle/publisher/nh$d;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/nh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/nh$d",
        "<",
        "Lcom/vungle/publisher/te$b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/nh;


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/nh;Lcom/vungle/publisher/te$b;I)V
    .locals 0

    .prologue
    .line 267
    iput-object p1, p0, Lcom/vungle/publisher/nh$c;->a:Lcom/vungle/publisher/nh;

    .line 268
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/publisher/nh$d;-><init>(Lcom/vungle/publisher/nh;Ljava/lang/Object;I)V

    .line 269
    return-void
.end method


# virtual methods
.method final a()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/vungle/publisher/nh$c;->a:Lcom/vungle/publisher/nh;

    iget-object v0, v0, Lcom/vungle/publisher/nh;->n:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method final synthetic a(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 265
    check-cast p1, Lcom/vungle/publisher/te$b;

    iget-object v0, p0, Lcom/vungle/publisher/nh$c;->a:Lcom/vungle/publisher/nh;

    iget-object v0, v0, Lcom/vungle/publisher/nh;->p:Lcom/vungle/publisher/te;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/te;->setCloseVisibility(Lcom/vungle/publisher/te$b;)V

    return-void
.end method
