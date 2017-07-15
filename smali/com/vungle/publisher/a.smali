.class public final Lcom/vungle/publisher/a;
.super Lcom/vungle/publisher/qe;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/a$c;,
        Lcom/vungle/publisher/a$a;,
        Lcom/vungle/publisher/a$b;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/py;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/pn;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/vungle/publisher/ql;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Ljava/lang/Class;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Ljava/lang/Class;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public g:Lcom/vungle/publisher/bt;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field h:Lcom/vungle/publisher/uq;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field i:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy",
            "<",
            "Lcom/vungle/publisher/a$b;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public j:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy",
            "<",
            "Lcom/vungle/publisher/a$a;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field k:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/a$c;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field l:Lcom/vungle/publisher/yc;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field m:Lcom/vungle/publisher/pv;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field n:Lcom/vungle/publisher/hu$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field o:Lcom/vungle/publisher/jp$b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field p:Lcom/vungle/publisher/q;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field q:Lcom/vungle/publisher/pp;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field r:Lcom/vungle/publisher/gm$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field s:Lcom/vungle/publisher/cj$b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field t:Lcom/vungle/publisher/dx$b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field u:Lcom/vungle/publisher/aff;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0}, Lcom/vungle/publisher/qe;-><init>()V

    return-void
.end method

.method private a(Lcom/vungle/publisher/ahp;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/ahp",
            "<",
            "Lcom/vungle/publisher/dn",
            "<*>;>;)V"
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lcom/vungle/publisher/a;->a:Lcom/vungle/publisher/py;

    iget-object v0, v0, Lcom/vungle/publisher/py;->o:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    new-instance v0, Lcom/vungle/publisher/a$1;

    invoke-direct {v0, p0}, Lcom/vungle/publisher/a$1;-><init>(Lcom/vungle/publisher/a;)V

    instance-of v1, v0, Lcom/vungle/publisher/ahu;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/vungle/publisher/ahu;

    invoke-static {v0, p1}, Lcom/vungle/publisher/ahp;->a(Lcom/vungle/publisher/ahu;Lcom/vungle/publisher/ahp;)Lcom/vungle/publisher/ahv;

    .line 178
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    new-instance v1, Lcom/vungle/publisher/ajy;

    invoke-direct {v1, v0}, Lcom/vungle/publisher/ajy;-><init>(Lcom/vungle/publisher/ahq;)V

    invoke-static {v1, p1}, Lcom/vungle/publisher/ahp;->a(Lcom/vungle/publisher/ahu;Lcom/vungle/publisher/ahp;)Lcom/vungle/publisher/ahv;

    goto :goto_0
.end method


# virtual methods
.method final a(Z)Lcom/vungle/publisher/dn;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/vungle/publisher/dn",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 181
    .line 183
    iget-object v1, p0, Lcom/vungle/publisher/a;->c:Lcom/vungle/publisher/pn;

    invoke-interface {v1}, Lcom/vungle/publisher/pn;->o()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 184
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/vungle/publisher/a;->t:Lcom/vungle/publisher/dx$b;

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/vungle/publisher/cj$c;

    const/4 v3, 0x0

    sget-object v4, Lcom/vungle/publisher/cj$c;->e:Lcom/vungle/publisher/cj$c;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/vungle/publisher/cj$c;->d:Lcom/vungle/publisher/cj$c;

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/dx$b;->a([Lcom/vungle/publisher/cj$c;)Lcom/vungle/publisher/dn;

    move-result-object v1

    .line 186
    :goto_0
    if-nez v1, :cond_2

    .line 187
    const-string v0, "VunglePrepare"

    const-string v2, "no local ad available"

    invoke-static {v0, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v2, p0, Lcom/vungle/publisher/a;->u:Lcom/vungle/publisher/aff;

    new-instance v0, Lcom/vungle/publisher/aff$1;

    invoke-direct {v0, v2}, Lcom/vungle/publisher/aff$1;-><init>(Lcom/vungle/publisher/aff;)V

    new-instance v3, Lcom/vungle/publisher/aip;

    invoke-direct {v3, v0}, Lcom/vungle/publisher/aip;-><init>(Lcom/vungle/publisher/aih;)V

    invoke-static {v3}, Lcom/vungle/publisher/ahp;->a(Lcom/vungle/publisher/ahp$a;)Lcom/vungle/publisher/ahp;

    move-result-object v0

    invoke-static {}, Lcom/vungle/publisher/alw;->c()Lcom/vungle/publisher/ahs;

    move-result-object v3

    instance-of v4, v0, Lcom/vungle/publisher/akc;

    if-eqz v4, :cond_1

    check-cast v0, Lcom/vungle/publisher/akc;

    invoke-virtual {v0, v3}, Lcom/vungle/publisher/akc;->a(Lcom/vungle/publisher/ahs;)Lcom/vungle/publisher/ahp;

    move-result-object v0

    :goto_1
    iget-object v3, v2, Lcom/vungle/publisher/aff;->c:Lcom/vungle/publisher/xz;

    invoke-virtual {v0, v3}, Lcom/vungle/publisher/ahp;->a(Lcom/vungle/publisher/aii;)Lcom/vungle/publisher/ahp;

    move-result-object v0

    iget-object v3, v2, Lcom/vungle/publisher/aff;->e:Lcom/vungle/publisher/xw;

    invoke-virtual {v0, v3}, Lcom/vungle/publisher/ahp;->a(Lcom/vungle/publisher/aii;)Lcom/vungle/publisher/ahp;

    move-result-object v0

    iget-object v3, v2, Lcom/vungle/publisher/aff;->f:Lcom/vungle/publisher/xt;

    invoke-virtual {v0, v3}, Lcom/vungle/publisher/ahp;->a(Lcom/vungle/publisher/aii;)Lcom/vungle/publisher/ahp;

    move-result-object v0

    iget-object v3, v2, Lcom/vungle/publisher/aff;->g:Lcom/vungle/publisher/afq$a;

    invoke-virtual {v0, v3}, Lcom/vungle/publisher/ahp;->b(Lcom/vungle/publisher/aif;)Lcom/vungle/publisher/ahp;

    move-result-object v0

    iget-object v3, v2, Lcom/vungle/publisher/aff;->h:Lcom/vungle/publisher/aft$b;

    invoke-virtual {v0, v3}, Lcom/vungle/publisher/ahp;->a(Lcom/vungle/publisher/aii;)Lcom/vungle/publisher/ahp;

    move-result-object v0

    iget-object v3, v2, Lcom/vungle/publisher/aff;->i:Lcom/vungle/publisher/aft$a;

    new-instance v4, Lcom/vungle/publisher/air;

    invoke-direct {v4, v0, v3}, Lcom/vungle/publisher/air;-><init>(Lcom/vungle/publisher/ahp;Lcom/vungle/publisher/aii;)V

    invoke-static {v4}, Lcom/vungle/publisher/ahp;->a(Lcom/vungle/publisher/ahp$a;)Lcom/vungle/publisher/ahp;

    move-result-object v0

    iget-object v3, v2, Lcom/vungle/publisher/aff;->j:Lcom/vungle/publisher/afc;

    invoke-virtual {v0, v3}, Lcom/vungle/publisher/ahp;->a(Lcom/vungle/publisher/aii;)Lcom/vungle/publisher/ahp;

    move-result-object v0

    iget-object v3, v2, Lcom/vungle/publisher/aff;->d:Lcom/vungle/publisher/afi;

    invoke-virtual {v0, v3}, Lcom/vungle/publisher/ahp;->a(Lcom/vungle/publisher/aii;)Lcom/vungle/publisher/ahp;

    move-result-object v0

    iget-object v2, v2, Lcom/vungle/publisher/aff;->l:Lcom/vungle/publisher/afo;

    const-string v3, "ad prep chain failure"

    const/16 v4, 0x64

    invoke-virtual {v2, v4, v3}, Lcom/vungle/publisher/afo;->a(ILjava/lang/String;)Lcom/vungle/publisher/aii;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/vungle/publisher/ahp;->c(Lcom/vungle/publisher/aii;)Lcom/vungle/publisher/ahp;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/vungle/publisher/a;->a(Lcom/vungle/publisher/ahp;)V

    move-object v0, v1

    .line 207
    :goto_2
    return-object v0

    .line 184
    :cond_0
    iget-object v1, p0, Lcom/vungle/publisher/a;->t:Lcom/vungle/publisher/dx$b;

    .line 185
    invoke-virtual {v1}, Lcom/vungle/publisher/dx$b;->b()Lcom/vungle/publisher/dn;

    move-result-object v1

    goto :goto_0

    .line 188
    :cond_1
    new-instance v4, Lcom/vungle/publisher/ajd;

    invoke-direct {v4, v0, v3}, Lcom/vungle/publisher/ajd;-><init>(Lcom/vungle/publisher/ahp;Lcom/vungle/publisher/ahs;)V

    invoke-static {v4}, Lcom/vungle/publisher/ahp;->a(Lcom/vungle/publisher/ahp$a;)Lcom/vungle/publisher/ahp;

    move-result-object v0

    goto :goto_1

    .line 190
    :cond_2
    invoke-interface {v1}, Lcom/vungle/publisher/dn;->g()Lcom/vungle/publisher/cj$c;

    move-result-object v2

    .line 191
    sget-object v3, Lcom/vungle/publisher/cj$c;->d:Lcom/vungle/publisher/cj$c;

    if-ne v2, v3, :cond_4

    .line 192
    if-eqz p1, :cond_3

    .line 193
    const-string v2, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "local ad partially prepared, restarting preparation for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/vungle/publisher/dn;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    iget-object v2, p0, Lcom/vungle/publisher/a;->u:Lcom/vungle/publisher/aff;

    invoke-static {v1}, Lcom/vungle/publisher/akc;->a(Ljava/lang/Object;)Lcom/vungle/publisher/akc;

    move-result-object v1

    iget-object v2, v2, Lcom/vungle/publisher/aff;->d:Lcom/vungle/publisher/afi;

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/ahp;->a(Lcom/vungle/publisher/aii;)Lcom/vungle/publisher/ahp;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/vungle/publisher/a;->a(Lcom/vungle/publisher/ahp;)V

    goto :goto_2

    .line 196
    :cond_3
    const-string v2, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "local ad partially prepared, but not restarting preparation for "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/vungle/publisher/dn;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 199
    :cond_4
    sget-object v0, Lcom/vungle/publisher/cj$c;->e:Lcom/vungle/publisher/cj$c;

    if-ne v2, v0, :cond_5

    .line 200
    const-string v0, "VunglePrepare"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "local ad already available for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1}, Lcom/vungle/publisher/dn;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    move-object v0, v1

    .line 202
    goto :goto_2

    .line 205
    :cond_6
    const-string v1, "VunglePrepare"

    const-string v2, "unable to fetch local ad -  no external storage available"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method final a(Ljava/lang/String;Lcom/vungle/publisher/p;)Lcom/vungle/publisher/hu;
    .locals 11

    .prologue
    .line 272
    const/4 v1, 0x0

    .line 275
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/vungle/publisher/a;->m:Lcom/vungle/publisher/pv;

    iget-boolean v2, v2, Lcom/vungle/publisher/pv;->b:Z

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/vungle/publisher/a;->h:Lcom/vungle/publisher/uq;

    invoke-interface {v0}, Lcom/vungle/publisher/uq;->a()Lcom/vungle/publisher/un;

    move-result-object v3

    iget-object v0, p0, Lcom/vungle/publisher/a;->m:Lcom/vungle/publisher/pv;

    iget-object v0, v0, Lcom/vungle/publisher/pv;->c:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v4, "VunglePrepare"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v2, "ad streaming "

    invoke-direct {v5, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    const-string v2, "enabled"

    :goto_0
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " for "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " connectivity"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    if-eqz v0, :cond_4

    .line 276
    const-string v0, "VunglePrepare"

    const-string v2, "requesting streaming ad"

    invoke-static {v0, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v0, p0, Lcom/vungle/publisher/a;->k:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/a$c;

    .line 278
    invoke-virtual {v0}, Lcom/vungle/publisher/a$c;->register()V

    .line 279
    iget-object v2, p0, Lcom/vungle/publisher/a;->l:Lcom/vungle/publisher/yc;

    invoke-virtual {v2, p1, p2}, Lcom/vungle/publisher/yc;->a(Ljava/lang/String;Lcom/vungle/publisher/p;)V

    .line 280
    iget-wide v2, v0, Lcom/vungle/publisher/a$c;->d:J

    .line 281
    iget-object v4, p0, Lcom/vungle/publisher/a;->m:Lcom/vungle/publisher/pv;

    iget v4, v4, Lcom/vungle/publisher/pv;->d:I

    const-string v5, "VungleConfig"

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "streaming response timeout config "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    int-to-long v4, v4

    add-long/2addr v4, v2

    .line 282
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 284
    :goto_2
    :try_start_1
    iget-boolean v6, v0, Lcom/vungle/publisher/a$c;->b:Z

    if-nez v6, :cond_2

    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-wide v6

    sub-long v6, v4, v6

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-lez v8, :cond_2

    .line 288
    :try_start_2
    invoke-virtual {v0, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 291
    :catch_0
    move-exception v6

    goto :goto_2

    .line 275
    :cond_0
    :try_start_3
    const-string v2, "disabled"

    goto :goto_0

    :cond_1
    const-string v2, "VunglePrepare"

    const-string v3, "ad streaming disabled"

    invoke-static {v2, v3}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 307
    :catch_1
    move-exception v0

    move-object v10, v0

    move-object v0, v1

    move-object v1, v10

    .line 308
    :goto_3
    iget-object v2, p0, Lcom/vungle/publisher/a;->r:Lcom/vungle/publisher/gm$a;

    const-string v3, "VunglePrepare"

    const-string v4, "error getting streaming ad"

    invoke-virtual {v2, v3, v4, v1}, Lcom/vungle/publisher/gm$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 310
    :goto_4
    return-object v0

    .line 293
    :cond_2
    :try_start_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 294
    iget-boolean v2, v0, Lcom/vungle/publisher/a$c;->b:Z

    if-eqz v2, :cond_3

    .line 295
    iget-object v2, v0, Lcom/vungle/publisher/a$c;->c:Lcom/vungle/publisher/hu;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 296
    if-eqz v2, :cond_5

    .line 297
    :try_start_5
    const-string v1, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "request streaming ad success after "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/vungle/publisher/hu;->z()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-object v1, v2

    .line 304
    :goto_5
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object v0, v1

    goto :goto_4

    .line 301
    :cond_3
    :try_start_7
    const-string v2, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "request streaming ad timeout after "

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-virtual {v0}, Lcom/vungle/publisher/a$c;->a()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    .line 304
    :catchall_0
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    :goto_6
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v1
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 307
    :catch_2
    move-exception v0

    move-object v1, v0

    move-object v0, v2

    goto :goto_3

    :cond_4
    move-object v0, v1

    .line 309
    goto :goto_4

    .line 304
    :catchall_1
    move-exception v1

    goto :goto_6

    :catchall_2
    move-exception v2

    move-object v10, v2

    move-object v2, v1

    move-object v1, v10

    goto :goto_6

    :cond_5
    move-object v1, v2

    goto :goto_5
.end method

.method public final a()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 134
    iget-object v2, p0, Lcom/vungle/publisher/a;->q:Lcom/vungle/publisher/pp;

    iget-object v2, v2, Lcom/vungle/publisher/pp;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/vungle/publisher/a;->q:Lcom/vungle/publisher/pp;

    .line 135
    invoke-virtual {v2}, Lcom/vungle/publisher/pp;->a()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    iget-object v2, p0, Lcom/vungle/publisher/a;->t:Lcom/vungle/publisher/dx$b;

    invoke-virtual {v2}, Lcom/vungle/publisher/dx$b;->b()Lcom/vungle/publisher/dn;

    move-result-object v2

    if-eqz v2, :cond_0

    move v2, v0

    :goto_0
    if-eqz v2, :cond_1

    :goto_1
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 134
    goto :goto_1
.end method

.method public final b(Z)V
    .locals 8

    .prologue
    .line 331
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/a;->a(Z)Lcom/vungle/publisher/dn;

    .line 332
    iget-object v0, p0, Lcom/vungle/publisher/a;->g:Lcom/vungle/publisher/bt;

    sget-object v1, Lcom/vungle/publisher/bt$b;->o:Lcom/vungle/publisher/bt$b;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/bt;->a(Lcom/vungle/publisher/bt$b;)V

    iget-object v0, p0, Lcom/vungle/publisher/a;->t:Lcom/vungle/publisher/dx$b;

    invoke-virtual {v0}, Lcom/vungle/publisher/dx$b;->c()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/vungle/publisher/a;->g:Lcom/vungle/publisher/bt;

    new-instance v2, Lcom/vungle/publisher/a$3;

    invoke-direct {v2, p0}, Lcom/vungle/publisher/a$3;-><init>(Lcom/vungle/publisher/a;)V

    sget-object v3, Lcom/vungle/publisher/bt$b;->o:Lcom/vungle/publisher/bt$b;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/vungle/publisher/bt;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/bt$b;J)V

    .line 333
    :cond_0
    return-void
.end method

.method public final onEvent(Lcom/vungle/publisher/qo;)V
    .locals 1

    .prologue
    .line 336
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/a;->b(Z)V

    .line 337
    return-void
.end method
