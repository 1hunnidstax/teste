.class final Lcom/vungle/publisher/akc$3;
.super Ljava/lang/Object;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/ahp$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/vungle/publisher/akc;->d(Lcom/vungle/publisher/aii;)Lcom/vungle/publisher/ahp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/vungle/publisher/ahp$a",
        "<TR;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/vungle/publisher/aii;

.field final synthetic b:Lcom/vungle/publisher/akc;


# direct methods
.method constructor <init>(Lcom/vungle/publisher/akc;Lcom/vungle/publisher/aii;)V
    .locals 0

    .prologue
    .line 228
    iput-object p1, p0, Lcom/vungle/publisher/akc$3;->b:Lcom/vungle/publisher/akc;

    iput-object p2, p0, Lcom/vungle/publisher/akc$3;->a:Lcom/vungle/publisher/aii;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 228
    check-cast p1, Lcom/vungle/publisher/ahu;

    iget-object v0, p0, Lcom/vungle/publisher/akc$3;->a:Lcom/vungle/publisher/aii;

    iget-object v1, p0, Lcom/vungle/publisher/akc$3;->b:Lcom/vungle/publisher/akc;

    iget-object v1, v1, Lcom/vungle/publisher/akc;->b:Ljava/lang/Object;

    invoke-interface {v0, v1}, Lcom/vungle/publisher/aii;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ahp;

    instance-of v1, v0, Lcom/vungle/publisher/akc;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/vungle/publisher/akc;

    iget-object v0, v0, Lcom/vungle/publisher/akc;->b:Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/vungle/publisher/akc;->a(Lcom/vungle/publisher/ahu;Ljava/lang/Object;)Lcom/vungle/publisher/ahr;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/vungle/publisher/ahu;->a(Lcom/vungle/publisher/ahr;)V

    :goto_0
    return-void

    :cond_0
    invoke-static {p1}, Lcom/vungle/publisher/alm;->a(Lcom/vungle/publisher/ahu;)Lcom/vungle/publisher/ahu;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ahp;->a(Lcom/vungle/publisher/ahu;)Lcom/vungle/publisher/ahv;

    goto :goto_0
.end method
