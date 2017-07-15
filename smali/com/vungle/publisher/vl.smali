.class public final Lcom/vungle/publisher/vl;
.super Lcom/vungle/publisher/vr;
.source "vungle"


# instance fields
.field a:Lcom/vungle/publisher/xo;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/bt;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/vungle/publisher/vr;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/vungle/publisher/cj;Lcom/vungle/publisher/ji;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/cj;",
            "Lcom/vungle/publisher/ji;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 33
    const-string v1, "%timestamp%"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/vungle/publisher/vl;->a(Lcom/vungle/publisher/cj;Lcom/vungle/publisher/ji;Ljava/util/Map;Ljava/util/List;)V

    .line 35
    return-void
.end method

.method public final a(Lcom/vungle/publisher/cj;Lcom/vungle/publisher/ji;Ljava/util/Map;Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/cj;",
            "Lcom/vungle/publisher/ji;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    if-eqz p4, :cond_1

    .line 45
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 46
    if-eqz v4, :cond_0

    .line 47
    iget-object v7, p0, Lcom/vungle/publisher/vl;->b:Lcom/vungle/publisher/bt;

    new-instance v0, Lcom/vungle/publisher/vl$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/vungle/publisher/vl$1;-><init>(Lcom/vungle/publisher/vl;Lcom/vungle/publisher/cj;Lcom/vungle/publisher/ji;Ljava/lang/String;Ljava/util/Map;)V

    sget-object v1, Lcom/vungle/publisher/bt$b;->q:Lcom/vungle/publisher/bt$b;

    invoke-virtual {v7, v0, v1}, Lcom/vungle/publisher/bt;->a(Ljava/lang/Runnable;Lcom/vungle/publisher/bt$b;)V

    goto :goto_0

    .line 64
    :cond_1
    return-void
.end method
