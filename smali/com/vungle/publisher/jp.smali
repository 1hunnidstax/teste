.class public abstract Lcom/vungle/publisher/jp;
.super Lcom/vungle/publisher/dl;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/el;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/jp$a;,
        Lcom/vungle/publisher/jp$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/vungle/publisher/cj;",
        ">",
        "Lcom/vungle/publisher/dl",
        "<",
        "Ljava/lang/Integer;",
        ">;",
        "Lcom/vungle/publisher/el",
        "<TA;>;"
    }
.end annotation


# instance fields
.field protected o:Ljava/lang/String;

.field protected p:Lcom/vungle/publisher/j;

.field protected q:Lcom/vungle/publisher/el$a;

.field protected r:Lcom/vungle/publisher/el$b;

.field protected v:Lcom/vungle/publisher/cj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/vungle/publisher/dl;-><init>()V

    return-void
.end method


# virtual methods
.method protected final A()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/vungle/publisher/jp;->r:Lcom/vungle/publisher/el$b;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final D()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/vungle/publisher/jp;->t:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method protected a(Z)Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 84
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 85
    if-eqz p1, :cond_0

    .line 86
    const-string v2, "id"

    iget-object v0, p0, Lcom/vungle/publisher/jp;->t:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 87
    const-string v0, "ad_id"

    iget-object v2, p0, Lcom/vungle/publisher/jp;->o:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    const-string v0, "type"

    iget-object v2, p0, Lcom/vungle/publisher/jp;->r:Lcom/vungle/publisher/el$b;

    invoke-virtual {v2}, Lcom/vungle/publisher/el$b;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    const-string v0, "ad_type"

    iget-object v2, p0, Lcom/vungle/publisher/jp;->p:Lcom/vungle/publisher/j;

    invoke-virtual {v2}, Lcom/vungle/publisher/j;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_0
    const-string v0, "status"

    iget-object v2, p0, Lcom/vungle/publisher/jp;->q:Lcom/vungle/publisher/el$a;

    invoke-virtual {v2}, Lcom/vungle/publisher/el$a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    return-object v1
.end method

.method public final a(Lcom/vungle/publisher/el$a;)V
    .locals 3

    .prologue
    .line 66
    const-string v0, "VunglePrepare"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "setting "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vungle/publisher/jp;->r:Lcom/vungle/publisher/el$b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/publisher/jp;->q:Lcom/vungle/publisher/el$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for ad_id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/publisher/jp;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iput-object p1, p0, Lcom/vungle/publisher/jp;->q:Lcom/vungle/publisher/el$a;

    .line 68
    return-void
.end method

.method public final b(Lcom/vungle/publisher/el$a;)V
    .locals 3

    .prologue
    .line 71
    const-string v0, "VunglePrepare"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updating "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vungle/publisher/jp;->r:Lcom/vungle/publisher/el$b;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " status from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/publisher/jp;->q:Lcom/vungle/publisher/el$a;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for ad_id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/vungle/publisher/jp;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iput-object p1, p0, Lcom/vungle/publisher/jp;->q:Lcom/vungle/publisher/el$a;

    .line 73
    invoke-virtual {p0}, Lcom/vungle/publisher/jp;->b_()I

    .line 74
    return-void
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    const-string v0, "viewable"

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .locals 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/vungle/publisher/jp;->v:Lcom/vungle/publisher/cj;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/vungle/publisher/jp;->r()Lcom/vungle/publisher/cj$a;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/publisher/jp;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/cj$a;->a(Ljava/lang/Object;)Lcom/vungle/publisher/dl;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/cj;

    iput-object v0, p0, Lcom/vungle/publisher/jp;->v:Lcom/vungle/publisher/cj;

    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/jp;->v:Lcom/vungle/publisher/cj;

    invoke-virtual {v0}, Lcom/vungle/publisher/cj;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/vungle/publisher/jp;->o:Ljava/lang/String;

    return-object v0
.end method

.method protected m()Ljava/lang/StringBuilder;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 99
    invoke-super {p0}, Lcom/vungle/publisher/dl;->m()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 100
    const-string v1, "ad_id"

    iget-object v2, p0, Lcom/vungle/publisher/jp;->o:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/vungle/publisher/dl;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 101
    const-string v1, "status"

    iget-object v2, p0, Lcom/vungle/publisher/jp;->q:Lcom/vungle/publisher/el$a;

    invoke-static {v0, v1, v2, v3}, Lcom/vungle/publisher/dl;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 102
    const-string v1, "type"

    iget-object v2, p0, Lcom/vungle/publisher/jp;->r:Lcom/vungle/publisher/el$b;

    invoke-static {v0, v1, v2, v3}, Lcom/vungle/publisher/dl;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 103
    return-object v0
.end method

.method protected abstract r()Lcom/vungle/publisher/cj$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/cj$a",
            "<TA;*>;"
        }
    .end annotation
.end method

.method public final s()Lcom/vungle/publisher/el$a;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/vungle/publisher/jp;->q:Lcom/vungle/publisher/el$a;

    return-object v0
.end method

.method public final t()Lcom/vungle/publisher/el$b;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/vungle/publisher/jp;->r:Lcom/vungle/publisher/el$b;

    return-object v0
.end method

.method public final bridge synthetic w()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/vungle/publisher/jp;->t:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method
