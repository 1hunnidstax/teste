.class final Lcom/vungle/publisher/afi$1;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/aii;


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
        "Lcom/vungle/publisher/aii",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/vungle/publisher/gg",
        "<*>;>;",
        "Lcom/vungle/publisher/ahp",
        "<TC;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/dn;

.field final synthetic b:Lcom/vungle/publisher/afi;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/afi;Lcom/vungle/publisher/dn;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/vungle/publisher/afi$1;->b:Lcom/vungle/publisher/afi;

    iput-object p2, p0, Lcom/vungle/publisher/afi$1;->a:Lcom/vungle/publisher/dn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 150
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/gg;

    invoke-interface {v0}, Lcom/vungle/publisher/gg;->s()Lcom/vungle/publisher/el$a;

    move-result-object v0

    sget-object v2, Lcom/vungle/publisher/el$a;->c:Lcom/vungle/publisher/el$a;

    if-eq v0, v2, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "prepared ad somehow has non-ready viewables"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/vungle/publisher/afi$1;->a:Lcom/vungle/publisher/dn;

    invoke-static {v0}, Lcom/vungle/publisher/akc;->a(Ljava/lang/Object;)Lcom/vungle/publisher/akc;

    move-result-object v0

    return-object v0
.end method
