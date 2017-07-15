.class public final Lcom/vungle/publisher/ob;
.super Lcom/vungle/publisher/mv;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/ob$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/mv",
        "<",
        "Lcom/vungle/publisher/om;",
        ">;"
    }
.end annotation


# instance fields
.field m:Lcom/vungle/publisher/om$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/vungle/publisher/mv;-><init>()V

    return-void
.end method


# virtual methods
.method protected final bridge synthetic a(Ljava/lang/String;Lcom/vungle/publisher/n;)Lcom/vungle/publisher/mt;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/vungle/publisher/ob;->m:Lcom/vungle/publisher/om$a;

    invoke-virtual {v0, p1, p2}, Lcom/vungle/publisher/om$a;->a(Ljava/lang/String;Lcom/vungle/publisher/n;)Lcom/vungle/publisher/mt;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/om;

    return-object v0
.end method

.method public final a()V
    .locals 3

    .prologue
    .line 26
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/ob;->j:Lcom/vungle/publisher/ql;

    new-instance v1, Lcom/vungle/publisher/ah;

    invoke-direct {v1}, Lcom/vungle/publisher/ah;-><init>()V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    :goto_0
    return-void

    .line 28
    :catch_0
    move-exception v0

    .line 29
    const-string v1, "VungleAd"

    const-string v2, "exception in onBackPressed"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    const-string v0, "postRollFragment"

    return-object v0
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 40
    invoke-super {p0, p1}, Lcom/vungle/publisher/mv;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-static {}, Lcom/vungle/publisher/inject/Injector;->b()Lcom/vungle/publisher/sc;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/vungle/publisher/sc;->a(Lcom/vungle/publisher/ob;)V

    .line 42
    return-void
.end method
