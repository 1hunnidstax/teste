.class public Lcom/integralads/avid/library/inmobi/c;
.super Ljava/lang/Object;
.source "AvidLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/integralads/avid/library/inmobi/c$a;,
        Lcom/integralads/avid/library/inmobi/c$c;,
        Lcom/integralads/avid/library/inmobi/c$b;
    }
.end annotation


# static fields
.field private static a:Lcom/integralads/avid/library/inmobi/c$a;

.field private static b:Lcom/integralads/avid/library/inmobi/c$b;

.field private static c:Lcom/integralads/avid/library/inmobi/c$c;

.field private static d:Lcom/integralads/avid/library/inmobi/c;

.field private static final e:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/integralads/avid/library/inmobi/c;

    invoke-direct {v0}, Lcom/integralads/avid/library/inmobi/c;-><init>()V

    sput-object v0, Lcom/integralads/avid/library/inmobi/c;->d:Lcom/integralads/avid/library/inmobi/c;

    .line 85
    new-instance v0, Lcom/integralads/avid/library/inmobi/c$1;

    invoke-direct {v0}, Lcom/integralads/avid/library/inmobi/c$1;-><init>()V

    sput-object v0, Lcom/integralads/avid/library/inmobi/c;->e:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/integralads/avid/library/inmobi/c$c;)Lcom/integralads/avid/library/inmobi/c$c;
    .locals 0

    .prologue
    .line 24
    sput-object p0, Lcom/integralads/avid/library/inmobi/c;->c:Lcom/integralads/avid/library/inmobi/c$c;

    return-object p0
.end method

.method public static a()Lcom/integralads/avid/library/inmobi/c;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/integralads/avid/library/inmobi/c;->d:Lcom/integralads/avid/library/inmobi/c;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Lcom/integralads/avid/library/inmobi/c$a;

    invoke-direct {v0, p0}, Lcom/integralads/avid/library/inmobi/c$a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/integralads/avid/library/inmobi/c;->a:Lcom/integralads/avid/library/inmobi/c$a;

    .line 45
    invoke-static {p0}, Lcom/integralads/avid/library/inmobi/c;->c(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method public static a(Lcom/integralads/avid/library/inmobi/c$b;)V
    .locals 0

    .prologue
    .line 57
    sput-object p0, Lcom/integralads/avid/library/inmobi/c;->b:Lcom/integralads/avid/library/inmobi/c$b;

    .line 58
    return-void
.end method

.method static synthetic b()Lcom/integralads/avid/library/inmobi/c$a;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/integralads/avid/library/inmobi/c;->a:Lcom/integralads/avid/library/inmobi/c$a;

    return-object v0
.end method

.method static synthetic b(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 24
    invoke-static {p0}, Lcom/integralads/avid/library/inmobi/c;->c(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic c()Lcom/integralads/avid/library/inmobi/c$b;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/integralads/avid/library/inmobi/c;->b:Lcom/integralads/avid/library/inmobi/c$b;

    return-object v0
.end method

.method private static c(Landroid/content/Context;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 65
    invoke-static {}, Lcom/integralads/avid/library/inmobi/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/integralads/avid/library/inmobi/c;->c:Lcom/integralads/avid/library/inmobi/c$c;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/integralads/avid/library/inmobi/c$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/integralads/avid/library/inmobi/c$c;-><init>(Lcom/integralads/avid/library/inmobi/c$1;)V

    sput-object v0, Lcom/integralads/avid/library/inmobi/c;->c:Lcom/integralads/avid/library/inmobi/c$c;

    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1

    .line 68
    sget-object v0, Lcom/integralads/avid/library/inmobi/c;->c:Lcom/integralads/avid/library/inmobi/c$c;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "https://mobile-static.adsafeprotected.com/avid-v2.js"

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/integralads/avid/library/inmobi/c$c;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    sget-object v0, Lcom/integralads/avid/library/inmobi/c;->c:Lcom/integralads/avid/library/inmobi/c$c;

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "https://mobile-static.adsafeprotected.com/avid-v2.js"

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/integralads/avid/library/inmobi/c$c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method static synthetic d()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/integralads/avid/library/inmobi/c;->e:Ljava/lang/Runnable;

    return-object v0
.end method
