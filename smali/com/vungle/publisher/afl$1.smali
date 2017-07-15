.class final Lcom/vungle/publisher/afl$1;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/aif;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/afl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vungle/publisher/aif",
        "<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/gg;

.field final synthetic b:Lcom/vungle/publisher/afl;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/afl;Lcom/vungle/publisher/gg;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/vungle/publisher/afl$1;->b:Lcom/vungle/publisher/afl;

    iput-object p2, p0, Lcom/vungle/publisher/afl$1;->a:Lcom/vungle/publisher/gg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 71
    const-string v0, "VunglePrepare"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "viewable prep error, update status to failed for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vungle/publisher/afl$1;->a:Lcom/vungle/publisher/gg;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vungle/publisher/afl$1;->a:Lcom/vungle/publisher/gg;

    sget-object v1, Lcom/vungle/publisher/el$a;->d:Lcom/vungle/publisher/el$a;

    invoke-interface {v0, v1}, Lcom/vungle/publisher/gg;->b(Lcom/vungle/publisher/el$a;)V

    return-void
.end method
