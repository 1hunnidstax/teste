.class public final Lcom/vungle/publisher/en;
.super Lcom/vungle/publisher/jj;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/gh$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/en$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/jj",
        "<",
        "Lcom/vungle/publisher/eo;",
        ">;",
        "Lcom/vungle/publisher/gh$b",
        "<",
        "Lcom/vungle/publisher/eo;",
        ">;"
    }
.end annotation


# instance fields
.field a:Ljava/lang/String;

.field public b:Lcom/vungle/publisher/gh;

.field c:Lcom/vungle/publisher/eo$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/vungle/publisher/en$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/vungle/publisher/jj;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a(Z)Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 167
    invoke-super {p0, p1}, Lcom/vungle/publisher/jj;->a(Z)Landroid/content/ContentValues;

    move-result-object v0

    .line 168
    iget-object v1, p0, Lcom/vungle/publisher/en;->b:Lcom/vungle/publisher/gh;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/gh;->a(Landroid/content/ContentValues;)V

    .line 169
    const-string v1, "checksum"

    iget-object v2, p0, Lcom/vungle/publisher/en;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    return-object v0
.end method

.method public final a(Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/vungle/publisher/en;->b:Lcom/vungle/publisher/gh;

    iput-object p1, v0, Lcom/vungle/publisher/gh;->c:Ljava/lang/Integer;

    .line 70
    return-void
.end method

.method protected final bridge synthetic a_()Lcom/vungle/publisher/dl$a;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/vungle/publisher/en;->d:Lcom/vungle/publisher/en$a;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/vungle/publisher/en;->t()Lcom/vungle/publisher/el$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".mp4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/vungle/publisher/en;->b:Lcom/vungle/publisher/gh;

    iget-object v0, v0, Lcom/vungle/publisher/gh;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/vungle/publisher/en;->b:Lcom/vungle/publisher/gh;

    invoke-virtual {v0}, Lcom/vungle/publisher/gh;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/vungle/publisher/en;->b:Lcom/vungle/publisher/gh;

    invoke-virtual {v0}, Lcom/vungle/publisher/gh;->e()Z

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/vungle/publisher/en;->b:Lcom/vungle/publisher/gh;

    invoke-virtual {v0}, Lcom/vungle/publisher/gh;->f()Z

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/vungle/publisher/en;->b:Lcom/vungle/publisher/gh;

    invoke-virtual {v0}, Lcom/vungle/publisher/gh;->h()Z

    move-result v0

    return v0
.end method

.method public final k()I
    .locals 1

    .prologue
    .line 162
    invoke-super {p0}, Lcom/vungle/publisher/jj;->n()I

    move-result v0

    return v0
.end method

.method protected final m()Ljava/lang/StringBuilder;
    .locals 4

    .prologue
    .line 177
    invoke-super {p0}, Lcom/vungle/publisher/jj;->m()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/vungle/publisher/en;->b:Lcom/vungle/publisher/gh;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/gh;->a(Ljava/lang/StringBuilder;)V

    .line 179
    const-string v1, "checksum"

    iget-object v2, p0, Lcom/vungle/publisher/en;->a:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/vungle/publisher/dl;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 180
    return-object v0
.end method

.method public final n()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/vungle/publisher/en;->b:Lcom/vungle/publisher/gh;

    invoke-virtual {v0}, Lcom/vungle/publisher/gh;->d()I

    move-result v0

    return v0
.end method

.method public final o()Z
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/vungle/publisher/en;->b:Lcom/vungle/publisher/gh;

    invoke-virtual {v0}, Lcom/vungle/publisher/gh;->f()Z

    move-result v0

    return v0
.end method

.method public final p()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/vungle/publisher/en;->b:Lcom/vungle/publisher/gh;

    invoke-virtual {v0}, Lcom/vungle/publisher/gh;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final q()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 89
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/vungle/publisher/en;->b:Lcom/vungle/publisher/gh;

    invoke-virtual {v1}, Lcom/vungle/publisher/gh;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic r()Lcom/vungle/publisher/cj$a;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/vungle/publisher/en;->c:Lcom/vungle/publisher/eo$a;

    return-object v0
.end method
