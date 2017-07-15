.class public abstract Lcom/vungle/publisher/jk;
.super Lcom/vungle/publisher/cj;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/jk$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/vungle/publisher/jk",
        "<TA;TV;TR;>;V:",
        "Lcom/vungle/publisher/jj",
        "<TA;>;R:",
        "Lcom/vungle/publisher/aed;",
        ">",
        "Lcom/vungle/publisher/cj;"
    }
.end annotation


# instance fields
.field protected A:Lcom/vungle/publisher/jh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/jh",
            "<*TA;TR;",
            "Lcom/vungle/publisher/jl;",
            "**>;"
        }
    .end annotation
.end field

.field protected B:Z

.field C:Lcom/vungle/publisher/ql;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected x:Ljava/lang/String;

.field protected y:Ljava/lang/String;

.field protected z:Lcom/vungle/publisher/jj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/vungle/publisher/cj;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Z)Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/vungle/publisher/cj;->a(Z)Landroid/content/ContentValues;

    move-result-object v0

    .line 91
    const-string v1, "call_to_action_final_url"

    iget-object v2, p0, Lcom/vungle/publisher/jk;->x:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    const-string v1, "call_to_action_url"

    iget-object v2, p0, Lcom/vungle/publisher/jk;->y:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    return-object v0
.end method

.method protected synthetic a()Lcom/vungle/publisher/cj$a;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/vungle/publisher/jk;->r()Lcom/vungle/publisher/jk$a;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/vungle/publisher/ji;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/ji;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/vungle/publisher/jk;->A:Lcom/vungle/publisher/jh;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/jh;->a(Lcom/vungle/publisher/ji;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public b_()I
    .locals 2

    .prologue
    .line 79
    invoke-super {p0}, Lcom/vungle/publisher/cj;->b_()I

    move-result v0

    .line 80
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 81
    iget-object v1, p0, Lcom/vungle/publisher/jk;->z:Lcom/vungle/publisher/jj;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/vungle/publisher/jk;->z:Lcom/vungle/publisher/jj;

    invoke-virtual {v1}, Lcom/vungle/publisher/jj;->b_()I

    .line 85
    :cond_0
    return v0
.end method

.method protected final m()Ljava/lang/StringBuilder;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 98
    invoke-super {p0}, Lcom/vungle/publisher/cj;->m()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 99
    const-string v1, "call_to_action_final_url"

    iget-object v2, p0, Lcom/vungle/publisher/jk;->x:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/vungle/publisher/dl;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 100
    const-string v1, "call_to_action_url"

    iget-object v2, p0, Lcom/vungle/publisher/jk;->y:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/vungle/publisher/dl;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 101
    iget-object v1, p0, Lcom/vungle/publisher/jk;->A:Lcom/vungle/publisher/jh;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/jh;->a(Ljava/lang/StringBuilder;)V

    .line 102
    return-object v0
.end method

.method public q()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 69
    invoke-super {p0}, Lcom/vungle/publisher/cj;->v()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 70
    iget-object v1, p0, Lcom/vungle/publisher/jk;->A:Lcom/vungle/publisher/jh;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vungle/publisher/jk;->A:Lcom/vungle/publisher/jh;

    invoke-virtual {v1}, Lcom/vungle/publisher/jh;->b()V

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/vungle/publisher/jk;->z:Lcom/vungle/publisher/jj;

    if-eqz v1, :cond_1

    .line 72
    iget-object v1, p0, Lcom/vungle/publisher/jk;->z:Lcom/vungle/publisher/jj;

    invoke-virtual {v1}, Lcom/vungle/publisher/jj;->v()Ljava/lang/Object;

    .line 74
    :cond_1
    return-object v0
.end method

.method protected abstract r()Lcom/vungle/publisher/jk$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/jk$a",
            "<TA;TV;TR;>;"
        }
    .end annotation
.end method

.method public final s()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/vungle/publisher/jk;->x:Ljava/lang/String;

    return-object v0
.end method

.method public final t()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/vungle/publisher/jk;->y:Ljava/lang/String;

    return-object v0
.end method

.method public final u()Lcom/vungle/publisher/jj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 52
    invoke-virtual {p0}, Lcom/vungle/publisher/jk;->r()Lcom/vungle/publisher/jk$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/vungle/publisher/jk$a;->a(Lcom/vungle/publisher/jk;Z)Lcom/vungle/publisher/jj;

    move-result-object v0

    return-object v0
.end method

.method public synthetic v()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/vungle/publisher/jk;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
