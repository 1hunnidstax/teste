.class public final Lcom/vungle/publisher/cs$a;
.super Lcom/vungle/publisher/dl$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/cs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/dl$a",
        "<",
        "Lcom/vungle/publisher/cs;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/vungle/publisher/cs;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/ej$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/vungle/publisher/dl$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Integer;)I
    .locals 6

    .prologue
    .line 103
    iget-object v0, p0, Lcom/vungle/publisher/cs$a;->d:Lcom/vungle/publisher/cf;

    .line 104
    invoke-virtual {v0}, Lcom/vungle/publisher/cf;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "ad_report_extra"

    const-string v2, "ad_report_id = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 108
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 105
    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 109
    const-string v1, "VungleDatabase"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "deleted "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ad_report_extra records for adReportId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    return v0
.end method

.method public final bridge synthetic a(Ljava/util/List;)I
    .locals 1

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/vungle/publisher/dl$a;->a(Ljava/util/List;)I

    move-result v0

    return v0
.end method

.method final a()Lcom/vungle/publisher/cs;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/vungle/publisher/cs$a;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/cs;

    return-object v0
.end method

.method protected final synthetic a(Lcom/vungle/publisher/dl;Landroid/database/Cursor;)Lcom/vungle/publisher/dl;
    .locals 1

    .prologue
    .line 72
    check-cast p1, Lcom/vungle/publisher/cs;

    const-string v0, "id"

    invoke-static {p2, v0}, Lcom/vungle/publisher/cb;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/cs;->t:Ljava/lang/Object;

    const-string v0, "ad_report_id"

    invoke-static {p2, v0}, Lcom/vungle/publisher/cb;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/cs;->a:Ljava/lang/Integer;

    const-string v0, "name"

    invoke-static {p2, v0}, Lcom/vungle/publisher/cb;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/cs;->b:Ljava/lang/String;

    const-string v0, "value"

    invoke-static {p2, v0}, Lcom/vungle/publisher/cb;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/cs;->c:Ljava/lang/String;

    return-object p1
.end method

.method public final bridge synthetic a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;
    .locals 1

    .prologue
    .line 72
    invoke-super {p0, p1, p2}, Lcom/vungle/publisher/dl$a;->a(Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(I)[Lcom/vungle/publisher/dl;
    .locals 1

    .prologue
    .line 72
    new-array v0, p1, [Lcom/vungle/publisher/cs;

    return-object v0
.end method

.method final b(Ljava/lang/Integer;)Lcom/vungle/publisher/ej;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 114
    .line 115
    if-nez p1, :cond_1

    .line 116
    const-string v0, "VungleDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "failed to fetch ad_report_extra records by ad_report_id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v8

    .line 142
    :cond_0
    :goto_0
    return-object v0

    .line 121
    :cond_1
    :try_start_0
    const-string v0, "VungleDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fetching ad_report_extra records by ad_report_id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/vungle/publisher/cs$a;->d:Lcom/vungle/publisher/cf;

    .line 123
    invoke-virtual {v0}, Lcom/vungle/publisher/cf;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "ad_report_extra"

    const/4 v2, 0x0

    const-string v3, "ad_report_id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    .line 124
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 125
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 126
    const-string v2, "VungleDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ad_report_extra for ad_report_id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    if-lez v0, :cond_3

    .line 128
    new-instance v0, Lcom/vungle/publisher/ej;

    invoke-direct {v0}, Lcom/vungle/publisher/ej;-><init>()V

    .line 129
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 130
    invoke-virtual {p0}, Lcom/vungle/publisher/cs$a;->a()Lcom/vungle/publisher/cs;

    move-result-object v2

    .line 131
    invoke-virtual {p0, v2, v1}, Lcom/vungle/publisher/cs$a;->b(Lcom/vungle/publisher/dl;Landroid/database/Cursor;)Lcom/vungle/publisher/dl;

    .line 132
    iget-object v3, v2, Lcom/vungle/publisher/cs;->b:Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lcom/vungle/publisher/ej;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 137
    :catchall_0
    move-exception v0

    move-object v8, v1

    :goto_2
    if-eqz v8, :cond_2

    .line 138
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :cond_3
    move-object v0, v8

    .line 137
    :cond_4
    if-eqz v1, :cond_0

    .line 138
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 137
    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method protected final bridge synthetic b(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 72
    new-array v0, p1, [Ljava/lang/Integer;

    return-object v0
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 156
    const-string v0, "ad_report_extra"

    return-object v0
.end method

.method public final bridge synthetic c(I)Ljava/util/List;
    .locals 1

    .prologue
    .line 72
    invoke-super {p0, p1}, Lcom/vungle/publisher/dl$a;->c(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic c_()Lcom/vungle/publisher/dl;
    .locals 1

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/vungle/publisher/cs$a;->a()Lcom/vungle/publisher/cs;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic d()Ljava/util/List;
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Lcom/vungle/publisher/dl$a;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
