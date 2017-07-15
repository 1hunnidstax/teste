.class public Lcom/inmobi/commons/core/d/c;
.super Ljava/lang/Object;
.source "TelemetryComponent.java"

# interfaces
.implements Lcom/inmobi/commons/core/configs/b$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/core/d/c$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/Object;

.field private static volatile c:Lcom/inmobi/commons/core/d/c;

.field private static d:Z

.field private static final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/inmobi/commons/core/d/d;",
            ">;"
        }
    .end annotation
.end field

.field private static h:Lcom/inmobi/commons/core/d/e;

.field private static final o:Ljava/util/Random;


# instance fields
.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/commons/core/d/g;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/os/HandlerThread;

.field private j:Lcom/inmobi/commons/core/d/c$a;

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final l:Ljava/lang/Object;

.field private final m:Ljava/lang/Object;

.field private final n:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 42
    const-class v0, Lcom/inmobi/commons/core/d/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/core/d/c;->a:Ljava/lang/String;

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/inmobi/commons/core/d/c;->b:Ljava/lang/Object;

    .line 45
    sput-boolean v1, Lcom/inmobi/commons/core/d/c;->d:Z

    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/inmobi/commons/core/d/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 57
    new-instance v0, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Ljava/util/Random;-><init>(J)V

    sput-object v0, Lcom/inmobi/commons/core/d/c;->o:Ljava/util/Random;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/core/d/c;->l:Ljava/lang/Object;

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/core/d/c;->m:Ljava/lang/Object;

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/core/d/c;->n:Ljava/lang/Object;

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/core/d/c;->g:Ljava/util/List;

    .line 78
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/inmobi/commons/core/d/c;->f:Ljava/util/Map;

    .line 79
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/core/d/c;->k:Ljava/util/Map;

    .line 80
    new-instance v0, Lcom/inmobi/commons/core/d/e;

    invoke-direct {v0}, Lcom/inmobi/commons/core/d/e;-><init>()V

    sput-object v0, Lcom/inmobi/commons/core/d/c;->h:Lcom/inmobi/commons/core/d/e;

    .line 81
    sget-object v0, Lcom/inmobi/commons/core/d/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-static {}, Lcom/inmobi/commons/core/utilities/d;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 82
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->a()Lcom/inmobi/commons/core/configs/b;

    move-result-object v0

    sget-object v1, Lcom/inmobi/commons/core/d/c;->h:Lcom/inmobi/commons/core/d/e;

    invoke-virtual {v0, v1, p0}, Lcom/inmobi/commons/core/configs/b;->a(Lcom/inmobi/commons/core/configs/a;Lcom/inmobi/commons/core/configs/b$b;)V

    .line 83
    sget-object v0, Lcom/inmobi/commons/core/d/c;->h:Lcom/inmobi/commons/core/d/e;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/d/e;->a()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/inmobi/commons/core/d/c;->h:Lcom/inmobi/commons/core/d/e;

    invoke-virtual {v1}, Lcom/inmobi/commons/core/d/e;->n()Lcom/inmobi/commons/core/d/d;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Lcom/inmobi/commons/core/d/d;)V

    .line 84
    new-instance v0, Lcom/inmobi/commons/core/d/c$1;

    invoke-direct {v0, p0}, Lcom/inmobi/commons/core/d/c$1;-><init>(Lcom/inmobi/commons/core/d/c;)V

    .line 98
    invoke-static {}, Lcom/inmobi/commons/core/utilities/f;->a()Lcom/inmobi/commons/core/utilities/f;

    move-result-object v1

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/f;->a(Ljava/lang/String;Lcom/inmobi/commons/core/utilities/f$b;)V

    .line 99
    return-void
.end method

.method public static a()Lcom/inmobi/commons/core/d/c;
    .locals 2

    .prologue
    .line 61
    sget-object v0, Lcom/inmobi/commons/core/d/c;->c:Lcom/inmobi/commons/core/d/c;

    .line 63
    if-nez v0, :cond_1

    .line 64
    sget-object v1, Lcom/inmobi/commons/core/d/c;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 65
    :try_start_0
    sget-object v0, Lcom/inmobi/commons/core/d/c;->c:Lcom/inmobi/commons/core/d/c;

    .line 66
    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/inmobi/commons/core/d/c;

    invoke-direct {v0}, Lcom/inmobi/commons/core/d/c;-><init>()V

    .line 68
    sput-object v0, Lcom/inmobi/commons/core/d/c;->c:Lcom/inmobi/commons/core/d/c;

    .line 70
    :cond_0
    monitor-exit v1

    .line 73
    :cond_1
    return-object v0

    .line 70
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@$#$@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(I)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 297
    invoke-static {}, Lcom/inmobi/commons/a/a;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/inmobi/commons/core/utilities/d;->a()Z

    move-result v0

    if-nez v0, :cond_2

    .line 298
    :cond_0
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/commons/core/d/c;->a:Ljava/lang/String;

    const-string v2, "App not in foreground or No Network available"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    :cond_1
    :goto_0
    return-void

    .line 303
    :cond_2
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c;->j:Lcom/inmobi/commons/core/d/c$a;

    if-eqz v0, :cond_1

    .line 304
    if-lez p1, :cond_3

    .line 305
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/commons/core/d/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Begin reporting after "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " seconds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c;->j:Lcom/inmobi/commons/core/d/c$a;

    mul-int/lit16 v1, p1, 0x3e8

    int-to-long v2, v1

    invoke-virtual {v0, v4, v2, v3}, Lcom/inmobi/commons/core/d/c$a;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 308
    :cond_3
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c;->j:Lcom/inmobi/commons/core/d/c$a;

    invoke-virtual {v0, v4}, Lcom/inmobi/commons/core/d/c$a;->sendEmptyMessage(I)Z

    goto :goto_0
.end method

.method static synthetic a(Lcom/inmobi/commons/core/d/c;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/inmobi/commons/core/d/c;->j()V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/commons/core/d/c;I)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/inmobi/commons/core/d/c;->a(I)V

    return-void
.end method

.method static synthetic a(Lcom/inmobi/commons/core/d/c;Lcom/inmobi/commons/core/d/g;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/inmobi/commons/core/d/c;->c(Lcom/inmobi/commons/core/d/g;)V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/inmobi/commons/core/d/d;)V
    .locals 4

    .prologue
    .line 112
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    :cond_0
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/commons/core/d/c;->a:Ljava/lang/String;

    const-string v2, "Component type provided while registering is null or empty!"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :goto_0
    return-void

    .line 116
    :cond_1
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/commons/core/d/c;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerConfig == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    if-eqz p2, :cond_2

    .line 119
    sget-object v0, Lcom/inmobi/commons/core/d/c;->f:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 121
    :cond_2
    sget-object v0, Lcom/inmobi/commons/core/d/c;->f:Ljava/util/Map;

    new-instance v1, Lcom/inmobi/commons/core/d/d;

    const/4 v2, 0x0

    sget-object v3, Lcom/inmobi/commons/core/d/c;->h:Lcom/inmobi/commons/core/d/e;

    invoke-virtual {v3}, Lcom/inmobi/commons/core/d/e;->n()Lcom/inmobi/commons/core/d/d;

    move-result-object v3

    invoke-direct {v1, p1, v2, v3}, Lcom/inmobi/commons/core/d/d;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/inmobi/commons/core/d/d;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method static synthetic b(Lcom/inmobi/commons/core/d/c;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/inmobi/commons/core/d/c;->g()V

    return-void
.end method

.method private b(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .prologue
    .line 369
    const-string v0, "\\@\\$\\#\\$\\@"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/inmobi/commons/core/d/c;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/inmobi/commons/core/d/c;->i()V

    return-void
.end method

.method private c(Lcom/inmobi/commons/core/d/g;)V
    .locals 5

    .prologue
    .line 176
    invoke-direct {p0, p1}, Lcom/inmobi/commons/core/d/c;->f(Lcom/inmobi/commons/core/d/g;)Lcom/inmobi/commons/core/d/d;

    move-result-object v0

    .line 177
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/d/d;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/inmobi/commons/core/d/c;->h:Lcom/inmobi/commons/core/d/e;

    invoke-virtual {v1}, Lcom/inmobi/commons/core/d/e;->f()Z

    move-result v1

    if-nez v1, :cond_2

    .line 178
    :cond_0
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/commons/core/d/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Telemetry service is not enabled or registered for component: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 180
    invoke-virtual {p1}, Lcom/inmobi/commons/core/d/g;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|| type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/inmobi/commons/core/d/g;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Config :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 178
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :cond_1
    :goto_0
    return-void

    .line 184
    :cond_2
    instance-of v0, p1, Lcom/inmobi/commons/core/d/b;

    if-eqz v0, :cond_3

    .line 185
    invoke-static {}, Lcom/inmobi/commons/core/d/a;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    :cond_3
    invoke-direct {p0, p1}, Lcom/inmobi/commons/core/d/c;->d(Lcom/inmobi/commons/core/d/g;)V

    .line 191
    invoke-direct {p0, p1}, Lcom/inmobi/commons/core/d/c;->e(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/inmobi/commons/core/d/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method private d(Lcom/inmobi/commons/core/d/g;)V
    .locals 1

    .prologue
    .line 195
    invoke-direct {p0, p1}, Lcom/inmobi/commons/core/d/c;->g(Lcom/inmobi/commons/core/d/g;)Lcom/inmobi/commons/core/d/d$a;

    move-result-object v0

    .line 196
    if-nez v0, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-void

    .line 197
    :cond_1
    invoke-virtual {v0}, Lcom/inmobi/commons/core/d/d$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p0, p1}, Lcom/inmobi/commons/core/d/c;->b(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_0
.end method

.method static synthetic e()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/inmobi/commons/core/d/c;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private e(Lcom/inmobi/commons/core/d/g;)V
    .locals 6

    .prologue
    .line 228
    instance-of v0, p1, Lcom/inmobi/commons/core/b/b;

    if-eqz v0, :cond_1

    .line 230
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/commons/core/d/c;->a:Ljava/lang/String;

    const-string v2, "Got a crash event, will save it right away!"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    new-instance v0, Lcom/inmobi/commons/core/d/f;

    invoke-direct {v0}, Lcom/inmobi/commons/core/d/f;-><init>()V

    .line 232
    invoke-virtual {v0, p1}, Lcom/inmobi/commons/core/d/f;->a(Lcom/inmobi/commons/core/d/g;)V

    .line 256
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    sget-object v0, Lcom/inmobi/commons/core/d/c;->h:Lcom/inmobi/commons/core/d/e;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/d/e;->i()I

    move-result v0

    .line 237
    sget-object v1, Lcom/inmobi/commons/core/d/c;->h:Lcom/inmobi/commons/core/d/e;

    invoke-virtual {v1}, Lcom/inmobi/commons/core/d/e;->m()I

    .line 239
    iget-object v1, p0, Lcom/inmobi/commons/core/d/c;->n:Ljava/lang/Object;

    monitor-enter v1

    .line 240
    :try_start_0
    iget-object v2, p0, Lcom/inmobi/commons/core/d/c;->g:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    iget-object v1, p0, Lcom/inmobi/commons/core/d/c;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v0, :cond_0

    .line 244
    invoke-direct {p0}, Lcom/inmobi/commons/core/d/c;->g()V

    .line 246
    new-instance v0, Lcom/inmobi/commons/core/d/f;

    invoke-direct {v0}, Lcom/inmobi/commons/core/d/f;-><init>()V

    .line 247
    invoke-virtual {v0}, Lcom/inmobi/commons/core/d/f;->c()I

    move-result v0

    .line 248
    sget-object v1, Lcom/inmobi/commons/core/d/c;->h:Lcom/inmobi/commons/core/d/e;

    invoke-virtual {v1}, Lcom/inmobi/commons/core/d/e;->m()I

    move-result v1

    .line 249
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/commons/core/d/c;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current event count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Upper cap: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    mul-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    if-le v0, v1, :cond_0

    .line 252
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/commons/core/d/c;->a:Ljava/lang/String;

    const-string v2, "Telemetry is more than 75% full. Begin reporting "

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-direct {p0}, Lcom/inmobi/commons/core/d/c;->h()V

    goto :goto_0

    .line 241
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private f(Lcom/inmobi/commons/core/d/g;)Lcom/inmobi/commons/core/d/d;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 282
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/inmobi/commons/core/d/g;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;)Lcom/inmobi/commons/core/d/d;

    move-result-object v0

    return-object v0
.end method

.method static synthetic f()Lcom/inmobi/commons/core/d/e;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/inmobi/commons/core/d/c;->h:Lcom/inmobi/commons/core/d/e;

    return-object v0
.end method

.method private g(Lcom/inmobi/commons/core/d/g;)Lcom/inmobi/commons/core/d/d$a;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 287
    invoke-direct {p0, p1}, Lcom/inmobi/commons/core/d/c;->f(Lcom/inmobi/commons/core/d/g;)Lcom/inmobi/commons/core/d/d;

    move-result-object v0

    .line 288
    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 289
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/inmobi/commons/core/d/g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/d/d;->a(Ljava/lang/String;)Lcom/inmobi/commons/core/d/d$a;

    move-result-object v0

    goto :goto_0
.end method

.method private g()V
    .locals 6

    .prologue
    .line 259
    iget-object v1, p0, Lcom/inmobi/commons/core/d/c;->n:Ljava/lang/Object;

    monitor-enter v1

    .line 260
    :try_start_0
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/commons/core/d/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding events "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/inmobi/commons/core/d/c;->g:Ljava/util/List;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "to persistence"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    new-instance v0, Lcom/inmobi/commons/core/d/f;

    invoke-direct {v0}, Lcom/inmobi/commons/core/d/f;-><init>()V

    .line 262
    sget-object v2, Lcom/inmobi/commons/core/d/c;->h:Lcom/inmobi/commons/core/d/e;

    invoke-virtual {v2}, Lcom/inmobi/commons/core/d/e;->m()I

    move-result v2

    .line 263
    invoke-virtual {v0}, Lcom/inmobi/commons/core/d/f;->c()I

    move-result v3

    .line 264
    iget-object v4, p0, Lcom/inmobi/commons/core/d/c;->g:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v4, v3

    sub-int/2addr v4, v2

    .line 265
    if-gtz v4, :cond_0

    .line 266
    iget-object v2, p0, Lcom/inmobi/commons/core/d/c;->g:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/inmobi/commons/core/d/f;->a(Ljava/util/List;)V

    .line 276
    :goto_0
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 277
    monitor-exit v1

    .line 278
    return-void

    .line 268
    :cond_0
    sub-int/2addr v2, v3

    .line 269
    if-gtz v2, :cond_1

    .line 270
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/commons/core/d/c;->a:Ljava/lang/String;

    const-string v3, "Persistence is full, won\'t add events"

    invoke-static {v0, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 272
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/inmobi/commons/core/d/c;->g:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/inmobi/commons/core/d/f;->a(Ljava/util/List;)V

    .line 273
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/commons/core/d/c;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Persistence will overflow, will add "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " events to persistence"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v3, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private h()V
    .locals 1

    .prologue
    .line 293
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/inmobi/commons/core/d/c;->a(I)V

    .line 294
    return-void
.end method

.method private i()V
    .locals 4

    .prologue
    .line 336
    iget-object v1, p0, Lcom/inmobi/commons/core/d/c;->m:Ljava/lang/Object;

    monitor-enter v1

    .line 337
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c;->i:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 338
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/commons/core/d/c;->a:Ljava/lang/String;

    const-string v3, "Deiniting telemetry"

    invoke-static {v0, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 340
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c;->i:Landroid/os/HandlerThread;

    .line 341
    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 342
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/commons/core/d/c;->i:Landroid/os/HandlerThread;

    .line 343
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/commons/core/d/c;->j:Lcom/inmobi/commons/core/d/c$a;

    .line 344
    const/4 v0, 0x0

    sput-boolean v0, Lcom/inmobi/commons/core/d/c;->d:Z

    .line 346
    :cond_0
    monitor-exit v1

    .line 347
    return-void

    .line 346
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private j()V
    .locals 7

    .prologue
    .line 373
    iget-object v2, p0, Lcom/inmobi/commons/core/d/c;->l:Ljava/lang/Object;

    monitor-enter v2

    .line 374
    :try_start_0
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/commons/core/d/c;->a:Ljava/lang/String;

    const-string v3, "Saving metric to persistence"

    invoke-static {v0, v1, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    new-instance v3, Lcom/inmobi/commons/core/d/f;

    invoke-direct {v3}, Lcom/inmobi/commons/core/d/f;-><init>()V

    .line 376
    invoke-virtual {v3}, Lcom/inmobi/commons/core/d/f;->b()V

    .line 377
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 378
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/inmobi/commons/core/d/c;->b(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 380
    :try_start_1
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 381
    const-string v6, "count"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v5, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 382
    const/4 v0, 0x0

    aget-object v0, v1, v0

    const/4 v6, 0x1

    aget-object v1, v1, v6

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v0, v1, v5}, Lcom/inmobi/commons/core/d/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 383
    :catch_0
    move-exception v0

    .line 384
    :try_start_2
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/commons/core/d/c;->a:Ljava/lang/String;

    const-string v5, "Error forming metric payload"

    invoke-static {v0, v1, v5}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 388
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 387
    :cond_0
    :try_start_3
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c;->k:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 388
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 389
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;)Lcom/inmobi/commons/core/d/d;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 130
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    :cond_0
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/commons/core/d/c;->a:Ljava/lang/String;

    const-string v2, "Request null or empty Component type!"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    const/4 v0, 0x0

    .line 135
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/inmobi/commons/core/d/c;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/core/d/d;

    goto :goto_0
.end method

.method public a(Lcom/inmobi/commons/core/configs/a;)V
    .locals 0

    .prologue
    .line 103
    check-cast p1, Lcom/inmobi/commons/core/d/e;

    sput-object p1, Lcom/inmobi/commons/core/d/c;->h:Lcom/inmobi/commons/core/d/e;

    .line 104
    return-void
.end method

.method public a(Lcom/inmobi/commons/core/d/g;)V
    .locals 5

    .prologue
    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c;->j:Lcom/inmobi/commons/core/d/c$a;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c;->j:Lcom/inmobi/commons/core/d/c$a;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/d/c$a;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 165
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 166
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 167
    iget-object v1, p0, Lcom/inmobi/commons/core/d/c;->j:Lcom/inmobi/commons/core/d/c$a;

    invoke-virtual {v1, v0}, Lcom/inmobi/commons/core/d/c$a;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/commons/core/d/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in submitting telemetry event : ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 171
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 140
    :try_start_0
    new-instance v1, Lcom/inmobi/commons/core/d/g;

    invoke-direct {v1, p1, p2}, Lcom/inmobi/commons/core/d/g;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-nez v0, :cond_0

    .line 143
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 144
    invoke-interface {p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 145
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 146
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 147
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    :try_start_2
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/commons/core/d/c;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error forming JSON payload for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_0
    :goto_1
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 159
    :goto_2
    return-void

    .line 149
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inmobi/commons/core/d/g;->a(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 155
    :catch_1
    move-exception v0

    .line 156
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/commons/core/d/c;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in submitting telemetry event : ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 157
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public final a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 107
    new-instance v0, Lcom/inmobi/commons/core/d/d;

    sget-object v1, Lcom/inmobi/commons/core/d/c;->h:Lcom/inmobi/commons/core/d/e;

    invoke-virtual {v1}, Lcom/inmobi/commons/core/d/e;->n()Lcom/inmobi/commons/core/d/d;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Lcom/inmobi/commons/core/d/d;-><init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/inmobi/commons/core/d/d;)V

    .line 108
    invoke-direct {p0, p1, v0}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Lcom/inmobi/commons/core/d/d;)V

    .line 109
    return-void
.end method

.method public declared-synchronized b()V
    .locals 3

    .prologue
    .line 314
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/commons/core/d/c;->a:Ljava/lang/String;

    const-string v2, "start called"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    iget-object v1, p0, Lcom/inmobi/commons/core/d/c;->m:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 317
    :try_start_1
    sget-boolean v0, Lcom/inmobi/commons/core/d/c;->d:Z

    if-nez v0, :cond_0

    .line 318
    const/4 v0, 0x1

    sput-boolean v0, Lcom/inmobi/commons/core/d/c;->d:Z

    .line 319
    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "telemetry"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/inmobi/commons/core/d/c;->i:Landroid/os/HandlerThread;

    .line 320
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c;->i:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 321
    new-instance v0, Lcom/inmobi/commons/core/d/c$a;

    iget-object v2, p0, Lcom/inmobi/commons/core/d/c;->i:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/inmobi/commons/core/d/c$a;-><init>(Lcom/inmobi/commons/core/d/c;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/inmobi/commons/core/d/c;->j:Lcom/inmobi/commons/core/d/c$a;

    .line 323
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 325
    :try_start_2
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v0

    invoke-direct {v0}, Lcom/inmobi/commons/core/d/c;->h()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 326
    monitor-exit p0

    return-void

    .line 323
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 314
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method b(Lcom/inmobi/commons/core/d/g;)V
    .locals 6

    .prologue
    .line 350
    invoke-virtual {p1}, Lcom/inmobi/commons/core/d/g;->b()Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-virtual {p1}, Lcom/inmobi/commons/core/d/g;->c()Ljava/lang/String;

    move-result-object v1

    .line 352
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/commons/core/d/c;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Metric collected: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    invoke-direct {p0, v0, v1}, Lcom/inmobi/commons/core/d/c;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 354
    iget-object v2, p0, Lcom/inmobi/commons/core/d/c;->l:Ljava/lang/Object;

    monitor-enter v2

    .line 355
    :try_start_0
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c;->k:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c;->k:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 357
    iget-object v3, p0, Lcom/inmobi/commons/core/d/c;->k:Ljava/util/Map;

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 361
    :goto_0
    monitor-exit v2

    .line 362
    return-void

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c;->k:Ljava/util/Map;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 361
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized c()V
    .locals 3

    .prologue
    .line 329
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/commons/core/d/c;->a:Ljava/lang/String;

    const-string v2, "stop called"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c;->j:Lcom/inmobi/commons/core/d/c$a;

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/inmobi/commons/core/d/c;->j:Lcom/inmobi/commons/core/d/c$a;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/inmobi/commons/core/d/c$a;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 333
    :cond_0
    monitor-exit p0

    return-void

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
