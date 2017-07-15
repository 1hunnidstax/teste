.class public final Lcom/vungle/publisher/eo;
.super Lcom/vungle/publisher/jk;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/dn;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/eo$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/jk",
        "<",
        "Lcom/vungle/publisher/eo;",
        "Lcom/vungle/publisher/en;",
        "Lcom/vungle/publisher/adr;",
        ">;",
        "Lcom/vungle/publisher/dn",
        "<",
        "Lcom/vungle/publisher/eo;",
        ">;"
    }
.end annotation


# instance fields
.field q:Lcom/vungle/publisher/ep;

.field public r:Lcom/vungle/publisher/ds;

.field v:Z

.field w:Lcom/vungle/publisher/eo$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/vungle/publisher/jk;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Lcom/vungle/publisher/cj$a;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vungle/publisher/eo;->w:Lcom/vungle/publisher/eo$a;

    return-object v0
.end method

.method public final a(Lcom/vungle/publisher/cj$c;)V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/vungle/publisher/eo;->e:Lcom/vungle/publisher/cj$c;

    .line 57
    invoke-super {p0, p1}, Lcom/vungle/publisher/jk;->a(Lcom/vungle/publisher/cj$c;)V

    .line 58
    iget-object v1, p0, Lcom/vungle/publisher/eo;->r:Lcom/vungle/publisher/ds;

    invoke-virtual {v1, v0, p1}, Lcom/vungle/publisher/ds;->a(Lcom/vungle/publisher/cj$c;Lcom/vungle/publisher/cj$c;)V

    .line 59
    return-void
.end method

.method protected final bridge synthetic a_()Lcom/vungle/publisher/dl$a;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vungle/publisher/eo;->w:Lcom/vungle/publisher/eo$a;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 126
    invoke-virtual {p0}, Lcom/vungle/publisher/eo;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vungle/publisher/qx;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final b_()I
    .locals 2

    .prologue
    .line 142
    invoke-super {p0}, Lcom/vungle/publisher/jk;->b_()I

    move-result v0

    .line 143
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 144
    iget-object v1, p0, Lcom/vungle/publisher/eo;->q:Lcom/vungle/publisher/ep;

    if-eqz v1, :cond_0

    .line 145
    iget-object v1, p0, Lcom/vungle/publisher/eo;->q:Lcom/vungle/publisher/ep;

    invoke-virtual {v1}, Lcom/vungle/publisher/ep;->b_()I

    .line 148
    :cond_0
    return v0
.end method

.method public final synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    invoke-super {p0}, Lcom/vungle/publisher/jk;->w()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final f_()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/gg",
            "<",
            "Lcom/vungle/publisher/eo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    invoke-virtual {p0}, Lcom/vungle/publisher/eo;->u()Lcom/vungle/publisher/jj;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/en;

    .line 65
    if-eqz v0, :cond_0

    .line 66
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/vungle/publisher/eo;->p()Lcom/vungle/publisher/ep;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_1

    .line 70
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_1
    return-object v1
.end method

.method public final g_()Z
    .locals 8

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 96
    invoke-virtual {p0}, Lcom/vungle/publisher/eo;->u()Lcom/vungle/publisher/jj;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/en;

    .line 98
    invoke-virtual {p0}, Lcom/vungle/publisher/eo;->p()Lcom/vungle/publisher/ep;

    move-result-object v5

    .line 99
    if-eqz v0, :cond_4

    move v4, v2

    .line 100
    :goto_0
    if-eqz v5, :cond_5

    move v3, v2

    .line 101
    :goto_1
    if-nez v4, :cond_0

    if-eqz v3, :cond_1

    :cond_0
    move v1, v2

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/vungle/publisher/eo;->z()Ljava/lang/String;

    move-result-object v2

    .line 103
    if-eqz v1, :cond_6

    .line 104
    if-eqz v4, :cond_2

    .line 105
    const-string v4, "VunglePrepare"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " has "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/vungle/publisher/el$b;->a:Lcom/vungle/publisher/el$b;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v0, v0, Lcom/vungle/publisher/en;->b:Lcom/vungle/publisher/gh;

    iget-object v0, v0, Lcom/vungle/publisher/gh;->b:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_2
    if-eqz v3, :cond_3

    .line 108
    const-string v0, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/vungle/publisher/el$b;->b:Lcom/vungle/publisher/el$b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v5, Lcom/vungle/publisher/em;->g:Lcom/vungle/publisher/gh;

    iget-object v3, v3, Lcom/vungle/publisher/gh;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_3
    :goto_2
    return v1

    :cond_4
    move v4, v1

    .line 99
    goto :goto_0

    :cond_5
    move v3, v1

    .line 100
    goto :goto_1

    .line 112
    :cond_6
    sget-object v0, Lcom/vungle/publisher/cj$c;->c:Lcom/vungle/publisher/cj$c;

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/eo;->a(Lcom/vungle/publisher/cj$c;)V

    goto :goto_2
.end method

.method public final bridge synthetic h_()Lcom/vungle/publisher/cj;
    .locals 0

    .prologue
    .line 22
    return-object p0
.end method

.method public final p()Lcom/vungle/publisher/ep;
    .locals 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vungle/publisher/eo;->w:Lcom/vungle/publisher/eo$a;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/vungle/publisher/eo$a;->a(Lcom/vungle/publisher/eo;Z)Lcom/vungle/publisher/ep;

    move-result-object v0

    return-object v0
.end method

.method public final q()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 133
    invoke-super {p0}, Lcom/vungle/publisher/jk;->q()Ljava/lang/String;

    move-result-object v0

    .line 134
    iget-object v1, p0, Lcom/vungle/publisher/eo;->q:Lcom/vungle/publisher/ep;

    if-eqz v1, :cond_0

    .line 135
    iget-object v1, p0, Lcom/vungle/publisher/eo;->q:Lcom/vungle/publisher/ep;

    invoke-virtual {v1}, Lcom/vungle/publisher/ep;->v()Ljava/lang/Object;

    .line 137
    :cond_0
    return-object v0
.end method

.method public final bridge synthetic r()Lcom/vungle/publisher/jk$a;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/vungle/publisher/eo;->w:Lcom/vungle/publisher/eo$a;

    return-object v0
.end method

.method public final synthetic v()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Lcom/vungle/publisher/eo;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
