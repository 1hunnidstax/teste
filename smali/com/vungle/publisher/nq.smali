.class public final Lcom/vungle/publisher/nq;
.super Lcom/vungle/publisher/ne;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/nq$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/ne",
        "<",
        "Lcom/vungle/publisher/dm;",
        ">;"
    }
.end annotation


# instance fields
.field k:Lcom/vungle/publisher/agb$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field l:Lcom/vungle/publisher/nq$a$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field m:Lcom/vungle/publisher/nh$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private n:Lcom/vungle/publisher/nh;


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/vungle/publisher/ne;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()Lcom/vungle/publisher/mr;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/mr",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 76
    iget-object v0, p0, Lcom/vungle/publisher/nq;->l:Lcom/vungle/publisher/nq$a$a;

    invoke-virtual {v0, p0}, Lcom/vungle/publisher/nq$a$a;->a(Lcom/vungle/publisher/nq;)Lcom/vungle/publisher/nq$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/vungle/publisher/FullScreenAdActivity;)V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/vungle/publisher/ne;->a(Lcom/vungle/publisher/FullScreenAdActivity;)V

    .line 69
    iget-object v0, p0, Lcom/vungle/publisher/nq;->n:Lcom/vungle/publisher/nh;

    invoke-virtual {v0}, Lcom/vungle/publisher/nh;->c()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p1}, Lcom/vungle/publisher/FullScreenAdActivity;->finish()V

    .line 72
    :cond_0
    return-void
.end method

.method public final synthetic a(Lcom/vungle/publisher/FullScreenAdActivity;Lcom/vungle/publisher/cj;Lcom/vungle/publisher/n;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 29
    check-cast p2, Lcom/vungle/publisher/dm;

    const-string v0, "VungleAd"

    const-string v1, "create mraid ad"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2, p3, p4}, Lcom/vungle/publisher/ne;->a(Lcom/vungle/publisher/FullScreenAdActivity;Lcom/vungle/publisher/cj;Lcom/vungle/publisher/n;Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/vungle/publisher/nq;->m:Lcom/vungle/publisher/nh$a;

    invoke-virtual {p2}, Lcom/vungle/publisher/dm;->w()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/vungle/publisher/dm;->p()Lcom/vungle/publisher/lk;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2, p3}, Lcom/vungle/publisher/nh$a;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/vungle/publisher/lk;Lcom/vungle/publisher/n;)Lcom/vungle/publisher/mv;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/nh;

    iput-object v0, p0, Lcom/vungle/publisher/nq;->n:Lcom/vungle/publisher/nh;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/vungle/publisher/FullScreenAdActivity;->setRequestedOrientation(I)V

    invoke-virtual {p1}, Lcom/vungle/publisher/FullScreenAdActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v1, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/vungle/publisher/nq;->n:Lcom/vungle/publisher/nh;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/vungle/publisher/nq;->a(ZZ)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/nq;->n:Lcom/vungle/publisher/nh;

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/nq;->a(Lcom/vungle/publisher/ms;)V

    goto :goto_0
.end method

.method protected final b()Lcom/vungle/publisher/afx;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/afx",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v1, p0, Lcom/vungle/publisher/nq;->k:Lcom/vungle/publisher/agb$a;

    iget-object v0, p0, Lcom/vungle/publisher/nq;->a:Lcom/vungle/publisher/cj;

    check-cast v0, Lcom/vungle/publisher/dm;

    iget-object v2, v1, Lcom/vungle/publisher/agb$a;->a:Lcom/vungle/publisher/agb;

    invoke-virtual {v2, v0}, Lcom/vungle/publisher/agb;->a(Lcom/vungle/publisher/cj;)V

    iget-object v0, v1, Lcom/vungle/publisher/agb$a;->a:Lcom/vungle/publisher/agb;

    return-object v0
.end method
