.class final Lcom/vungle/publisher/afi$3;
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/dn;

.field final synthetic b:Lcom/vungle/publisher/afi;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/afi;Lcom/vungle/publisher/dn;)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/vungle/publisher/afi$3;->b:Lcom/vungle/publisher/afi;

    iput-object p2, p0, Lcom/vungle/publisher/afi$3;->a:Lcom/vungle/publisher/dn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 173
    check-cast p1, Ljava/lang/Throwable;

    const-string v0, "VunglePrepare"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ad prep error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/vungle/publisher/qt;

    if-eqz v0, :cond_0

    const-string v0, "VunglePrepare"

    const-string v1, "deleting all ads due to IO failure"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vungle/publisher/afi$3;->b:Lcom/vungle/publisher/afi;

    iget-object v0, v0, Lcom/vungle/publisher/afi;->e:Lcom/vungle/publisher/dx$b;

    invoke-virtual {v0}, Lcom/vungle/publisher/dx$b;->a()I

    :goto_0
    return-void

    :cond_0
    const-string v0, "VunglePrepare"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "marking current ad as "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/vungle/publisher/cj$c;->b:Lcom/vungle/publisher/cj$c;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/vungle/publisher/afi$3;->a:Lcom/vungle/publisher/dn;

    sget-object v1, Lcom/vungle/publisher/cj$c;->b:Lcom/vungle/publisher/cj$c;

    invoke-interface {v0, v1}, Lcom/vungle/publisher/dn;->a(Lcom/vungle/publisher/cj$c;)V

    iget-object v0, p0, Lcom/vungle/publisher/afi$3;->a:Lcom/vungle/publisher/dn;

    invoke-interface {v0}, Lcom/vungle/publisher/dn;->b_()I

    goto :goto_0
.end method
