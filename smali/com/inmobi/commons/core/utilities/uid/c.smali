.class public Lcom/inmobi/commons/core/utilities/uid/c;
.super Ljava/lang/Object;
.source "UidHelper.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/Object;

.field private static c:Lcom/inmobi/commons/core/utilities/uid/c;

.field private static d:Lcom/inmobi/commons/core/utilities/uid/a;

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/inmobi/commons/core/utilities/uid/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/core/utilities/uid/c;->a:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/inmobi/commons/core/utilities/uid/c;->b:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static a()Lcom/inmobi/commons/core/utilities/uid/c;
    .locals 2

    .prologue
    .line 34
    sget-object v0, Lcom/inmobi/commons/core/utilities/uid/c;->c:Lcom/inmobi/commons/core/utilities/uid/c;

    .line 36
    if-nez v0, :cond_1

    .line 37
    sget-object v1, Lcom/inmobi/commons/core/utilities/uid/c;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 38
    :try_start_0
    sget-object v0, Lcom/inmobi/commons/core/utilities/uid/c;->c:Lcom/inmobi/commons/core/utilities/uid/c;

    .line 39
    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/inmobi/commons/core/utilities/uid/c;

    invoke-direct {v0}, Lcom/inmobi/commons/core/utilities/uid/c;-><init>()V

    .line 41
    sput-object v0, Lcom/inmobi/commons/core/utilities/uid/c;->c:Lcom/inmobi/commons/core/utilities/uid/c;

    .line 43
    :cond_0
    monitor-exit v1

    .line 46
    :cond_1
    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic o()Lcom/inmobi/commons/core/utilities/uid/a;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/inmobi/commons/core/utilities/uid/c;->d:Lcom/inmobi/commons/core/utilities/uid/a;

    return-object v0
.end method

.method static synthetic p()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/inmobi/commons/core/utilities/uid/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method private q()V
    .locals 2

    .prologue
    .line 78
    new-instance v1, Lcom/inmobi/commons/core/utilities/uid/b;

    invoke-direct {v1}, Lcom/inmobi/commons/core/utilities/uid/b;-><init>()V

    .line 79
    invoke-virtual {v1}, Lcom/inmobi/commons/core/utilities/uid/b;->c()Ljava/lang/String;

    move-result-object v0

    .line 81
    if-nez v0, :cond_0

    .line 82
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 83
    invoke-virtual {v1, v0}, Lcom/inmobi/commons/core/utilities/uid/b;->b(Ljava/lang/String;)V

    .line 86
    :cond_0
    sput-object v0, Lcom/inmobi/commons/core/utilities/uid/c;->e:Ljava/lang/String;

    .line 87
    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 324
    new-instance v0, Lcom/inmobi/commons/core/utilities/uid/b;

    invoke-direct {v0}, Lcom/inmobi/commons/core/utilities/uid/b;-><init>()V

    invoke-virtual {v0}, Lcom/inmobi/commons/core/utilities/uid/b;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    const-string v0, "SHA-1"

    .line 117
    const-string v0, "SHA-1"

    invoke-virtual {p0, p1, v0}, Lcom/inmobi/commons/core/utilities/uid/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 125
    const/16 v1, 0x10

    .line 126
    const/16 v2, 0xff

    .line 129
    if-eqz p1, :cond_0

    :try_start_0
    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    :cond_0
    const-string v0, "TEST_EMULATOR"

    .line 150
    :goto_0
    return-object v0

    .line 133
    :cond_1
    invoke-static {p2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 134
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 135
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 138
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 139
    const/4 v0, 0x0

    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_2

    .line 140
    aget-byte v5, v3, v0

    and-int/2addr v5, v2

    add-int/lit16 v5, v5, 0x100

    invoke-static {v5, v1}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 143
    :cond_2
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 144
    :catch_0
    move-exception v0

    .line 145
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/commons/core/utilities/uid/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDK encountered an unexpected error attempting to get digested UID; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 147
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lorg/json/JSONObject;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 366
    invoke-virtual {p1}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 367
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 368
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 371
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 373
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method b(Landroid/content/Context;)Ljava/lang/String;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 329
    new-instance v1, Lcom/inmobi/commons/core/utilities/uid/b;

    invoke-direct {v1}, Lcom/inmobi/commons/core/utilities/uid/b;-><init>()V

    .line 332
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 334
    invoke-virtual {v1}, Lcom/inmobi/commons/core/utilities/uid/b;->c()Ljava/lang/String;

    move-result-object v3

    .line 335
    if-eqz v3, :cond_0

    .line 336
    const-string v4, "p"

    invoke-virtual {v2, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 340
    :cond_0
    invoke-virtual {v1}, Lcom/inmobi/commons/core/utilities/uid/b;->f()Ljava/lang/String;

    move-result-object v1

    .line 342
    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    .line 343
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 346
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 347
    invoke-virtual {v4}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 348
    invoke-virtual {p0, v4}, Lcom/inmobi/commons/core/utilities/uid/c;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    .line 349
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 350
    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 351
    const-string v1, "s"

    invoke-virtual {v2, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 356
    :cond_1
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 360
    :goto_0
    return-object v0

    .line 359
    :catch_0
    move-exception v1

    goto :goto_0

    .line 357
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 154
    const-string v0, "MD5"

    .line 155
    const-string v0, "MD5"

    invoke-virtual {p0, p1, v0}, Lcom/inmobi/commons/core/utilities/uid/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()V
    .locals 5

    .prologue
    .line 61
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/commons/core/utilities/uid/c;->e()V

    .line 62
    invoke-virtual {p0}, Lcom/inmobi/commons/core/utilities/uid/c;->d()V

    .line 63
    invoke-direct {p0}, Lcom/inmobi/commons/core/utilities/uid/c;->q()V

    .line 64
    invoke-virtual {p0}, Lcom/inmobi/commons/core/utilities/uid/c;->n()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_0
    return-void

    .line 65
    :catch_0
    move-exception v0

    .line 66
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/commons/core/utilities/uid/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDK encountered an unexpected error while initializing the UID helper component; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 68
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/inmobi/commons/core/utilities/uid/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public d()V
    .locals 0

    .prologue
    .line 90
    invoke-virtual {p0}, Lcom/inmobi/commons/core/utilities/uid/c;->k()V

    .line 91
    return-void
.end method

.method public e()V
    .locals 5

    .prologue
    .line 95
    .line 96
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/commons/core/utilities/uid/c;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {p0}, Lcom/inmobi/commons/core/utilities/uid/c;->j()Lcom/inmobi/commons/core/utilities/uid/a;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_0

    .line 99
    invoke-virtual {v0}, Lcom/inmobi/commons/core/utilities/uid/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_0

    .line 101
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/commons/core/utilities/uid/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Publisher device Id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/inmobi/commons/core/utilities/uid/c;->i()Ljava/lang/String;

    move-result-object v0

    .line 106
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->DEBUG:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/commons/core/utilities/uid/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Publisher device Id is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Lcom/inmobi/commons/core/utilities/uid/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 108
    :catch_0
    move-exception v0

    .line 109
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/commons/core/utilities/uid/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDK encountered an unexpected error attempting to print the publisher test ID; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 111
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 121
    const-string v0, "1"

    return-object v0
.end method

.method g()Ljava/lang/String;
    .locals 6

    .prologue
    .line 159
    const-string v0, ""

    .line 161
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/e;->d()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 167
    :goto_0
    return-object v0

    .line 162
    :catch_0
    move-exception v1

    .line 163
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/commons/core/utilities/uid/c;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SDK encountered unexpected error in getting the login ID; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 165
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method h()Ljava/lang/String;
    .locals 6

    .prologue
    .line 171
    const-string v0, ""

    .line 173
    :try_start_0
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/e;->e()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 179
    :goto_0
    return-object v0

    .line 174
    :catch_0
    move-exception v1

    .line 175
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/commons/core/utilities/uid/c;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SDK encountered unexpected error in getting the session ID; "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 177
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 175
    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method i()Ljava/lang/String;
    .locals 3

    .prologue
    .line 184
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v1

    .line 185
    if-nez v1, :cond_1

    const-string v0, ""

    .line 193
    :cond_0
    :goto_0
    return-object v0

    .line 186
    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "android_id"

    invoke-static {v0, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    if-nez v0, :cond_0

    .line 190
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method j()Lcom/inmobi/commons/core/utilities/uid/a;
    .locals 1

    .prologue
    .line 197
    sget-object v0, Lcom/inmobi/commons/core/utilities/uid/c;->d:Lcom/inmobi/commons/core/utilities/uid/a;

    return-object v0
.end method

.method k()V
    .locals 5

    .prologue
    .line 207
    :try_start_0
    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient$Info"

    .line 208
    const-string v0, "getId"

    .line 209
    const-string v0, "isLimitAdTrackingEnabled"

    .line 210
    const-string v0, "com.google.android.gms.ads.identifier.AdvertisingIdClient"

    .line 211
    const-string v0, "getAdvertisingIdInfo"

    .line 212
    new-instance v0, Lcom/inmobi/commons/core/utilities/uid/b;

    invoke-direct {v0}, Lcom/inmobi/commons/core/utilities/uid/b;-><init>()V

    .line 213
    new-instance v1, Lcom/inmobi/commons/core/utilities/uid/a;

    invoke-direct {v1}, Lcom/inmobi/commons/core/utilities/uid/a;-><init>()V

    sput-object v1, Lcom/inmobi/commons/core/utilities/uid/c;->d:Lcom/inmobi/commons/core/utilities/uid/a;

    .line 215
    sget-object v1, Lcom/inmobi/commons/core/utilities/uid/c;->d:Lcom/inmobi/commons/core/utilities/uid/a;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/utilities/uid/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/utilities/uid/a;->a(Ljava/lang/String;)V

    .line 216
    sget-object v1, Lcom/inmobi/commons/core/utilities/uid/c;->d:Lcom/inmobi/commons/core/utilities/uid/a;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/utilities/uid/b;->b()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/utilities/uid/a;->a(Z)V

    .line 218
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/inmobi/commons/core/utilities/uid/c$1;

    invoke-direct {v2, p0, v0}, Lcom/inmobi/commons/core/utilities/uid/c$1;-><init>(Lcom/inmobi/commons/core/utilities/uid/c;Lcom/inmobi/commons/core/utilities/uid/b;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 246
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 251
    :goto_0
    return-void

    .line 247
    :catch_0
    move-exception v0

    .line 248
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/commons/core/utilities/uid/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SDK encountered unexpected error in setting the advertising ID; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 249
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method l()Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 256
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v1

    if-nez v1, :cond_1

    .line 278
    :cond_0
    :goto_0
    return v0

    .line 261
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v1

    .line 262
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 263
    :catch_0
    move-exception v1

    .line 264
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/commons/core/utilities/uid/c;->a:Ljava/lang/String;

    const-string v3, "Google Play Services is not installed!"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 266
    :catch_1
    move-exception v1

    .line 269
    :try_start_1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 270
    const-string v3, "type"

    const-string v4, "RuntimeException"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const-string v3, "message"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v3

    const-string v4, "root"

    const-string v5, "ExceptionCaught"

    invoke-virtual {v3, v4, v5, v2}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 273
    :catch_2
    move-exception v2

    .line 274
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/commons/core/utilities/uid/c;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in submitting telemetry event : ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 275
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ")"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 274
    invoke-static {v2, v3, v1}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public m()Z
    .locals 1

    .prologue
    .line 282
    invoke-static {}, Lcom/inmobi/commons/core/utilities/uid/c;->a()Lcom/inmobi/commons/core/utilities/uid/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/utilities/uid/c;->j()Lcom/inmobi/commons/core/utilities/uid/a;

    move-result-object v0

    .line 283
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/utilities/uid/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected n()V
    .locals 8

    .prologue
    .line 288
    :try_start_0
    new-instance v1, Lcom/inmobi/commons/core/utilities/uid/b;

    invoke-direct {v1}, Lcom/inmobi/commons/core/utilities/uid/b;-><init>()V

    .line 289
    invoke-virtual {v1}, Lcom/inmobi/commons/core/utilities/uid/b;->d()Ljava/lang/String;

    move-result-object v0

    .line 290
    invoke-virtual {v1}, Lcom/inmobi/commons/core/utilities/uid/b;->e()J

    move-result-wide v2

    .line 292
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/uid/b;->a(J)V

    .line 296
    :cond_0
    if-nez v0, :cond_1

    .line 297
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 298
    invoke-virtual {v1, v0}, Lcom/inmobi/commons/core/utilities/uid/b;->c(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p0}, Lcom/inmobi/commons/core/utilities/uid/c;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/utilities/uid/b;->b(Ljava/lang/String;)V

    .line 300
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 301
    invoke-virtual {p0}, Lcom/inmobi/commons/core/utilities/uid/c;->c()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 302
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/utilities/uid/b;->d(Ljava/lang/String;)V

    .line 305
    :cond_1
    invoke-virtual {v1}, Lcom/inmobi/commons/core/utilities/uid/b;->f()Ljava/lang/String;

    move-result-object v2

    .line 306
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lcom/inmobi/commons/core/utilities/uid/c;->a(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v2

    .line 308
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 309
    const-string v4, "com.inmobi.share.id"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    const-string v4, "imid"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 311
    const-string v4, "appendedid"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 312
    const-string v4, "imidts"

    invoke-virtual {v1}, Lcom/inmobi/commons/core/utilities/uid/b;->e()J

    move-result-wide v6

    invoke-virtual {v3, v4, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 313
    const-string v4, "appid"

    invoke-virtual {v1}, Lcom/inmobi/commons/core/utilities/uid/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 314
    invoke-static {}, Lcom/inmobi/commons/a/a;->b()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 316
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/commons/core/utilities/uid/c;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Generating and broadcasting IDs. ID:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " AID:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :goto_0
    return-void

    .line 317
    :catch_0
    move-exception v0

    .line 318
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/commons/core/utilities/uid/c;->a:Ljava/lang/String;

    const-string v2, "SDK encountered unexpected error in generating and broadcasting IMID"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
