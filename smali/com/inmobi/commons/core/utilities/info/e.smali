.class public Lcom/inmobi/commons/core/utilities/info/e;
.super Ljava/lang/Object;
.source "PublisherProvidedUserInfoDao.java"


# static fields
.field private static a:I

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;

.field private static h:I

.field private static i:Ljava/lang/String;

.field private static j:Ljava/lang/String;

.field private static k:Ljava/lang/String;

.field private static l:Ljava/lang/String;

.field private static m:I

.field private static n:Ljava/lang/String;

.field private static o:Ljava/lang/String;

.field private static p:Ljava/lang/String;

.field private static q:Ljava/lang/String;

.field private static r:Ljava/lang/String;

.field private static s:Landroid/location/Location;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/high16 v0, -0x80000000

    .line 41
    sput v0, Lcom/inmobi/commons/core/utilities/info/e;->a:I

    .line 48
    sput v0, Lcom/inmobi/commons/core/utilities/info/e;->h:I

    .line 53
    sput v0, Lcom/inmobi/commons/core/utilities/info/e;->m:I

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 483
    const-string v0, ""

    .line 485
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    .line 486
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 488
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 491
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 495
    :cond_2
    return-object v0
.end method

.method public static a(I)V
    .locals 2

    .prologue
    .line 107
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_0

    .line 108
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_age"

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/c/c;->a(Ljava/lang/String;I)V

    .line 112
    :goto_0
    return-void

    .line 111
    :cond_0
    sput p0, Lcom/inmobi/commons/core/utilities/info/e;->a:I

    goto :goto_0
.end method

.method public static a(Landroid/location/Location;)V
    .locals 3

    .prologue
    .line 402
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 403
    invoke-static {p0}, Lcom/inmobi/commons/core/utilities/info/e;->b(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v0

    .line 404
    const-string v1, "user_info_store"

    invoke-static {v1}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v1

    const-string v2, "user_location"

    invoke-virtual {v1, v2, v0}, Lcom/inmobi/commons/core/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    :goto_0
    return-void

    .line 407
    :cond_0
    sput-object p0, Lcom/inmobi/commons/core/utilities/info/e;->s:Landroid/location/Location;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 122
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 123
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_age_group"

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :goto_0
    return-void

    .line 126
    :cond_0
    sput-object p0, Lcom/inmobi/commons/core/utilities/info/e;->b:Ljava/lang/String;

    goto :goto_0
.end method

.method private static b(Landroid/location/Location;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 499
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 501
    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 502
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 504
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    invoke-virtual {p0}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 506
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    invoke-virtual {p0}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 508
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b()V
    .locals 1

    .prologue
    .line 68
    sget v0, Lcom/inmobi/commons/core/utilities/info/e;->a:I

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/e;->a(I)V

    .line 69
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/e;->a(Ljava/lang/String;)V

    .line 70
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/e;->b(Ljava/lang/String;)V

    .line 71
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/e;->c(Ljava/lang/String;)V

    .line 72
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/e;->d(Ljava/lang/String;)V

    .line 73
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->f:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/e;->e(Ljava/lang/String;)V

    .line 74
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->g:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/e;->f(Ljava/lang/String;)V

    .line 75
    sget v0, Lcom/inmobi/commons/core/utilities/info/e;->h:I

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/e;->b(I)V

    .line 76
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/e;->g(Ljava/lang/String;)V

    .line 77
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/e;->h(Ljava/lang/String;)V

    .line 78
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/e;->i(Ljava/lang/String;)V

    .line 79
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/e;->j(Ljava/lang/String;)V

    .line 80
    sget v0, Lcom/inmobi/commons/core/utilities/info/e;->m:I

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/e;->c(I)V

    .line 81
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->n:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/e;->k(Ljava/lang/String;)V

    .line 82
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->o:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/e;->l(Ljava/lang/String;)V

    .line 83
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->p:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/e;->m(Ljava/lang/String;)V

    .line 84
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->q:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/e;->n(Ljava/lang/String;)V

    .line 85
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->r:Ljava/lang/String;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/e;->e(Ljava/lang/String;)V

    .line 86
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->s:Landroid/location/Location;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/info/e;->a(Landroid/location/Location;)V

    .line 87
    return-void
.end method

.method public static b(I)V
    .locals 2

    .prologue
    .line 212
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_0

    .line 213
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_yob"

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/c/c;->a(Ljava/lang/String;I)V

    .line 217
    :goto_0
    return-void

    .line 216
    :cond_0
    sput p0, Lcom/inmobi/commons/core/utilities/info/e;->h:I

    goto :goto_0
.end method

.method public static b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 137
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 138
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_area_code"

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    :goto_0
    return-void

    .line 141
    :cond_0
    sput-object p0, Lcom/inmobi/commons/core/utilities/info/e;->c:Ljava/lang/String;

    goto :goto_0
.end method

.method public static c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 160
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 161
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->d:Ljava/lang/String;

    .line 163
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_post_code"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static c(I)V
    .locals 2

    .prologue
    .line 288
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, -0x80000000

    if-eq p0, v0, :cond_0

    .line 289
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_income"

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/c/c;->a(Ljava/lang/String;I)V

    .line 293
    :goto_0
    return-void

    .line 292
    :cond_0
    sput p0, Lcom/inmobi/commons/core/utilities/info/e;->m:I

    goto :goto_0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 152
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 153
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_post_code"

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    :goto_0
    return-void

    .line 156
    :cond_0
    sput-object p0, Lcom/inmobi/commons/core/utilities/info/e;->d:Ljava/lang/String;

    goto :goto_0
.end method

.method public static d()Ljava/lang/String;
    .locals 3

    .prologue
    .line 349
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->q:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 350
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->q:Ljava/lang/String;

    .line 352
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_login_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 167
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 168
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_city_code"

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :goto_0
    return-void

    .line 171
    :cond_0
    sput-object p0, Lcom/inmobi/commons/core/utilities/info/e;->e:Ljava/lang/String;

    goto :goto_0
.end method

.method public static e()Ljava/lang/String;
    .locals 3

    .prologue
    .line 364
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->r:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 365
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->r:Ljava/lang/String;

    .line 367
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_session_id"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static e(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 189
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 190
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_state_code"

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :goto_0
    return-void

    .line 193
    :cond_0
    sput-object p0, Lcom/inmobi/commons/core/utilities/info/e;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public static f()Landroid/location/Location;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 379
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->s:Landroid/location/Location;

    if-eqz v0, :cond_1

    .line 380
    sget-object v1, Lcom/inmobi/commons/core/utilities/info/e;->s:Landroid/location/Location;

    .line 398
    :cond_0
    :goto_0
    return-object v1

    .line 382
    :cond_1
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v2, "user_location"

    invoke-virtual {v0, v2, v1}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 383
    if-eqz v2, :cond_0

    .line 386
    new-instance v0, Landroid/location/Location;

    const-string v3, ""

    invoke-direct {v0, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 388
    :try_start_0
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 389
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/location/Location;->setLatitude(D)V

    .line 390
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/location/Location;->setLongitude(D)V

    .line 391
    const/4 v3, 0x2

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    invoke-virtual {v0, v3}, Landroid/location/Location;->setAccuracy(F)V

    .line 392
    const/4 v3, 0x3

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/location/Location;->setTime(J)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    move-object v1, v0

    .line 398
    goto :goto_0

    .line 393
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 397
    goto :goto_1

    .line 395
    :catch_1
    move-exception v0

    move-object v0, v1

    .line 396
    goto :goto_1
.end method

.method public static f(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 197
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 198
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_country_code"

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :goto_0
    return-void

    .line 201
    :cond_0
    sput-object p0, Lcom/inmobi/commons/core/utilities/info/e;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public static g()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/high16 v3, -0x80000000

    .line 412
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 414
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/e;->h()I

    move-result v1

    .line 415
    if-eq v1, v3, :cond_0

    if-lez v1, :cond_0

    .line 416
    const-string v2, "u-age"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    :cond_0
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/e;->n()I

    move-result v1

    .line 420
    if-eq v1, v3, :cond_1

    if-lez v1, :cond_1

    .line 421
    const-string v2, "u-yearofbirth"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    :cond_1
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/e;->s()I

    move-result v1

    .line 425
    if-eq v1, v3, :cond_2

    if-lez v1, :cond_2

    .line 426
    const-string v2, "u-income"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    :cond_2
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/e;->k()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/e;->l()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/e;->m()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/info/e;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 430
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    .line 431
    const-string v2, "u-location"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    :cond_3
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/e;->i()Ljava/lang/String;

    move-result-object v1

    .line 435
    if-eqz v1, :cond_4

    .line 436
    const-string v2, "u-agegroup"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    :cond_4
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/e;->j()Ljava/lang/String;

    move-result-object v1

    .line 440
    if-eqz v1, :cond_5

    .line 441
    const-string v2, "u-areacode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    :cond_5
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/e;->c()Ljava/lang/String;

    move-result-object v1

    .line 445
    if-eqz v1, :cond_6

    .line 446
    const-string v2, "u-postalcode"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    :cond_6
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/e;->o()Ljava/lang/String;

    move-result-object v1

    .line 450
    if-eqz v1, :cond_7

    .line 451
    const-string v2, "u-gender"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    :cond_7
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/e;->p()Ljava/lang/String;

    move-result-object v1

    .line 455
    if-eqz v1, :cond_8

    .line 456
    const-string v2, "u-ethnicity"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    :cond_8
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/e;->q()Ljava/lang/String;

    move-result-object v1

    .line 460
    if-eqz v1, :cond_9

    .line 461
    const-string v2, "u-education"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    :cond_9
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/e;->r()Ljava/lang/String;

    move-result-object v1

    .line 464
    if-eqz v1, :cond_a

    .line 465
    const-string v2, "u-language"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    :cond_a
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/e;->t()Ljava/lang/String;

    move-result-object v1

    .line 468
    if-eqz v1, :cond_b

    .line 469
    const-string v2, "u-householdincome"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    :cond_b
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/e;->u()Ljava/lang/String;

    move-result-object v1

    .line 472
    if-eqz v1, :cond_c

    .line 473
    const-string v2, "u-interests"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    :cond_c
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/e;->v()Ljava/lang/String;

    move-result-object v1

    .line 476
    if-eqz v1, :cond_d

    .line 477
    const-string v2, "u-nationality"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    :cond_d
    return-object v0
.end method

.method public static g(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 227
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 228
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_gender"

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    :goto_0
    return-void

    .line 231
    :cond_0
    sput-object p0, Lcom/inmobi/commons/core/utilities/info/e;->i:Ljava/lang/String;

    goto :goto_0
.end method

.method private static h()I
    .locals 3

    .prologue
    const/high16 v2, -0x80000000

    .line 115
    sget v0, Lcom/inmobi/commons/core/utilities/info/e;->a:I

    if-eq v0, v2, :cond_0

    .line 116
    sget v0, Lcom/inmobi/commons/core/utilities/info/e;->a:I

    .line 118
    :goto_0
    return v0

    :cond_0
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_age"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static h(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 242
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 243
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_ethnicity"

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :goto_0
    return-void

    .line 246
    :cond_0
    sput-object p0, Lcom/inmobi/commons/core/utilities/info/e;->j:Ljava/lang/String;

    goto :goto_0
.end method

.method private static i()Ljava/lang/String;
    .locals 3

    .prologue
    .line 130
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 131
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->b:Ljava/lang/String;

    .line 133
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_age_group"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 258
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 259
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_education"

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    :goto_0
    return-void

    .line 262
    :cond_0
    sput-object p0, Lcom/inmobi/commons/core/utilities/info/e;->k:Ljava/lang/String;

    goto :goto_0
.end method

.method private static j()Ljava/lang/String;
    .locals 3

    .prologue
    .line 145
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 146
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->c:Ljava/lang/String;

    .line 148
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_area_code"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static j(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 280
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 281
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_language"

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    :goto_0
    return-void

    .line 284
    :cond_0
    sput-object p0, Lcom/inmobi/commons/core/utilities/info/e;->l:Ljava/lang/String;

    goto :goto_0
.end method

.method private static k()Ljava/lang/String;
    .locals 3

    .prologue
    .line 175
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 176
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->e:Ljava/lang/String;

    .line 178
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_city_code"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static k(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 303
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 304
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_house_income"

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    :goto_0
    return-void

    .line 307
    :cond_0
    sput-object p0, Lcom/inmobi/commons/core/utilities/info/e;->n:Ljava/lang/String;

    goto :goto_0
.end method

.method private static l()Ljava/lang/String;
    .locals 3

    .prologue
    .line 182
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->f:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 183
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->f:Ljava/lang/String;

    .line 185
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_state_code"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static l(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 318
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 319
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_interest"

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    :goto_0
    return-void

    .line 322
    :cond_0
    sput-object p0, Lcom/inmobi/commons/core/utilities/info/e;->o:Ljava/lang/String;

    goto :goto_0
.end method

.method private static m()Ljava/lang/String;
    .locals 3

    .prologue
    .line 205
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 206
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->g:Ljava/lang/String;

    .line 208
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_country_code"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static m(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 333
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 334
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_nationality"

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    :goto_0
    return-void

    .line 337
    :cond_0
    sput-object p0, Lcom/inmobi/commons/core/utilities/info/e;->p:Ljava/lang/String;

    goto :goto_0
.end method

.method private static n()I
    .locals 3

    .prologue
    const/high16 v2, -0x80000000

    .line 220
    sget v0, Lcom/inmobi/commons/core/utilities/info/e;->h:I

    if-eq v0, v2, :cond_0

    .line 221
    sget v0, Lcom/inmobi/commons/core/utilities/info/e;->h:I

    .line 223
    :goto_0
    return v0

    :cond_0
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_yob"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method public static n(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 356
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 357
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_login_id"

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    :goto_0
    return-void

    .line 360
    :cond_0
    sput-object p0, Lcom/inmobi/commons/core/utilities/info/e;->q:Ljava/lang/String;

    goto :goto_0
.end method

.method private static o()Ljava/lang/String;
    .locals 3

    .prologue
    .line 235
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->i:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 236
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->i:Ljava/lang/String;

    .line 238
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_gender"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static o(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 371
    invoke-static {}, Lcom/inmobi/commons/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 372
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_session_id"

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/c/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    :goto_0
    return-void

    .line 375
    :cond_0
    sput-object p0, Lcom/inmobi/commons/core/utilities/info/e;->r:Ljava/lang/String;

    goto :goto_0
.end method

.method private static p()Ljava/lang/String;
    .locals 3

    .prologue
    .line 250
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 251
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->j:Ljava/lang/String;

    .line 253
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_ethnicity"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static q()Ljava/lang/String;
    .locals 3

    .prologue
    .line 266
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 267
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->k:Ljava/lang/String;

    .line 269
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_education"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static r()Ljava/lang/String;
    .locals 3

    .prologue
    .line 273
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 274
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->l:Ljava/lang/String;

    .line 276
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_language"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static s()I
    .locals 3

    .prologue
    const/high16 v2, -0x80000000

    .line 296
    sget v0, Lcom/inmobi/commons/core/utilities/info/e;->m:I

    if-eq v0, v2, :cond_0

    .line 297
    sget v0, Lcom/inmobi/commons/core/utilities/info/e;->m:I

    .line 299
    :goto_0
    return v0

    :cond_0
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_income"

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0
.end method

.method private static t()Ljava/lang/String;
    .locals 3

    .prologue
    .line 311
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->n:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 312
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->n:Ljava/lang/String;

    .line 314
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_house_income"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static u()Ljava/lang/String;
    .locals 3

    .prologue
    .line 326
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 327
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->o:Ljava/lang/String;

    .line 329
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_interest"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static v()Ljava/lang/String;
    .locals 3

    .prologue
    .line 341
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->p:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 342
    sget-object v0, Lcom/inmobi/commons/core/utilities/info/e;->p:Ljava/lang/String;

    .line 344
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "user_info_store"

    invoke-static {v0}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;)Lcom/inmobi/commons/core/c/c;

    move-result-object v0

    const-string v1, "user_nationality"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/inmobi/commons/core/c/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
