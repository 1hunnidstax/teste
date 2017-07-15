.class public final Lcom/vungle/publisher/xo;
.super Lcom/vungle/publisher/we$a;
.source "vungle"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/xl$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy",
            "<",
            "Lcom/vungle/publisher/vf;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy",
            "<",
            "Lcom/vungle/publisher/vo;",
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
    .line 25
    invoke-direct {p0}, Lcom/vungle/publisher/we$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/vungle/publisher/cj;Lcom/vungle/publisher/ji;Ljava/lang/String;)Lcom/vungle/publisher/we;
    .locals 2

    .prologue
    .line 29
    invoke-interface {p2}, Lcom/vungle/publisher/ji;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/vungle/publisher/xo;->b:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/vz;

    move-object v1, v0

    .line 38
    :goto_0
    iget-object v0, p0, Lcom/vungle/publisher/xo;->a:Lcom/vungle/publisher/xl$a;

    invoke-virtual {v0}, Lcom/vungle/publisher/xl$a;->c()Lcom/vungle/publisher/vs;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/xl;

    iput-object p1, v0, Lcom/vungle/publisher/xl;->e:Lcom/vungle/publisher/cj;

    iput-object p2, v0, Lcom/vungle/publisher/xl;->f:Lcom/vungle/publisher/ji;

    iput-object p3, v0, Lcom/vungle/publisher/vs;->b:Ljava/lang/String;

    invoke-super {p0, v0, v1}, Lcom/vungle/publisher/we$a;->a(Lcom/vungle/publisher/vs;Lcom/vungle/publisher/vz;)Lcom/vungle/publisher/we;

    move-result-object v0

    return-object v0

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/xo;->d:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/vz;

    move-object v1, v0

    goto :goto_0
.end method
