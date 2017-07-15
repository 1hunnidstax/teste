.class public Lcom/fyber/Fyber;
.super Ljava/lang/Object;
.source "Fyber.java"


# annotations
.annotation runtime Lcom/fyber/annotations/SDKFeatures;
    value = {
        "banners"
    }
.end annotation

.annotation runtime Lcom/fyber/mediation/annotations/MediationAPI;
    value = 0x5
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fyber/Fyber$a;,
        Lcom/fyber/Fyber$Settings;
    }
.end annotation


# static fields
.field public static final RELEASE_VERSION_STRING:Ljava/lang/String;

.field private static a:Lcom/fyber/Fyber;


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/fyber/Fyber$a;

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 72
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v1, "%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "8.12.0"

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fyber/Fyber;->RELEASE_VERSION_STRING:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/app/Activity;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-boolean v2, p0, Lcom/fyber/Fyber;->e:Z

    .line 86
    new-instance v0, Lcom/fyber/Fyber$a;

    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p1, v1, v2}, Lcom/fyber/Fyber$a;-><init>(Ljava/lang/String;Landroid/content/Context;B)V

    iput-object v0, p0, Lcom/fyber/Fyber;->d:Lcom/fyber/Fyber$a;

    .line 87
    invoke-virtual {p2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/fyber/Fyber;->b:Landroid/content/Context;

    .line 88
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fyber/Fyber;->c:Ljava/lang/ref/WeakReference;

    .line 89
    return-void
.end method

.method public static getConfigs()Lcom/fyber/Fyber$a;
    .locals 1

    .prologue
    .line 655
    sget-object v0, Lcom/fyber/Fyber;->a:Lcom/fyber/Fyber;

    if-eqz v0, :cond_0

    .line 656
    sget-object v0, Lcom/fyber/Fyber;->a:Lcom/fyber/Fyber;

    iget-object v0, v0, Lcom/fyber/Fyber;->d:Lcom/fyber/Fyber$a;

    .line 658
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/fyber/Fyber$a;->a:Lcom/fyber/Fyber$a;

    goto :goto_0
.end method

.method public static with(Ljava/lang/String;Landroid/app/Activity;)Lcom/fyber/Fyber;
    .locals 2
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 103
    sget-object v0, Lcom/fyber/Fyber;->a:Lcom/fyber/Fyber;

    if-nez v0, :cond_5

    .line 1204
    if-nez p1, :cond_0

    .line 1205
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Activity cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1207
    :cond_0
    invoke-static {p0}, Lcom/fyber/utils/StringUtils;->nullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1208
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "App id cannot be null nor empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1210
    :cond_1
    invoke-static {p0}, Lcom/fyber/a/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1211
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Advertisers cannot start the sdk"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_2
    const-class v1, Lcom/fyber/Fyber;

    monitor-enter v1

    .line 108
    :try_start_0
    sget-object v0, Lcom/fyber/Fyber;->a:Lcom/fyber/Fyber;

    if-nez v0, :cond_3

    .line 109
    new-instance v0, Lcom/fyber/Fyber;

    invoke-direct {v0, p0, p1}, Lcom/fyber/Fyber;-><init>(Ljava/lang/String;Landroid/app/Activity;)V

    sput-object v0, Lcom/fyber/Fyber;->a:Lcom/fyber/Fyber;

    .line 111
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    :cond_4
    :goto_0
    sget-object v0, Lcom/fyber/Fyber;->a:Lcom/fyber/Fyber;

    return-object v0

    .line 111
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 112
    :cond_5
    sget-object v0, Lcom/fyber/Fyber;->a:Lcom/fyber/Fyber;

    iget-boolean v0, v0, Lcom/fyber/Fyber;->e:Z

    if-nez v0, :cond_4

    .line 113
    sget-object v0, Lcom/fyber/Fyber;->a:Lcom/fyber/Fyber;

    iget-object v0, v0, Lcom/fyber/Fyber;->d:Lcom/fyber/Fyber$a;

    invoke-static {v0}, Lcom/fyber/Fyber$a;->a(Lcom/fyber/Fyber$a;)Lcom/fyber/a/a$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/fyber/a/a$a;->a(Ljava/lang/String;)Lcom/fyber/a/a$a;

    goto :goto_0
.end method


# virtual methods
.method public start()Lcom/fyber/Fyber$Settings;
    .locals 2

    .prologue
    .line 187
    iget-boolean v0, p0, Lcom/fyber/Fyber;->e:Z

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/fyber/Fyber;->d:Lcom/fyber/Fyber$a;

    invoke-static {v0}, Lcom/fyber/Fyber$a;->a(Lcom/fyber/Fyber$a;)Lcom/fyber/a/a$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fyber/a/a$a;->a()Lcom/fyber/a/a;

    move-result-object v0

    .line 189
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/fyber/Fyber;->e:Z

    .line 190
    iget-object v1, p0, Lcom/fyber/Fyber;->d:Lcom/fyber/Fyber$a;

    invoke-static {v1, v0}, Lcom/fyber/Fyber$a;->a(Lcom/fyber/Fyber$a;Lcom/fyber/a/a;)Lcom/fyber/a/a;

    .line 192
    :try_start_0
    invoke-virtual {v0}, Lcom/fyber/a/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/fyber/reporters/a/b;->a(Ljava/lang/String;)Lcom/fyber/reporters/a/b;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/Fyber;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/fyber/reporters/a/b;->report(Landroid/content/Context;)Z
    :try_end_0
    .catch Lcom/fyber/exceptions/IdException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    invoke-static {}, Lcom/fyber/utils/h;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1217
    iget-object v0, p0, Lcom/fyber/Fyber;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 1218
    if-eqz v0, :cond_1

    .line 1219
    sget-object v1, Lcom/fyber/mediation/b;->a:Lcom/fyber/mediation/b;

    invoke-virtual {v1, v0}, Lcom/fyber/mediation/b;->a(Landroid/app/Activity;)V

    .line 1224
    :goto_1
    invoke-static {}, Lcom/fyber/cache/CacheManager;->a()Lcom/fyber/cache/CacheManager;

    move-result-object v0

    iget-object v1, p0, Lcom/fyber/Fyber;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/fyber/cache/CacheManager;->a(Landroid/content/Context;)V

    .line 200
    :cond_0
    iget-object v0, p0, Lcom/fyber/Fyber;->d:Lcom/fyber/Fyber$a;

    invoke-static {v0}, Lcom/fyber/Fyber$a;->b(Lcom/fyber/Fyber$a;)Lcom/fyber/Fyber$Settings;

    move-result-object v0

    return-object v0

    .line 1221
    :cond_1
    const-string v0, "Fyber"

    const-string v1, "There was an issue starting the adapters - the activity might have been closed."

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public withManualPrecaching()Lcom/fyber/Fyber;
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lcom/fyber/Fyber;->e:Z

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/fyber/Fyber;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/fyber/cache/CacheManager;->pauseDownloads(Landroid/content/Context;)V

    .line 143
    :cond_0
    return-object p0
.end method

.method public withParameters(Ljava/util/Map;)Lcom/fyber/Fyber;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fyber/Fyber;"
        }
    .end annotation

    .prologue
    .line 172
    iget-boolean v0, p0, Lcom/fyber/Fyber;->e:Z

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/fyber/Fyber;->d:Lcom/fyber/Fyber$a;

    invoke-static {v0}, Lcom/fyber/Fyber$a;->b(Lcom/fyber/Fyber$a;)Lcom/fyber/Fyber$Settings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fyber/Fyber$Settings;->addParameters(Ljava/util/Map;)Lcom/fyber/Fyber$Settings;

    .line 175
    :cond_0
    return-object p0
.end method

.method public withSecurityToken(Ljava/lang/String;)Lcom/fyber/Fyber;
    .locals 1

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/fyber/Fyber;->e:Z

    if-nez v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/fyber/Fyber;->d:Lcom/fyber/Fyber$a;

    invoke-static {v0}, Lcom/fyber/Fyber$a;->a(Lcom/fyber/Fyber$a;)Lcom/fyber/a/a$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fyber/a/a$a;->c(Ljava/lang/String;)Lcom/fyber/a/a$a;

    .line 156
    :cond_0
    return-object p0
.end method

.method public withUserId(Ljava/lang/String;)Lcom/fyber/Fyber;
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/fyber/Fyber;->e:Z

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/fyber/Fyber;->d:Lcom/fyber/Fyber$a;

    invoke-static {v0}, Lcom/fyber/Fyber$a;->a(Lcom/fyber/Fyber$a;)Lcom/fyber/a/a$a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fyber/a/a$a;->b(Ljava/lang/String;)Lcom/fyber/a/a$a;

    .line 128
    :cond_0
    return-object p0
.end method
