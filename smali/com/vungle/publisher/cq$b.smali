.class public final Lcom/vungle/publisher/cq$b;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/cq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field public a:Lcom/vungle/publisher/cf;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/fj$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/if$a;
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

.field f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/vungle/publisher/j;",
            "Lcom/vungle/publisher/cq$a",
            "<*****>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 314
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/vungle/publisher/cj;)Lcom/vungle/publisher/cq;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/vungle/publisher/cj;",
            ">(TA;)",
            "Lcom/vungle/publisher/cq",
            "<***TA;>;"
        }
    .end annotation

    .prologue
    .line 410
    new-instance v0, Lcom/vungle/publisher/cq$b$2;

    invoke-direct {v0, p0, p1}, Lcom/vungle/publisher/cq$b$2;-><init>(Lcom/vungle/publisher/cq$b;Lcom/vungle/publisher/cj;)V

    .line 430
    invoke-virtual {v0, p1}, Lcom/vungle/publisher/cq$b$2;->a(Lcom/vungle/publisher/cj;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/cq;

    .line 410
    return-object v0
.end method

.method public final a(Lcom/vungle/publisher/dn;)Lcom/vungle/publisher/ec;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/vungle/publisher/cj;",
            ">(",
            "Lcom/vungle/publisher/dn",
            "<TA;>;)",
            "Lcom/vungle/publisher/ec;"
        }
    .end annotation

    .prologue
    .line 333
    invoke-interface {p1}, Lcom/vungle/publisher/dn;->h_()Lcom/vungle/publisher/cj;

    move-result-object v0

    .line 334
    invoke-virtual {p0, v0}, Lcom/vungle/publisher/cq$b;->a(Lcom/vungle/publisher/cj;)Lcom/vungle/publisher/cq;

    move-result-object v0

    .line 337
    :try_start_0
    check-cast v0, Lcom/vungle/publisher/ec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 341
    return-object v0

    .line 339
    :catch_0
    move-exception v1

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ad report type is not cacheable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/cq",
            "<****>;>;"
        }
    .end annotation

    .prologue
    .line 361
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 362
    iget-object v0, p0, Lcom/vungle/publisher/cq$b;->f:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vungle/publisher/cq$b;->f:Ljava/util/Map;

    :goto_0
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 363
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/cq$a;

    .line 364
    invoke-virtual {v0}, Lcom/vungle/publisher/cq$a;->g()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/cq;

    .line 365
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 362
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/vungle/publisher/cq$b;->f:Ljava/util/Map;

    iget-object v0, p0, Lcom/vungle/publisher/cq$b;->f:Ljava/util/Map;

    sget-object v2, Lcom/vungle/publisher/j;->a:Lcom/vungle/publisher/j;

    iget-object v3, p0, Lcom/vungle/publisher/cq$b;->b:Lcom/vungle/publisher/fj$a;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vungle/publisher/cq$b;->f:Ljava/util/Map;

    sget-object v2, Lcom/vungle/publisher/j;->b:Lcom/vungle/publisher/j;

    iget-object v3, p0, Lcom/vungle/publisher/cq$b;->c:Lcom/vungle/publisher/if$a;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vungle/publisher/cq$b;->f:Ljava/util/Map;

    sget-object v2, Lcom/vungle/publisher/j;->c:Lcom/vungle/publisher/j;

    iget-object v3, p0, Lcom/vungle/publisher/cq$b;->d:Lcom/vungle/publisher/kn$a;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vungle/publisher/cq$b;->f:Ljava/util/Map;

    sget-object v2, Lcom/vungle/publisher/j;->d:Lcom/vungle/publisher/j;

    iget-object v3, p0, Lcom/vungle/publisher/cq$b;->e:Lcom/vungle/publisher/hd$a;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/vungle/publisher/cq$b;->f:Ljava/util/Map;

    goto :goto_0

    .line 368
    :cond_2
    return-object v1
.end method

.method public final b(Lcom/vungle/publisher/dn;)Lcom/vungle/publisher/ec;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/vungle/publisher/cj;",
            ">(",
            "Lcom/vungle/publisher/dn",
            "<TA;>;)",
            "Lcom/vungle/publisher/ec;"
        }
    .end annotation

    .prologue
    .line 345
    invoke-interface {p1}, Lcom/vungle/publisher/dn;->h_()Lcom/vungle/publisher/cj;

    move-result-object v1

    .line 346
    new-instance v0, Lcom/vungle/publisher/cq$b$1;

    invoke-direct {v0, p0, v1}, Lcom/vungle/publisher/cq$b$1;-><init>(Lcom/vungle/publisher/cq$b;Lcom/vungle/publisher/cj;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/cq$b$1;->a(Lcom/vungle/publisher/cj;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/cq;

    .line 349
    :try_start_0
    check-cast v0, Lcom/vungle/publisher/ec;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    return-object v0

    .line 351
    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ad type is not cacheable "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
