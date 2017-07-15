.class Lcom/moat/analytics/mobile/inm/au;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final b:J


# instance fields
.field private final a:Lcom/moat/analytics/mobile/inm/aa;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/moat/analytics/mobile/inm/aw;

.field private e:Lcom/moat/analytics/mobile/inm/aq;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/32 v0, 0x15f90

    sput-wide v0, Lcom/moat/analytics/mobile/inm/au;->b:J

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/moat/analytics/mobile/inm/aa;Lcom/moat/analytics/mobile/inm/aw;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/moat/analytics/mobile/inm/aq;->a:Lcom/moat/analytics/mobile/inm/aq;

    iput-object v0, p0, Lcom/moat/analytics/mobile/inm/au;->e:Lcom/moat/analytics/mobile/inm/aq;

    iput-object p2, p0, Lcom/moat/analytics/mobile/inm/au;->a:Lcom/moat/analytics/mobile/inm/aa;

    iput-object p3, p0, Lcom/moat/analytics/mobile/inm/au;->d:Lcom/moat/analytics/mobile/inm/aw;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "https://z.moatads.com/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/android/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "f379b01b219fb72670923cc96dc29bbe34213365"

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/status.json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/moat/analytics/mobile/inm/au;->c:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Lcom/moat/analytics/mobile/inm/aa;Lcom/moat/analytics/mobile/inm/aw;Lcom/moat/analytics/mobile/inm/as;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/moat/analytics/mobile/inm/au;-><init>(Ljava/lang/String;Lcom/moat/analytics/mobile/inm/aa;Lcom/moat/analytics/mobile/inm/aw;)V

    return-void
.end method

.method static synthetic a(Lcom/moat/analytics/mobile/inm/au;)Lcom/moat/analytics/mobile/inm/aw;
    .locals 1

    iget-object v0, p0, Lcom/moat/analytics/mobile/inm/au;->d:Lcom/moat/analytics/mobile/inm/aw;

    return-object v0
.end method

.method private a()V
    .locals 8

    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    sget-wide v4, Lcom/moat/analytics/mobile/inm/au;->b:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    const-wide/16 v4, 0xa

    :try_start_0
    sget-wide v6, Lcom/moat/analytics/mobile/inm/au;->b:J

    add-long/2addr v4, v6

    sub-long v2, v4, v2

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/moat/analytics/mobile/inm/au;->b()Lcom/moat/analytics/mobile/inm/aq;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v3, p0, Lcom/moat/analytics/mobile/inm/au;->e:Lcom/moat/analytics/mobile/inm/aq;

    invoke-virtual {v2, v3}, Lcom/moat/analytics/mobile/inm/aq;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_1
    iput-object v2, p0, Lcom/moat/analytics/mobile/inm/au;->e:Lcom/moat/analytics/mobile/inm/aq;

    new-instance v3, Lcom/moat/analytics/mobile/inm/av;

    invoke-direct {v3, p0, v2}, Lcom/moat/analytics/mobile/inm/av;-><init>(Lcom/moat/analytics/mobile/inm/au;Lcom/moat/analytics/mobile/inm/aq;)V

    invoke-virtual {v4, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private b()Lcom/moat/analytics/mobile/inm/aq;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/moat/analytics/mobile/inm/au;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?ts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "&v="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "1.7.11"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/moat/analytics/mobile/inm/au;->a:Lcom/moat/analytics/mobile/inm/aa;

    invoke-interface {v1, v0}, Lcom/moat/analytics/mobile/inm/aa;->a(Ljava/lang/String;)Lcom/moat/analytics/mobile/inm/base/functional/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/inm/base/functional/a;->c()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v0, Lcom/moat/analytics/mobile/inm/aq;->a:Lcom/moat/analytics/mobile/inm/aq;

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Lcom/moat/analytics/mobile/inm/u;

    invoke-virtual {v0}, Lcom/moat/analytics/mobile/inm/base/functional/a;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, v0}, Lcom/moat/analytics/mobile/inm/u;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/moat/analytics/mobile/inm/u;->a()Z

    move-result v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/inm/ar;->a(Z)Z

    invoke-virtual {v1}, Lcom/moat/analytics/mobile/inm/u;->c()I

    move-result v0

    invoke-static {v0}, Lcom/moat/analytics/mobile/inm/ar;->a(I)I

    invoke-virtual {v1}, Lcom/moat/analytics/mobile/inm/u;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/moat/analytics/mobile/inm/aq;->b:Lcom/moat/analytics/mobile/inm/aq;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/moat/analytics/mobile/inm/aq;->a:Lcom/moat/analytics/mobile/inm/aq;

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/moat/analytics/mobile/inm/au;->a()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/moat/analytics/mobile/inm/aq;->a:Lcom/moat/analytics/mobile/inm/aq;

    iput-object v1, p0, Lcom/moat/analytics/mobile/inm/au;->e:Lcom/moat/analytics/mobile/inm/aq;

    invoke-static {v0}, Lcom/moat/analytics/mobile/inm/base/exception/a;->a(Ljava/lang/Exception;)V

    goto :goto_0
.end method
