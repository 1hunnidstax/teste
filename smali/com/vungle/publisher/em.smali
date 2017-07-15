.class public abstract Lcom/vungle/publisher/em;
.super Lcom/vungle/publisher/jp;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/gh$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/em$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/vungle/publisher/cj;",
        "V:",
        "Lcom/vungle/publisher/em",
        "<TA;TV;>;>",
        "Lcom/vungle/publisher/jp",
        "<TA;>;",
        "Lcom/vungle/publisher/gh$b",
        "<TA;>;"
    }
.end annotation


# instance fields
.field a:[Lcom/vungle/publisher/db;

.field b:Z

.field c:Z

.field d:Z

.field e:Lcom/vungle/publisher/gm$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcom/vungle/publisher/db$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Lcom/vungle/publisher/gh;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/vungle/publisher/jp;-><init>()V

    return-void
.end method

.method private E()Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 135
    .line 137
    iget-object v0, p0, Lcom/vungle/publisher/em;->g:Lcom/vungle/publisher/gh;

    invoke-virtual {v0}, Lcom/vungle/publisher/gh;->a()Ljava/io/File;

    move-result-object v3

    .line 139
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 140
    new-instance v4, Ljava/io/File;

    invoke-virtual {p0}, Lcom/vungle/publisher/em;->u()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v5, v5, [Lcom/vungle/publisher/ra$a;

    const/4 v6, 0x0

    new-instance v7, Lcom/vungle/publisher/em$1;

    invoke-direct {v7, p0, v0}, Lcom/vungle/publisher/em$1;-><init>(Lcom/vungle/publisher/em;Ljava/util/List;)V

    aput-object v7, v5, v6

    invoke-static {v3, v4, v5}, Lcom/vungle/publisher/ra;->a(Ljava/io/File;Ljava/io/File;[Lcom/vungle/publisher/ra$a;)V

    .line 148
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lcom/vungle/publisher/db;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/publisher/db;

    const/4 v4, 0x1

    invoke-direct {p0, v0, v4}, Lcom/vungle/publisher/em;->a([Lcom/vungle/publisher/db;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 154
    :goto_0
    return v0

    .line 151
    :catch_0
    move-exception v0

    .line 152
    iget-object v1, p0, Lcom/vungle/publisher/em;->e:Lcom/vungle/publisher/gm$a;

    const-string v4, "VunglePrepare"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "error extracting "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3, v0}, Lcom/vungle/publisher/gm$a;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v2

    goto :goto_0
.end method

.method private F()Z
    .locals 5

    .prologue
    .line 198
    invoke-virtual {p0}, Lcom/vungle/publisher/em;->u()Ljava/lang/String;

    move-result-object v0

    .line 199
    const-string v1, "VungleDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deleting "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vungle/publisher/em;->r:Lcom/vungle/publisher/el$b;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " directory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    invoke-virtual {p0}, Lcom/vungle/publisher/em;->u()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/vungle/publisher/qx;->a(Ljava/lang/String;)Z

    move-result v1

    .line 201
    if-eqz v1, :cond_0

    .line 202
    const-string v2, "VungleDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "deleting "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vungle/publisher/em;->r:Lcom/vungle/publisher/el$b;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " directory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/vungle/publisher/em;->a:[Lcom/vungle/publisher/db;

    .line 204
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/publisher/em;->d:Z

    .line 209
    :goto_0
    return v1

    .line 207
    :cond_0
    const-string v2, "VungleDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "failed to delete "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/vungle/publisher/em;->r:Lcom/vungle/publisher/el$b;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " directory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private a([Lcom/vungle/publisher/db;Z)V
    .locals 1

    .prologue
    .line 90
    iput-object p1, p0, Lcom/vungle/publisher/em;->a:[Lcom/vungle/publisher/db;

    .line 91
    iput-boolean p2, p0, Lcom/vungle/publisher/em;->c:Z

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/vungle/publisher/em;->b:Z

    .line 93
    return-void
.end method


# virtual methods
.method public final B()Ljava/io/File;
    .locals 2

    .prologue
    .line 104
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/vungle/publisher/em;->C()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public C()Ljava/lang/String;
    .locals 3

    .prologue
    .line 108
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/vungle/publisher/em;->u()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "index.html"

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/vungle/publisher/qx;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Z)Landroid/content/ContentValues;
    .locals 2

    .prologue
    .line 240
    invoke-super {p0, p1}, Lcom/vungle/publisher/jp;->a(Z)Landroid/content/ContentValues;

    move-result-object v0

    .line 241
    iget-object v1, p0, Lcom/vungle/publisher/em;->g:Lcom/vungle/publisher/gh;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/gh;->a(Landroid/content/ContentValues;)V

    .line 242
    return-object v0
.end method

.method public final a(Ljava/lang/Integer;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/vungle/publisher/em;->g:Lcom/vungle/publisher/gh;

    iput-object p1, v0, Lcom/vungle/publisher/gh;->c:Ljava/lang/Integer;

    .line 66
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/vungle/publisher/em;->g:Lcom/vungle/publisher/gh;

    iput-object p1, v0, Lcom/vungle/publisher/gh;->b:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public final b_()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 221
    invoke-super {p0}, Lcom/vungle/publisher/jp;->b_()I

    move-result v1

    .line 222
    const/4 v0, 0x1

    if-ne v1, v0, :cond_0

    .line 223
    iget-boolean v0, p0, Lcom/vungle/publisher/em;->d:Z

    if-eqz v0, :cond_1

    .line 224
    iget-object v2, p0, Lcom/vungle/publisher/em;->f:Lcom/vungle/publisher/db$a;

    iget-object v0, p0, Lcom/vungle/publisher/em;->t:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v2, v0}, Lcom/vungle/publisher/db$a;->a(Ljava/lang/Integer;)I

    .line 225
    invoke-direct {p0}, Lcom/vungle/publisher/em;->F()Z

    .line 226
    const-string v0, "VungleDatabase"

    const-string v2, "resetting areArchiveEntriesDeleted = false"

    invoke-static {v0, v2}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iput-boolean v3, p0, Lcom/vungle/publisher/em;->d:Z

    .line 235
    :cond_0
    :goto_0
    return v1

    .line 229
    :cond_1
    iget-boolean v0, p0, Lcom/vungle/publisher/em;->c:Z

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/vungle/publisher/em;->a:[Lcom/vungle/publisher/db;

    invoke-static {v0}, Lcom/vungle/publisher/db$a;->a([Lcom/vungle/publisher/dl;)V

    .line 231
    const-string v0, "VungleDatabase"

    const-string v2, "resetting areArchiveEntriesNew = false"

    invoke-static {v0, v2}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    iput-boolean v3, p0, Lcom/vungle/publisher/em;->c:Z

    goto :goto_0
.end method

.method public final e()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/vungle/publisher/em;->t()Lcom/vungle/publisher/el$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/vungle/publisher/em;->g:Lcom/vungle/publisher/gh;

    iget-object v0, v0, Lcom/vungle/publisher/gh;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/vungle/publisher/em;->g:Lcom/vungle/publisher/gh;

    invoke-virtual {v0}, Lcom/vungle/publisher/gh;->c()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()Z
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/vungle/publisher/em;->g:Lcom/vungle/publisher/gh;

    invoke-virtual {v0}, Lcom/vungle/publisher/gh;->e()Z

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 1

    .prologue
    .line 159
    iget-object v0, p0, Lcom/vungle/publisher/em;->g:Lcom/vungle/publisher/gh;

    invoke-virtual {v0}, Lcom/vungle/publisher/gh;->f()Z

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/vungle/publisher/em;->g:Lcom/vungle/publisher/gh;

    invoke-virtual {v0}, Lcom/vungle/publisher/gh;->h()Z

    move-result v0

    invoke-direct {p0}, Lcom/vungle/publisher/em;->F()Z

    move-result v1

    and-int/2addr v0, v1

    return v0
.end method

.method public final k()I
    .locals 1

    .prologue
    .line 216
    invoke-super {p0}, Lcom/vungle/publisher/jp;->n()I

    move-result v0

    return v0
.end method

.method protected final m()Ljava/lang/StringBuilder;
    .locals 2

    .prologue
    .line 249
    invoke-super {p0}, Lcom/vungle/publisher/jp;->m()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 250
    iget-object v1, p0, Lcom/vungle/publisher/em;->g:Lcom/vungle/publisher/gh;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/gh;->a(Ljava/lang/StringBuilder;)V

    .line 251
    return-object v0
.end method

.method public final n()I
    .locals 1

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/vungle/publisher/em;->F()Z

    .line 182
    iget-object v0, p0, Lcom/vungle/publisher/em;->g:Lcom/vungle/publisher/gh;

    invoke-virtual {v0}, Lcom/vungle/publisher/gh;->d()I

    move-result v0

    return v0
.end method

.method public final o()Z
    .locals 2

    .prologue
    .line 125
    const/4 v0, 0x0

    .line 126
    iget-object v1, p0, Lcom/vungle/publisher/em;->g:Lcom/vungle/publisher/gh;

    invoke-virtual {v1}, Lcom/vungle/publisher/gh;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    invoke-direct {p0}, Lcom/vungle/publisher/em;->E()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/vungle/publisher/em;->p()Z

    move-result v0

    .line 131
    :cond_0
    return v0
.end method

.method public final p()Z
    .locals 11

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 164
    .line 165
    invoke-virtual {p0}, Lcom/vungle/publisher/em;->q()[Lcom/vungle/publisher/db;

    move-result-object v5

    array-length v6, v5

    move v4, v1

    move v0, v1

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v2, v5, v4

    .line 168
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v7, v2, Lcom/vungle/publisher/db;->a:Lcom/vungle/publisher/em;

    invoke-virtual {v7}, Lcom/vungle/publisher/em;->u()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v0, v1

    iget-object v7, v2, Lcom/vungle/publisher/db;->b:Ljava/lang/String;

    aput-object v7, v0, v3

    invoke-static {v0}, Lcom/vungle/publisher/qx;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    const/4 v0, 0x0

    :goto_1
    iget-object v7, v2, Lcom/vungle/publisher/db;->c:Ljava/lang/Integer;

    if-nez v7, :cond_2

    const-string v2, "VunglePrepare"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, " size is null"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    :goto_2
    if-nez v0, :cond_5

    move v0, v1

    .line 173
    :cond_0
    return v0

    .line 168
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v8

    long-to-int v7, v8

    iget-object v2, v2, Lcom/vungle/publisher/db;->c:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-ne v7, v8, :cond_3

    move v2, v3

    :goto_3
    if-eqz v2, :cond_4

    const-string v8, "VunglePrepare"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " size verified "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v2

    goto :goto_2

    :cond_3
    move v2, v1

    goto :goto_3

    :cond_4
    const-string v2, "VunglePrepare"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, " doesn\'t match expected "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    goto :goto_2

    .line 165
    :cond_5
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    move v0, v3

    goto/16 :goto_0
.end method

.method public final q()[Lcom/vungle/publisher/db;
    .locals 2

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/vungle/publisher/em;->b:Z

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/vungle/publisher/em;->f:Lcom/vungle/publisher/db$a;

    invoke-virtual {v0, p0}, Lcom/vungle/publisher/db$a;->a(Lcom/vungle/publisher/em;)[Lcom/vungle/publisher/db;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/vungle/publisher/em;->a([Lcom/vungle/publisher/db;Z)V

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/em;->a:[Lcom/vungle/publisher/db;

    return-object v0
.end method

.method final u()Ljava/lang/String;
    .locals 3

    .prologue
    .line 100
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/vungle/publisher/em;->d()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/vungle/publisher/em;->r:Lcom/vungle/publisher/el$b;

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/vungle/publisher/qx;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
