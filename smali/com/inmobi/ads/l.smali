.class public Lcom/inmobi/ads/l;
.super Ljava/lang/Object;
.source "AssetDao.java"


# static fields
.field public static final a:[Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static c:Lcom/inmobi/ads/l;

.field private static final d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 13
    const-class v0, Lcom/inmobi/ads/l;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/l;->b:Ljava/lang/String;

    .line 16
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/inmobi/ads/l;->d:Ljava/lang/Object;

    .line 39
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "pending_attempts"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "disk_uri"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "ts"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "created_ts"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ttl"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "soft_ttl"

    aput-object v2, v0, v1

    sput-object v0, Lcom/inmobi/ads/l;->a:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    invoke-static {}, Lcom/inmobi/commons/core/c/b;->a()Lcom/inmobi/commons/core/c/b;

    move-result-object v0

    .line 61
    const-string v1, "asset"

    const-string v2, "(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, pending_attempts INTEGER NOT NULL, url TEXT NOT NULL, disk_uri TEXT, ts TEXT NOT NULL, created_ts TEXT NOT NULL, ttl TEXT NOT NULL, soft_ttl TEXT NOT NULL)"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-virtual {v0}, Lcom/inmobi/commons/core/c/b;->b()V

    .line 63
    return-void
.end method

.method public static a()Lcom/inmobi/ads/l;
    .locals 2

    .prologue
    .line 46
    sget-object v0, Lcom/inmobi/ads/l;->c:Lcom/inmobi/ads/l;

    .line 47
    if-nez v0, :cond_1

    .line 48
    sget-object v1, Lcom/inmobi/ads/l;->d:Ljava/lang/Object;

    monitor-enter v1

    .line 49
    :try_start_0
    sget-object v0, Lcom/inmobi/ads/l;->c:Lcom/inmobi/ads/l;

    .line 50
    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/inmobi/ads/l;

    invoke-direct {v0}, Lcom/inmobi/ads/l;-><init>()V

    sput-object v0, Lcom/inmobi/ads/l;->c:Lcom/inmobi/ads/l;

    .line 52
    sget-object v0, Lcom/inmobi/ads/l;->c:Lcom/inmobi/ads/l;

    .line 54
    :cond_0
    monitor-exit v1

    .line 56
    :cond_1
    return-object v0

    .line 54
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/ContentValues;)Lcom/inmobi/ads/b;
    .locals 14

    .prologue
    .line 178
    const-string v0, "id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 179
    const-string v0, "pending_attempts"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 180
    const-string v0, "url"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 181
    const-string v0, "disk_uri"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 182
    const-string v0, "ts"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 183
    const-string v0, "created_ts"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 184
    const-string v0, "ttl"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 185
    const-string v0, "soft_ttl"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 186
    new-instance v1, Lcom/inmobi/ads/b;

    invoke-direct/range {v1 .. v13}, Lcom/inmobi/ads/b;-><init>(ILjava/lang/String;Ljava/lang/String;IJJJJ)V

    return-object v1
.end method

.method public a(Ljava/lang/String;)Lcom/inmobi/ads/b;
    .locals 10
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 133
    invoke-static {}, Lcom/inmobi/commons/core/c/b;->a()Lcom/inmobi/commons/core/c/b;

    move-result-object v0

    .line 138
    const-string v1, "asset"

    sget-object v2, Lcom/inmobi/ads/l;->a:[Ljava/lang/String;

    const-string v3, "url=? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v9

    const-string v7, "created_ts DESC "

    const-string v8, "1"

    move-object v6, v5

    invoke-virtual/range {v0 .. v8}, Lcom/inmobi/commons/core/c/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 140
    invoke-virtual {v0}, Lcom/inmobi/commons/core/c/b;->b()V

    .line 142
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v5

    :cond_0
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/l;->a(Landroid/content/ContentValues;)Lcom/inmobi/ads/b;

    move-result-object v5

    goto :goto_0
.end method

.method public a(I)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/b;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 78
    invoke-static {}, Lcom/inmobi/commons/core/c/b;->a()Lcom/inmobi/commons/core/c/b;

    move-result-object v0

    .line 79
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 80
    const-string v1, "asset"

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/c/b;->a(Ljava/lang/String;)I

    move-result v1

    .line 82
    if-lt v1, p1, :cond_0

    .line 83
    int-to-double v4, p1

    const-wide v6, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v4, v6

    double-to-int v2, v4

    sub-int v10, v1, v2

    .line 84
    if-lez v10, :cond_0

    .line 85
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/l;->b:Ljava/lang/String;

    const-string v4, "Pruning persistent store to remove the older entries ..."

    invoke-static {v1, v2, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    const-string v1, "asset"

    sget-object v2, Lcom/inmobi/ads/l;->a:[Ljava/lang/String;

    const-string v7, "ts ASC "

    move-object v4, v3

    move-object v5, v3

    move-object v6, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Lcom/inmobi/commons/core/c/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 88
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 89
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v10, :cond_0

    .line 90
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    invoke-virtual {p0, v1}, Lcom/inmobi/ads/l;->a(Landroid/content/ContentValues;)Lcom/inmobi/ads/b;

    move-result-object v1

    .line 91
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {v0}, Lcom/inmobi/commons/core/c/b;->b()V

    .line 97
    return-object v9
.end method

.method public declared-synchronized a(Lcom/inmobi/ads/b;)V
    .locals 3

    .prologue
    .line 71
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/inmobi/ads/l;->d(Lcom/inmobi/ads/b;)Landroid/content/ContentValues;

    move-result-object v0

    .line 72
    invoke-static {}, Lcom/inmobi/commons/core/c/b;->a()Lcom/inmobi/commons/core/c/b;

    move-result-object v1

    .line 73
    const-string v2, "asset"

    invoke-virtual {v1, v2, v0}, Lcom/inmobi/commons/core/c/b;->a(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 74
    invoke-virtual {v1}, Lcom/inmobi/commons/core/c/b;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    monitor-exit p0

    return-void

    .line 71
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Ljava/lang/String;)Lcom/inmobi/ads/b;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 146
    invoke-static {}, Lcom/inmobi/commons/core/c/b;->a()Lcom/inmobi/commons/core/c/b;

    move-result-object v0

    .line 147
    const-string v1, "asset"

    sget-object v2, Lcom/inmobi/ads/l;->a:[Ljava/lang/String;

    const-string v3, "url=? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v9

    const-string v7, "created_ts DESC "

    const-string v8, "1"

    move-object v6, v5

    invoke-virtual/range {v0 .. v8}, Lcom/inmobi/commons/core/c/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 149
    invoke-virtual {v0}, Lcom/inmobi/commons/core/c/b;->b()V

    .line 151
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v5

    :cond_0
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/l;->a(Landroid/content/ContentValues;)Lcom/inmobi/ads/b;

    move-result-object v5

    goto :goto_0
.end method

.method public b()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/b;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 116
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 117
    invoke-static {}, Lcom/inmobi/commons/core/c/b;->a()Lcom/inmobi/commons/core/c/b;

    move-result-object v0

    .line 118
    const-string v1, "asset"

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/c/b;->a(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    move-object v0, v9

    .line 128
    :goto_0
    return-object v0

    .line 122
    :cond_0
    const-string v1, "asset"

    sget-object v2, Lcom/inmobi/ads/l;->a:[Ljava/lang/String;

    const-string v3, "disk_uri IS NOT NULL"

    const-string v7, "created_ts DESC "

    move-object v5, v4

    move-object v6, v4

    move-object v8, v4

    invoke-virtual/range {v0 .. v8}, Lcom/inmobi/commons/core/c/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 123
    invoke-virtual {v0}, Lcom/inmobi/commons/core/c/b;->b()V

    .line 124
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 125
    invoke-virtual {p0, v0}, Lcom/inmobi/ads/l;->a(Landroid/content/ContentValues;)Lcom/inmobi/ads/b;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v0, v9

    .line 128
    goto :goto_0
.end method

.method public b(I)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/b;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 101
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 102
    invoke-static {}, Lcom/inmobi/commons/core/c/b;->a()Lcom/inmobi/commons/core/c/b;

    move-result-object v0

    .line 103
    const-string v1, "asset"

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/c/b;->a(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    move-object v0, v9

    .line 112
    :goto_0
    return-object v0

    .line 107
    :cond_0
    const-string v1, "asset"

    sget-object v2, Lcom/inmobi/ads/l;->a:[Ljava/lang/String;

    const-string v5, "ts"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ts < "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    int-to-long v10, p1

    sub-long/2addr v6, v10

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ts ASC "

    move-object v4, v3

    move-object v8, v3

    invoke-virtual/range {v0 .. v8}, Lcom/inmobi/commons/core/c/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 108
    invoke-virtual {v0}, Lcom/inmobi/commons/core/c/b;->b()V

    .line 109
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 110
    invoke-virtual {p0, v0}, Lcom/inmobi/ads/l;->a(Landroid/content/ContentValues;)Lcom/inmobi/ads/b;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    move-object v0, v9

    .line 112
    goto :goto_0
.end method

.method public b(Lcom/inmobi/ads/b;)V
    .locals 5

    .prologue
    .line 164
    invoke-static {}, Lcom/inmobi/commons/core/c/b;->a()Lcom/inmobi/commons/core/c/b;

    move-result-object v0

    .line 165
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/inmobi/ads/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 166
    const-string v2, "asset"

    invoke-virtual {p0, p1}, Lcom/inmobi/ads/l;->d(Lcom/inmobi/ads/b;)Landroid/content/ContentValues;

    move-result-object v3

    const-string v4, "url = ?"

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/inmobi/commons/core/c/b;->b(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 167
    invoke-virtual {v0}, Lcom/inmobi/commons/core/c/b;->b()V

    .line 168
    return-void
.end method

.method public c(Ljava/lang/String;)Lcom/inmobi/ads/b;
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/4 v5, 0x0

    .line 155
    invoke-static {}, Lcom/inmobi/commons/core/c/b;->a()Lcom/inmobi/commons/core/c/b;

    move-result-object v0

    .line 156
    const-string v1, "asset"

    sget-object v2, Lcom/inmobi/ads/l;->a:[Ljava/lang/String;

    const-string v3, "disk_uri=? "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v9

    const-string v7, "created_ts DESC "

    const-string v8, "1"

    move-object v6, v5

    invoke-virtual/range {v0 .. v8}, Lcom/inmobi/commons/core/c/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 158
    invoke-virtual {v0}, Lcom/inmobi/commons/core/c/b;->b()V

    .line 160
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v5

    :cond_0
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    invoke-virtual {p0, v0}, Lcom/inmobi/ads/l;->a(Landroid/content/ContentValues;)Lcom/inmobi/ads/b;

    move-result-object v5

    goto :goto_0
.end method

.method public c(Lcom/inmobi/ads/b;)V
    .locals 4

    .prologue
    .line 171
    invoke-static {}, Lcom/inmobi/commons/core/c/b;->a()Lcom/inmobi/commons/core/c/b;

    move-result-object v0

    .line 172
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, p1, Lcom/inmobi/ads/b;->b:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 173
    const-string v2, "asset"

    const-string v3, "id = ?"

    invoke-virtual {v0, v2, v3, v1}, Lcom/inmobi/commons/core/c/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 174
    invoke-virtual {v0}, Lcom/inmobi/commons/core/c/b;->b()V

    .line 175
    return-void
.end method

.method public d(Lcom/inmobi/ads/b;)Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 190
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 191
    const-string v1, "id"

    iget v2, p1, Lcom/inmobi/ads/b;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 192
    const-string v1, "url"

    invoke-virtual {p1}, Lcom/inmobi/ads/b;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    const-string v1, "disk_uri"

    iget-object v2, p1, Lcom/inmobi/ads/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v1, "pending_attempts"

    iget v2, p1, Lcom/inmobi/ads/b;->c:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 195
    const-string v1, "ts"

    iget-wide v2, p1, Lcom/inmobi/ads/b;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v1, "created_ts"

    iget-wide v2, p1, Lcom/inmobi/ads/b;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 197
    const-string v1, "ttl"

    iget-wide v2, p1, Lcom/inmobi/ads/b;->g:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    const-string v1, "soft_ttl"

    iget-wide v2, p1, Lcom/inmobi/ads/b;->h:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    return-object v0
.end method
