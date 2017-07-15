.class public final Lcom/fyber/cache/internal/f;
.super Ljava/lang/Object;
.source "CacheStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/cache/internal/f$a;
    }
.end annotation


# static fields
.field public static final a:Lcom/fyber/cache/internal/f;


# instance fields
.field private final b:Ljava/io/File;

.field private final c:Z

.field private final d:Landroid/content/SharedPreferences;

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fyber/cache/internal/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/fyber/cache/internal/f;

    invoke-direct {v0}, Lcom/fyber/cache/internal/f;-><init>()V

    sput-object v0, Lcom/fyber/cache/internal/f;->a:Lcom/fyber/cache/internal/f;

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fyber/cache/internal/f;->c:Z

    .line 45
    iput-object v1, p0, Lcom/fyber/cache/internal/f;->b:Ljava/io/File;

    .line 46
    iput-object v1, p0, Lcom/fyber/cache/internal/f;->d:Landroid/content/SharedPreferences;

    .line 47
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fyber/cache/internal/f;->e:Ljava/util/Map;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1222
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 1225
    new-instance v1, Ljava/io/File;

    const-string v2, "FyberVideoCache"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1228
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1229
    const-string v0, "CacheStore"

    const-string v2, "The cache directory does not exist, creating..."

    invoke-static {v0, v2}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1230
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 51
    :cond_0
    iput-object v1, p0, Lcom/fyber/cache/internal/f;->b:Ljava/io/File;

    .line 52
    const-string v0, "FyberCacheStorage"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/cache/internal/f;->d:Landroid/content/SharedPreferences;

    .line 53
    invoke-direct {p0}, Lcom/fyber/cache/internal/f;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/fyber/cache/internal/f;->c:Z

    .line 54
    return-void
.end method

.method public static a(Ljava/util/Collection;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/fyber/cache/internal/c;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 131
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "{\"cache\":[%s]}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, ","

    invoke-static {v4, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private e()Z
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 58
    .line 2135
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/fyber/cache/internal/f;->e:Ljava/util/Map;

    .line 2136
    iget-object v1, p0, Lcom/fyber/cache/internal/f;->d:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2137
    invoke-direct {p0}, Lcom/fyber/cache/internal/f;->h()V

    .line 59
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/fyber/cache/internal/f;->f()V

    .line 60
    iget-object v1, p0, Lcom/fyber/cache/internal/f;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/fyber/cache/internal/f;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 64
    :cond_1
    :goto_1
    return v0

    .line 2140
    :cond_2
    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/fyber/cache/internal/f;->d:Landroid/content/SharedPreferences;

    const-string v3, "FyberCacheStorage"

    const-string v4, "{\"cache\":[]}"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 2141
    const-string v2, "cache"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 2142
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    move v1, v0

    .line 2144
    :goto_2
    if-ge v1, v3, :cond_0

    .line 2145
    new-instance v4, Lcom/fyber/cache/internal/c;

    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/fyber/cache/internal/c;-><init>(Lorg/json/JSONObject;)V

    .line 2146
    iget-object v5, p0, Lcom/fyber/cache/internal/f;->e:Ljava/util/Map;

    invoke-virtual {v4}, Lcom/fyber/cache/internal/c;->b()Ljava/lang/String;

    move-result-object v6

    .line 2255
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v6}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    .line 2146
    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2144
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2149
    :catch_0
    move-exception v1

    :try_start_2
    invoke-direct {p0}, Lcom/fyber/cache/internal/f;->h()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 62
    :catch_1
    move-exception v1

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/fyber/cache/internal/f;->e:Ljava/util/Map;

    goto :goto_1
.end method

.method private f()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 68
    .line 69
    iget-object v0, p0, Lcom/fyber/cache/internal/f;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/cache/internal/c;

    .line 70
    invoke-virtual {v0}, Lcom/fyber/cache/internal/c;->a()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 71
    const-string v1, "CacheStore"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Local file for cache entry "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/fyber/cache/internal/c;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " was removed."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0, v2}, Lcom/fyber/cache/internal/c;->a(I)V

    .line 73
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    if-eqz v1, :cond_1

    .line 77
    const-string v0, "CacheStore"

    const-string v1, "Saving Cache file."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-direct {p0}, Lcom/fyber/cache/internal/f;->g()V

    .line 80
    :cond_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method private g()V
    .locals 3

    .prologue
    .line 124
    .line 6237
    iget-boolean v0, p0, Lcom/fyber/cache/internal/f;->c:Z

    .line 124
    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/fyber/cache/internal/f;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/fyber/cache/internal/f;->a(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/fyber/cache/internal/f;->d:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "FyberCacheStorage"

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 128
    :cond_0
    return-void
.end method

.method private h()V
    .locals 4

    .prologue
    .line 155
    const-string v0, "CacheStore"

    const-string v1, "Cache storage file recovering issue, purging the local files..."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7177
    iget-object v0, p0, Lcom/fyber/cache/internal/f;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 7179
    if-eqz v1, :cond_0

    .line 7180
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 7181
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 7180
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 157
    :cond_0
    return-void
.end method

.method private i()Ljava/io/File;
    .locals 4

    .prologue
    .line 187
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    .line 189
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/fyber/cache/internal/f;->b:Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 190
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    const-string v1, "CacheStore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Video already exists in cache: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    invoke-direct {p0}, Lcom/fyber/cache/internal/f;->i()Ljava/io/File;

    move-result-object v0

    .line 194
    :cond_0
    const-string v1, "CacheStore"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Save in file: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/fyber/cache/internal/h;)Lcom/fyber/cache/internal/c;
    .locals 5

    .prologue
    .line 92
    invoke-virtual {p1}, Lcom/fyber/cache/internal/h;->b()Ljava/lang/String;

    move-result-object v1

    .line 4255
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 5237
    iget-boolean v0, p0, Lcom/fyber/cache/internal/f;->c:Z

    .line 94
    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/fyber/cache/internal/f;->e:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/fyber/cache/internal/f;->e:Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/cache/internal/c;

    .line 104
    :goto_0
    invoke-virtual {v0, p1}, Lcom/fyber/cache/internal/c;->a(Lcom/fyber/cache/internal/h;)Z

    .line 105
    invoke-direct {p0}, Lcom/fyber/cache/internal/f;->g()V

    .line 106
    return-object v0

    .line 98
    :cond_0
    new-instance v0, Lcom/fyber/cache/internal/c;

    invoke-direct {p0}, Lcom/fyber/cache/internal/f;->i()Ljava/io/File;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v0, v3, v1, v4}, Lcom/fyber/cache/internal/c;-><init>(Ljava/io/File;Ljava/lang/String;I)V

    .line 99
    iget-object v1, p0, Lcom/fyber/cache/internal/f;->e:Ljava/util/Map;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 102
    :cond_1
    new-instance v0, Lcom/fyber/cache/internal/c;

    invoke-direct {p0}, Lcom/fyber/cache/internal/f;->i()Ljava/io/File;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {v0, v2, v1, v3}, Lcom/fyber/cache/internal/c;-><init>(Ljava/io/File;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;)Lcom/fyber/cache/internal/c;
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/fyber/cache/internal/f;->e:Ljava/util/Map;

    .line 3255
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/cache/internal/c;

    return-object v0
.end method

.method public final a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/fyber/cache/internal/c;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/fyber/cache/internal/f;->e:Ljava/util/Map;

    return-object v0
.end method

.method public final a(I)V
    .locals 3

    .prologue
    .line 200
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/fyber/cache/internal/f;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 201
    const-string v0, "CacheStore"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Trimming cache to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " slots"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object v0, p0, Lcom/fyber/cache/internal/f;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/fyber/cache/internal/f;->b(I)V

    .line 204
    :cond_0
    return-void
.end method

.method public final b()V
    .locals 0

    .prologue
    .line 110
    invoke-direct {p0}, Lcom/fyber/cache/internal/f;->g()V

    .line 111
    return-void
.end method

.method public final b(I)V
    .locals 3

    .prologue
    .line 207
    if-lez p1, :cond_2

    iget-object v0, p0, Lcom/fyber/cache/internal/f;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 208
    const-string v0, "CacheStore"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Freeing up "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cache slots"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    new-instance v1, Ljava/util/TreeSet;

    new-instance v0, Lcom/fyber/cache/internal/f$a;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/fyber/cache/internal/f$a;-><init>(B)V

    invoke-direct {v1, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 210
    iget-object v0, p0, Lcom/fyber/cache/internal/f;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    .line 212
    :goto_0
    invoke-virtual {v1}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/cache/internal/c;

    if-eqz v0, :cond_1

    if-lez p1, :cond_1

    .line 213
    invoke-virtual {v0}, Lcom/fyber/cache/internal/c;->b()Ljava/lang/String;

    move-result-object v0

    .line 8114
    iget-object v2, p0, Lcom/fyber/cache/internal/f;->e:Ljava/util/Map;

    .line 8255
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 8114
    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/cache/internal/c;

    .line 8115
    if-eqz v0, :cond_0

    .line 8116
    invoke-virtual {v0}, Lcom/fyber/cache/internal/c;->a()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 8117
    invoke-direct {p0}, Lcom/fyber/cache/internal/f;->g()V

    .line 214
    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 216
    :cond_1
    const-string v0, "CacheStore"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Current cache size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/fyber/cache/internal/f;->e:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " slots"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_2
    return-void
.end method

.method public final c()I
    .locals 4

    .prologue
    .line 165
    iget-object v0, p0, Lcom/fyber/cache/internal/f;->e:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    .line 167
    iget-object v1, p0, Lcom/fyber/cache/internal/f;->e:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/cache/internal/c;

    .line 168
    invoke-virtual {v0}, Lcom/fyber/cache/internal/c;->a()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/fyber/cache/internal/c;->c()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    .line 169
    :cond_0
    add-int/lit8 v0, v1, -0x1

    :goto_1
    move v1, v0

    .line 171
    goto :goto_0

    .line 172
    :cond_1
    return v1

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public final d()Z
    .locals 1

    .prologue
    .line 237
    iget-boolean v0, p0, Lcom/fyber/cache/internal/f;->c:Z

    return v0
.end method
