.class public final Lcom/vungle/publisher/db;
.super Lcom/vungle/publisher/dl;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/db$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/dl",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/em;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/em",
            "<**>;"
        }
    .end annotation
.end field

.field b:Ljava/lang/String;

.field c:Ljava/lang/Integer;

.field d:Lcom/vungle/publisher/db$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/vungle/publisher/dl;-><init>()V

    return-void
.end method

.method private e()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vungle/publisher/db;->a:Lcom/vungle/publisher/em;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/db;->a:Lcom/vungle/publisher/em;

    invoke-virtual {v0}, Lcom/vungle/publisher/em;->D()Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected final a(Z)Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 127
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 128
    iget-object v0, p0, Lcom/vungle/publisher/db;->t:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 129
    const-string v2, "id"

    iget-object v0, p0, Lcom/vungle/publisher/db;->t:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 131
    :cond_0
    const-string v0, "viewable_id"

    invoke-direct {p0}, Lcom/vungle/publisher/db;->e()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 132
    const-string v0, "relative_path"

    iget-object v2, p0, Lcom/vungle/publisher/db;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v0, "size"

    iget-object v2, p0, Lcom/vungle/publisher/db;->c:Ljava/lang/Integer;

    invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 134
    return-object v1
.end method

.method protected final bridge synthetic a_()Lcom/vungle/publisher/dl$a;
    .locals 1

    .prologue
    .line 18
    iget-object v0, p0, Lcom/vungle/publisher/db;->d:Lcom/vungle/publisher/db$a;

    return-object v0
.end method

.method public final b_()I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 110
    iget-object v0, p0, Lcom/vungle/publisher/db;->t:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/vungle/publisher/db;->e()Ljava/lang/Integer;

    move-result-object v5

    .line 112
    iget-object v6, p0, Lcom/vungle/publisher/db;->b:Ljava/lang/String;

    .line 113
    const-string v0, "VungleDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updating archive_entry by viewable_id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", relative_path "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, Lcom/vungle/publisher/db;->u:Lcom/vungle/publisher/cf;

    .line 115
    invoke-virtual {v0}, Lcom/vungle/publisher/cf;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "archive_entry"

    .line 116
    invoke-virtual {p0, v7}, Lcom/vungle/publisher/db;->a(Z)Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "viewable_id = ? AND relative_path = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x1

    aput-object v6, v4, v5

    const/4 v5, 0x3

    invoke-virtual/range {v0 .. v5}, Landroid/database/sqlite/SQLiteDatabase;->updateWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;I)I

    move-result v0

    .line 117
    invoke-virtual {p0}, Lcom/vungle/publisher/dl;->x()V

    .line 122
    :goto_0
    return v0

    .line 120
    :cond_0
    invoke-super {p0}, Lcom/vungle/publisher/dl;->b_()I

    move-result v0

    goto :goto_0
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 43
    const-string v0, "archive_entry"

    return-object v0
.end method

.method protected final m()Ljava/lang/StringBuilder;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 139
    invoke-super {p0}, Lcom/vungle/publisher/dl;->m()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 140
    const-string v1, "viewable_id"

    invoke-direct {p0}, Lcom/vungle/publisher/db;->e()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/vungle/publisher/dl;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 141
    const-string v1, "relative_path"

    iget-object v2, p0, Lcom/vungle/publisher/db;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/vungle/publisher/dl;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 142
    const-string v1, "size"

    iget-object v2, p0, Lcom/vungle/publisher/db;->c:Ljava/lang/Integer;

    invoke-static {v0, v1, v2, v3}, Lcom/vungle/publisher/dl;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 143
    return-object v0
.end method
