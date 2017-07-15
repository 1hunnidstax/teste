.class public final Lcom/vungle/publisher/afy;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/ql;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public b:Lcom/vungle/publisher/cq$b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public c:Lcom/vungle/publisher/fj$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/vungle/publisher/kn$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/vungle/publisher/hd$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public f:Lcom/vungle/publisher/yc;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public g:Lcom/vungle/publisher/py;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field h:Lcom/vungle/publisher/if$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field i:Lcom/vungle/publisher/gm$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 8

    .prologue
    .line 89
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/afy;->b:Lcom/vungle/publisher/cq$b;

    invoke-virtual {v0}, Lcom/vungle/publisher/cq$b;->a()Ljava/util/List;

    move-result-object v0

    .line 90
    const-string v1, "VungleReport"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "sending "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ad reports"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/cq;

    .line 92
    invoke-virtual {v0}, Lcom/vungle/publisher/cq;->z()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :try_start_1
    const-string v1, "VungleReport"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "sending "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/vungle/publisher/afy;->f:Lcom/vungle/publisher/yc;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/yc;->a(Lcom/vungle/publisher/cq;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    iget-object v4, p0, Lcom/vungle/publisher/afy;->i:Lcom/vungle/publisher/gm$a;

    const-string v5, "VungleReport"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "error sending "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v5, v3, v1}, Lcom/vungle/publisher/gm$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object v1, Lcom/vungle/publisher/cq$c;->b:Lcom/vungle/publisher/cq$c;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/cq;->a(Lcom/vungle/publisher/cq$c;)V

    invoke-virtual {v0}, Lcom/vungle/publisher/cq;->b_()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 96
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/vungle/publisher/afy;->a:Lcom/vungle/publisher/ql;

    new-instance v2, Lcom/vungle/publisher/ae;

    invoke-direct {v2}, Lcom/vungle/publisher/ae;-><init>()V

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/afy;->a:Lcom/vungle/publisher/ql;

    new-instance v1, Lcom/vungle/publisher/ae;

    invoke-direct {v1}, Lcom/vungle/publisher/ae;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V

    .line 97
    return-void
.end method
