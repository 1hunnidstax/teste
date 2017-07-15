.class public abstract Lcom/vungle/publisher/jk$a;
.super Lcom/vungle/publisher/cj$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/jk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
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
        "Lcom/vungle/publisher/cj$a",
        "<TA;TR;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/vungle/publisher/cj$a;-><init>()V

    return-void
.end method

.method private b(Lcom/vungle/publisher/jk;Lcom/vungle/publisher/aed;)Lcom/vungle/publisher/jk;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TR;)TA;"
        }
    .end annotation

    .prologue
    .line 128
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/cj$a;->a(Lcom/vungle/publisher/cj;Lcom/vungle/publisher/ade;)Lcom/vungle/publisher/cj;

    .line 129
    invoke-virtual {p2}, Lcom/vungle/publisher/aed;->c()Ljava/lang/String;

    move-result-object v0

    .line 130
    invoke-virtual {p2}, Lcom/vungle/publisher/aed;->e()Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 132
    iput-object v1, p1, Lcom/vungle/publisher/jk;->x:Ljava/lang/String;

    .line 138
    :goto_0
    return-object p1

    .line 135
    :cond_0
    iput-object v0, p1, Lcom/vungle/publisher/jk;->x:Ljava/lang/String;

    .line 136
    iput-object v1, p1, Lcom/vungle/publisher/jk;->y:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/vungle/publisher/jk;Lcom/vungle/publisher/aed;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TR;)I"
        }
    .end annotation

    .prologue
    .line 121
    invoke-direct {p0, p1, p2}, Lcom/vungle/publisher/jk$a;->b(Lcom/vungle/publisher/jk;Lcom/vungle/publisher/aed;)Lcom/vungle/publisher/jk;

    .line 122
    invoke-virtual {p1}, Lcom/vungle/publisher/jk;->u()Lcom/vungle/publisher/jj;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/vungle/publisher/jj$a;->a(Lcom/vungle/publisher/jj;Lcom/vungle/publisher/aed;)Lcom/vungle/publisher/jj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/jj;->b_()I

    .line 123
    iget-object v0, p1, Lcom/vungle/publisher/jk;->A:Lcom/vungle/publisher/jh;

    invoke-virtual {v0, p2}, Lcom/vungle/publisher/jh;->a(Lcom/vungle/publisher/ade;)Ljava/util/Map;

    .line 124
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/cj$a;->b(Lcom/vungle/publisher/cj;Lcom/vungle/publisher/ade;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic a(Lcom/vungle/publisher/ade;)Lcom/vungle/publisher/cj;
    .locals 1

    .prologue
    .line 105
    check-cast p1, Lcom/vungle/publisher/aed;

    invoke-virtual {p0, p1}, Lcom/vungle/publisher/jk$a;->a(Lcom/vungle/publisher/aed;)Lcom/vungle/publisher/jk;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/vungle/publisher/cj;Landroid/database/Cursor;Z)Lcom/vungle/publisher/cj;
    .locals 1

    .prologue
    .line 105
    check-cast p1, Lcom/vungle/publisher/jk;

    invoke-virtual {p0, p1, p2, p3}, Lcom/vungle/publisher/jk$a;->a(Lcom/vungle/publisher/jk;Landroid/database/Cursor;Z)Lcom/vungle/publisher/jk;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic a(Lcom/vungle/publisher/cj;Lcom/vungle/publisher/ade;)Lcom/vungle/publisher/cj;
    .locals 1

    .prologue
    .line 105
    check-cast p1, Lcom/vungle/publisher/jk;

    check-cast p2, Lcom/vungle/publisher/aed;

    invoke-direct {p0, p1, p2}, Lcom/vungle/publisher/jk$a;->b(Lcom/vungle/publisher/jk;Lcom/vungle/publisher/aed;)Lcom/vungle/publisher/jk;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic a(Lcom/vungle/publisher/dl;Landroid/database/Cursor;)Lcom/vungle/publisher/dl;
    .locals 1

    .prologue
    .line 105
    check-cast p1, Lcom/vungle/publisher/jk;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/vungle/publisher/jk$a;->a(Lcom/vungle/publisher/jk;Landroid/database/Cursor;Z)Lcom/vungle/publisher/jk;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/vungle/publisher/jk;Z)Lcom/vungle/publisher/jj;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;Z)TV;"
        }
    .end annotation

    .prologue
    .line 155
    iget-boolean v0, p1, Lcom/vungle/publisher/jk;->B:Z

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p1, Lcom/vungle/publisher/jk;->z:Lcom/vungle/publisher/jj;

    .line 162
    :goto_0
    return-object v0

    .line 159
    :cond_0
    invoke-virtual {p0}, Lcom/vungle/publisher/jk$a;->f()Lcom/vungle/publisher/jj$a;

    move-result-object v1

    iget-object v0, p1, Lcom/vungle/publisher/jk;->t:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0, p2}, Lcom/vungle/publisher/jj$a;->a(Ljava/lang/String;Z)Lcom/vungle/publisher/jj;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/jk;->z:Lcom/vungle/publisher/jj;

    .line 160
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/vungle/publisher/jk;->B:Z

    goto :goto_0
.end method

.method public a(Lcom/vungle/publisher/aed;)Lcom/vungle/publisher/jk;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)TA;"
        }
    .end annotation

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/vungle/publisher/cj$a;->a(Lcom/vungle/publisher/ade;)Lcom/vungle/publisher/cj;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/jk;

    .line 113
    invoke-virtual {p0}, Lcom/vungle/publisher/jk$a;->e()Lcom/vungle/publisher/jh$a;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/vungle/publisher/jh$a;->a(Lcom/vungle/publisher/cj;Lcom/vungle/publisher/ade;)Lcom/vungle/publisher/jh;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/jk;->A:Lcom/vungle/publisher/jh;

    .line 114
    invoke-virtual {p0}, Lcom/vungle/publisher/jk$a;->f()Lcom/vungle/publisher/jj$a;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/vungle/publisher/jj$a;->a(Lcom/vungle/publisher/jk;Lcom/vungle/publisher/aed;)Lcom/vungle/publisher/jj;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/jk;->z:Lcom/vungle/publisher/jj;

    .line 115
    return-object v0
.end method

.method protected a(Lcom/vungle/publisher/jk;Landroid/database/Cursor;Z)Lcom/vungle/publisher/jk;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;",
            "Landroid/database/Cursor;",
            "Z)TA;"
        }
    .end annotation

    .prologue
    .line 143
    invoke-super {p0, p1, p2, p3}, Lcom/vungle/publisher/cj$a;->a(Lcom/vungle/publisher/cj;Landroid/database/Cursor;Z)Lcom/vungle/publisher/cj;

    .line 144
    const-string v0, "call_to_action_final_url"

    invoke-static {p2, v0}, Lcom/vungle/publisher/cb;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/jk;->x:Ljava/lang/String;

    .line 145
    const-string v0, "call_to_action_url"

    invoke-static {p2, v0}, Lcom/vungle/publisher/cb;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/jk;->y:Ljava/lang/String;

    .line 146
    invoke-virtual {p0}, Lcom/vungle/publisher/jk$a;->e()Lcom/vungle/publisher/jh$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/jh$a;->a(Lcom/vungle/publisher/cj;)Lcom/vungle/publisher/jh;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/jk;->A:Lcom/vungle/publisher/jh;

    .line 147
    if-eqz p3, :cond_0

    .line 148
    invoke-virtual {p0, p1, p3}, Lcom/vungle/publisher/jk$a;->a(Lcom/vungle/publisher/jk;Z)Lcom/vungle/publisher/jj;

    .line 150
    :cond_0
    return-object p1
.end method

.method public final synthetic b(Lcom/vungle/publisher/cj;Lcom/vungle/publisher/ade;)I
    .locals 1

    .prologue
    .line 105
    check-cast p1, Lcom/vungle/publisher/jk;

    check-cast p2, Lcom/vungle/publisher/aed;

    invoke-virtual {p0, p1, p2}, Lcom/vungle/publisher/jk$a;->a(Lcom/vungle/publisher/jk;Lcom/vungle/publisher/aed;)I

    move-result v0

    return v0
.end method

.method protected abstract e()Lcom/vungle/publisher/jh$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/jh$a",
            "<*TA;TR;",
            "Lcom/vungle/publisher/jl;",
            "**>;"
        }
    .end annotation
.end method

.method protected abstract f()Lcom/vungle/publisher/jj$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/jj$a",
            "<TA;TV;TR;>;"
        }
    .end annotation
.end method
