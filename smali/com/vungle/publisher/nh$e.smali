.class final Lcom/vungle/publisher/nh$e;
.super Lcom/vungle/publisher/nh$d;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/nh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/nh$d",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/nh;


# direct methods
.method public constructor <init>(Lcom/vungle/publisher/nh;Ljava/lang/Integer;I)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/vungle/publisher/nh$e;->a:Lcom/vungle/publisher/nh;

    .line 285
    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/publisher/nh$d;-><init>(Lcom/vungle/publisher/nh;Ljava/lang/Object;I)V

    .line 286
    return-void
.end method


# virtual methods
.method final a()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/vungle/publisher/nh$e;->a:Lcom/vungle/publisher/nh;

    iget-object v0, v0, Lcom/vungle/publisher/nh;->o:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 282
    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/vungle/publisher/nh$e;->a:Lcom/vungle/publisher/nh;

    iget-object v0, v0, Lcom/vungle/publisher/nh;->q:Lcom/vungle/publisher/og;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/og;->setVisibility(I)V

    return-void
.end method
