.class Lcom/inmobi/ads/h;
.super Ljava/lang/Object;
.source "AdStore.java"

# interfaces
.implements Lcom/inmobi/ads/e$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/h$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/inmobi/ads/h$a;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final c:Lcom/inmobi/ads/d;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private d:Lcom/inmobi/ads/i;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private e:Z

.field private f:J

.field private final g:Lcom/inmobi/ads/m$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 70
    const-class v0, Lcom/inmobi/ads/h;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/h;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/inmobi/ads/h$a;)V
    .locals 2

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/ads/h;->e:Z

    .line 79
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/ads/h;->f:J

    .line 82
    new-instance v0, Lcom/inmobi/ads/h$1;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/h$1;-><init>(Lcom/inmobi/ads/h;)V

    iput-object v0, p0, Lcom/inmobi/ads/h;->g:Lcom/inmobi/ads/m$b;

    .line 160
    iput-object p1, p0, Lcom/inmobi/ads/h;->b:Lcom/inmobi/ads/h$a;

    .line 161
    invoke-static {}, Lcom/inmobi/ads/d;->a()Lcom/inmobi/ads/d;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/d;

    .line 162
    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/h;)Lcom/inmobi/ads/m$b;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/inmobi/ads/h;->g:Lcom/inmobi/ads/m$b;

    return-object v0
.end method

.method private a(Lcom/inmobi/ads/i;Z)V
    .locals 3

    .prologue
    .line 267
    if-eqz p1, :cond_1

    .line 268
    invoke-virtual {p1}, Lcom/inmobi/ads/i;->k()Ljava/util/Map;

    move-result-object v0

    .line 269
    if-nez v0, :cond_0

    .line 270
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 275
    :cond_0
    const-string v1, "preload-request"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 276
    const-string v2, "preload-request"

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    invoke-virtual {p1, v0}, Lcom/inmobi/ads/i;->b(Ljava/util/Map;)V

    .line 280
    :cond_1
    return-void

    .line 276
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private a(I)Z
    .locals 4

    .prologue
    .line 283
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/inmobi/ads/h;->f:J

    sub-long/2addr v0, v2

    mul-int/lit16 v2, p1, 0x3e8

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic b(Lcom/inmobi/ads/h;)Lcom/inmobi/ads/h$a;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/inmobi/ads/h;->b:Lcom/inmobi/ads/h$a;

    return-object v0
.end method

.method static synthetic b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/inmobi/ads/h;->a:Ljava/lang/String;

    return-object v0
.end method

.method private b(Lcom/inmobi/ads/i;Z)Ljava/lang/String;
    .locals 5
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 351
    invoke-direct {p0, p1, p2}, Lcom/inmobi/ads/h;->a(Lcom/inmobi/ads/i;Z)V

    .line 353
    new-instance v0, Lcom/inmobi/ads/f;

    invoke-virtual {p1}, Lcom/inmobi/ads/i;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/inmobi/ads/i;->d()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/inmobi/ads/i;->h()Lcom/inmobi/commons/core/utilities/uid/d;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/inmobi/ads/f;-><init>(Ljava/lang/String;JLcom/inmobi/commons/core/utilities/uid/d;)V

    .line 354
    invoke-virtual {p1}, Lcom/inmobi/ads/i;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/f;->d(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p1}, Lcom/inmobi/ads/i;->f()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/f;->a(Ljava/util/Map;)V

    .line 356
    invoke-virtual {p1}, Lcom/inmobi/ads/i;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/f;->a(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p1}, Lcom/inmobi/ads/i;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/f;->b(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p1}, Lcom/inmobi/ads/i;->g()Lcom/inmobi/ads/c$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/c$b;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/f;->a(I)V

    .line 359
    invoke-virtual {p1}, Lcom/inmobi/ads/i;->k()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/f;->b(Ljava/util/Map;)V

    .line 360
    invoke-virtual {p1}, Lcom/inmobi/ads/i;->j()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/f;->b(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p1}, Lcom/inmobi/ads/i;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/f;->c(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p1}, Lcom/inmobi/ads/i;->c()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/f;->b(I)V

    .line 363
    invoke-virtual {p1}, Lcom/inmobi/ads/i;->c()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/f;->c(I)V

    .line 365
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/inmobi/ads/h;->f:J

    .line 366
    new-instance v1, Lcom/inmobi/ads/e;

    invoke-direct {v1, v0, p0}, Lcom/inmobi/ads/e;-><init>(Lcom/inmobi/ads/f;Lcom/inmobi/ads/e$a;)V

    .line 367
    invoke-virtual {v1}, Lcom/inmobi/ads/e;->a()V

    .line 369
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 370
    const-string v2, "isPreloaded"

    invoke-virtual {p1}, Lcom/inmobi/ads/i;->m()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    const-string v2, "clientRequestId"

    invoke-virtual {v0}, Lcom/inmobi/ads/f;->f()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    iget-object v2, p0, Lcom/inmobi/ads/h;->b:Lcom/inmobi/ads/h$a;

    const-string v3, "ads"

    const-string v4, "ServerCallInitiated"

    invoke-interface {v2, v3, v4, v1}, Lcom/inmobi/ads/h$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 373
    invoke-virtual {v0}, Lcom/inmobi/ads/f;->f()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Lcom/inmobi/ads/a;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 456
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/inmobi/ads/a;->h()Ljava/lang/String;

    move-result-object v0

    const-string v1, "inmobiJson"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 457
    const/4 v0, 0x0

    .line 458
    invoke-virtual {p1}, Lcom/inmobi/ads/a;->g()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 459
    if-nez v1, :cond_0

    .line 461
    invoke-static {}, Lcom/inmobi/ads/m;->a()Lcom/inmobi/ads/m;

    move-result-object v1

    iget-object v4, p0, Lcom/inmobi/ads/h;->g:Lcom/inmobi/ads/m$b;

    invoke-virtual {v1, v0, v4}, Lcom/inmobi/ads/m;->a(Ljava/lang/String;Lcom/inmobi/ads/m$b;)V

    move v1, v2

    .line 463
    :cond_0
    invoke-static {}, Lcom/inmobi/ads/m;->a()Lcom/inmobi/ads/m;

    move-result-object v4

    invoke-virtual {p1}, Lcom/inmobi/ads/a;->b()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/inmobi/ads/m;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 466
    :cond_1
    if-nez v1, :cond_2

    .line 467
    iget-object v0, p0, Lcom/inmobi/ads/h;->b:Lcom/inmobi/ads/h$a;

    iget-object v1, p0, Lcom/inmobi/ads/h;->d:Lcom/inmobi/ads/i;

    invoke-virtual {v1}, Lcom/inmobi/ads/i;->d()J

    move-result-wide v4

    invoke-interface {v0, v4, v5, v2}, Lcom/inmobi/ads/h$a;->a(JZ)V

    .line 470
    :cond_2
    return-void
.end method

.method static synthetic c(Lcom/inmobi/ads/h;)Lcom/inmobi/ads/i;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/inmobi/ads/h;->d:Lcom/inmobi/ads/i;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/ads/h;->d:Lcom/inmobi/ads/i;

    .line 167
    return-void
.end method

.method static synthetic d(Lcom/inmobi/ads/h;)Lcom/inmobi/ads/d;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/d;

    return-object v0
.end method


# virtual methods
.method a(JLjava/lang/String;Ljava/lang/String;IJ)Lcom/inmobi/ads/a;
    .locals 7
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v6, 0x1

    .line 289
    iget-object v1, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/d;

    invoke-virtual {v1, p3, p6, p7}, Lcom/inmobi/ads/d;->a(Ljava/lang/String;J)I

    move-result v1

    .line 291
    if-lez v1, :cond_0

    .line 292
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 293
    const-string v3, "count"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    iget-object v1, p0, Lcom/inmobi/ads/h;->b:Lcom/inmobi/ads/h$a;

    const-string v3, "ads"

    const-string v4, "AdCacheAdExpired"

    invoke-interface {v1, v3, v4, v2}, Lcom/inmobi/ads/h$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 297
    :cond_0
    iget-object v1, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/d;

    invoke-virtual {v1, p1, p2, p4}, Lcom/inmobi/ads/d;->a(JLjava/lang/String;)I

    move-result v2

    .line 298
    if-nez v2, :cond_2

    .line 299
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/h;->a:Ljava/lang/String;

    const-string v3, "No stored ads!"

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    :cond_1
    :goto_0
    return-object v0

    .line 302
    :cond_2
    iget-object v1, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/d;

    invoke-virtual {v1, p1, p2, p4}, Lcom/inmobi/ads/d;->b(JLjava/lang/String;)Lcom/inmobi/ads/a;

    move-result-object v1

    .line 305
    if-eqz v1, :cond_1

    .line 308
    iput-boolean v6, p0, Lcom/inmobi/ads/h;->e:Z

    .line 309
    add-int/lit8 v0, v2, -0x1

    .line 311
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 312
    const-string v3, "clientRequestId"

    invoke-virtual {v1}, Lcom/inmobi/ads/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 313
    iget-object v3, p0, Lcom/inmobi/ads/h;->b:Lcom/inmobi/ads/h$a;

    const-string v4, "ads"

    const-string v5, "AdCacheHit"

    invoke-interface {v3, v4, v5, v2}, Lcom/inmobi/ads/h$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 315
    if-gt v0, p5, :cond_3

    iget-object v0, p0, Lcom/inmobi/ads/h;->d:Lcom/inmobi/ads/i;

    if-eqz v0, :cond_3

    .line 316
    iget-object v0, p0, Lcom/inmobi/ads/h;->d:Lcom/inmobi/ads/i;

    invoke-direct {p0, v0, v6}, Lcom/inmobi/ads/h;->b(Lcom/inmobi/ads/i;Z)Ljava/lang/String;

    :cond_3
    move-object v0, v1

    .line 318
    goto :goto_0
.end method

.method a(JLjava/lang/String;Ljava/lang/String;J)Lcom/inmobi/ads/a;
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 324
    iget-object v0, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/d;

    invoke-virtual {v0, p3, p5, p6}, Lcom/inmobi/ads/d;->a(Ljava/lang/String;J)I

    move-result v0

    .line 326
    if-lez v0, :cond_0

    .line 327
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 328
    const-string v2, "count"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    iget-object v0, p0, Lcom/inmobi/ads/h;->b:Lcom/inmobi/ads/h$a;

    const-string v2, "ads"

    const-string v3, "AdCacheAdExpired"

    invoke-interface {v0, v2, v3, v1}, Lcom/inmobi/ads/h$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 331
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/d;

    invoke-virtual {v0, p1, p2, p4}, Lcom/inmobi/ads/d;->c(JLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 332
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_2

    .line 333
    :cond_1
    const/4 v0, 0x0

    .line 335
    :goto_0
    return-object v0

    :cond_2
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/a;

    goto :goto_0
.end method

.method public a(Lcom/inmobi/ads/i;)Ljava/lang/String;
    .locals 11
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inmobi/ads/b/a;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v10, 0x0

    .line 176
    invoke-direct {p0}, Lcom/inmobi/ads/h;->c()V

    .line 178
    iput-boolean v10, p0, Lcom/inmobi/ads/h;->e:Z

    .line 179
    iput-object p1, p0, Lcom/inmobi/ads/h;->d:Lcom/inmobi/ads/i;

    .line 181
    const-string v0, "int"

    iget-object v1, p0, Lcom/inmobi/ads/h;->d:Lcom/inmobi/ads/i;

    invoke-virtual {v1}, Lcom/inmobi/ads/i;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 187
    iget-object v0, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/d;

    iget-object v1, p0, Lcom/inmobi/ads/h;->d:Lcom/inmobi/ads/i;

    invoke-virtual {v1}, Lcom/inmobi/ads/i;->i()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/ads/h;->d:Lcom/inmobi/ads/i;

    .line 188
    invoke-virtual {v2}, Lcom/inmobi/ads/i;->g()Lcom/inmobi/ads/c$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/ads/c$b;->e()J

    move-result-wide v2

    .line 187
    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/ads/d;->a(Ljava/lang/String;J)I

    move-result v0

    .line 190
    if-lez v0, :cond_0

    .line 191
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 192
    const-string v2, "count"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    iget-object v0, p0, Lcom/inmobi/ads/h;->b:Lcom/inmobi/ads/h$a;

    const-string v2, "ads"

    const-string v3, "AdCacheAdExpired"

    invoke-interface {v0, v2, v3, v1}, Lcom/inmobi/ads/h$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/d;

    iget-object v1, p0, Lcom/inmobi/ads/h;->d:Lcom/inmobi/ads/i;

    invoke-virtual {v1}, Lcom/inmobi/ads/i;->d()J

    move-result-wide v2

    iget-object v1, p0, Lcom/inmobi/ads/h;->d:Lcom/inmobi/ads/i;

    .line 197
    invoke-virtual {v1}, Lcom/inmobi/ads/i;->l()Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-virtual {v0, v2, v3, v1}, Lcom/inmobi/ads/d;->c(JLjava/lang/String;)Ljava/util/List;

    move-result-object v9

    .line 200
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    .line 201
    if-nez v0, :cond_3

    .line 202
    iput-boolean v10, p0, Lcom/inmobi/ads/h;->e:Z

    .line 203
    iget-object v0, p0, Lcom/inmobi/ads/h;->d:Lcom/inmobi/ads/i;

    invoke-virtual {v0}, Lcom/inmobi/ads/i;->b()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/inmobi/ads/h;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    new-instance v0, Lcom/inmobi/ads/b/a;

    const-string v1, "Ignoring request to fetch an ad from the network sooner than the minimum request interval"

    invoke-direct {v0, v1}, Lcom/inmobi/ads/b/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 207
    :cond_1
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/h;->a:Ljava/lang/String;

    const-string v2, "No ad available in cache; fetching an ad from the network"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/inmobi/ads/h;->d:Lcom/inmobi/ads/i;

    invoke-direct {p0, v0, v10}, Lcom/inmobi/ads/h;->b(Lcom/inmobi/ads/i;Z)Ljava/lang/String;

    move-result-object v0

    .line 254
    :cond_2
    :goto_0
    return-object v0

    .line 211
    :cond_3
    iget-object v1, p0, Lcom/inmobi/ads/h;->d:Lcom/inmobi/ads/i;

    invoke-virtual {v1}, Lcom/inmobi/ads/i;->g()Lcom/inmobi/ads/c$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/c$b;->d()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 212
    iput-boolean v4, p0, Lcom/inmobi/ads/h;->e:Z

    .line 213
    iget-object v1, p0, Lcom/inmobi/ads/h;->b:Lcom/inmobi/ads/h$a;

    iget-object v0, p0, Lcom/inmobi/ads/h;->d:Lcom/inmobi/ads/i;

    invoke-virtual {v0}, Lcom/inmobi/ads/i;->d()J

    move-result-wide v2

    .line 214
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/inmobi/ads/a;

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/a;

    invoke-virtual {v0}, Lcom/inmobi/ads/a;->f()J

    move-result-wide v6

    .line 213
    invoke-interface/range {v1 .. v7}, Lcom/inmobi/ads/h$a;->a(JZLcom/inmobi/ads/a;J)V

    .line 215
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/a;

    invoke-direct {p0, v0}, Lcom/inmobi/ads/h;->b(Lcom/inmobi/ads/a;)V

    .line 216
    iget-object v0, p0, Lcom/inmobi/ads/h;->d:Lcom/inmobi/ads/i;

    invoke-virtual {v0}, Lcom/inmobi/ads/i;->b()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/inmobi/ads/h;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 217
    new-instance v0, Lcom/inmobi/ads/b/a;

    const-string v1, "Ignoring request to fetch an ad from the network sooner than the minimum request interval"

    invoke-direct {v0, v1}, Lcom/inmobi/ads/b/a;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_4
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/h;->a:Ljava/lang/String;

    const-string v2, "Cache occupancy below threshold; fetching an ad from the network"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/inmobi/ads/h;->d:Lcom/inmobi/ads/i;

    invoke-direct {p0, v0, v4}, Lcom/inmobi/ads/h;->b(Lcom/inmobi/ads/i;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 225
    :cond_5
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/h;->a:Ljava/lang/String;

    const-string v2, "Ad available in cache; signaling ad availability as true"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iput-boolean v4, p0, Lcom/inmobi/ads/h;->e:Z

    .line 228
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/a;

    invoke-virtual {v0}, Lcom/inmobi/ads/a;->b()Ljava/lang/String;

    move-result-object v8

    .line 229
    iget-object v1, p0, Lcom/inmobi/ads/h;->b:Lcom/inmobi/ads/h$a;

    iget-object v0, p0, Lcom/inmobi/ads/h;->d:Lcom/inmobi/ads/i;

    invoke-virtual {v0}, Lcom/inmobi/ads/i;->d()J

    move-result-wide v2

    .line 230
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/inmobi/ads/a;

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/a;

    invoke-virtual {v0}, Lcom/inmobi/ads/a;->f()J

    move-result-wide v6

    .line 229
    invoke-interface/range {v1 .. v7}, Lcom/inmobi/ads/h$a;->a(JZLcom/inmobi/ads/a;J)V

    .line 231
    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/a;

    invoke-direct {p0, v0}, Lcom/inmobi/ads/h;->b(Lcom/inmobi/ads/a;)V

    move-object v0, v8

    goto/16 :goto_0

    .line 236
    :cond_6
    iget-object v0, p0, Lcom/inmobi/ads/h;->d:Lcom/inmobi/ads/i;

    invoke-virtual {v0}, Lcom/inmobi/ads/i;->d()J

    move-result-wide v1

    iget-object v0, p0, Lcom/inmobi/ads/h;->d:Lcom/inmobi/ads/i;

    .line 237
    invoke-virtual {v0}, Lcom/inmobi/ads/i;->i()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/inmobi/ads/h;->d:Lcom/inmobi/ads/i;

    .line 238
    invoke-virtual {v0}, Lcom/inmobi/ads/i;->l()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/inmobi/ads/h;->d:Lcom/inmobi/ads/i;

    .line 239
    invoke-virtual {v0}, Lcom/inmobi/ads/i;->g()Lcom/inmobi/ads/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/c$b;->d()I

    move-result v5

    iget-object v0, p0, Lcom/inmobi/ads/h;->d:Lcom/inmobi/ads/i;

    .line 240
    invoke-virtual {v0}, Lcom/inmobi/ads/i;->g()Lcom/inmobi/ads/c$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/ads/c$b;->e()J

    move-result-wide v6

    move-object v0, p0

    .line 236
    invoke-virtual/range {v0 .. v7}, Lcom/inmobi/ads/h;->a(JLjava/lang/String;Ljava/lang/String;IJ)Lcom/inmobi/ads/a;

    move-result-object v1

    .line 241
    if-nez v1, :cond_7

    .line 242
    iget-object v0, p0, Lcom/inmobi/ads/h;->d:Lcom/inmobi/ads/i;

    invoke-direct {p0, v0, v10}, Lcom/inmobi/ads/h;->b(Lcom/inmobi/ads/i;Z)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 244
    :cond_7
    invoke-virtual {v1}, Lcom/inmobi/ads/a;->b()Ljava/lang/String;

    move-result-object v0

    .line 245
    iget-object v2, p0, Lcom/inmobi/ads/h;->b:Lcom/inmobi/ads/h$a;

    iget-object v3, p0, Lcom/inmobi/ads/h;->d:Lcom/inmobi/ads/i;

    invoke-virtual {v3}, Lcom/inmobi/ads/i;->d()J

    move-result-wide v4

    invoke-interface {v2, v4, v5, v1}, Lcom/inmobi/ads/h$a;->a(JLcom/inmobi/ads/a;)V

    .line 249
    const-string v2, "inlban"

    iget-object v3, p0, Lcom/inmobi/ads/h;->d:Lcom/inmobi/ads/i;

    invoke-virtual {v3}, Lcom/inmobi/ads/i;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 250
    invoke-direct {p0, v1}, Lcom/inmobi/ads/h;->b(Lcom/inmobi/ads/a;)V

    goto/16 :goto_0
.end method

.method a(Lcom/inmobi/ads/a;)V
    .locals 1

    .prologue
    .line 344
    iget-object v0, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/d;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/d;->a(Lcom/inmobi/ads/a;)V

    .line 345
    return-void
.end method

.method public a(Lcom/inmobi/ads/g;)V
    .locals 10

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 378
    invoke-virtual {p0, p1}, Lcom/inmobi/ads/h;->c(Lcom/inmobi/ads/g;)Ljava/util/List;

    move-result-object v2

    .line 379
    if-nez v2, :cond_1

    .line 380
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/h;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not parse ad response:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 381
    invoke-virtual {p1}, Lcom/inmobi/ads/g;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 380
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    iget-boolean v0, p0, Lcom/inmobi/ads/h;->e:Z

    if-nez v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/inmobi/ads/h;->b:Lcom/inmobi/ads/h$a;

    iget-object v1, p0, Lcom/inmobi/ads/h;->d:Lcom/inmobi/ads/i;

    invoke-virtual {v1}, Lcom/inmobi/ads/i;->d()J

    move-result-wide v2

    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v4, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->INTERNAL_ERROR:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v4}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-interface {v0, v2, v3, v1}, Lcom/inmobi/ads/h$a;->a(JLcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 453
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 388
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/h;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ad response received but no ad available:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 389
    invoke-virtual {p1}, Lcom/inmobi/ads/g;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 388
    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 392
    const-string v1, "loadLatency"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/inmobi/ads/h;->f:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    iget-object v1, p0, Lcom/inmobi/ads/h;->b:Lcom/inmobi/ads/h$a;

    const-string v2, "ads"

    const-string v3, "ServerNoFill"

    invoke-interface {v1, v2, v3, v0}, Lcom/inmobi/ads/h$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 395
    iget-boolean v0, p0, Lcom/inmobi/ads/h;->e:Z

    if-nez v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/inmobi/ads/h;->b:Lcom/inmobi/ads/h$a;

    iget-object v1, p0, Lcom/inmobi/ads/h;->d:Lcom/inmobi/ads/i;

    invoke-virtual {v1}, Lcom/inmobi/ads/i;->d()J

    move-result-wide v2

    new-instance v1, Lcom/inmobi/ads/InMobiAdRequestStatus;

    sget-object v4, Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;->NO_FILL:Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;

    invoke-direct {v1, v4}, Lcom/inmobi/ads/InMobiAdRequestStatus;-><init>(Lcom/inmobi/ads/InMobiAdRequestStatus$StatusCode;)V

    invoke-interface {v0, v2, v3, v1}, Lcom/inmobi/ads/h$a;->a(JLcom/inmobi/ads/InMobiAdRequestStatus;)V

    goto :goto_0

    .line 402
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 403
    const-string v3, "numberOfAdsReturned"

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    const-string v3, "loadLatency"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/inmobi/ads/h;->f:J

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    iget-object v3, p0, Lcom/inmobi/ads/h;->b:Lcom/inmobi/ads/h$a;

    const-string v5, "ads"

    const-string v6, "ServerFill"

    invoke-interface {v3, v5, v6, v0}, Lcom/inmobi/ads/h$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 407
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/a;

    invoke-virtual {v0}, Lcom/inmobi/ads/a;->h()Ljava/lang/String;

    move-result-object v3

    .line 409
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/inmobi/ads/a;

    .line 411
    if-eqz v3, :cond_0

    .line 412
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    const/4 v0, -0x1

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    :cond_3
    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 449
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/h;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown markup type = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 412
    :sswitch_0
    const-string v7, "HTML"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v7, "PUBJSON"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v0, v4

    goto :goto_1

    :sswitch_2
    const-string v7, "INMOBIJSON"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    .line 415
    :pswitch_0
    iget-boolean v0, p0, Lcom/inmobi/ads/h;->e:Z

    if-eqz v0, :cond_4

    move v4, v1

    .line 416
    :cond_4
    iget-object v0, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/d;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v2, v4, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/ads/h;->d:Lcom/inmobi/ads/i;

    .line 417
    invoke-virtual {v2}, Lcom/inmobi/ads/i;->g()Lcom/inmobi/ads/c$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/ads/c$b;->b()I

    move-result v2

    iget-object v3, p0, Lcom/inmobi/ads/h;->d:Lcom/inmobi/ads/i;

    .line 418
    invoke-virtual {v3}, Lcom/inmobi/ads/i;->i()Ljava/lang/String;

    move-result-object v3

    .line 416
    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/ads/d;->a(Ljava/util/List;ILjava/lang/String;)V

    .line 419
    iget-boolean v0, p0, Lcom/inmobi/ads/h;->e:Z

    if-nez v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/inmobi/ads/h;->b:Lcom/inmobi/ads/h$a;

    iget-object v1, p0, Lcom/inmobi/ads/h;->d:Lcom/inmobi/ads/i;

    invoke-virtual {v1}, Lcom/inmobi/ads/i;->d()J

    move-result-wide v2

    invoke-interface {v0, v2, v3, v5}, Lcom/inmobi/ads/h$a;->a(JLcom/inmobi/ads/a;)V

    goto/16 :goto_0

    .line 424
    :pswitch_1
    const-string v0, "int"

    iget-object v3, p0, Lcom/inmobi/ads/h;->d:Lcom/inmobi/ads/i;

    invoke-virtual {v3}, Lcom/inmobi/ads/i;->i()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 425
    iget-object v0, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/d;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/inmobi/ads/h;->d:Lcom/inmobi/ads/i;

    .line 426
    invoke-virtual {v2}, Lcom/inmobi/ads/i;->g()Lcom/inmobi/ads/c$b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/ads/c$b;->b()I

    move-result v2

    iget-object v3, p0, Lcom/inmobi/ads/h;->d:Lcom/inmobi/ads/i;

    .line 427
    invoke-virtual {v3}, Lcom/inmobi/ads/i;->i()Ljava/lang/String;

    move-result-object v3

    .line 425
    invoke-virtual {v0, v1, v2, v3}, Lcom/inmobi/ads/d;->a(Ljava/util/List;ILjava/lang/String;)V

    .line 428
    iget-boolean v0, p0, Lcom/inmobi/ads/h;->e:Z

    if-nez v0, :cond_5

    .line 429
    iget-object v1, p0, Lcom/inmobi/ads/h;->b:Lcom/inmobi/ads/h$a;

    iget-object v0, p0, Lcom/inmobi/ads/h;->d:Lcom/inmobi/ads/i;

    invoke-virtual {v0}, Lcom/inmobi/ads/i;->d()J

    move-result-wide v2

    .line 430
    invoke-virtual {v5}, Lcom/inmobi/ads/a;->f()J

    move-result-wide v6

    .line 429
    invoke-interface/range {v1 .. v7}, Lcom/inmobi/ads/h$a;->a(JZLcom/inmobi/ads/a;J)V

    .line 445
    :cond_5
    :goto_2
    invoke-direct {p0, v5}, Lcom/inmobi/ads/h;->b(Lcom/inmobi/ads/a;)V

    goto/16 :goto_0

    .line 432
    :cond_6
    const-string v0, "inlban"

    iget-object v1, p0, Lcom/inmobi/ads/h;->d:Lcom/inmobi/ads/i;

    invoke-virtual {v1}, Lcom/inmobi/ads/i;->i()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 433
    iget-object v0, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/d;

    iget-object v1, p0, Lcom/inmobi/ads/h;->d:Lcom/inmobi/ads/i;

    .line 434
    invoke-virtual {v1}, Lcom/inmobi/ads/i;->g()Lcom/inmobi/ads/c$b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/c$b;->b()I

    move-result v1

    iget-object v3, p0, Lcom/inmobi/ads/h;->d:Lcom/inmobi/ads/i;

    .line 435
    invoke-virtual {v3}, Lcom/inmobi/ads/i;->i()Ljava/lang/String;

    move-result-object v3

    .line 433
    invoke-virtual {v0, v2, v1, v3}, Lcom/inmobi/ads/d;->a(Ljava/util/List;ILjava/lang/String;)V

    .line 436
    iget-boolean v0, p0, Lcom/inmobi/ads/h;->e:Z

    if-nez v0, :cond_5

    .line 437
    iget-object v0, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/d;

    iget-object v1, p0, Lcom/inmobi/ads/h;->d:Lcom/inmobi/ads/i;

    invoke-virtual {v1}, Lcom/inmobi/ads/i;->d()J

    move-result-wide v2

    iget-object v1, p0, Lcom/inmobi/ads/h;->d:Lcom/inmobi/ads/i;

    invoke-virtual {v1}, Lcom/inmobi/ads/i;->l()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1}, Lcom/inmobi/ads/d;->b(JLjava/lang/String;)Lcom/inmobi/ads/a;

    move-result-object v0

    .line 439
    if-eqz v0, :cond_7

    move-object v5, v0

    .line 442
    :cond_7
    iget-object v0, p0, Lcom/inmobi/ads/h;->b:Lcom/inmobi/ads/h$a;

    iget-object v1, p0, Lcom/inmobi/ads/h;->d:Lcom/inmobi/ads/i;

    invoke-virtual {v1}, Lcom/inmobi/ads/i;->d()J

    move-result-wide v2

    invoke-interface {v0, v2, v3, v5}, Lcom/inmobi/ads/h$a;->a(JLcom/inmobi/ads/a;)V

    goto :goto_2

    .line 412
    :sswitch_data_0
    .sparse-switch
        -0x23a6b20a -> :sswitch_2
        0x21ffab -> :sswitch_0
        0x1cc36545 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 170
    iget-boolean v0, p0, Lcom/inmobi/ads/h;->e:Z

    return v0
.end method

.method a(JLjava/lang/String;)Z
    .locals 1
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 340
    iget-object v0, p0, Lcom/inmobi/ads/h;->c:Lcom/inmobi/ads/d;

    invoke-virtual {v0, p1, p2, p3}, Lcom/inmobi/ads/d;->a(JLjava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/inmobi/ads/g;)V
    .locals 6

    .prologue
    .line 515
    iget-boolean v0, p0, Lcom/inmobi/ads/h;->e:Z

    if-nez v0, :cond_0

    .line 517
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 518
    const-string v1, "errorCode"

    invoke-virtual {p1}, Lcom/inmobi/ads/g;->d()Lcom/inmobi/commons/core/network/NetworkError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/commons/core/network/NetworkError;->a()Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/commons/core/network/NetworkError$ErrorCode;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    const-string v1, "reason"

    invoke-virtual {p1}, Lcom/inmobi/ads/g;->d()Lcom/inmobi/commons/core/network/NetworkError;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/commons/core/network/NetworkError;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    const-string v1, "loadLatency"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/inmobi/ads/h;->f:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    iget-object v1, p0, Lcom/inmobi/ads/h;->b:Lcom/inmobi/ads/h$a;

    const-string v2, "ads"

    const-string v3, "ServerError"

    invoke-interface {v1, v2, v3, v0}, Lcom/inmobi/ads/h$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 523
    iget-object v0, p0, Lcom/inmobi/ads/h;->b:Lcom/inmobi/ads/h$a;

    iget-object v1, p0, Lcom/inmobi/ads/h;->d:Lcom/inmobi/ads/i;

    invoke-virtual {v1}, Lcom/inmobi/ads/i;->d()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/inmobi/ads/g;->a()Lcom/inmobi/ads/InMobiAdRequestStatus;

    move-result-object v1

    invoke-interface {v0, v2, v3, v1}, Lcom/inmobi/ads/h$a;->a(JLcom/inmobi/ads/InMobiAdRequestStatus;)V

    .line 525
    :cond_0
    return-void
.end method

.method protected c(Lcom/inmobi/ads/g;)Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inmobi/ads/g;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/a;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 474
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 477
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/inmobi/ads/g;->c()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 478
    const-string v2, "requestId"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    .line 479
    const-string v2, "ads"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 481
    if-eqz v11, :cond_2

    .line 483
    invoke-virtual {p1}, Lcom/inmobi/ads/g;->b()Lcom/inmobi/ads/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/inmobi/ads/f;->d()I

    move-result v1

    .line 484
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 483
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 486
    const/4 v1, 0x0

    move v9, v1

    :goto_0
    if-ge v9, v12, :cond_1

    .line 487
    invoke-virtual {v11, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 488
    invoke-virtual {p1}, Lcom/inmobi/ads/g;->b()Lcom/inmobi/ads/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inmobi/ads/f;->e()J

    move-result-wide v2

    .line 489
    invoke-virtual {p1}, Lcom/inmobi/ads/g;->b()Lcom/inmobi/ads/f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inmobi/ads/f;->b()Ljava/lang/String;

    move-result-object v4

    .line 490
    invoke-virtual {p1}, Lcom/inmobi/ads/g;->b()Lcom/inmobi/ads/f;

    move-result-object v5

    invoke-virtual {v5}, Lcom/inmobi/ads/f;->c()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 491
    invoke-virtual {p1}, Lcom/inmobi/ads/g;->b()Lcom/inmobi/ads/f;

    move-result-object v7

    invoke-virtual {v7}, Lcom/inmobi/ads/f;->f()Ljava/lang/String;

    move-result-object v7

    .line 487
    invoke-static/range {v1 .. v7}, Lcom/inmobi/ads/a$a;->a(Lorg/json/JSONObject;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/inmobi/ads/a;

    move-result-object v1

    .line 493
    if-eqz v1, :cond_0

    .line 494
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    :cond_0
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    goto :goto_0

    .line 497
    :cond_1
    if-lez v12, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_2

    .line 510
    :goto_1
    return-object v8

    .line 499
    :catch_0
    move-exception v0

    .line 500
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/ads/h;->a:Ljava/lang/String;

    const-string v3, "Error while parsing ad response."

    invoke-static {v1, v2, v3, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 502
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 503
    const-string v2, "errorCode"

    const-string v3, "ParsingError"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    const-string v2, "reason"

    invoke-virtual {v0}, Lorg/json/JSONException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    const-string v0, "loadLatency"

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/inmobi/ads/h;->f:J

    sub-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    iget-object v0, p0, Lcom/inmobi/ads/h;->b:Lcom/inmobi/ads/h$a;

    const-string v2, "ads"

    const-string v3, "ServerError"

    invoke-interface {v0, v2, v3, v1}, Lcom/inmobi/ads/h$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    move-object v0, v8

    :cond_2
    move-object v8, v0

    .line 510
    goto :goto_1
.end method
