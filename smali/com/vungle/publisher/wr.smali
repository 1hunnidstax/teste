.class public final Lcom/vungle/publisher/wr;
.super Lcom/vungle/publisher/vr;
.source "vungle"


# instance fields
.field a:Lcom/vungle/publisher/xg;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/vc;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/gm$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected d:Lcom/vungle/publisher/bt;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/vungle/publisher/vr;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/vungle/publisher/ly;)V
    .locals 3

    .prologue
    .line 47
    iget-object v0, p0, Lcom/vungle/publisher/wr;->d:Lcom/vungle/publisher/bt;

    new-instance v1, Lcom/vungle/publisher/wr$2;

    invoke-direct {v1, p0, p1}, Lcom/vungle/publisher/wr$2;-><init>(Lcom/vungle/publisher/wr;Lcom/vungle/publisher/ly;)V

    sget-object v2, Lcom/vungle/publisher/bt$b;->s:Lcom/vungle/publisher/bt$b;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/bt;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/bt$b;)V

    .line 60
    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/gm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    iget-object v0, p0, Lcom/vungle/publisher/wr;->d:Lcom/vungle/publisher/bt;

    new-instance v1, Lcom/vungle/publisher/wr$1;

    invoke-direct {v1, p0, p1}, Lcom/vungle/publisher/wr$1;-><init>(Lcom/vungle/publisher/wr;Ljava/util/List;)V

    sget-object v2, Lcom/vungle/publisher/bt$b;->t:Lcom/vungle/publisher/bt$b;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/bt;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/bt$b;)V

    .line 44
    return-void
.end method
