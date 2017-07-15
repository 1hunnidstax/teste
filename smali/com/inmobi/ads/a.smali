.class Lcom/inmobi/ads/a;
.super Ljava/lang/Object;
.source "Ad.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/a$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/lang/String;

.field private final e:J

.field private f:J

.field private final g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/inmobi/ads/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/a;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/ContentValues;)V
    .locals 2

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    const-string v0, "ad_type"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/a;->b:Ljava/lang/String;

    .line 228
    const-string v0, "ad_size"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/a;->c:Ljava/lang/String;

    .line 229
    const-string v0, "asset_urls"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/a;->h:Ljava/lang/String;

    .line 230
    const-string v0, "ad_content"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/a;->d:Ljava/lang/String;

    .line 231
    const-string v0, "placement_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/ads/a;->e:J

    .line 232
    const-string v0, "insertion_ts"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/ads/a;->f:J

    .line 233
    const-string v0, "imp_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/a;->g:Ljava/lang/String;

    .line 234
    const-string v0, "client_request_id"

    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/a;->i:Ljava/lang/String;

    .line 235
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 209
    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v4, p2

    move-object v6, p4

    move-object v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/inmobi/ads/a;-><init>(Lorg/json/JSONObject;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method constructor <init>(Lorg/json/JSONObject;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/a;->d:Ljava/lang/String;

    .line 217
    iput-object p2, p0, Lcom/inmobi/ads/a;->h:Ljava/lang/String;

    .line 218
    iput-wide p3, p0, Lcom/inmobi/ads/a;->e:J

    .line 219
    iput-object p5, p0, Lcom/inmobi/ads/a;->b:Ljava/lang/String;

    .line 220
    iput-object p6, p0, Lcom/inmobi/ads/a;->c:Ljava/lang/String;

    .line 221
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/inmobi/ads/a;->f:J

    .line 222
    iput-object p7, p0, Lcom/inmobi/ads/a;->g:Ljava/lang/String;

    .line 223
    iput-object p8, p0, Lcom/inmobi/ads/a;->i:Ljava/lang/String;

    .line 224
    return-void
.end method

.method static synthetic i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/inmobi/ads/a;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public a()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 238
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 239
    const-string v1, "ad_type"

    iget-object v2, p0, Lcom/inmobi/ads/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v1, "ad_size"

    iget-object v2, p0, Lcom/inmobi/ads/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v1, "asset_urls"

    iget-object v2, p0, Lcom/inmobi/ads/a;->h:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v1, "ad_content"

    iget-object v2, p0, Lcom/inmobi/ads/a;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v1, "placement_id"

    iget-wide v2, p0, Lcom/inmobi/ads/a;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 244
    const-string v1, "insertion_ts"

    iget-wide v2, p0, Lcom/inmobi/ads/a;->f:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 245
    const-string v1, "imp_id"

    iget-object v2, p0, Lcom/inmobi/ads/a;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string v1, "client_request_id"

    iget-object v2, p0, Lcom/inmobi/ads/a;->i:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    return-object v0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 279
    iput-wide p1, p0, Lcom/inmobi/ads/a;->f:J

    .line 280
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 251
    iget-object v0, p0, Lcom/inmobi/ads/a;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/inmobi/ads/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final d()J
    .locals 2

    .prologue
    .line 267
    iget-wide v0, p0, Lcom/inmobi/ads/a;->e:J

    return-wide v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 271
    iget-object v0, p0, Lcom/inmobi/ads/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final f()J
    .locals 2

    .prologue
    .line 275
    iget-wide v0, p0, Lcom/inmobi/ads/a;->f:J

    return-wide v0
.end method

.method public g()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 283
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 284
    iget-object v1, p0, Lcom/inmobi/ads/a;->h:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inmobi/ads/a;->h:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 296
    :cond_0
    :goto_0
    return-object v0

    .line 286
    :cond_1
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    iget-object v1, p0, Lcom/inmobi/ads/a;->h:Ljava/lang/String;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 287
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 289
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 290
    invoke-virtual {v2, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 293
    :catch_0
    move-exception v1

    .line 294
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/ads/a;->a:Ljava/lang/String;

    const-string v4, "Error getting trackers"

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v2

    new-instance v3, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v3, v1}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method

.method public final h()Ljava/lang/String;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 303
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/inmobi/ads/a;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 304
    const-string v1, "markupType"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, ""

    .line 308
    :goto_0
    return-object v0

    .line 305
    :cond_0
    const-string v1, "markupType"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 306
    :catch_0
    move-exception v0

    .line 307
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v1

    new-instance v2, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v2, v0}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 308
    const-string v0, ""

    goto :goto_0
.end method
