.class final Lcom/vungle/publisher/op$4;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/mz$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/op;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/op;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/op;)V
    .locals 0

    .prologue
    .line 620
    iput-object p1, p0, Lcom/vungle/publisher/op$4;->a:Lcom/vungle/publisher/op;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private d()V
    .locals 2

    .prologue
    .line 639
    iget-object v0, p0, Lcom/vungle/publisher/op$4;->a:Lcom/vungle/publisher/op;

    invoke-virtual {v0}, Lcom/vungle/publisher/op;->onResume()V

    .line 640
    iget-object v0, p0, Lcom/vungle/publisher/op$4;->a:Lcom/vungle/publisher/op;

    invoke-static {v0}, Lcom/vungle/publisher/op;->d(Lcom/vungle/publisher/op;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 641
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .prologue
    .line 624
    invoke-direct {p0}, Lcom/vungle/publisher/op$4;->d()V

    .line 625
    return-void
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 629
    const-string v0, "VungleAd"

    const-string v1, "cancel video"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 630
    iget-object v0, p0, Lcom/vungle/publisher/op$4;->a:Lcom/vungle/publisher/op;

    invoke-static {v0}, Lcom/vungle/publisher/op;->c(Lcom/vungle/publisher/op;)V

    .line 631
    return-void
.end method

.method public final c()V
    .locals 0

    .prologue
    .line 635
    invoke-direct {p0}, Lcom/vungle/publisher/op$4;->d()V

    .line 636
    return-void
.end method
