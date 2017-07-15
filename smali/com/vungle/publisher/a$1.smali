.class final Lcom/vungle/publisher/a$1;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ahq;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/a;->a(Lcom/vungle/publisher/ahp;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vungle/publisher/ahq",
        "<",
        "Lcom/vungle/publisher/dn",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/a;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/a;)V
    .locals 0

    .prologue
    .line 156
    iput-object p1, p0, Lcom/vungle/publisher/a$1;->a:Lcom/vungle/publisher/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 159
    const-string v0, "VunglePrepare"

    const-string v1, "ad observable onComplete"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/vungle/publisher/a$1;->a:Lcom/vungle/publisher/a;

    iget-object v0, v0, Lcom/vungle/publisher/a;->a:Lcom/vungle/publisher/py;

    invoke-virtual {v0}, Lcom/vungle/publisher/py;->a()V

    .line 161
    iget-object v0, p0, Lcom/vungle/publisher/a$1;->a:Lcom/vungle/publisher/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/a;->b(Z)V

    .line 162
    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 156
    const-string v0, "VunglePrepare"

    const-string v1, "ad observable onNext"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vungle/publisher/a$1;->a:Lcom/vungle/publisher/a;

    iget-object v0, v0, Lcom/vungle/publisher/a;->d:Lcom/vungle/publisher/ql;

    new-instance v1, Lcom/vungle/publisher/ag;

    invoke-direct {v1}, Lcom/vungle/publisher/ag;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 166
    const-string v0, "VunglePrepare"

    const-string v1, "ad observable onError"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/vungle/publisher/a$1;->a:Lcom/vungle/publisher/a;

    iget-object v0, v0, Lcom/vungle/publisher/a;->a:Lcom/vungle/publisher/py;

    invoke-virtual {v0}, Lcom/vungle/publisher/py;->a()V

    .line 168
    iget-object v0, p0, Lcom/vungle/publisher/a$1;->a:Lcom/vungle/publisher/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/a;->b(Z)V

    .line 169
    return-void
.end method
