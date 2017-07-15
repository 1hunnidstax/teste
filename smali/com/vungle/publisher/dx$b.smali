.class public final Lcom/vungle/publisher/dx$b;
.super Ljava/lang/Object;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/dx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/dx$b$a;
    }
.end annotation

.annotation runtime Ljavax/inject/Singleton;
.end annotation


# instance fields
.field a:Lcom/vungle/publisher/cf;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field b:Lcom/vungle/publisher/j$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field c:Lcom/vungle/publisher/cj$b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field d:Lcom/vungle/publisher/gm$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/vungle/publisher/jy$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcom/vungle/publisher/eu$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Lcom/vungle/publisher/dx$c;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .prologue
    .line 189
    new-instance v0, Lcom/vungle/publisher/dx$b$3;

    invoke-direct {v0, p0}, Lcom/vungle/publisher/dx$b$3;-><init>(Lcom/vungle/publisher/dx$b;)V

    .line 194
    invoke-virtual {v0}, Lcom/vungle/publisher/dx$b$3;->a()I

    move-result v0

    .line 189
    return v0
.end method

.method public final varargs a([Lcom/vungle/publisher/cj$c;)Lcom/vungle/publisher/dn;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Lcom/vungle/publisher/cj;",
            "R:",
            "Lcom/vungle/publisher/ade;",
            ">([",
            "Lcom/vungle/publisher/cj$c;",
            ")",
            "Lcom/vungle/publisher/dn",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 241
    .line 243
    invoke-static {p1}, Lcom/vungle/publisher/agm;->a([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v0

    .line 245
    const/4 v2, 0x3

    :try_start_0
    new-array v2, v2, [Lcom/vungle/publisher/j;

    const/4 v3, 0x0

    sget-object v4, Lcom/vungle/publisher/j;->a:Lcom/vungle/publisher/j;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/vungle/publisher/j;->c:Lcom/vungle/publisher/j;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    sget-object v4, Lcom/vungle/publisher/j;->d:Lcom/vungle/publisher/j;

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/vungle/publisher/agm;->a([Ljava/lang/Object;)[Ljava/lang/String;

    move-result-object v2

    .line 246
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string v5, "1"

    aput-object v5, v3, v4

    new-instance v4, Lcom/vungle/publisher/hs$a;

    invoke-direct {v4}, Lcom/vungle/publisher/hs$a;-><init>()V

    const-string v5, "ad"

    iput-object v5, v4, Lcom/vungle/publisher/hs$a;->a:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "status IN ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, v0

    invoke-static {v6}, Lcom/vungle/publisher/cb;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/vungle/publisher/hs$a;->a(Ljava/lang/String;)Lcom/vungle/publisher/hs$a;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " AND type IN ("

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v6, v2

    invoke-static {v6}, Lcom/vungle/publisher/cb;->a(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/vungle/publisher/hs$a;->a(Ljava/lang/String;)Lcom/vungle/publisher/hs$a;

    move-result-object v4

    const-string v5, " AND expiration_timestamp_seconds > ?"

    invoke-virtual {v4, v5}, Lcom/vungle/publisher/hs$a;->a(Ljava/lang/String;)Lcom/vungle/publisher/hs$a;

    move-result-object v4

    const-string v5, " ORDER BY received_timestamp_millis ASC"

    invoke-virtual {v4, v5}, Lcom/vungle/publisher/hs$a;->a(Ljava/lang/String;)Lcom/vungle/publisher/hs$a;

    move-result-object v4

    const-string v5, " LIMIT ?"

    invoke-virtual {v4, v5}, Lcom/vungle/publisher/hs$a;->a(Ljava/lang/String;)Lcom/vungle/publisher/hs$a;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/vungle/publisher/hs$a;->a([Ljava/lang/String;)Lcom/vungle/publisher/hs$a;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/vungle/publisher/hs$a;->a([Ljava/lang/String;)Lcom/vungle/publisher/hs$a;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/vungle/publisher/hs$a;->a([Ljava/lang/String;)Lcom/vungle/publisher/hs$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/vungle/publisher/hs$a;->a()Lcom/vungle/publisher/hs;

    move-result-object v0

    const-string v2, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "built query: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vungle/publisher/hs;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v2, p0, Lcom/vungle/publisher/dx$b;->a:Lcom/vungle/publisher/cf;

    invoke-virtual {v2, v0}, Lcom/vungle/publisher/cf;->a(Lcom/vungle/publisher/hs;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 248
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    .line 249
    packed-switch v3, :pswitch_data_0

    .line 262
    new-instance v0, Landroid/database/SQLException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "fetched "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 264
    :catch_0
    move-exception v0

    .line 265
    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/vungle/publisher/dx$b;->d:Lcom/vungle/publisher/gm$a;

    const-string v4, "VunglePrepare"

    const-string v5, "could not get next ad by status"

    invoke-virtual {v3, v4, v5, v0}, Lcom/vungle/publisher/gm$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 268
    if-eqz v2, :cond_2

    .line 269
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    move-object v0, v1

    .line 272
    :cond_0
    :goto_1
    return-object v0

    .line 251
    :pswitch_0
    :try_start_3
    const-string v3, "VunglePrepare"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "no record found for "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/vungle/publisher/hs;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v0, v1

    .line 268
    :goto_2
    if-eqz v2, :cond_0

    .line 269
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 254
    :pswitch_1
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 255
    iget-object v0, p0, Lcom/vungle/publisher/dx$b;->b:Lcom/vungle/publisher/j$a;

    const-string v3, "type"

    invoke-virtual {v0, v2, v3}, Lcom/vungle/publisher/j$a;->a(Landroid/database/Cursor;Ljava/lang/String;)Lcom/vungle/publisher/j;

    move-result-object v0

    .line 256
    iget-object v3, p0, Lcom/vungle/publisher/dx$b;->c:Lcom/vungle/publisher/cj$b;

    invoke-virtual {v3, v0}, Lcom/vungle/publisher/cj$b;->a(Lcom/vungle/publisher/j;)Lcom/vungle/publisher/dw;

    move-result-object v0

    .line 257
    invoke-interface {v0}, Lcom/vungle/publisher/dw;->j_()Lcom/vungle/publisher/cj$a;

    move-result-object v3

    .line 258
    invoke-virtual {v3}, Lcom/vungle/publisher/cj$a;->c_()Lcom/vungle/publisher/dl;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/cj;

    const/4 v4, 0x1

    invoke-virtual {v3, v0, v2, v4}, Lcom/vungle/publisher/cj$a;->a(Lcom/vungle/publisher/cj;Landroid/database/Cursor;Z)Lcom/vungle/publisher/cj;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/dn;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 268
    :catchall_0
    move-exception v0

    :goto_3
    if-eqz v1, :cond_1

    .line 269
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v0

    .line 268
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_3

    .line 264
    :catch_1
    move-exception v0

    move-object v2, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_1

    :cond_3
    move-object v0, v1

    goto :goto_2

    .line 249
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final b()Lcom/vungle/publisher/dn;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/dn",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 202
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/vungle/publisher/cj$c;

    const/4 v1, 0x0

    sget-object v2, Lcom/vungle/publisher/cj$c;->e:Lcom/vungle/publisher/cj$c;

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/dx$b;->a([Lcom/vungle/publisher/cj$c;)Lcom/vungle/publisher/dn;

    move-result-object v0

    return-object v0
.end method

.method public final c()Ljava/lang/Long;
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 206
    .line 209
    const/4 v0, 0x2

    :try_start_0
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    sget-object v3, Lcom/vungle/publisher/cj$c;->f:Lcom/vungle/publisher/cj$c;

    invoke-virtual {v3}, Lcom/vungle/publisher/cj$c;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    const/4 v1, 0x1

    sget-object v3, Lcom/vungle/publisher/cj$c;->g:Lcom/vungle/publisher/cj$c;

    invoke-virtual {v3}, Lcom/vungle/publisher/cj$c;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v1

    .line 210
    new-instance v1, Lcom/vungle/publisher/hs$a;

    invoke-direct {v1}, Lcom/vungle/publisher/hs$a;-><init>()V

    const-string v3, "ad"

    .line 211
    iput-object v3, v1, Lcom/vungle/publisher/hs$a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "status NOT IN ("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x2

    .line 212
    invoke-static {v4}, Lcom/vungle/publisher/cb;->a(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/vungle/publisher/hs$a;->a(Ljava/lang/String;)Lcom/vungle/publisher/hs$a;

    move-result-object v1

    const-string v3, " ORDER BY expiration_timestamp_seconds ASC"

    .line 213
    invoke-virtual {v1, v3}, Lcom/vungle/publisher/hs$a;->a(Ljava/lang/String;)Lcom/vungle/publisher/hs$a;

    move-result-object v1

    const-string v3, " LIMIT ?"

    .line 214
    invoke-virtual {v1, v3}, Lcom/vungle/publisher/hs$a;->a(Ljava/lang/String;)Lcom/vungle/publisher/hs$a;

    move-result-object v1

    .line 215
    invoke-virtual {v1, v0}, Lcom/vungle/publisher/hs$a;->a([Ljava/lang/String;)Lcom/vungle/publisher/hs$a;

    move-result-object v0

    const-string v1, "1"

    .line 216
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, v3}, Lcom/vungle/publisher/hs$a;->a([Ljava/lang/String;)Lcom/vungle/publisher/hs$a;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Lcom/vungle/publisher/hs$a;->a()Lcom/vungle/publisher/hs;

    move-result-object v0

    .line 219
    iget-object v1, p0, Lcom/vungle/publisher/dx$b;->a:Lcom/vungle/publisher/cf;

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/cf;->a(Lcom/vungle/publisher/hs;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v1

    .line 220
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    const-string v0, "expiration_timestamp_seconds"

    invoke-static {v1, v0}, Lcom/vungle/publisher/cb;->e(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    .line 222
    if-nez v0, :cond_2

    .line 223
    const-string v0, "VunglePrepare"

    const-string v3, "next ad expiration time seconds is null"

    invoke-static {v0, v3}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 233
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 236
    :cond_1
    return-object v2

    .line 226
    :cond_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 227
    const-string v0, "VunglePrepare"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "next ad expiration time millis "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 232
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v1, :cond_3

    .line 233
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 232
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method
