.class public final Lcom/vungle/publisher/zn;
.super Lcom/vungle/publisher/we$a;
.source "vungle"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/zg$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/zk;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/vungle/publisher/we$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/vungle/publisher/we;
    .locals 2

    .prologue
    .line 19
    iget-object v0, p0, Lcom/vungle/publisher/zn;->a:Lcom/vungle/publisher/zg$a;

    invoke-virtual {v0}, Lcom/vungle/publisher/zg$a;->d()Lcom/vungle/publisher/zg;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/publisher/zn;->b:Lcom/vungle/publisher/zk;

    invoke-super {p0, v0, v1}, Lcom/vungle/publisher/we$a;->a(Lcom/vungle/publisher/vs;Lcom/vungle/publisher/vz;)Lcom/vungle/publisher/we;

    move-result-object v0

    return-object v0
.end method
