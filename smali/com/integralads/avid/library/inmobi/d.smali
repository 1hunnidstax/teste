.class public Lcom/integralads/avid/library/inmobi/d;
.super Ljava/lang/Object;
.source "AvidManager.java"

# interfaces
.implements Lcom/integralads/avid/library/inmobi/c$b;
.implements Lcom/integralads/avid/library/inmobi/e$a;
.implements Lcom/integralads/avid/library/inmobi/e/b;


# static fields
.field private static a:Lcom/integralads/avid/library/inmobi/d;

.field private static b:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    new-instance v0, Lcom/integralads/avid/library/inmobi/d;

    invoke-direct {v0}, Lcom/integralads/avid/library/inmobi/d;-><init>()V

    sput-object v0, Lcom/integralads/avid/library/inmobi/d;->a:Lcom/integralads/avid/library/inmobi/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Lcom/integralads/avid/library/inmobi/d;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/integralads/avid/library/inmobi/d;->a:Lcom/integralads/avid/library/inmobi/d;

    return-object v0
.end method

.method private c()V
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lcom/integralads/avid/library/inmobi/e;->a()Lcom/integralads/avid/library/inmobi/e;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/integralads/avid/library/inmobi/e;->a(Lcom/integralads/avid/library/inmobi/e$a;)V

    .line 52
    invoke-static {}, Lcom/integralads/avid/library/inmobi/e;->a()Lcom/integralads/avid/library/inmobi/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/e;->b()V

    .line 53
    invoke-static {}, Lcom/integralads/avid/library/inmobi/e;->a()Lcom/integralads/avid/library/inmobi/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/e;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    invoke-static {}, Lcom/integralads/avid/library/inmobi/f;->a()Lcom/integralads/avid/library/inmobi/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/f;->b()V

    .line 56
    :cond_0
    return-void
.end method

.method private d()V
    .locals 1

    .prologue
    .line 60
    invoke-static {}, Lcom/integralads/avid/library/inmobi/a/a;->a()Lcom/integralads/avid/library/inmobi/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/a/a;->c()V

    .line 61
    invoke-static {}, Lcom/integralads/avid/library/inmobi/f;->a()Lcom/integralads/avid/library/inmobi/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/f;->c()V

    .line 62
    invoke-static {}, Lcom/integralads/avid/library/inmobi/e;->a()Lcom/integralads/avid/library/inmobi/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/e;->c()V

    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/integralads/avid/library/inmobi/d;->b:Landroid/content/Context;

    .line 64
    return-void
.end method

.method private e()Z
    .locals 1

    .prologue
    .line 67
    invoke-static {}, Lcom/integralads/avid/library/inmobi/e/a;->a()Lcom/integralads/avid/library/inmobi/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/e/a;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f()V
    .locals 2

    .prologue
    .line 71
    invoke-static {}, Lcom/integralads/avid/library/inmobi/e/a;->a()Lcom/integralads/avid/library/inmobi/e/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/integralads/avid/library/inmobi/e/a;->a(Lcom/integralads/avid/library/inmobi/e/b;)V

    .line 72
    invoke-static {}, Lcom/integralads/avid/library/inmobi/e/a;->a()Lcom/integralads/avid/library/inmobi/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/e/a;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/integralads/avid/library/inmobi/session/internal/a;

    .line 73
    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/internal/a;->i()Lcom/integralads/avid/library/inmobi/session/internal/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/internal/a/a;->b()V

    goto :goto_0

    .line 75
    :cond_0
    invoke-static {}, Lcom/integralads/avid/library/inmobi/e/a;->a()Lcom/integralads/avid/library/inmobi/e/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/integralads/avid/library/inmobi/e/a;->a(Lcom/integralads/avid/library/inmobi/e/b;)V

    .line 76
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/integralads/avid/library/inmobi/session/internal/a;
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Lcom/integralads/avid/library/inmobi/e/a;->a()Lcom/integralads/avid/library/inmobi/e/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/integralads/avid/library/inmobi/e/a;->a(Ljava/lang/String;)Lcom/integralads/avid/library/inmobi/session/internal/a;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/integralads/avid/library/inmobi/d;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-direct {p0}, Lcom/integralads/avid/library/inmobi/d;->f()V

    .line 82
    invoke-static {}, Lcom/integralads/avid/library/inmobi/e/a;->a()Lcom/integralads/avid/library/inmobi/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/e/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-direct {p0}, Lcom/integralads/avid/library/inmobi/d;->c()V

    .line 86
    :cond_0
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/integralads/avid/library/inmobi/a/a;->a()Lcom/integralads/avid/library/inmobi/a/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/integralads/avid/library/inmobi/a/a;->a(Landroid/app/Activity;)V

    .line 47
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 25
    sget-object v0, Lcom/integralads/avid/library/inmobi/d;->b:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/integralads/avid/library/inmobi/d;->b:Landroid/content/Context;

    .line 27
    invoke-static {}, Lcom/integralads/avid/library/inmobi/e;->a()Lcom/integralads/avid/library/inmobi/e;

    move-result-object v0

    sget-object v1, Lcom/integralads/avid/library/inmobi/d;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/integralads/avid/library/inmobi/e;->a(Landroid/content/Context;)V

    .line 28
    invoke-static {}, Lcom/integralads/avid/library/inmobi/e/a;->a()Lcom/integralads/avid/library/inmobi/e/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/integralads/avid/library/inmobi/e/a;->a(Lcom/integralads/avid/library/inmobi/e/b;)V

    .line 29
    sget-object v0, Lcom/integralads/avid/library/inmobi/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/integralads/avid/library/inmobi/f/d;->a(Landroid/content/Context;)V

    .line 31
    :cond_0
    return-void
.end method

.method public a(Lcom/integralads/avid/library/inmobi/e/a;)V
    .locals 1

    .prologue
    .line 99
    invoke-virtual {p1}, Lcom/integralads/avid/library/inmobi/e/a;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 107
    :cond_0
    :goto_0
    return-void

    .line 103
    :cond_1
    invoke-static {}, Lcom/integralads/avid/library/inmobi/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    invoke-static {}, Lcom/integralads/avid/library/inmobi/c;->a()Lcom/integralads/avid/library/inmobi/c;

    invoke-static {p0}, Lcom/integralads/avid/library/inmobi/c;->a(Lcom/integralads/avid/library/inmobi/c$b;)V

    .line 105
    invoke-static {}, Lcom/integralads/avid/library/inmobi/c;->a()Lcom/integralads/avid/library/inmobi/c;

    sget-object v0, Lcom/integralads/avid/library/inmobi/d;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/integralads/avid/library/inmobi/c;->a(Landroid/content/Context;)V

    goto :goto_0
.end method

.method public a(Lcom/integralads/avid/library/inmobi/session/a;Lcom/integralads/avid/library/inmobi/session/internal/a;)V
    .locals 1

    .prologue
    .line 34
    invoke-static {}, Lcom/integralads/avid/library/inmobi/e/a;->a()Lcom/integralads/avid/library/inmobi/e/a;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/integralads/avid/library/inmobi/e/a;->a(Lcom/integralads/avid/library/inmobi/session/a;Lcom/integralads/avid/library/inmobi/session/internal/a;)V

    .line 35
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 90
    if-eqz p1, :cond_0

    .line 91
    invoke-static {}, Lcom/integralads/avid/library/inmobi/f;->a()Lcom/integralads/avid/library/inmobi/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/f;->b()V

    .line 95
    :goto_0
    return-void

    .line 93
    :cond_0
    invoke-static {}, Lcom/integralads/avid/library/inmobi/f;->a()Lcom/integralads/avid/library/inmobi/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/f;->d()V

    goto :goto_0
.end method

.method public b(Lcom/integralads/avid/library/inmobi/e/a;)V
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p1}, Lcom/integralads/avid/library/inmobi/e/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/integralads/avid/library/inmobi/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-direct {p0}, Lcom/integralads/avid/library/inmobi/d;->c()V

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    invoke-direct {p0}, Lcom/integralads/avid/library/inmobi/d;->d()V

    goto :goto_0
.end method
