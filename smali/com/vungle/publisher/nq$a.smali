.class public final Lcom/vungle/publisher/nq$a;
.super Lcom/vungle/publisher/mr;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/nq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/nq$a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/mr",
        "<",
        "Lcom/vungle/publisher/nq;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field b:Lcom/vungle/publisher/gm$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/vungle/publisher/mr;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic onEvent(Lcom/vungle/publisher/ak;)V
    .locals 0

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/vungle/publisher/mr;->onEvent(Lcom/vungle/publisher/ak;)V

    return-void
.end method

.method public final bridge synthetic onEvent(Lcom/vungle/publisher/bd;)V
    .locals 0

    .prologue
    .line 84
    invoke-super {p0, p1}, Lcom/vungle/publisher/mr;->onEvent(Lcom/vungle/publisher/bd;)V

    return-void
.end method

.method public final onEvent(Lcom/vungle/publisher/ty;)V
    .locals 3

    .prologue
    .line 93
    const-string v0, "VungleEvent"

    const-string v1, "mraidAd.onClose()"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lcom/vungle/publisher/nq$a;->eventBus:Lcom/vungle/publisher/ql;

    new-instance v1, Lcom/vungle/publisher/tx;

    sget-object v2, Lcom/vungle/publisher/tn;->b:Lcom/vungle/publisher/tn;

    invoke-direct {v1, v2}, Lcom/vungle/publisher/tx;-><init>(Lcom/vungle/publisher/ji;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V

    .line 95
    iget-object v0, p0, Lcom/vungle/publisher/nq$a;->a:Lcom/vungle/publisher/ne;

    check-cast v0, Lcom/vungle/publisher/nq;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/vungle/publisher/nq;->a(ZZ)V

    .line 96
    return-void
.end method

.method public final onEvent(Lcom/vungle/publisher/tz;)V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lcom/vungle/publisher/nq$a;->eventBus:Lcom/vungle/publisher/ql;

    new-instance v1, Lcom/vungle/publisher/tx;

    sget-object v2, Lcom/vungle/publisher/tn;->a:Lcom/vungle/publisher/tn;

    invoke-direct {v1, v2}, Lcom/vungle/publisher/tx;-><init>(Lcom/vungle/publisher/ji;)V

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/ql;->a(Ljava/lang/Object;)V

    .line 104
    return-void
.end method

.method public final onEvent(Lcom/vungle/publisher/ua;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 107
    iget-object v0, p0, Lcom/vungle/publisher/nq$a;->a:Lcom/vungle/publisher/ne;

    check-cast v0, Lcom/vungle/publisher/nq;

    invoke-virtual {v0, v1, v1}, Lcom/vungle/publisher/nq;->a(ZZ)V

    .line 108
    return-void
.end method

.method public final onEvent(Lcom/vungle/publisher/ud;)V
    .locals 2
    .param p1, "event"    # Lcom/vungle/publisher/ud;

    .prologue
    .line 99
    iget-object v0, p0, Lcom/vungle/publisher/nq$a;->a:Lcom/vungle/publisher/ne;

    check-cast v0, Lcom/vungle/publisher/nq;

    iget-object v1, p1, Lcom/vungle/publisher/ud;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/nq;->a(Landroid/net/Uri;)V

    .line 100
    return-void
.end method

.method public final onEvent(Lcom/vungle/publisher/ug;)V
    .locals 4
    .param p1, "event"    # Lcom/vungle/publisher/ug;

    .prologue
    .line 112
    :try_start_0
    iget-object v1, p1, Lcom/vungle/publisher/ug;->a:Lcom/vungle/publisher/to;

    .line 113
    iget-boolean v0, p1, Lcom/vungle/publisher/ug;->b:Z

    .line 114
    sget-object v2, Lcom/vungle/publisher/to;->c:Lcom/vungle/publisher/to;

    if-ne v1, v2, :cond_2

    .line 115
    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/vungle/publisher/nq$a;->a:Lcom/vungle/publisher/ne;

    check-cast v0, Lcom/vungle/publisher/nq;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/nq;->a(I)V

    .line 127
    :goto_0
    return-void

    .line 118
    :cond_0
    sget-object v0, Lcom/vungle/publisher/pj;->f:Lcom/vungle/publisher/pj;

    invoke-static {v0}, Lcom/vungle/publisher/agl;->a(Lcom/vungle/publisher/pj;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/vungle/publisher/nq$a;->a:Lcom/vungle/publisher/ne;

    check-cast v0, Lcom/vungle/publisher/nq;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/nq;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 124
    :catch_0
    move-exception v0

    .line 125
    iget-object v1, p0, Lcom/vungle/publisher/nq$a;->b:Lcom/vungle/publisher/gm$a;

    const-string v2, "VungleEvent"

    const-string v3, "error setting mraid orientation"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/gm$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 118
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/vungle/publisher/nq$a;->a:Lcom/vungle/publisher/ne;

    check-cast v0, Lcom/vungle/publisher/nq;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/nq;->a(I)V

    goto :goto_0

    .line 121
    :cond_2
    const-string v0, "VungleEvent"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "force mraid orientation: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/vungle/publisher/nq$a;->a:Lcom/vungle/publisher/ne;

    check-cast v0, Lcom/vungle/publisher/nq;

    iget v1, v1, Lcom/vungle/publisher/to;->d:I

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/nq;->a(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
