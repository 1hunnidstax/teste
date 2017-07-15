.class public final Lcom/vungle/publisher/dg;
.super Lcom/vungle/publisher/jp;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/gh$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/dg$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/jp",
        "<",
        "Lcom/vungle/publisher/js;",
        ">;",
        "Lcom/vungle/publisher/gh$b",
        "<",
        "Lcom/vungle/publisher/js;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/gh;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Lcom/vungle/publisher/jc;

.field e:Lcom/vungle/publisher/js$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcom/vungle/publisher/dg$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/vungle/publisher/jp;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Z)Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 129
    invoke-super {p0, p1}, Lcom/vungle/publisher/jp;->a(Z)Landroid/content/ContentValues;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/vungle/publisher/dg;->a:Lcom/vungle/publisher/gh;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/gh;->a(Landroid/content/ContentValues;)V

    .line 131
    const-string v1, "name"

    iget-object v2, p0, Lcom/vungle/publisher/dg;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const-string v1, "extension"

    iget-object v2, p0, Lcom/vungle/publisher/dg;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-object v0
.end method

.method public final a(Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/vungle/publisher/dg;->a:Lcom/vungle/publisher/gh;

    iput-object p1, v0, Lcom/vungle/publisher/gh;->c:Ljava/lang/Integer;

    .line 55
    return-void
.end method

.method protected final bridge synthetic a_()Lcom/vungle/publisher/dl$a;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/vungle/publisher/dg;->f:Lcom/vungle/publisher/dg$a;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/vungle/publisher/dg;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/vungle/publisher/dg;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/vungle/publisher/dg;->a:Lcom/vungle/publisher/gh;

    iget-object v0, v0, Lcom/vungle/publisher/gh;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vungle/publisher/dg;->a:Lcom/vungle/publisher/gh;

    invoke-virtual {v0}, Lcom/vungle/publisher/gh;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/vungle/publisher/dg;->a:Lcom/vungle/publisher/gh;

    invoke-virtual {v0}, Lcom/vungle/publisher/gh;->e()Z

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/vungle/publisher/dg;->a:Lcom/vungle/publisher/gh;

    invoke-virtual {v0}, Lcom/vungle/publisher/gh;->f()Z

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/vungle/publisher/dg;->a:Lcom/vungle/publisher/gh;

    invoke-virtual {v0}, Lcom/vungle/publisher/gh;->b()Z

    move-result v0

    return v0
.end method

.method public final k()I
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Lcom/vungle/publisher/jp;->n()I

    move-result v0

    return v0
.end method

.method public final o()Z
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public final p()Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public final q()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 120
    invoke-super {p0}, Lcom/vungle/publisher/jp;->v()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 121
    iget-object v1, p0, Lcom/vungle/publisher/dg;->d:Lcom/vungle/publisher/jc;

    if-eqz v1, :cond_0

    .line 122
    iget-object v1, p0, Lcom/vungle/publisher/dg;->d:Lcom/vungle/publisher/jc;

    invoke-virtual {v1}, Lcom/vungle/publisher/jc;->v()Ljava/lang/Object;

    .line 124
    :cond_0
    return-object v0
.end method

.method protected final bridge synthetic r()Lcom/vungle/publisher/cj$a;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/vungle/publisher/dg;->e:Lcom/vungle/publisher/js$a;

    return-object v0
.end method

.method public final synthetic v()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/vungle/publisher/dg;->q()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
