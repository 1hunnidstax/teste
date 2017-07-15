.class public Lcom/integralads/avid/library/inmobi/e;
.super Ljava/lang/Object;
.source "AvidStateWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/integralads/avid/library/inmobi/e$a;
    }
.end annotation


# static fields
.field private static a:Lcom/integralads/avid/library/inmobi/e;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/content/BroadcastReceiver;

.field private d:Z

.field private e:Z

.field private f:Lcom/integralads/avid/library/inmobi/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/integralads/avid/library/inmobi/e;

    invoke-direct {v0}, Lcom/integralads/avid/library/inmobi/e;-><init>()V

    sput-object v0, Lcom/integralads/avid/library/inmobi/e;->a:Lcom/integralads/avid/library/inmobi/e;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/integralads/avid/library/inmobi/e;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/integralads/avid/library/inmobi/e;->a:Lcom/integralads/avid/library/inmobi/e;

    return-object v0
.end method

.method static synthetic a(Lcom/integralads/avid/library/inmobi/e;Z)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/integralads/avid/library/inmobi/e;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/integralads/avid/library/inmobi/e;->e:Z

    if-eq v0, p1, :cond_0

    .line 70
    iput-boolean p1, p0, Lcom/integralads/avid/library/inmobi/e;->e:Z

    .line 71
    iget-boolean v0, p0, Lcom/integralads/avid/library/inmobi/e;->d:Z

    if-eqz v0, :cond_0

    .line 72
    invoke-direct {p0}, Lcom/integralads/avid/library/inmobi/e;->g()V

    .line 73
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/e;->f:Lcom/integralads/avid/library/inmobi/e$a;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/e;->f:Lcom/integralads/avid/library/inmobi/e$a;

    invoke-virtual {p0}, Lcom/integralads/avid/library/inmobi/e;->d()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/integralads/avid/library/inmobi/e$a;->a(Z)V

    .line 78
    :cond_0
    return-void
.end method

.method private e()V
    .locals 3

    .prologue
    .line 81
    new-instance v0, Lcom/integralads/avid/library/inmobi/e$1;

    invoke-direct {v0, p0}, Lcom/integralads/avid/library/inmobi/e$1;-><init>(Lcom/integralads/avid/library/inmobi/e;)V

    iput-object v0, p0, Lcom/integralads/avid/library/inmobi/e;->c:Landroid/content/BroadcastReceiver;

    .line 98
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 99
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 100
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 101
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/integralads/avid/library/inmobi/e;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/integralads/avid/library/inmobi/e;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 103
    return-void
.end method

.method private f()V
    .locals 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/e;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/e;->c:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/e;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/integralads/avid/library/inmobi/e;->c:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/integralads/avid/library/inmobi/e;->c:Landroid/content/BroadcastReceiver;

    .line 110
    :cond_0
    return-void
.end method

.method private g()V
    .locals 3

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/integralads/avid/library/inmobi/e;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    move v1, v0

    .line 114
    :goto_0
    invoke-static {}, Lcom/integralads/avid/library/inmobi/e/a;->a()Lcom/integralads/avid/library/inmobi/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/e/a;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/integralads/avid/library/inmobi/session/internal/a;

    .line 115
    invoke-virtual {v0, v1}, Lcom/integralads/avid/library/inmobi/session/internal/a;->a(Z)V

    goto :goto_1

    .line 113
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    goto :goto_0

    .line 117
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/integralads/avid/library/inmobi/e;->f()V

    .line 39
    iput-object p1, p0, Lcom/integralads/avid/library/inmobi/e;->b:Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Lcom/integralads/avid/library/inmobi/e;->e()V

    .line 41
    return-void
.end method

.method public a(Lcom/integralads/avid/library/inmobi/e$a;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/integralads/avid/library/inmobi/e;->f:Lcom/integralads/avid/library/inmobi/e$a;

    .line 66
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/integralads/avid/library/inmobi/e;->d:Z

    .line 45
    invoke-direct {p0}, Lcom/integralads/avid/library/inmobi/e;->g()V

    .line 46
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0}, Lcom/integralads/avid/library/inmobi/e;->f()V

    .line 50
    iput-object v1, p0, Lcom/integralads/avid/library/inmobi/e;->b:Landroid/content/Context;

    .line 51
    iput-boolean v0, p0, Lcom/integralads/avid/library/inmobi/e;->d:Z

    .line 52
    iput-boolean v0, p0, Lcom/integralads/avid/library/inmobi/e;->e:Z

    .line 53
    iput-object v1, p0, Lcom/integralads/avid/library/inmobi/e;->f:Lcom/integralads/avid/library/inmobi/e$a;

    .line 54
    return-void
.end method

.method public d()Z
    .locals 1

    .prologue
    .line 57
    iget-boolean v0, p0, Lcom/integralads/avid/library/inmobi/e;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
