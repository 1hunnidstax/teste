.class final Lcom/vungle/publisher/a$b;
.super Lcom/vungle/publisher/qe;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field final a:Ljava/lang/String;

.field b:Lcom/vungle/publisher/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/gm$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 349
    invoke-direct {p0}, Lcom/vungle/publisher/qe;-><init>()V

    .line 341
    const-string v0, "VunglePrepare"

    iput-object v0, p0, Lcom/vungle/publisher/a$b;->a:Ljava/lang/String;

    .line 349
    return-void
.end method


# virtual methods
.method public final onEvent(Lcom/vungle/publisher/ae;)V
    .locals 2

    .prologue
    .line 362
    const-string v0, "VunglePrepare"

    const-string v1, "sent ad report - unregistering play ad listener"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    invoke-virtual {p0}, Lcom/vungle/publisher/a$b;->unregister()V

    .line 364
    return-void
.end method

.method public final onEvent(Lcom/vungle/publisher/aq;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/aq",
            "<",
            "Lcom/vungle/publisher/cj;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 353
    .local p1, "startPlayAdEvent":Lcom/vungle/publisher/aq;, "Lcom/vungle/publisher/aq<Lcom/vungle/publisher/cj;>;"
    :try_start_0
    invoke-virtual {p1}, Lcom/vungle/publisher/aq;->a()Lcom/vungle/publisher/cj;

    move-result-object v0

    .line 354
    sget-object v1, Lcom/vungle/publisher/cj$c;->f:Lcom/vungle/publisher/cj$c;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/cj;->b(Lcom/vungle/publisher/cj$c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 359
    :goto_0
    return-void

    .line 356
    :catch_0
    move-exception v0

    .line 357
    iget-object v1, p0, Lcom/vungle/publisher/a$b;->c:Lcom/vungle/publisher/gm$a;

    const-string v2, "VunglePrepare"

    const-string v3, "error processing start play ad event"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/gm$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onEvent(Lcom/vungle/publisher/bh;)V
    .locals 2

    .prologue
    .line 367
    const-string v0, "VunglePrepare"

    const-string v1, "play ad failure - unregistering play ad listener"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    invoke-virtual {p0}, Lcom/vungle/publisher/a$b;->unregister()V

    .line 369
    return-void
.end method
