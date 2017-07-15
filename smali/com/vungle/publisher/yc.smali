.class public final Lcom/vungle/publisher/yc;
.super Lcom/vungle/publisher/vr;
.source "vungle"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/ql;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy",
            "<",
            "Lcom/vungle/publisher/py;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/ym;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/vungle/publisher/zn;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/vungle/publisher/zz;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcom/vungle/publisher/aaf;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Lcom/vungle/publisher/aal;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field h:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy",
            "<",
            "Lcom/vungle/publisher/aau;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field i:Lcom/vungle/publisher/aba;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field j:Lcom/vungle/publisher/gm$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected k:Lcom/vungle/publisher/bt;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/vungle/publisher/vr;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/vungle/publisher/yc;->k:Lcom/vungle/publisher/bt;

    new-instance v1, Lcom/vungle/publisher/yc$2;

    invoke-direct {v1, p0}, Lcom/vungle/publisher/yc$2;-><init>(Lcom/vungle/publisher/yc;)V

    sget-object v2, Lcom/vungle/publisher/bt$b;->j:Lcom/vungle/publisher/bt$b;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/bt;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/bt$b;)V

    .line 105
    return-void
.end method

.method public final a(J)V
    .locals 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/vungle/publisher/yc;->k:Lcom/vungle/publisher/bt;

    new-instance v1, Lcom/vungle/publisher/yc$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/vungle/publisher/yc$5;-><init>(Lcom/vungle/publisher/yc;J)V

    sget-object v2, Lcom/vungle/publisher/bt$b;->m:Lcom/vungle/publisher/bt$b;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/bt;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/bt$b;)V

    .line 179
    return-void
.end method

.method public final a(JJ)V
    .locals 7

    .prologue
    .line 141
    iget-object v6, p0, Lcom/vungle/publisher/yc;->k:Lcom/vungle/publisher/bt;

    new-instance v0, Lcom/vungle/publisher/yc$4;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/vungle/publisher/yc$4;-><init>(Lcom/vungle/publisher/yc;JJ)V

    sget-object v1, Lcom/vungle/publisher/bt$b;->l:Lcom/vungle/publisher/bt$b;

    invoke-virtual {v6, v0, v1}, Lcom/vungle/publisher/bt;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/bt$b;)V

    .line 155
    return-void
.end method

.method public final a(Lcom/vungle/publisher/cq;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/cq",
            "<****>;)V"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/vungle/publisher/yc;->k:Lcom/vungle/publisher/bt;

    new-instance v1, Lcom/vungle/publisher/yc$1;

    invoke-direct {v1, p0, p1}, Lcom/vungle/publisher/yc$1;-><init>(Lcom/vungle/publisher/yc;Lcom/vungle/publisher/cq;)V

    sget-object v2, Lcom/vungle/publisher/bt$b;->d:Lcom/vungle/publisher/bt$b;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/bt;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/bt$b;)V

    .line 89
    return-void
.end method

.method public final a(Lcom/vungle/publisher/xk;)V
    .locals 6

    .prologue
    .line 187
    iget-object v0, p0, Lcom/vungle/publisher/yc;->k:Lcom/vungle/publisher/bt;

    new-instance v1, Lcom/vungle/publisher/yc$6;

    invoke-direct {v1, p0, p1}, Lcom/vungle/publisher/yc$6;-><init>(Lcom/vungle/publisher/yc;Lcom/vungle/publisher/xk;)V

    sget-object v2, Lcom/vungle/publisher/bt$b;->e:Lcom/vungle/publisher/bt$b;

    .line 201
    iget v3, p1, Lcom/vungle/publisher/xk;->b:I

    const/16 v4, 0x1388

    const v5, 0x493e0

    invoke-static {v3, v4, v5}, Lcom/vungle/publisher/agv;->a(III)I

    move-result v3

    int-to-long v4, v3

    .line 187
    invoke-virtual {v0, v1, v2, v4, v5}, Lcom/vungle/publisher/bt;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/bt$b;J)V

    .line 202
    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/vungle/publisher/p;)V
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/vungle/publisher/yc;->k:Lcom/vungle/publisher/bt;

    new-instance v1, Lcom/vungle/publisher/yc$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/vungle/publisher/yc$3;-><init>(Lcom/vungle/publisher/yc;Ljava/lang/String;Lcom/vungle/publisher/p;)V

    sget-object v2, Lcom/vungle/publisher/bt$b;->c:Lcom/vungle/publisher/bt$b;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/bt;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/bt$b;)V

    .line 127
    return-void
.end method

.method final b()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/vungle/publisher/yc;->a:Lcom/vungle/publisher/ql;

    new-instance v1, Lcom/vungle/publisher/af;

    invoke-direct {v1}, Lcom/vungle/publisher/af;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V

    .line 131
    return-void
.end method

.method public final c()V
    .locals 3

    .prologue
    .line 209
    iget-object v0, p0, Lcom/vungle/publisher/yc;->k:Lcom/vungle/publisher/bt;

    new-instance v1, Lcom/vungle/publisher/yc$7;

    invoke-direct {v1, p0}, Lcom/vungle/publisher/yc$7;-><init>(Lcom/vungle/publisher/yc;)V

    sget-object v2, Lcom/vungle/publisher/bt$b;->n:Lcom/vungle/publisher/bt$b;

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/bt;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/bt$b;)V

    .line 222
    return-void
.end method
