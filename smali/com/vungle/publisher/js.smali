.class public final Lcom/vungle/publisher/js;
.super Lcom/vungle/publisher/dm;
.source "vungle"

# interfaces
.implements Lcom/vungle/publisher/dn;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/js$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/dm;",
        "Lcom/vungle/publisher/dn",
        "<",
        "Lcom/vungle/publisher/js;",
        ">;"
    }
.end annotation


# instance fields
.field A:Lcom/vungle/publisher/ds;

.field B:Ljava/lang/String;

.field C:Lcom/vungle/publisher/js$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field D:Lcom/vungle/publisher/lg$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field q:Z

.field r:Z

.field v:Z

.field w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/dg;",
            ">;"
        }
    .end annotation
.end field

.field x:Lcom/vungle/publisher/jt;

.field y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/jc;",
            ">;"
        }
    .end annotation
.end field

.field z:Lcom/vungle/publisher/kx;


# direct methods
.method constructor <init>()V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Lcom/vungle/publisher/dm;-><init>()V

    .line 36
    iput-boolean v0, p0, Lcom/vungle/publisher/js;->q:Z

    .line 37
    iput-boolean v0, p0, Lcom/vungle/publisher/js;->r:Z

    .line 38
    iput-boolean v0, p0, Lcom/vungle/publisher/js;->v:Z

    .line 52
    return-void
.end method

.method private q()Lcom/vungle/publisher/lg;
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 71
    iget-object v0, p0, Lcom/vungle/publisher/js;->C:Lcom/vungle/publisher/js$a;

    invoke-virtual {v0, p0, v3}, Lcom/vungle/publisher/js$a;->a(Lcom/vungle/publisher/js;Z)Lcom/vungle/publisher/jt;

    .line 72
    invoke-static {}, Lcom/vungle/publisher/tk;->a()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/vungle/publisher/js;->x:Lcom/vungle/publisher/jt;

    invoke-virtual {v2}, Lcom/vungle/publisher/jt;->u()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "mraid.js"

    aput-object v2, v1, v4

    invoke-static {v1}, Lcom/vungle/publisher/qx;->a([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "UTF-8"

    invoke-static {v2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 73
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/vungle/publisher/js;->D:Lcom/vungle/publisher/lg$a;

    iget-object v1, p0, Lcom/vungle/publisher/js;->x:Lcom/vungle/publisher/jt;

    invoke-virtual {v1}, Lcom/vungle/publisher/jt;->B()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/lg$a;->a(Ljava/lang/String;)Lcom/vungle/publisher/lg;

    move-result-object v0

    return-object v0

    .line 72
    :catch_0
    move-exception v0

    const-string v1, "VungleDatabase"

    const-string v2, "error closing output file"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v2

    :goto_1
    :try_start_3
    const-string v2, "VungleDatabase"

    const-string v3, "Failed writing to the mraid js file"

    invoke-static {v2, v3, v0}, Lcom/vungle/log/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "VungleDatabase"

    const-string v2, "error closing output file"

    invoke-static {v1, v2, v0}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_2
    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_1
    :goto_3
    throw v0

    :catch_3
    move-exception v1

    const-string v2, "VungleDatabase"

    const-string v3, "error closing output file"

    invoke-static {v2, v3, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method protected final a(Z)Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 164
    invoke-super {p0, p1}, Lcom/vungle/publisher/dm;->a(Z)Landroid/content/ContentValues;

    move-result-object v0

    .line 165
    if-eqz p1, :cond_0

    .line 166
    const-string v1, "template_id"

    iget-object v2, p0, Lcom/vungle/publisher/js;->B:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    :cond_0
    return-object v0
.end method

.method public final bridge synthetic a()Lcom/vungle/publisher/cj$a;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vungle/publisher/js;->C:Lcom/vungle/publisher/js$a;

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
    .line 99
    iget-object v0, p0, Lcom/vungle/publisher/js;->z:Lcom/vungle/publisher/kx;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/kx;->a(Lcom/vungle/publisher/ji;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lcom/vungle/publisher/cj$c;)V
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/vungle/publisher/js;->e:Lcom/vungle/publisher/cj$c;

    .line 117
    invoke-super {p0, p1}, Lcom/vungle/publisher/dm;->a(Lcom/vungle/publisher/cj$c;)V

    .line 118
    iget-object v1, p0, Lcom/vungle/publisher/js;->A:Lcom/vungle/publisher/ds;

    invoke-virtual {v1, v0, p1}, Lcom/vungle/publisher/ds;->a(Lcom/vungle/publisher/cj$c;Lcom/vungle/publisher/cj$c;)V

    .line 119
    return-void
.end method

.method protected final bridge synthetic a_()Lcom/vungle/publisher/dl$a;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/vungle/publisher/js;->C:Lcom/vungle/publisher/js$a;

    return-object v0
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/vungle/publisher/js;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/vungle/publisher/qx;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final b_()I
    .locals 3

    .prologue
    .line 143
    invoke-super {p0}, Lcom/vungle/publisher/dm;->b_()I

    move-result v1

    .line 144
    const/4 v0, 0x1

    if-ne v1, v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/vungle/publisher/js;->w:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/vungle/publisher/js;->w:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/dg;

    .line 147
    invoke-virtual {v0}, Lcom/vungle/publisher/dg;->b_()I

    goto :goto_0

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/js;->x:Lcom/vungle/publisher/jt;

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/vungle/publisher/js;->x:Lcom/vungle/publisher/jt;

    invoke-virtual {v0}, Lcom/vungle/publisher/jt;->b_()I

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/vungle/publisher/js;->y:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 154
    iget-object v0, p0, Lcom/vungle/publisher/js;->y:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/jc;

    .line 155
    invoke-virtual {v0}, Lcom/vungle/publisher/jc;->b_()I

    goto :goto_1

    .line 159
    :cond_2
    return v1
.end method

.method public final synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    invoke-super {p0}, Lcom/vungle/publisher/dm;->w()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public final f_()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/vungle/publisher/gg",
            "<",
            "Lcom/vungle/publisher/js;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 201
    iget-object v1, p0, Lcom/vungle/publisher/js;->C:Lcom/vungle/publisher/js$a;

    .line 202
    invoke-virtual {v1, p0}, Lcom/vungle/publisher/js$a;->a(Lcom/vungle/publisher/js;)Ljava/util/List;

    .line 203
    iget-object v2, p0, Lcom/vungle/publisher/js;->w:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 204
    iget-object v2, p0, Lcom/vungle/publisher/js;->w:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 208
    :goto_0
    const/4 v2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/vungle/publisher/js$a;->a(Lcom/vungle/publisher/js;Z)Lcom/vungle/publisher/jt;

    .line 209
    iget-object v1, p0, Lcom/vungle/publisher/js;->x:Lcom/vungle/publisher/jt;

    if-eqz v1, :cond_1

    .line 210
    iget-object v1, p0, Lcom/vungle/publisher/js;->x:Lcom/vungle/publisher/jt;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    :goto_1
    return-object v0

    .line 206
    :cond_0
    const-string v2, "VungleDatabase"

    const-string v3, "vungle mraid ad assets are null"

    invoke-static {v2, v3}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 212
    :cond_1
    const-string v1, "VungleDatabase"

    const-string v2, "vungle mraid ad template is null"

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final g_()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 183
    iget-object v1, p0, Lcom/vungle/publisher/js;->C:Lcom/vungle/publisher/js$a;

    .line 184
    invoke-virtual {v1, p0, v0}, Lcom/vungle/publisher/js$a;->a(Lcom/vungle/publisher/js;Z)Lcom/vungle/publisher/jt;

    .line 185
    iget-object v1, p0, Lcom/vungle/publisher/js;->x:Lcom/vungle/publisher/jt;

    if-eqz v1, :cond_0

    .line 187
    :goto_0
    invoke-virtual {p0}, Lcom/vungle/publisher/js;->z()Ljava/lang/String;

    move-result-object v1

    .line 188
    if-eqz v0, :cond_1

    .line 189
    const-string v2, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " has "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/vungle/publisher/el$b;->d:Lcom/vungle/publisher/el$b;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/vungle/publisher/js;->x:Lcom/vungle/publisher/jt;

    iget-object v3, v3, Lcom/vungle/publisher/em;->g:Lcom/vungle/publisher/gh;

    iget-object v3, v3, Lcom/vungle/publisher/gh;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    :goto_1
    return v0

    .line 185
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 192
    :cond_1
    const-string v1, "VunglePrepare"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "vungle mraid ad is invalid. template = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/vungle/publisher/js;->x:Lcom/vungle/publisher/jt;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    sget-object v1, Lcom/vungle/publisher/cj$c;->c:Lcom/vungle/publisher/cj$c;

    invoke-virtual {p0, v1}, Lcom/vungle/publisher/js;->a(Lcom/vungle/publisher/cj$c;)V

    goto :goto_1
.end method

.method public final bridge synthetic h_()Lcom/vungle/publisher/cj;
    .locals 0

    .prologue
    .line 33
    return-object p0
.end method

.method public final synthetic p()Lcom/vungle/publisher/lk;
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/vungle/publisher/js;->q()Lcom/vungle/publisher/lg;

    move-result-object v0

    return-object v0
.end method

.method public final synthetic v()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 33
    invoke-super {p0}, Lcom/vungle/publisher/dm;->v()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/vungle/publisher/js;->z:Lcom/vungle/publisher/kx;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/vungle/publisher/js;->z:Lcom/vungle/publisher/kx;

    invoke-virtual {v1}, Lcom/vungle/publisher/kx;->b()V

    :cond_0
    iget-object v1, p0, Lcom/vungle/publisher/js;->w:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/vungle/publisher/js;->w:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/publisher/dg;

    invoke-virtual {v1}, Lcom/vungle/publisher/dg;->q()Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/vungle/publisher/js;->x:Lcom/vungle/publisher/jt;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/vungle/publisher/js;->x:Lcom/vungle/publisher/jt;

    invoke-virtual {v1}, Lcom/vungle/publisher/jt;->v()Ljava/lang/Object;

    :cond_2
    iget-object v1, p0, Lcom/vungle/publisher/js;->y:Ljava/util/List;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/vungle/publisher/js;->y:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/vungle/publisher/jc;

    invoke-virtual {v1}, Lcom/vungle/publisher/jc;->v()Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-object v0
.end method
