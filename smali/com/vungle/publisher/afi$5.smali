.class final Lcom/vungle/publisher/afi$5;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/aif;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/afi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vungle/publisher/aif",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/vungle/publisher/gg",
        "<*>;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/dn;

.field final synthetic b:Lcom/vungle/publisher/afi;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/afi;Lcom/vungle/publisher/dn;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/vungle/publisher/afi$5;->b:Lcom/vungle/publisher/afi;

    iput-object p2, p0, Lcom/vungle/publisher/afi$5;->a:Lcom/vungle/publisher/dn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 200
    const-string v0, "VunglePrepare"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ad ready "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vungle/publisher/afi$5;->a:Lcom/vungle/publisher/dn;

    invoke-interface {v2}, Lcom/vungle/publisher/dn;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vungle/publisher/afi$5;->a:Lcom/vungle/publisher/dn;

    sget-object v1, Lcom/vungle/publisher/cj$c;->e:Lcom/vungle/publisher/cj$c;

    invoke-interface {v0, v1}, Lcom/vungle/publisher/dn;->a(Lcom/vungle/publisher/cj$c;)V

    iget-object v0, p0, Lcom/vungle/publisher/afi$5;->b:Lcom/vungle/publisher/afi;

    iget-object v0, v0, Lcom/vungle/publisher/afi;->a:Lcom/vungle/publisher/cq$b;

    iget-object v1, p0, Lcom/vungle/publisher/afi$5;->a:Lcom/vungle/publisher/dn;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/cq$b;->b(Lcom/vungle/publisher/dn;)Lcom/vungle/publisher/ec;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/vungle/publisher/ec;->a_(Ljava/lang/Long;)V

    iget-object v0, p0, Lcom/vungle/publisher/afi$5;->a:Lcom/vungle/publisher/dn;

    invoke-interface {v0}, Lcom/vungle/publisher/dn;->b_()I

    return-void
.end method
