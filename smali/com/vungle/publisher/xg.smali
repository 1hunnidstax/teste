.class public final Lcom/vungle/publisher/xg;
.super Lcom/vungle/publisher/we$a;
.source "vungle"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/wx$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/xb$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/vungle/publisher/we$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)Lcom/vungle/publisher/we;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/gm;",
            ">;)",
            "Lcom/vungle/publisher/we;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vungle/publisher/xg;->a:Lcom/vungle/publisher/wx$a;

    .line 25
    invoke-virtual {v0, p1}, Lcom/vungle/publisher/wx$a;->a(Ljava/util/List;)Lcom/vungle/publisher/wx;

    move-result-object v1

    iget-object v0, p0, Lcom/vungle/publisher/xg;->b:Lcom/vungle/publisher/xb$a;

    .line 26
    iget-object v0, v0, Lcom/vungle/publisher/xb$a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/xb;

    iput-object p1, v0, Lcom/vungle/publisher/xb;->a:Ljava/util/List;

    .line 24
    invoke-super {p0, v1, v0}, Lcom/vungle/publisher/we$a;->a(Lcom/vungle/publisher/vs;Lcom/vungle/publisher/vz;)Lcom/vungle/publisher/we;

    move-result-object v0

    return-object v0
.end method
