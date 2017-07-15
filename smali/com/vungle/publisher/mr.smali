.class abstract Lcom/vungle/publisher/mr;
.super Lcom/vungle/publisher/qe;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/vungle/publisher/ne",
        "<*>;>",
        "Lcom/vungle/publisher/qe;"
    }
.end annotation


# instance fields
.field protected a:Lcom/vungle/publisher/ne;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/vungle/publisher/qe;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvent(Lcom/vungle/publisher/ak;)V
    .locals 2
    .param p1, "event"    # Lcom/vungle/publisher/ak;

    .prologue
    .line 15
    .local p0, "this":Lcom/vungle/publisher/mr;, "Lcom/vungle/publisher/mr<TA;>;"
    iget-object v0, p0, Lcom/vungle/publisher/mr;->a:Lcom/vungle/publisher/ne;

    iget-object v1, p1, Lcom/vungle/publisher/ak;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ne;->a(Landroid/net/Uri;)V

    .line 16
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/bd;)V
    .locals 2

    .prologue
    .local p0, "this":Lcom/vungle/publisher/mr;, "Lcom/vungle/publisher/mr<TA;>;"
    const/4 v1, 0x0

    .line 11
    iget-object v0, p0, Lcom/vungle/publisher/mr;->a:Lcom/vungle/publisher/ne;

    invoke-virtual {v0, v1, v1}, Lcom/vungle/publisher/ne;->a(ZZ)V

    .line 12
    return-void
.end method
