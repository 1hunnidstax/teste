.class public final Lcom/vungle/publisher/yj;
.super Lcom/vungle/publisher/wq;
.source "vungle"


# instance fields
.field protected a:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy",
            "<",
            "Lcom/vungle/publisher/afy;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/vungle/publisher/wq;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Lcom/vungle/publisher/we;Lcom/vungle/publisher/vy;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p1, Lcom/vungle/publisher/we;->a:Lcom/vungle/publisher/vs;

    check-cast v0, Lcom/vungle/publisher/yg;

    .line 26
    iget-object v1, p0, Lcom/vungle/publisher/yj;->a:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/publisher/afy;

    .line 27
    iget-object v2, v0, Lcom/vungle/publisher/yg;->f:Ljava/lang/Integer;

    const-string v3, "VungleReport"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "deleting report "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v1, Lcom/vungle/publisher/afy;->c:Lcom/vungle/publisher/fj$a;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Integer;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v1, v3}, Lcom/vungle/publisher/fj$a;->a([Ljava/lang/Object;)I

    .line 29
    iget-object v0, v0, Lcom/vungle/publisher/yg;->e:Lcom/vungle/publisher/cj;

    .line 30
    invoke-virtual {v0}, Lcom/vungle/publisher/cj;->o()Z

    .line 31
    return-void
.end method
