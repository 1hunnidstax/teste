.class final Lcom/vungle/publisher/yg$b$1;
.super Lcom/vungle/publisher/o;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/yg$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/o",
        "<",
        "Lcom/vungle/publisher/yg",
        "<**>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/cq;

.field final synthetic b:Lcom/vungle/publisher/yg$b;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/yg$b;Lcom/vungle/publisher/cq;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/vungle/publisher/yg$b$1;->b:Lcom/vungle/publisher/yg$b;

    iput-object p2, p0, Lcom/vungle/publisher/yg$b$1;->a:Lcom/vungle/publisher/cq;

    invoke-direct {p0}, Lcom/vungle/publisher/o;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vungle/publisher/yg$b$1;->b:Lcom/vungle/publisher/yg$b;

    iget-object v1, v0, Lcom/vungle/publisher/yg$b;->a:Lcom/vungle/publisher/yp$a;

    iget-object v0, p0, Lcom/vungle/publisher/yg$b$1;->a:Lcom/vungle/publisher/cq;

    check-cast v0, Lcom/vungle/publisher/fj;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/yp$a;->a(Lcom/vungle/publisher/cq;)Lcom/vungle/publisher/yg;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic b()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vungle/publisher/yg$b$1;->b:Lcom/vungle/publisher/yg$b;

    iget-object v1, v0, Lcom/vungle/publisher/yg$b;->b:Lcom/vungle/publisher/yv$a;

    iget-object v0, p0, Lcom/vungle/publisher/yg$b$1;->a:Lcom/vungle/publisher/cq;

    check-cast v0, Lcom/vungle/publisher/if;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/yv$a;->a(Lcom/vungle/publisher/cq;)Lcom/vungle/publisher/yg;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic c()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vungle/publisher/yg$b$1;->b:Lcom/vungle/publisher/yg$b;

    iget-object v1, v0, Lcom/vungle/publisher/yg$b;->c:Lcom/vungle/publisher/yy$a;

    iget-object v0, p0, Lcom/vungle/publisher/yg$b$1;->a:Lcom/vungle/publisher/cq;

    check-cast v0, Lcom/vungle/publisher/kn;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/yy$a;->a(Lcom/vungle/publisher/cq;)Lcom/vungle/publisher/yg;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic d()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/vungle/publisher/yg$b$1;->b:Lcom/vungle/publisher/yg$b;

    iget-object v1, v0, Lcom/vungle/publisher/yg$b;->d:Lcom/vungle/publisher/ys$a;

    iget-object v0, p0, Lcom/vungle/publisher/yg$b$1;->a:Lcom/vungle/publisher/cq;

    check-cast v0, Lcom/vungle/publisher/hd;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/ys$a;->a(Lcom/vungle/publisher/cq;)Lcom/vungle/publisher/yg;

    move-result-object v0

    return-object v0
.end method
