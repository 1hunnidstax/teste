.class public abstract Lcom/vungle/publisher/jp$a;
.super Lcom/vungle/publisher/dl$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/jp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/vungle/publisher/cj;",
        "W:",
        "Lcom/vungle/publisher/jp",
        "<TA;>;R:",
        "Lcom/vungle/publisher/ade;",
        ">",
        "Lcom/vungle/publisher/dl$a",
        "<TW;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field e:Lcom/vungle/publisher/j$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 148
    invoke-direct {p0}, Lcom/vungle/publisher/dl$a;-><init>()V

    return-void
.end method

.method private a(Lcom/vungle/publisher/jp;Z)Lcom/vungle/publisher/jp;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TW;Z)TW;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 182
    .line 183
    iget-object v0, p1, Lcom/vungle/publisher/jp;->t:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ljava/lang/Integer;

    .line 184
    iget-object v10, p1, Lcom/vungle/publisher/jp;->r:Lcom/vungle/publisher/el$b;

    .line 187
    :try_start_0
    iget-object v6, p1, Lcom/vungle/publisher/jp;->o:Ljava/lang/String;

    .line 189
    if-nez v5, :cond_2

    .line 190
    if-nez v6, :cond_1

    .line 191
    const-string v0, "VungleDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unable to fetch "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": no id or ad_id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v0, v8

    move-object v1, v8

    .line 208
    :goto_0
    if-eqz v1, :cond_3

    .line 209
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 210
    packed-switch v2, :pswitch_data_0

    .line 220
    new-instance v3, Landroid/database/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " records for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_0

    .line 226
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_0
    throw v0

    .line 194
    :cond_1
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ad_id "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 195
    const-string v0, "VungleDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fetching "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/vungle/publisher/jp$a;->d:Lcom/vungle/publisher/cf;

    .line 197
    invoke-virtual {v0}, Lcom/vungle/publisher/cf;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "viewable"

    const/4 v2, 0x0

    const-string v3, "ad_id = ? AND type = ?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x1

    .line 198
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v0, v9

    goto/16 :goto_0

    .line 202
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "id: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 203
    const-string v0, "VungleDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fetching "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " by "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/vungle/publisher/jp$a;->d:Lcom/vungle/publisher/cf;

    .line 205
    invoke-virtual {v0}, Lcom/vungle/publisher/cf;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "viewable"

    const/4 v2, 0x0

    const-string v3, "id = ?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 206
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v1

    move-object v0, v9

    goto/16 :goto_0

    .line 212
    :pswitch_0
    :try_start_3
    const-string v2, "VungleDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "no "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " found for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 225
    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 226
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 229
    :cond_4
    const-string v0, "VungleDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fetched "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    return-object v8

    .line 215
    :pswitch_1
    :try_start_4
    const-string v2, "VungleDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "have "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 217
    invoke-virtual {p0, p1, v1, p2}, Lcom/vungle/publisher/jp$a;->a(Lcom/vungle/publisher/jp;Landroid/database/Cursor;Z)Lcom/vungle/publisher/jp;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v8

    goto :goto_2

    .line 225
    :catchall_1
    move-exception v0

    move-object v1, v8

    goto/16 :goto_1

    .line 210
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/vungle/publisher/dl;Landroid/database/Cursor;)Lcom/vungle/publisher/dl;
    .locals 1

    .prologue
    .line 148
    check-cast p1, Lcom/vungle/publisher/jp;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/vungle/publisher/jp$a;->a(Lcom/vungle/publisher/jp;Landroid/database/Cursor;Z)Lcom/vungle/publisher/jp;

    move-result-object v0

    return-object v0
.end method

.method protected a(Lcom/vungle/publisher/cj;Lcom/vungle/publisher/ade;)Lcom/vungle/publisher/jp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;TR;)TW;"
        }
    .end annotation

    .prologue
    .line 154
    const/4 v0, 0x0

    .line 155
    if-eqz p2, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/vungle/publisher/jp$a;->c_()Lcom/vungle/publisher/dl;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/jp;

    .line 157
    iput-object p1, v0, Lcom/vungle/publisher/jp;->v:Lcom/vungle/publisher/cj;

    .line 158
    iget-object v1, p2, Lcom/vungle/publisher/ade;->f:Ljava/lang/String;

    iput-object v1, v0, Lcom/vungle/publisher/jp;->o:Ljava/lang/String;

    .line 159
    iget-object v1, p2, Lcom/vungle/publisher/ade;->e:Lcom/vungle/publisher/j;

    iput-object v1, v0, Lcom/vungle/publisher/jp;->p:Lcom/vungle/publisher/j;

    .line 160
    sget-object v1, Lcom/vungle/publisher/el$a;->a:Lcom/vungle/publisher/el$a;

    iput-object v1, v0, Lcom/vungle/publisher/jp;->q:Lcom/vungle/publisher/el$a;

    .line 162
    :cond_0
    return-object v0
.end method

.method protected a(Lcom/vungle/publisher/jp;Landroid/database/Cursor;Z)Lcom/vungle/publisher/jp;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TW;",
            "Landroid/database/Cursor;",
            "Z)TW;"
        }
    .end annotation

    .prologue
    .line 235
    const-string v0, "id"

    invoke-static {p2, v0}, Lcom/vungle/publisher/cb;->d(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/jp;->t:Ljava/lang/Object;

    .line 236
    const-string v0, "ad_id"

    invoke-static {p2, v0}, Lcom/vungle/publisher/cb;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/jp;->o:Ljava/lang/String;

    .line 237
    const-string v0, "status"

    const-class v1, Lcom/vungle/publisher/el$a;

    invoke-static {p2, v0, v1}, Lcom/vungle/publisher/cb;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/el$a;

    iput-object v0, p1, Lcom/vungle/publisher/jp;->q:Lcom/vungle/publisher/el$a;

    .line 238
    const-string v0, "type"

    const-class v1, Lcom/vungle/publisher/el$b;

    invoke-static {p2, v0, v1}, Lcom/vungle/publisher/cb;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/el$b;

    iput-object v0, p1, Lcom/vungle/publisher/jp;->r:Lcom/vungle/publisher/el$b;

    .line 239
    iget-object v0, p0, Lcom/vungle/publisher/jp$a;->e:Lcom/vungle/publisher/j$a;

    const-string v1, "ad_type"

    invoke-static {p2, v1}, Lcom/vungle/publisher/cb;->f(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/j$a;->a(Ljava/lang/String;)Lcom/vungle/publisher/j;

    move-result-object v0

    iput-object v0, p1, Lcom/vungle/publisher/jp;->p:Lcom/vungle/publisher/j;

    .line 240
    return-object p1
.end method

.method protected final a(Ljava/lang/String;Lcom/vungle/publisher/el$b;Z)Lcom/vungle/publisher/jp;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/vungle/publisher/el$b;",
            "Z)TW;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .prologue
    .line 175
    invoke-virtual {p0}, Lcom/vungle/publisher/jp$a;->c_()Lcom/vungle/publisher/dl;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/jp;

    .line 176
    iput-object p1, v0, Lcom/vungle/publisher/jp;->o:Ljava/lang/String;

    .line 177
    iput-object p2, v0, Lcom/vungle/publisher/jp;->r:Lcom/vungle/publisher/el$b;

    .line 178
    invoke-direct {p0, v0, p3}, Lcom/vungle/publisher/jp$a;->a(Lcom/vungle/publisher/jp;Z)Lcom/vungle/publisher/jp;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic b(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lcom/vungle/publisher/jp$a;->d(I)[Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 245
    const-string v0, "viewable"

    return-object v0
.end method

.method protected d(I)[Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 250
    new-array v0, p1, [Ljava/lang/Integer;

    return-object v0
.end method
