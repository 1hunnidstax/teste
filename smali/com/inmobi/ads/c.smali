.class public final Lcom/inmobi/ads/c;
.super Lcom/inmobi/commons/core/configs/a;
.source "AdConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/c$a;,
        Lcom/inmobi/ads/c$g;,
        Lcom/inmobi/ads/c$e;,
        Lcom/inmobi/ads/c$h;,
        Lcom/inmobi/ads/c$d;,
        Lcom/inmobi/ads/c$f;,
        Lcom/inmobi/ads/c$c;,
        Lcom/inmobi/ads/c$b;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/Object;


# instance fields
.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:I

.field private h:I

.field private i:I

.field private j:Lcom/inmobi/ads/c$b;

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/inmobi/ads/c$b;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/inmobi/ads/c$c;

.field private m:Lcom/inmobi/ads/c$f;

.field private n:Lcom/inmobi/ads/c$d;

.field private o:Lcom/inmobi/ads/c$h;

.field private p:Lorg/json/JSONObject;

.field private q:Lcom/inmobi/ads/c$e;

.field private r:Lcom/inmobi/ads/c$g;

.field private s:Lcom/inmobi/ads/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 26
    const-class v0, Lcom/inmobi/ads/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/c;->a:Ljava/lang/String;

    .line 27
    const-string v0, "production"

    const-string v1, "staging"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "http://i.w.inmobi.com/showad.asm"

    :goto_0
    sput-object v0, Lcom/inmobi/ads/c;->b:Ljava/lang/String;

    .line 28
    const-string v0, "production"

    const-string v1, "staging"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "https://sdktm.w.inmobi.com/sdkpubreq"

    :goto_1
    sput-object v0, Lcom/inmobi/ads/c;->c:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/inmobi/ads/c;->d:Ljava/lang/Object;

    return-void

    .line 27
    :cond_0
    const-string v0, "http://i.w.inmobi.com/showad.asm"

    goto :goto_0

    .line 28
    :cond_1
    const-string v0, "https://sdktm.w.inmobi.com/sdkpubreq"

    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v1, 0x3c

    .line 86
    invoke-direct {p0}, Lcom/inmobi/commons/core/configs/a;-><init>()V

    .line 70
    sget-object v0, Lcom/inmobi/ads/c;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/inmobi/ads/c;->e:Ljava/lang/String;

    .line 71
    sget-object v0, Lcom/inmobi/ads/c;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/inmobi/ads/c;->f:Ljava/lang/String;

    .line 72
    const/16 v0, 0x14

    iput v0, p0, Lcom/inmobi/ads/c;->g:I

    .line 73
    iput v1, p0, Lcom/inmobi/ads/c;->h:I

    .line 74
    iput v1, p0, Lcom/inmobi/ads/c;->i:I

    .line 87
    new-instance v0, Lcom/inmobi/ads/c$c;

    invoke-direct {v0}, Lcom/inmobi/ads/c$c;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/c;->l:Lcom/inmobi/ads/c$c;

    .line 88
    new-instance v0, Lcom/inmobi/ads/c$f;

    invoke-direct {v0}, Lcom/inmobi/ads/c$f;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/c;->m:Lcom/inmobi/ads/c$f;

    .line 89
    new-instance v0, Lcom/inmobi/ads/c$d;

    invoke-direct {v0}, Lcom/inmobi/ads/c$d;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/c;->n:Lcom/inmobi/ads/c$d;

    .line 90
    new-instance v0, Lcom/inmobi/ads/c$h;

    invoke-direct {v0}, Lcom/inmobi/ads/c$h;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/c;->o:Lcom/inmobi/ads/c$h;

    .line 91
    new-instance v0, Lcom/inmobi/ads/c$e;

    invoke-direct {v0}, Lcom/inmobi/ads/c$e;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/c;->q:Lcom/inmobi/ads/c$e;

    .line 92
    new-instance v0, Lcom/inmobi/ads/c$g;

    invoke-direct {v0}, Lcom/inmobi/ads/c$g;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/c;->r:Lcom/inmobi/ads/c$g;

    .line 93
    new-instance v0, Lcom/inmobi/ads/c$a;

    invoke-direct {v0}, Lcom/inmobi/ads/c$a;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/c;->s:Lcom/inmobi/ads/c$a;

    .line 96
    :try_start_0
    invoke-direct {p0}, Lcom/inmobi/ads/c;->s()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/inmobi/ads/c;->b(Lorg/json/JSONObject;)V

    .line 97
    invoke-direct {p0}, Lcom/inmobi/ads/c;->t()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/c;->p:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 98
    :catch_0
    move-exception v0

    .line 99
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/c;->a:Ljava/lang/String;

    const-string v3, "Default config provided for ads is invalid."

    invoke-static {v1, v2, v3, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private b(Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 198
    const-string v0, "base"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 199
    new-instance v1, Lcom/inmobi/ads/c$b;

    invoke-direct {v1}, Lcom/inmobi/ads/c$b;-><init>()V

    iput-object v1, p0, Lcom/inmobi/ads/c;->j:Lcom/inmobi/ads/c$b;

    .line 200
    iget-object v1, p0, Lcom/inmobi/ads/c;->j:Lcom/inmobi/ads/c$b;

    const-string v2, "maxCacheSize"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/inmobi/ads/c$b;->a(Lcom/inmobi/ads/c$b;I)I

    .line 201
    iget-object v1, p0, Lcom/inmobi/ads/c;->j:Lcom/inmobi/ads/c$b;

    const-string v2, "fetchLimit"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/inmobi/ads/c$b;->b(Lcom/inmobi/ads/c$b;I)I

    .line 202
    iget-object v1, p0, Lcom/inmobi/ads/c;->j:Lcom/inmobi/ads/c$b;

    const-string v2, "minThreshold"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/inmobi/ads/c$b;->c(Lcom/inmobi/ads/c$b;I)I

    .line 203
    iget-object v1, p0, Lcom/inmobi/ads/c;->j:Lcom/inmobi/ads/c$b;

    const-string v2, "timeToLive"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/inmobi/ads/c$b;->a(Lcom/inmobi/ads/c$b;J)J

    .line 205
    const-string v0, "base"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 207
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/c;->k:Ljava/util/Map;

    .line 208
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 209
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 210
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 211
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 212
    new-instance v5, Lcom/inmobi/ads/c$b;

    invoke-direct {v5}, Lcom/inmobi/ads/c$b;-><init>()V

    .line 214
    const-string v1, "maxCacheSize"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "maxCacheSize"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    :goto_1
    invoke-static {v5, v1}, Lcom/inmobi/ads/c$b;->a(Lcom/inmobi/ads/c$b;I)I

    .line 215
    const-string v1, "fetchLimit"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "fetchLimit"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    :goto_2
    invoke-static {v5, v1}, Lcom/inmobi/ads/c$b;->b(Lcom/inmobi/ads/c$b;I)I

    .line 216
    const-string v1, "minThreshold"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "minThreshold"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    :goto_3
    invoke-static {v5, v1}, Lcom/inmobi/ads/c$b;->c(Lcom/inmobi/ads/c$b;I)I

    .line 217
    const-string v1, "timeToLive"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "timeToLive"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    int-to-long v2, v1

    :goto_4
    invoke-static {v5, v2, v3}, Lcom/inmobi/ads/c$b;->a(Lcom/inmobi/ads/c$b;J)J

    .line 218
    iget-object v1, p0, Lcom/inmobi/ads/c;->k:Ljava/util/Map;

    invoke-interface {v1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 214
    :cond_0
    iget-object v1, p0, Lcom/inmobi/ads/c;->j:Lcom/inmobi/ads/c$b;

    invoke-static {v1}, Lcom/inmobi/ads/c$b;->a(Lcom/inmobi/ads/c$b;)I

    move-result v1

    goto :goto_1

    .line 215
    :cond_1
    iget-object v1, p0, Lcom/inmobi/ads/c;->j:Lcom/inmobi/ads/c$b;

    invoke-static {v1}, Lcom/inmobi/ads/c$b;->b(Lcom/inmobi/ads/c$b;)I

    move-result v1

    goto :goto_2

    .line 216
    :cond_2
    iget-object v1, p0, Lcom/inmobi/ads/c;->j:Lcom/inmobi/ads/c$b;

    invoke-static {v1}, Lcom/inmobi/ads/c$b;->c(Lcom/inmobi/ads/c$b;)I

    move-result v1

    goto :goto_3

    .line 217
    :cond_3
    iget-object v1, p0, Lcom/inmobi/ads/c;->j:Lcom/inmobi/ads/c$b;

    invoke-static {v1}, Lcom/inmobi/ads/c$b;->d(Lcom/inmobi/ads/c$b;)J

    move-result-wide v2

    goto :goto_4

    .line 220
    :cond_4
    return-void
.end method

.method private s()Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    const/16 v4, 0xce4

    .line 35
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 37
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 38
    const-string v2, "maxCacheSize"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 39
    const-string v2, "fetchLimit"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 40
    const-string v2, "minThreshold"

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 41
    const-string v2, "timeToLive"

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 42
    const-string v2, "base"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 44
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 45
    const-string v2, "maxCacheSize"

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 46
    const-string v2, "fetchLimit"

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 47
    const-string v2, "minThreshold"

    invoke-virtual {v1, v2, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 48
    const-string v2, "timeToLive"

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 49
    const-string v2, "inlban"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 52
    const-string v2, "maxCacheSize"

    const/16 v3, 0x64

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 53
    const-string v2, "fetchLimit"

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 54
    const-string v2, "minThreshold"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 55
    const-string v2, "timeToLive"

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 56
    const-string v2, "native"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    return-object v0
.end method

.method private t()Lorg/json/JSONObject;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 62
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 64
    const-string v1, "enabled"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 65
    const-string v1, "samplingFactor"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 66
    const-string v1, "metricEnabled"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 67
    return-object v0
.end method

.method private u()Lorg/json/JSONObject;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 310
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 311
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 313
    const-string v1, "maxCacheSize"

    iget-object v3, p0, Lcom/inmobi/ads/c;->j:Lcom/inmobi/ads/c$b;

    invoke-virtual {v3}, Lcom/inmobi/ads/c$b;->b()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 314
    const-string v1, "fetchLimit"

    iget-object v3, p0, Lcom/inmobi/ads/c;->j:Lcom/inmobi/ads/c$b;

    invoke-virtual {v3}, Lcom/inmobi/ads/c$b;->c()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 315
    const-string v1, "minThreshold"

    iget-object v3, p0, Lcom/inmobi/ads/c;->j:Lcom/inmobi/ads/c$b;

    invoke-virtual {v3}, Lcom/inmobi/ads/c$b;->d()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 316
    const-string v1, "timeToLive"

    iget-object v3, p0, Lcom/inmobi/ads/c;->j:Lcom/inmobi/ads/c$b;

    invoke-virtual {v3}, Lcom/inmobi/ads/c$b;->e()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 317
    const-string v1, "base"

    invoke-virtual {v2, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 319
    iget-object v0, p0, Lcom/inmobi/ads/c;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 320
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 321
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/c$b;

    .line 323
    const-string v5, "maxCacheSize"

    invoke-virtual {v1}, Lcom/inmobi/ads/c$b;->b()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 324
    const-string v5, "fetchLimit"

    invoke-virtual {v1}, Lcom/inmobi/ads/c$b;->c()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 325
    const-string v5, "minThreshold"

    invoke-virtual {v1}, Lcom/inmobi/ads/c$b;->d()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 326
    const-string v5, "timeToLive"

    invoke-virtual {v1}, Lcom/inmobi/ads/c$b;->e()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 327
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 329
    :cond_0
    return-object v2
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/inmobi/ads/c$b;
    .locals 1

    .prologue
    .line 440
    iget-object v0, p0, Lcom/inmobi/ads/c;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/c$b;

    .line 442
    if-nez v0, :cond_0

    .line 443
    iget-object v0, p0, Lcom/inmobi/ads/c;->j:Lcom/inmobi/ads/c$b;

    .line 445
    :cond_0
    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    const-string v0, "ads"

    return-object v0
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 110
    invoke-super {p0, p1}, Lcom/inmobi/commons/core/configs/a;->a(Lorg/json/JSONObject;)V

    .line 112
    const-string v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    const-string v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/inmobi/ads/c;->e:Ljava/lang/String;

    .line 115
    :cond_0
    const-string v1, "requestUrl"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    const-string v1, "requestUrl"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/inmobi/ads/c;->f:Ljava/lang/String;

    .line 119
    :cond_1
    const-string v1, "minimumRefreshInterval"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/inmobi/ads/c;->g:I

    .line 120
    const-string v1, "defaultRefreshInterval"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/inmobi/ads/c;->h:I

    .line 121
    const-string v1, "fetchTimeout"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/inmobi/ads/c;->i:I

    .line 123
    const-string v1, "cache"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 124
    invoke-direct {p0, v1}, Lcom/inmobi/ads/c;->b(Lorg/json/JSONObject;)V

    .line 126
    const-string v1, "imai"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 127
    iget-object v2, p0, Lcom/inmobi/ads/c;->l:Lcom/inmobi/ads/c$c;

    const-string v3, "maxRetries"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/inmobi/ads/c$c;->a(Lcom/inmobi/ads/c$c;I)I

    .line 128
    iget-object v2, p0, Lcom/inmobi/ads/c;->l:Lcom/inmobi/ads/c$c;

    const-string v3, "pingInterval"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/inmobi/ads/c$c;->b(Lcom/inmobi/ads/c$c;I)I

    .line 129
    iget-object v2, p0, Lcom/inmobi/ads/c;->l:Lcom/inmobi/ads/c$c;

    const-string v3, "pingTimeout"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/inmobi/ads/c$c;->c(Lcom/inmobi/ads/c$c;I)I

    .line 130
    iget-object v2, p0, Lcom/inmobi/ads/c;->l:Lcom/inmobi/ads/c$c;

    const-string v3, "maxDbEvents"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/inmobi/ads/c$c;->d(Lcom/inmobi/ads/c$c;I)I

    .line 131
    iget-object v2, p0, Lcom/inmobi/ads/c;->l:Lcom/inmobi/ads/c$c;

    const-string v3, "maxEventBatch"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/inmobi/ads/c$c;->e(Lcom/inmobi/ads/c$c;I)I

    .line 132
    iget-object v2, p0, Lcom/inmobi/ads/c;->l:Lcom/inmobi/ads/c$c;

    const-string v3, "pingCacheExpiry"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/inmobi/ads/c$c;->a(Lcom/inmobi/ads/c$c;J)J

    .line 134
    const-string v1, "rendering"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 135
    iget-object v2, p0, Lcom/inmobi/ads/c;->m:Lcom/inmobi/ads/c$f;

    const-string v3, "renderTimeout"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/inmobi/ads/c$f;->a(Lcom/inmobi/ads/c$f;I)I

    .line 136
    iget-object v2, p0, Lcom/inmobi/ads/c;->m:Lcom/inmobi/ads/c$f;

    const-string v3, "picHeight"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/inmobi/ads/c$f;->b(Lcom/inmobi/ads/c$f;I)I

    .line 137
    iget-object v2, p0, Lcom/inmobi/ads/c;->m:Lcom/inmobi/ads/c$f;

    const-string v3, "picWidth"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/inmobi/ads/c$f;->c(Lcom/inmobi/ads/c$f;I)I

    .line 138
    iget-object v2, p0, Lcom/inmobi/ads/c;->m:Lcom/inmobi/ads/c$f;

    const-string v3, "picQuality"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/inmobi/ads/c$f;->d(Lcom/inmobi/ads/c$f;I)I

    .line 139
    iget-object v2, p0, Lcom/inmobi/ads/c;->m:Lcom/inmobi/ads/c$f;

    const-string v3, "webviewBackground"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/inmobi/ads/c$f;->a(Lcom/inmobi/ads/c$f;Ljava/lang/String;)Ljava/lang/String;

    .line 140
    iget-object v2, p0, Lcom/inmobi/ads/c;->m:Lcom/inmobi/ads/c$f;

    const-string v3, "maxVibrationDuration"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/inmobi/ads/c$f;->e(Lcom/inmobi/ads/c$f;I)I

    .line 141
    iget-object v2, p0, Lcom/inmobi/ads/c;->m:Lcom/inmobi/ads/c$f;

    const-string v3, "maxVibrationPatternLength"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/inmobi/ads/c$f;->f(Lcom/inmobi/ads/c$f;I)I

    .line 142
    iget-object v2, p0, Lcom/inmobi/ads/c;->m:Lcom/inmobi/ads/c$f;

    const-string v3, "savecontent"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "maxSaveSize"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v4, v3

    invoke-static {v2, v4, v5}, Lcom/inmobi/ads/c$f;->a(Lcom/inmobi/ads/c$f;J)J

    .line 143
    sget-object v2, Lcom/inmobi/ads/c;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 144
    :try_start_0
    iget-object v3, p0, Lcom/inmobi/ads/c;->m:Lcom/inmobi/ads/c$f;

    invoke-static {v3}, Lcom/inmobi/ads/c$f;->a(Lcom/inmobi/ads/c$f;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 145
    const-string v3, "savecontent"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "allowedContentType"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v1, v0

    .line 146
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 147
    iget-object v4, p0, Lcom/inmobi/ads/c;->m:Lcom/inmobi/ads/c$f;

    invoke-static {v4}, Lcom/inmobi/ads/c$f;->a(Lcom/inmobi/ads/c$f;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    :cond_2
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    const-string v1, "mraid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 152
    iget-object v2, p0, Lcom/inmobi/ads/c;->n:Lcom/inmobi/ads/c$d;

    const-string v3, "expiry"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/inmobi/ads/c$d;->a(Lcom/inmobi/ads/c$d;J)J

    .line 153
    iget-object v2, p0, Lcom/inmobi/ads/c;->n:Lcom/inmobi/ads/c$d;

    const-string v3, "maxRetries"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/inmobi/ads/c$d;->a(Lcom/inmobi/ads/c$d;I)I

    .line 154
    iget-object v2, p0, Lcom/inmobi/ads/c;->n:Lcom/inmobi/ads/c$d;

    const-string v3, "retryInterval"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/inmobi/ads/c$d;->b(Lcom/inmobi/ads/c$d;I)I

    .line 155
    iget-object v2, p0, Lcom/inmobi/ads/c;->n:Lcom/inmobi/ads/c$d;

    const-string v3, "url"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/inmobi/ads/c$d;->a(Lcom/inmobi/ads/c$d;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    const-string v1, "telemetry"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 157
    const-string v1, "telemetry"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, p0, Lcom/inmobi/ads/c;->p:Lorg/json/JSONObject;

    .line 160
    :cond_3
    const-string v1, "viewability"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 161
    iget-object v2, p0, Lcom/inmobi/ads/c;->o:Lcom/inmobi/ads/c$h;

    const-string v3, "impressionMinPercentageViewed"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/inmobi/ads/c$h;->a(Lcom/inmobi/ads/c$h;I)I

    .line 162
    iget-object v2, p0, Lcom/inmobi/ads/c;->o:Lcom/inmobi/ads/c$h;

    const-string v3, "impressionMinTimeViewed"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/inmobi/ads/c$h;->b(Lcom/inmobi/ads/c$h;I)I

    .line 163
    iget-object v2, p0, Lcom/inmobi/ads/c;->o:Lcom/inmobi/ads/c$h;

    const-string v3, "visibilityThrottleMillis"

    const/16 v4, 0x64

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/inmobi/ads/c$h;->c(Lcom/inmobi/ads/c$h;I)I

    .line 164
    iget-object v2, p0, Lcom/inmobi/ads/c;->o:Lcom/inmobi/ads/c$h;

    const-string v3, "impressionPollIntervalMillis"

    const/16 v4, 0xfa

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v2, v3}, Lcom/inmobi/ads/c$h;->d(Lcom/inmobi/ads/c$h;I)I

    .line 165
    iget-object v2, p0, Lcom/inmobi/ads/c;->o:Lcom/inmobi/ads/c$h;

    const-string v3, "moatEnabled"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/inmobi/ads/c$h;->a(Lcom/inmobi/ads/c$h;Z)Z

    .line 166
    iget-object v2, p0, Lcom/inmobi/ads/c;->o:Lcom/inmobi/ads/c$h;

    const-string v3, "iasEnabled"

    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/inmobi/ads/c$h;->b(Lcom/inmobi/ads/c$h;Z)Z

    .line 167
    const-string v2, "video"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 168
    iget-object v2, p0, Lcom/inmobi/ads/c;->o:Lcom/inmobi/ads/c$h;

    const-string v3, "impressionMinPercentageViewed"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/inmobi/ads/c$h;->e(Lcom/inmobi/ads/c$h;I)I

    .line 169
    iget-object v2, p0, Lcom/inmobi/ads/c;->o:Lcom/inmobi/ads/c$h;

    const-string v3, "impressionMinTimeViewed"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v2, v1}, Lcom/inmobi/ads/c$h;->f(Lcom/inmobi/ads/c$h;I)I

    .line 171
    const-string v1, "preload"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 172
    const-string v2, "base"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 173
    iget-object v2, p0, Lcom/inmobi/ads/c;->q:Lcom/inmobi/ads/c$e;

    const-string v3, "enabled"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/inmobi/ads/c$e;->a(Lcom/inmobi/ads/c$e;Z)Z

    .line 174
    iget-object v2, p0, Lcom/inmobi/ads/c;->q:Lcom/inmobi/ads/c$e;

    const-string v3, "placementExpiry"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/inmobi/ads/c$e;->a(Lcom/inmobi/ads/c$e;J)J

    .line 175
    iget-object v2, p0, Lcom/inmobi/ads/c;->q:Lcom/inmobi/ads/c$e;

    const-string v3, "maxPreloadedAds"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v2, v1}, Lcom/inmobi/ads/c$e;->a(Lcom/inmobi/ads/c$e;I)I

    .line 177
    const-string v1, "vastVideo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 178
    iget-object v2, p0, Lcom/inmobi/ads/c;->r:Lcom/inmobi/ads/c$g;

    const-string v3, "maxWrapperLimit"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/inmobi/ads/c$g;->a(Lcom/inmobi/ads/c$g;I)I

    .line 179
    iget-object v2, p0, Lcom/inmobi/ads/c;->r:Lcom/inmobi/ads/c$g;

    const-string v3, "optimalVastVideoSize"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/inmobi/ads/c$g;->a(Lcom/inmobi/ads/c$g;J)J

    .line 180
    iget-object v2, p0, Lcom/inmobi/ads/c;->r:Lcom/inmobi/ads/c$g;

    const-string v3, "vastMaxAssetSize"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v2, v4, v5}, Lcom/inmobi/ads/c$g;->b(Lcom/inmobi/ads/c$g;J)J

    .line 181
    sget-object v2, Lcom/inmobi/ads/c;->d:Ljava/lang/Object;

    monitor-enter v2

    .line 182
    :try_start_1
    iget-object v3, p0, Lcom/inmobi/ads/c;->r:Lcom/inmobi/ads/c$g;

    invoke-static {v3}, Lcom/inmobi/ads/c$g;->a(Lcom/inmobi/ads/c$g;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 183
    const-string v3, "allowedContentType"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 184
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 185
    iget-object v3, p0, Lcom/inmobi/ads/c;->r:Lcom/inmobi/ads/c$g;

    invoke-static {v3}, Lcom/inmobi/ads/c$g;->a(Lcom/inmobi/ads/c$g;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 184
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 149
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 187
    :cond_4
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 189
    const-string v0, "assetCache"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lcom/inmobi/ads/c;->s:Lcom/inmobi/ads/c$a;

    const-string v2, "retryInterval"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/inmobi/ads/c$a;->a(Lcom/inmobi/ads/c$a;I)I

    .line 191
    iget-object v1, p0, Lcom/inmobi/ads/c;->s:Lcom/inmobi/ads/c$a;

    const-string v2, "maxRetries"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/inmobi/ads/c$a;->b(Lcom/inmobi/ads/c$a;I)I

    .line 192
    iget-object v1, p0, Lcom/inmobi/ads/c;->s:Lcom/inmobi/ads/c$a;

    const-string v2, "maxCachedAssets"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/inmobi/ads/c$a;->c(Lcom/inmobi/ads/c$a;I)I

    .line 193
    iget-object v1, p0, Lcom/inmobi/ads/c;->s:Lcom/inmobi/ads/c$a;

    const-string v2, "maxCacheSize"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/inmobi/ads/c$a;->a(Lcom/inmobi/ads/c$a;J)J

    .line 194
    iget-object v1, p0, Lcom/inmobi/ads/c;->s:Lcom/inmobi/ads/c$a;

    const-string v2, "timeToLive"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/inmobi/ads/c$a;->b(Lcom/inmobi/ads/c$a;J)J

    .line 195
    return-void

    .line 187
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public b()Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 224
    invoke-super {p0}, Lcom/inmobi/commons/core/configs/a;->b()Lorg/json/JSONObject;

    move-result-object v0

    .line 226
    const-string v1, "url"

    iget-object v2, p0, Lcom/inmobi/ads/c;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 227
    const-string v1, "requestUrl"

    iget-object v2, p0, Lcom/inmobi/ads/c;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 229
    const-string v1, "minimumRefreshInterval"

    iget v2, p0, Lcom/inmobi/ads/c;->g:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 230
    const-string v1, "defaultRefreshInterval"

    iget v2, p0, Lcom/inmobi/ads/c;->h:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 231
    const-string v1, "fetchTimeout"

    iget v2, p0, Lcom/inmobi/ads/c;->i:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 233
    invoke-direct {p0}, Lcom/inmobi/ads/c;->u()Lorg/json/JSONObject;

    move-result-object v1

    .line 234
    const-string v2, "cache"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 236
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 237
    const-string v2, "maxRetries"

    iget-object v3, p0, Lcom/inmobi/ads/c;->l:Lcom/inmobi/ads/c$c;

    invoke-virtual {v3}, Lcom/inmobi/ads/c$c;->a()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 238
    const-string v2, "pingInterval"

    iget-object v3, p0, Lcom/inmobi/ads/c;->l:Lcom/inmobi/ads/c$c;

    invoke-virtual {v3}, Lcom/inmobi/ads/c$c;->b()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 239
    const-string v2, "pingTimeout"

    iget-object v3, p0, Lcom/inmobi/ads/c;->l:Lcom/inmobi/ads/c$c;

    invoke-virtual {v3}, Lcom/inmobi/ads/c$c;->c()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 240
    const-string v2, "maxDbEvents"

    iget-object v3, p0, Lcom/inmobi/ads/c;->l:Lcom/inmobi/ads/c$c;

    invoke-virtual {v3}, Lcom/inmobi/ads/c$c;->d()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 241
    const-string v2, "maxEventBatch"

    iget-object v3, p0, Lcom/inmobi/ads/c;->l:Lcom/inmobi/ads/c$c;

    invoke-virtual {v3}, Lcom/inmobi/ads/c$c;->e()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 242
    const-string v2, "pingCacheExpiry"

    iget-object v3, p0, Lcom/inmobi/ads/c;->l:Lcom/inmobi/ads/c$c;

    invoke-virtual {v3}, Lcom/inmobi/ads/c$c;->f()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 243
    const-string v2, "imai"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 246
    const-string v2, "renderTimeout"

    iget-object v3, p0, Lcom/inmobi/ads/c;->m:Lcom/inmobi/ads/c$f;

    invoke-virtual {v3}, Lcom/inmobi/ads/c$f;->i()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 247
    const-string v2, "picWidth"

    iget-object v3, p0, Lcom/inmobi/ads/c;->m:Lcom/inmobi/ads/c$f;

    invoke-virtual {v3}, Lcom/inmobi/ads/c$f;->a()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 248
    const-string v2, "picHeight"

    iget-object v3, p0, Lcom/inmobi/ads/c;->m:Lcom/inmobi/ads/c$f;

    invoke-virtual {v3}, Lcom/inmobi/ads/c$f;->b()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 249
    const-string v2, "picQuality"

    iget-object v3, p0, Lcom/inmobi/ads/c;->m:Lcom/inmobi/ads/c$f;

    invoke-virtual {v3}, Lcom/inmobi/ads/c$f;->c()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 250
    const-string v2, "webviewBackground"

    iget-object v3, p0, Lcom/inmobi/ads/c;->m:Lcom/inmobi/ads/c$f;

    invoke-static {v3}, Lcom/inmobi/ads/c$f;->b(Lcom/inmobi/ads/c$f;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    const-string v2, "maxVibrationDuration"

    iget-object v3, p0, Lcom/inmobi/ads/c;->m:Lcom/inmobi/ads/c$f;

    invoke-virtual {v3}, Lcom/inmobi/ads/c$f;->e()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 252
    const-string v2, "maxVibrationPatternLength"

    iget-object v3, p0, Lcom/inmobi/ads/c;->m:Lcom/inmobi/ads/c$f;

    invoke-virtual {v3}, Lcom/inmobi/ads/c$f;->f()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 253
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 254
    const-string v3, "maxSaveSize"

    iget-object v4, p0, Lcom/inmobi/ads/c;->m:Lcom/inmobi/ads/c$f;

    invoke-virtual {v4}, Lcom/inmobi/ads/c$f;->g()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 255
    const-string v3, "allowedContentType"

    new-instance v4, Lorg/json/JSONArray;

    iget-object v5, p0, Lcom/inmobi/ads/c;->m:Lcom/inmobi/ads/c$f;

    invoke-virtual {v5}, Lcom/inmobi/ads/c$f;->h()Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 256
    const-string v3, "savecontent"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 257
    const-string v2, "rendering"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 259
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 260
    const-string v2, "expiry"

    iget-object v3, p0, Lcom/inmobi/ads/c;->n:Lcom/inmobi/ads/c$d;

    invoke-virtual {v3}, Lcom/inmobi/ads/c$d;->a()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 261
    const-string v2, "maxRetries"

    iget-object v3, p0, Lcom/inmobi/ads/c;->n:Lcom/inmobi/ads/c$d;

    invoke-virtual {v3}, Lcom/inmobi/ads/c$d;->b()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 262
    const-string v2, "retryInterval"

    iget-object v3, p0, Lcom/inmobi/ads/c;->n:Lcom/inmobi/ads/c$d;

    invoke-virtual {v3}, Lcom/inmobi/ads/c$d;->c()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 263
    const-string v2, "url"

    iget-object v3, p0, Lcom/inmobi/ads/c;->n:Lcom/inmobi/ads/c$d;

    invoke-virtual {v3}, Lcom/inmobi/ads/c$d;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 264
    const-string v2, "mraid"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 266
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 267
    const-string v2, "impressionMinPercentageViewed"

    iget-object v3, p0, Lcom/inmobi/ads/c;->o:Lcom/inmobi/ads/c$h;

    invoke-virtual {v3}, Lcom/inmobi/ads/c$h;->a()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 268
    const-string v2, "impressionMinTimeViewed"

    iget-object v3, p0, Lcom/inmobi/ads/c;->o:Lcom/inmobi/ads/c$h;

    invoke-virtual {v3}, Lcom/inmobi/ads/c$h;->b()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 269
    const-string v2, "visibilityThrottleMillis"

    iget-object v3, p0, Lcom/inmobi/ads/c;->o:Lcom/inmobi/ads/c$h;

    invoke-virtual {v3}, Lcom/inmobi/ads/c$h;->e()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 270
    const-string v2, "impressionPollIntervalMillis"

    iget-object v3, p0, Lcom/inmobi/ads/c;->o:Lcom/inmobi/ads/c$h;

    invoke-virtual {v3}, Lcom/inmobi/ads/c$h;->f()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 271
    const-string v2, "moatEnabled"

    iget-object v3, p0, Lcom/inmobi/ads/c;->o:Lcom/inmobi/ads/c$h;

    invoke-virtual {v3}, Lcom/inmobi/ads/c$h;->g()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 272
    const-string v2, "iasEnabled"

    iget-object v3, p0, Lcom/inmobi/ads/c;->o:Lcom/inmobi/ads/c$h;

    invoke-virtual {v3}, Lcom/inmobi/ads/c$h;->h()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 273
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 274
    const-string v3, "impressionMinPercentageViewed"

    iget-object v4, p0, Lcom/inmobi/ads/c;->o:Lcom/inmobi/ads/c$h;

    invoke-virtual {v4}, Lcom/inmobi/ads/c$h;->c()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 275
    const-string v3, "impressionMinTimeViewed"

    iget-object v4, p0, Lcom/inmobi/ads/c;->o:Lcom/inmobi/ads/c$h;

    invoke-virtual {v4}, Lcom/inmobi/ads/c$h;->d()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 276
    const-string v3, "video"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 277
    const-string v2, "viewability"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 279
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 280
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 281
    const-string v3, "enabled"

    iget-object v4, p0, Lcom/inmobi/ads/c;->q:Lcom/inmobi/ads/c$e;

    invoke-virtual {v4}, Lcom/inmobi/ads/c$e;->b()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 282
    const-string v3, "placementExpiry"

    iget-object v4, p0, Lcom/inmobi/ads/c;->q:Lcom/inmobi/ads/c$e;

    invoke-virtual {v4}, Lcom/inmobi/ads/c$e;->a()J

    move-result-wide v4

    invoke-virtual {v2, v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 283
    const-string v3, "maxPreloadedAds"

    iget-object v4, p0, Lcom/inmobi/ads/c;->q:Lcom/inmobi/ads/c$e;

    invoke-virtual {v4}, Lcom/inmobi/ads/c$e;->c()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 284
    const-string v3, "base"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 285
    const-string v2, "preload"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 287
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 288
    const-string v2, "maxWrapperLimit"

    iget-object v3, p0, Lcom/inmobi/ads/c;->r:Lcom/inmobi/ads/c$g;

    invoke-virtual {v3}, Lcom/inmobi/ads/c$g;->a()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 289
    const-string v2, "optimalVastVideoSize"

    iget-object v3, p0, Lcom/inmobi/ads/c;->r:Lcom/inmobi/ads/c$g;

    invoke-virtual {v3}, Lcom/inmobi/ads/c$g;->b()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 290
    const-string v2, "vastMaxAssetSize"

    iget-object v3, p0, Lcom/inmobi/ads/c;->r:Lcom/inmobi/ads/c$g;

    invoke-virtual {v3}, Lcom/inmobi/ads/c$g;->c()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 291
    const-string v2, "allowedContentType"

    new-instance v3, Lorg/json/JSONArray;

    iget-object v4, p0, Lcom/inmobi/ads/c;->r:Lcom/inmobi/ads/c$g;

    invoke-virtual {v4}, Lcom/inmobi/ads/c$g;->d()Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 292
    const-string v2, "vastVideo"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 294
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 295
    const-string v2, "retryInterval"

    iget-object v3, p0, Lcom/inmobi/ads/c;->s:Lcom/inmobi/ads/c$a;

    invoke-virtual {v3}, Lcom/inmobi/ads/c$a;->b()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 296
    const-string v2, "maxRetries"

    iget-object v3, p0, Lcom/inmobi/ads/c;->s:Lcom/inmobi/ads/c$a;

    invoke-virtual {v3}, Lcom/inmobi/ads/c$a;->a()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 297
    const-string v2, "maxCachedAssets"

    iget-object v3, p0, Lcom/inmobi/ads/c;->s:Lcom/inmobi/ads/c$a;

    invoke-virtual {v3}, Lcom/inmobi/ads/c$a;->c()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 298
    const-string v2, "maxCacheSize"

    iget-object v3, p0, Lcom/inmobi/ads/c;->s:Lcom/inmobi/ads/c$a;

    invoke-virtual {v3}, Lcom/inmobi/ads/c$a;->e()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 299
    const-string v2, "timeToLive"

    iget-object v3, p0, Lcom/inmobi/ads/c;->s:Lcom/inmobi/ads/c$a;

    invoke-virtual {v3}, Lcom/inmobi/ads/c$a;->d()J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 300
    const-string v2, "assetCache"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 302
    iget-object v1, p0, Lcom/inmobi/ads/c;->p:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    .line 303
    const-string v1, "telemetry"

    iget-object v2, p0, Lcom/inmobi/ads/c;->p:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 306
    :cond_0
    return-object v0
.end method

.method public c()Z
    .locals 10

    .prologue
    const-wide/32 v8, 0x1e00000

    const/16 v7, 0x64

    const/16 v6, 0x32

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 334
    iget-object v0, p0, Lcom/inmobi/ads/c;->e:Ljava/lang/String;

    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/c;->e:Ljava/lang/String;

    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/c;->f:Ljava/lang/String;

    const-string v2, "http://"

    .line 335
    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/inmobi/ads/c;->f:Ljava/lang/String;

    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget v0, p0, Lcom/inmobi/ads/c;->g:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/inmobi/ads/c;->h:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/inmobi/ads/c;->i:I

    if-gtz v0, :cond_3

    :cond_2
    move v0, v1

    .line 411
    :goto_0
    return v0

    .line 340
    :cond_3
    iget-object v0, p0, Lcom/inmobi/ads/c;->j:Lcom/inmobi/ads/c$b;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/inmobi/ads/c;->j:Lcom/inmobi/ads/c$b;

    invoke-virtual {v0}, Lcom/inmobi/ads/c$b;->a()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    move v0, v1

    .line 341
    goto :goto_0

    .line 344
    :cond_5
    iget-object v0, p0, Lcom/inmobi/ads/c;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 345
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/c$b;

    invoke-virtual {v0}, Lcom/inmobi/ads/c$b;->a()Z

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 346
    goto :goto_0

    .line 350
    :cond_7
    iget-object v0, p0, Lcom/inmobi/ads/c;->l:Lcom/inmobi/ads/c$c;

    invoke-virtual {v0}, Lcom/inmobi/ads/c$c;->d()I

    move-result v0

    if-ltz v0, :cond_8

    iget-object v0, p0, Lcom/inmobi/ads/c;->l:Lcom/inmobi/ads/c$c;

    invoke-virtual {v0}, Lcom/inmobi/ads/c$c;->e()I

    move-result v0

    if-ltz v0, :cond_8

    iget-object v0, p0, Lcom/inmobi/ads/c;->l:Lcom/inmobi/ads/c$c;

    invoke-virtual {v0}, Lcom/inmobi/ads/c$c;->a()I

    move-result v0

    if-ltz v0, :cond_8

    iget-object v0, p0, Lcom/inmobi/ads/c;->l:Lcom/inmobi/ads/c$c;

    .line 351
    invoke-virtual {v0}, Lcom/inmobi/ads/c$c;->b()I

    move-result v0

    if-ltz v0, :cond_8

    iget-object v0, p0, Lcom/inmobi/ads/c;->l:Lcom/inmobi/ads/c$c;

    invoke-virtual {v0}, Lcom/inmobi/ads/c$c;->c()I

    move-result v0

    if-lez v0, :cond_8

    iget-object v0, p0, Lcom/inmobi/ads/c;->l:Lcom/inmobi/ads/c$c;

    invoke-virtual {v0}, Lcom/inmobi/ads/c$c;->f()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-gtz v0, :cond_9

    :cond_8
    move v0, v1

    .line 352
    goto :goto_0

    .line 355
    :cond_9
    iget-object v0, p0, Lcom/inmobi/ads/c;->n:Lcom/inmobi/ads/c$d;

    invoke-virtual {v0}, Lcom/inmobi/ads/c$d;->a()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-ltz v0, :cond_a

    iget-object v0, p0, Lcom/inmobi/ads/c;->n:Lcom/inmobi/ads/c$d;

    invoke-virtual {v0}, Lcom/inmobi/ads/c$d;->c()I

    move-result v0

    if-ltz v0, :cond_a

    iget-object v0, p0, Lcom/inmobi/ads/c;->n:Lcom/inmobi/ads/c$d;

    invoke-virtual {v0}, Lcom/inmobi/ads/c$d;->b()I

    move-result v0

    if-ltz v0, :cond_a

    iget-object v0, p0, Lcom/inmobi/ads/c;->n:Lcom/inmobi/ads/c$d;

    .line 356
    invoke-virtual {v0}, Lcom/inmobi/ads/c$d;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/inmobi/ads/c;->n:Lcom/inmobi/ads/c$d;

    invoke-virtual {v0}, Lcom/inmobi/ads/c$d;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "https://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b

    :cond_a
    move v0, v1

    .line 357
    goto/16 :goto_0

    .line 360
    :cond_b
    iget-object v0, p0, Lcom/inmobi/ads/c;->m:Lcom/inmobi/ads/c$f;

    invoke-virtual {v0}, Lcom/inmobi/ads/c$f;->i()I

    move-result v0

    if-ltz v0, :cond_c

    iget-object v0, p0, Lcom/inmobi/ads/c;->m:Lcom/inmobi/ads/c$f;

    invoke-virtual {v0}, Lcom/inmobi/ads/c$f;->b()I

    move-result v0

    if-ltz v0, :cond_c

    iget-object v0, p0, Lcom/inmobi/ads/c;->m:Lcom/inmobi/ads/c$f;

    invoke-virtual {v0}, Lcom/inmobi/ads/c$f;->a()I

    move-result v0

    if-ltz v0, :cond_c

    iget-object v0, p0, Lcom/inmobi/ads/c;->m:Lcom/inmobi/ads/c$f;

    invoke-virtual {v0}, Lcom/inmobi/ads/c$f;->c()I

    move-result v0

    if-ltz v0, :cond_c

    iget-object v0, p0, Lcom/inmobi/ads/c;->m:Lcom/inmobi/ads/c$f;

    .line 361
    invoke-virtual {v0}, Lcom/inmobi/ads/c$f;->e()I

    move-result v0

    if-ltz v0, :cond_c

    iget-object v0, p0, Lcom/inmobi/ads/c;->m:Lcom/inmobi/ads/c$f;

    invoke-virtual {v0}, Lcom/inmobi/ads/c$f;->f()I

    move-result v0

    if-ltz v0, :cond_c

    iget-object v0, p0, Lcom/inmobi/ads/c;->m:Lcom/inmobi/ads/c$f;

    invoke-virtual {v0}, Lcom/inmobi/ads/c$f;->g()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-ltz v0, :cond_c

    iget-object v0, p0, Lcom/inmobi/ads/c;->m:Lcom/inmobi/ads/c$f;

    .line 362
    invoke-static {v0}, Lcom/inmobi/ads/c$f;->b(Lcom/inmobi/ads/c$f;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/inmobi/ads/c;->m:Lcom/inmobi/ads/c$f;

    invoke-static {v0}, Lcom/inmobi/ads/c$f;->b(Lcom/inmobi/ads/c$f;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    move v0, v1

    .line 363
    goto/16 :goto_0

    .line 367
    :cond_d
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/ads/c;->m:Lcom/inmobi/ads/c$f;

    iget-object v2, p0, Lcom/inmobi/ads/c;->m:Lcom/inmobi/ads/c$f;

    invoke-static {v2}, Lcom/inmobi/ads/c$f;->b(Lcom/inmobi/ads/c$f;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/inmobi/ads/c$f;->g(Lcom/inmobi/ads/c$f;I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    iget-object v0, p0, Lcom/inmobi/ads/c;->n:Lcom/inmobi/ads/c$d;

    invoke-virtual {v0}, Lcom/inmobi/ads/c$d;->b()I

    move-result v0

    if-ltz v0, :cond_e

    iget-object v0, p0, Lcom/inmobi/ads/c;->n:Lcom/inmobi/ads/c$d;

    invoke-virtual {v0}, Lcom/inmobi/ads/c$d;->c()I

    move-result v0

    if-ltz v0, :cond_e

    iget-object v0, p0, Lcom/inmobi/ads/c;->n:Lcom/inmobi/ads/c$d;

    invoke-virtual {v0}, Lcom/inmobi/ads/c$d;->d()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/inmobi/ads/c;->n:Lcom/inmobi/ads/c$d;

    invoke-virtual {v0}, Lcom/inmobi/ads/c$d;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_f

    :cond_e
    move v0, v1

    .line 374
    goto/16 :goto_0

    .line 368
    :catch_0
    move-exception v0

    .line 369
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/c;->a:Ljava/lang/String;

    const-string v4, "Webview color specified in config is invalid."

    invoke-static {v2, v3, v4, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v1

    .line 370
    goto/16 :goto_0

    .line 377
    :cond_f
    iget-object v0, p0, Lcom/inmobi/ads/c;->o:Lcom/inmobi/ads/c$h;

    invoke-virtual {v0}, Lcom/inmobi/ads/c$h;->a()I

    move-result v0

    if-lez v0, :cond_10

    iget-object v0, p0, Lcom/inmobi/ads/c;->o:Lcom/inmobi/ads/c$h;

    .line 378
    invoke-virtual {v0}, Lcom/inmobi/ads/c$h;->a()I

    move-result v0

    if-gt v0, v7, :cond_10

    iget-object v0, p0, Lcom/inmobi/ads/c;->o:Lcom/inmobi/ads/c$h;

    .line 379
    invoke-virtual {v0}, Lcom/inmobi/ads/c$h;->b()I

    move-result v0

    if-ltz v0, :cond_10

    iget-object v0, p0, Lcom/inmobi/ads/c;->o:Lcom/inmobi/ads/c$h;

    .line 380
    invoke-virtual {v0}, Lcom/inmobi/ads/c$h;->c()I

    move-result v0

    if-lez v0, :cond_10

    iget-object v0, p0, Lcom/inmobi/ads/c;->o:Lcom/inmobi/ads/c$h;

    .line 381
    invoke-virtual {v0}, Lcom/inmobi/ads/c$h;->c()I

    move-result v0

    if-gt v0, v7, :cond_10

    iget-object v0, p0, Lcom/inmobi/ads/c;->o:Lcom/inmobi/ads/c$h;

    .line 382
    invoke-virtual {v0}, Lcom/inmobi/ads/c$h;->d()I

    move-result v0

    if-ltz v0, :cond_10

    iget-object v0, p0, Lcom/inmobi/ads/c;->o:Lcom/inmobi/ads/c$h;

    .line 383
    invoke-virtual {v0}, Lcom/inmobi/ads/c$h;->e()I

    move-result v0

    if-lt v0, v6, :cond_10

    iget-object v0, p0, Lcom/inmobi/ads/c;->o:Lcom/inmobi/ads/c$h;

    .line 384
    invoke-virtual {v0}, Lcom/inmobi/ads/c$h;->e()I

    move-result v0

    mul-int/lit8 v0, v0, 0x5

    iget-object v2, p0, Lcom/inmobi/ads/c;->o:Lcom/inmobi/ads/c$h;

    invoke-virtual {v2}, Lcom/inmobi/ads/c$h;->b()I

    move-result v2

    if-gt v0, v2, :cond_10

    iget-object v0, p0, Lcom/inmobi/ads/c;->o:Lcom/inmobi/ads/c$h;

    .line 385
    invoke-virtual {v0}, Lcom/inmobi/ads/c$h;->f()I

    move-result v0

    if-lt v0, v6, :cond_10

    iget-object v0, p0, Lcom/inmobi/ads/c;->o:Lcom/inmobi/ads/c$h;

    .line 386
    invoke-virtual {v0}, Lcom/inmobi/ads/c$h;->f()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iget-object v2, p0, Lcom/inmobi/ads/c;->o:Lcom/inmobi/ads/c$h;

    invoke-virtual {v2}, Lcom/inmobi/ads/c$h;->b()I

    move-result v2

    if-le v0, v2, :cond_11

    :cond_10
    move v0, v1

    .line 387
    goto/16 :goto_0

    .line 390
    :cond_11
    iget-object v0, p0, Lcom/inmobi/ads/c;->q:Lcom/inmobi/ads/c$e;

    invoke-static {v0}, Lcom/inmobi/ads/c$e;->a(Lcom/inmobi/ads/c$e;)J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-ltz v0, :cond_12

    iget-object v0, p0, Lcom/inmobi/ads/c;->q:Lcom/inmobi/ads/c$e;

    invoke-static {v0}, Lcom/inmobi/ads/c$e;->b(Lcom/inmobi/ads/c$e;)I

    move-result v0

    if-gtz v0, :cond_13

    :cond_12
    move v0, v1

    .line 391
    goto/16 :goto_0

    .line 394
    :cond_13
    iget-object v0, p0, Lcom/inmobi/ads/c;->r:Lcom/inmobi/ads/c$g;

    invoke-static {v0}, Lcom/inmobi/ads/c$g;->b(Lcom/inmobi/ads/c$g;)J

    move-result-wide v2

    cmp-long v0, v2, v8

    if-gtz v0, :cond_14

    iget-object v0, p0, Lcom/inmobi/ads/c;->r:Lcom/inmobi/ads/c$g;

    .line 395
    invoke-static {v0}, Lcom/inmobi/ads/c$g;->b(Lcom/inmobi/ads/c$g;)J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_14

    iget-object v0, p0, Lcom/inmobi/ads/c;->r:Lcom/inmobi/ads/c$g;

    .line 396
    invoke-static {v0}, Lcom/inmobi/ads/c$g;->c(Lcom/inmobi/ads/c$g;)I

    move-result v0

    if-ltz v0, :cond_14

    iget-object v0, p0, Lcom/inmobi/ads/c;->r:Lcom/inmobi/ads/c$g;

    .line 397
    invoke-static {v0}, Lcom/inmobi/ads/c$g;->d(Lcom/inmobi/ads/c$g;)J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-lez v0, :cond_14

    iget-object v0, p0, Lcom/inmobi/ads/c;->r:Lcom/inmobi/ads/c$g;

    .line 398
    invoke-static {v0}, Lcom/inmobi/ads/c$g;->d(Lcom/inmobi/ads/c$g;)J

    move-result-wide v2

    cmp-long v0, v2, v8

    if-lez v0, :cond_15

    :cond_14
    move v0, v1

    .line 399
    goto/16 :goto_0

    .line 402
    :cond_15
    iget-object v0, p0, Lcom/inmobi/ads/c;->s:Lcom/inmobi/ads/c$a;

    invoke-virtual {v0}, Lcom/inmobi/ads/c$a;->b()I

    move-result v0

    if-ltz v0, :cond_16

    iget-object v0, p0, Lcom/inmobi/ads/c;->s:Lcom/inmobi/ads/c$a;

    .line 403
    invoke-virtual {v0}, Lcom/inmobi/ads/c$a;->c()I

    move-result v0

    const/16 v2, 0x14

    if-gt v0, v2, :cond_16

    iget-object v0, p0, Lcom/inmobi/ads/c;->s:Lcom/inmobi/ads/c$a;

    .line 404
    invoke-virtual {v0}, Lcom/inmobi/ads/c$a;->c()I

    move-result v0

    if-ltz v0, :cond_16

    iget-object v0, p0, Lcom/inmobi/ads/c;->s:Lcom/inmobi/ads/c$a;

    .line 405
    invoke-virtual {v0}, Lcom/inmobi/ads/c$a;->d()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-ltz v0, :cond_16

    iget-object v0, p0, Lcom/inmobi/ads/c;->s:Lcom/inmobi/ads/c$a;

    .line 406
    invoke-virtual {v0}, Lcom/inmobi/ads/c$a;->e()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-ltz v0, :cond_16

    iget-object v0, p0, Lcom/inmobi/ads/c;->s:Lcom/inmobi/ads/c$a;

    .line 407
    invoke-virtual {v0}, Lcom/inmobi/ads/c$a;->a()I

    move-result v0

    if-gez v0, :cond_17

    :cond_16
    move v0, v1

    .line 408
    goto/16 :goto_0

    .line 411
    :cond_17
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public d()Lcom/inmobi/commons/core/configs/a;
    .locals 1

    .prologue
    .line 416
    new-instance v0, Lcom/inmobi/ads/c;

    invoke-direct {v0}, Lcom/inmobi/ads/c;-><init>()V

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 420
    iget-object v0, p0, Lcom/inmobi/ads/c;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Lcom/inmobi/ads/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 428
    iget v0, p0, Lcom/inmobi/ads/c;->g:I

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 432
    iget v0, p0, Lcom/inmobi/ads/c;->h:I

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 436
    iget v0, p0, Lcom/inmobi/ads/c;->i:I

    return v0
.end method

.method public j()Lcom/inmobi/ads/c$c;
    .locals 1

    .prologue
    .line 449
    iget-object v0, p0, Lcom/inmobi/ads/c;->l:Lcom/inmobi/ads/c$c;

    return-object v0
.end method

.method public k()Lcom/inmobi/ads/c$f;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lcom/inmobi/ads/c;->m:Lcom/inmobi/ads/c$f;

    return-object v0
.end method

.method public l()Lcom/inmobi/ads/c$d;
    .locals 1

    .prologue
    .line 457
    iget-object v0, p0, Lcom/inmobi/ads/c;->n:Lcom/inmobi/ads/c$d;

    return-object v0
.end method

.method public m()Lcom/inmobi/ads/c$h;
    .locals 1

    .prologue
    .line 461
    iget-object v0, p0, Lcom/inmobi/ads/c;->o:Lcom/inmobi/ads/c$h;

    return-object v0
.end method

.method public n()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lcom/inmobi/ads/c;->p:Lorg/json/JSONObject;

    return-object v0
.end method

.method public o()Lcom/inmobi/ads/c$e;
    .locals 1

    .prologue
    .line 469
    iget-object v0, p0, Lcom/inmobi/ads/c;->q:Lcom/inmobi/ads/c$e;

    return-object v0
.end method

.method public p()Lcom/inmobi/ads/c$g;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/inmobi/ads/c;->r:Lcom/inmobi/ads/c$g;

    return-object v0
.end method

.method public q()Lcom/inmobi/ads/c$a;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/inmobi/ads/c;->s:Lcom/inmobi/ads/c$a;

    return-object v0
.end method
