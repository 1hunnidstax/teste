.class public final Lcom/vungle/publisher/ym;
.super Lcom/vungle/publisher/we$a;
.source "vungle"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/yg$b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/yj;",
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
    .line 24
    invoke-direct {p0}, Lcom/vungle/publisher/we$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/vungle/publisher/cq;)Lcom/vungle/publisher/we;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/cq",
            "<****>;)",
            "Lcom/vungle/publisher/we;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 27
    iget-object v0, p0, Lcom/vungle/publisher/ym;->a:Lcom/vungle/publisher/yg$b;

    invoke-virtual {p1}, Lcom/vungle/publisher/cq;->b()Lcom/vungle/publisher/cq$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/vungle/publisher/cq$a;->f()Lcom/vungle/publisher/j;

    move-result-object v1

    new-instance v2, Lcom/vungle/publisher/yg$b$1;

    invoke-direct {v2, v0, p1}, Lcom/vungle/publisher/yg$b$1;-><init>(Lcom/vungle/publisher/yg$b;Lcom/vungle/publisher/cq;)V

    invoke-virtual {v2, v1}, Lcom/vungle/publisher/yg$b$1;->a(Lcom/vungle/publisher/j;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/yg;

    iget-object v1, p0, Lcom/vungle/publisher/ym;->b:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/publisher/vz;

    invoke-super {p0, v0, v1}, Lcom/vungle/publisher/we$a;->a(Lcom/vungle/publisher/vs;Lcom/vungle/publisher/vz;)Lcom/vungle/publisher/we;

    move-result-object v0

    return-object v0
.end method
