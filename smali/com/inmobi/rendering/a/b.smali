.class public Lcom/inmobi/rendering/a/b;
.super Ljava/lang/Object;
.source "ClickDao.java"


# static fields
.field public static final a:[Ljava/lang/String;

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    const-class v0, Lcom/inmobi/rendering/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/rendering/a/b;->b:Ljava/lang/String;

    .line 46
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

    const-string v2, "ping_in_webview"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "follow_redirect"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "ts"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "created_ts"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "track_extras"

    aput-object v2, v0, v1

    sput-object v0, Lcom/inmobi/rendering/a/b;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-static {}, Lcom/inmobi/commons/core/c/b;->a()Lcom/inmobi/commons/core/c/b;

    move-result-object v0

    .line 50
    const-string v1, "click"

    const-string v2, "(id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL, pending_attempts INTEGER NOT NULL, url TEXT NOT NULL, ping_in_webview TEXT NOT NULL, follow_redirect TEXT NOT NULL, ts TEXT NOT NULL, track_extras TEXT, created_ts TEXT NOT NULL)"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-virtual {v0}, Lcom/inmobi/commons/core/c/b;->b()V

    .line 52
    return-void
.end method

.method private a(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 160
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 161
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 162
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 164
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 166
    :cond_0
    return-object v2
.end method


# virtual methods
.method public a(Landroid/content/ContentValues;)Lcom/inmobi/rendering/a/a;
    .locals 17

    .prologue
    .line 119
    const-string v2, "id"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 120
    const-string v2, "pending_attempts"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 121
    const-string v2, "url"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 122
    const-string v2, "ts"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 123
    const-string v2, "created_ts"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    .line 124
    const-string v2, "follow_redirect"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 125
    const-string v2, "ping_in_webview"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 126
    const-string v2, "track_extras"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 127
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 128
    if-eqz v2, :cond_0

    .line 130
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 131
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/inmobi/rendering/a/b;->a(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v6, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 140
    :cond_0
    :goto_0
    new-instance v3, Lcom/inmobi/rendering/a/a;

    invoke-direct/range {v3 .. v13}, Lcom/inmobi/rendering/a/a;-><init>(ILjava/lang/String;Ljava/util/Map;ZZIJJ)V

    return-object v3

    .line 132
    :catch_0
    move-exception v2

    .line 133
    sget-object v3, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v14, Lcom/inmobi/rendering/a/b;->b:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "JSONException in parsing extras ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 134
    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, ")"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 133
    invoke-static {v3, v14, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :catch_1
    move-exception v2

    .line 136
    sget-object v3, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v14, Lcom/inmobi/rendering/a/b;->b:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Exception in parsing extras ("

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 137
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v15, ")"

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 136
    invoke-static {v3, v14, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(II)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/rendering/a/a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 88
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 89
    invoke-static {}, Lcom/inmobi/commons/core/c/b;->a()Lcom/inmobi/commons/core/c/b;

    move-result-object v0

    .line 90
    const-string v1, "click"

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/c/b;->a(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    move-object v0, v9

    .line 101
    :goto_0
    return-object v0

    .line 94
    :cond_0
    const/4 v1, -0x1

    if-ne v1, p1, :cond_1

    move-object v8, v3

    .line 95
    :goto_1
    const-string v1, "click"

    sget-object v2, Lcom/inmobi/rendering/a/b;->a:[Ljava/lang/String;

    const-string v5, "ts"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ts < "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    int-to-long v10, p2

    sub-long/2addr v6, v10

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ts ASC "

    move-object v4, v3

    invoke-virtual/range {v0 .. v8}, Lcom/inmobi/commons/core/c/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 96
    invoke-virtual {v0}, Lcom/inmobi/commons/core/c/b;->b()V

    .line 97
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 98
    invoke-virtual {p0, v0}, Lcom/inmobi/rendering/a/b;->a(Landroid/content/ContentValues;)Lcom/inmobi/rendering/a/a;

    move-result-object v0

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 94
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    :cond_2
    move-object v0, v9

    .line 101
    goto :goto_0
.end method

.method public a(Lcom/inmobi/rendering/a/a;)V
    .locals 5

    .prologue
    .line 105
    invoke-static {}, Lcom/inmobi/commons/core/c/b;->a()Lcom/inmobi/commons/core/c/b;

    move-result-object v0

    .line 106
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, p1, Lcom/inmobi/rendering/a/a;->a:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 107
    const-string v2, "click"

    invoke-virtual {p0, p1}, Lcom/inmobi/rendering/a/b;->c(Lcom/inmobi/rendering/a/a;)Landroid/content/ContentValues;

    move-result-object v3

    const-string v4, "id = ?"

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/inmobi/commons/core/c/b;->b(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 108
    invoke-virtual {v0}, Lcom/inmobi/commons/core/c/b;->b()V

    .line 109
    return-void
.end method

.method public a()Z
    .locals 2

    .prologue
    .line 55
    invoke-static {}, Lcom/inmobi/commons/core/c/b;->a()Lcom/inmobi/commons/core/c/b;

    move-result-object v0

    .line 56
    const-string v1, "click"

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/c/b;->a(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized a(Lcom/inmobi/rendering/a/a;I)Z
    .locals 10

    .prologue
    .line 60
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/inmobi/rendering/a/b;->c(Lcom/inmobi/rendering/a/a;)Landroid/content/ContentValues;

    move-result-object v9

    .line 61
    invoke-static {}, Lcom/inmobi/commons/core/c/b;->a()Lcom/inmobi/commons/core/c/b;

    move-result-object v0

    .line 63
    const-string v1, "click"

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/c/b;->a(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-lt v1, p2, :cond_0

    .line 66
    :try_start_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 67
    const-string v2, "pingUrl"

    iget-object v3, p1, Lcom/inmobi/rendering/a/a;->b:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    const-string v2, "errorCode"

    const-string v3, "MaxDbLimitBreach"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    const-string v3, "ads"

    const-string v4, "PingDiscarded"

    invoke-virtual {v2, v3, v4, v1}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    :goto_0
    :try_start_2
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/rendering/a/b;->b:Ljava/lang/String;

    const-string v3, "Pruning persistent store to remove the oldest entry ..."

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string v1, "click"

    sget-object v2, Lcom/inmobi/rendering/a/b;->a:[Ljava/lang/String;

    const-string v3, "ts= (SELECT MIN(ts) FROM click LIMIT 1)"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/inmobi/commons/core/c/b;->a(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 77
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    invoke-virtual {p0, v1}, Lcom/inmobi/rendering/a/b;->a(Landroid/content/ContentValues;)Lcom/inmobi/rendering/a/a;

    move-result-object v1

    .line 78
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/rendering/a/b;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Deleting click ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/inmobi/rendering/a/a;->a:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0, v1}, Lcom/inmobi/rendering/a/b;->b(Lcom/inmobi/rendering/a/a;)V

    .line 82
    :cond_0
    const-string v1, "click"

    invoke-virtual {v0, v1, v9}, Lcom/inmobi/commons/core/c/b;->a(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 83
    invoke-virtual {v0}, Lcom/inmobi/commons/core/c/b;->b()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 84
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 70
    :catch_0
    move-exception v1

    .line 71
    :try_start_3
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/rendering/a/b;->b:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in submitting telemetry event : ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 72
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 60
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lcom/inmobi/rendering/a/a;)V
    .locals 4

    .prologue
    .line 112
    invoke-static {}, Lcom/inmobi/commons/core/c/b;->a()Lcom/inmobi/commons/core/c/b;

    move-result-object v0

    .line 113
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, p1, Lcom/inmobi/rendering/a/a;->a:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 114
    const-string v2, "click"

    const-string v3, "id = ?"

    invoke-virtual {v0, v2, v3, v1}, Lcom/inmobi/commons/core/c/b;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 115
    invoke-virtual {v0}, Lcom/inmobi/commons/core/c/b;->b()V

    .line 116
    return-void
.end method

.method public c(Lcom/inmobi/rendering/a/a;)Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 144
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 145
    const-string v1, "id"

    iget v2, p1, Lcom/inmobi/rendering/a/a;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 146
    const-string v1, "url"

    iget-object v2, p1, Lcom/inmobi/rendering/a/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v1, "pending_attempts"

    iget v2, p1, Lcom/inmobi/rendering/a/a;->f:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 148
    const-string v1, "ts"

    iget-wide v2, p1, Lcom/inmobi/rendering/a/a;->d:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    const-string v1, "created_ts"

    iget-wide v2, p1, Lcom/inmobi/rendering/a/a;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const-string v1, "follow_redirect"

    iget-boolean v2, p1, Lcom/inmobi/rendering/a/a;->i:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const-string v1, "ping_in_webview"

    iget-boolean v2, p1, Lcom/inmobi/rendering/a/a;->h:Z

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    iget-object v1, p1, Lcom/inmobi/rendering/a/a;->c:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/inmobi/rendering/a/a;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 153
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p1, Lcom/inmobi/rendering/a/a;->c:Ljava/util/Map;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 154
    const-string v2, "track_extras"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_0
    return-object v0
.end method
