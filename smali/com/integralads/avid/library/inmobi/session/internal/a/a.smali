.class public Lcom/integralads/avid/library/inmobi/session/internal/a/a;
.super Ljava/lang/Object;
.source "AvidBridgeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/integralads/avid/library/inmobi/session/internal/a/a$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/integralads/avid/library/inmobi/session/internal/b;

.field private b:Z

.field private c:Lcom/integralads/avid/library/inmobi/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/integralads/avid/library/inmobi/h/b",
            "<",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field

.field private d:Z

.field private e:Lcom/integralads/avid/library/inmobi/session/internal/a/a$a;

.field private final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/integralads/avid/library/inmobi/session/internal/a/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/integralads/avid/library/inmobi/session/internal/b;)V
    .locals 2

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/a/a;->f:Ljava/util/ArrayList;

    .line 31
    iput-object p1, p0, Lcom/integralads/avid/library/inmobi/session/internal/a/a;->a:Lcom/integralads/avid/library/inmobi/session/internal/b;

    .line 32
    new-instance v0, Lcom/integralads/avid/library/inmobi/h/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/integralads/avid/library/inmobi/h/b;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/a/a;->c:Lcom/integralads/avid/library/inmobi/h/b;

    .line 33
    return-void
.end method

.method private b(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 106
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "publishVideoEvent("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/integralads/avid/library/inmobi/session/internal/a/a;->d(Ljava/lang/String;)V

    .line 112
    :goto_1
    return-void

    .line 106
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 110
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "publishVideoEvent("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/integralads/avid/library/inmobi/session/internal/a/a;->d(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/a/a;->c:Lcom/integralads/avid/library/inmobi/h/b;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/h/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-static {v0, p1}, Lcom/integralads/avid/library/inmobi/a;->a(Landroid/webkit/WebView;Ljava/lang/String;)Z

    .line 97
    return-void
.end method

.method private e()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/a/a;->c:Lcom/integralads/avid/library/inmobi/h/b;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/h/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    .line 85
    if-nez v0, :cond_1

    .line 93
    :cond_0
    :goto_0
    return-void

    .line 86
    :cond_1
    invoke-static {v0}, Lcom/integralads/avid/library/inmobi/a;->a(Landroid/webkit/WebView;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/a/a;->b:Z

    .line 87
    invoke-direct {p0}, Lcom/integralads/avid/library/inmobi/session/internal/a/a;->g()V

    .line 88
    iget-boolean v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/a/a;->b:Z

    if-eqz v0, :cond_0

    .line 89
    invoke-direct {p0}, Lcom/integralads/avid/library/inmobi/session/internal/a/a;->f()V

    .line 90
    invoke-direct {p0}, Lcom/integralads/avid/library/inmobi/session/internal/a/a;->i()V

    .line 91
    invoke-direct {p0}, Lcom/integralads/avid/library/inmobi/session/internal/a/a;->h()V

    goto :goto_0
.end method

.method private f()V
    .locals 1

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/integralads/avid/library/inmobi/session/internal/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/a/a;->d:Z

    if-eqz v0, :cond_0

    .line 101
    const-string v0, "publishReadyEventForDeferredAdSession()"

    invoke-direct {p0, v0}, Lcom/integralads/avid/library/inmobi/session/internal/a/a;->d(Ljava/lang/String;)V

    .line 103
    :cond_0
    return-void
.end method

.method private g()V
    .locals 2

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAvidAdSessionContext("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/integralads/avid/library/inmobi/session/internal/a/a;->a:Lcom/integralads/avid/library/inmobi/session/internal/b;

    invoke-virtual {v1}, Lcom/integralads/avid/library/inmobi/session/internal/b;->b()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/integralads/avid/library/inmobi/session/internal/a/a;->d(Ljava/lang/String;)V

    .line 116
    return-void
.end method

.method private h()V
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/a/a;->e:Lcom/integralads/avid/library/inmobi/session/internal/a/a$a;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/a/a;->e:Lcom/integralads/avid/library/inmobi/session/internal/a/a$a;

    invoke-interface {v0}, Lcom/integralads/avid/library/inmobi/session/internal/a/a$a;->n()V

    .line 122
    :cond_0
    return-void
.end method

.method private i()V
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/a/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/integralads/avid/library/inmobi/session/internal/a/b;

    .line 126
    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/internal/a/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/internal/a/b;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/integralads/avid/library/inmobi/session/internal/a/a;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/a/a;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 129
    return-void
.end method


# virtual methods
.method public a(Landroid/webkit/WebView;)V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/a/a;->c:Lcom/integralads/avid/library/inmobi/h/b;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/h/b;->a()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 52
    :goto_0
    return-void

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/a/a;->c:Lcom/integralads/avid/library/inmobi/h/b;

    invoke-virtual {v0, p1}, Lcom/integralads/avid/library/inmobi/h/b;->a(Ljava/lang/Object;)V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/a/a;->b:Z

    .line 51
    invoke-direct {p0}, Lcom/integralads/avid/library/inmobi/session/internal/a/a;->e()V

    goto :goto_0
.end method

.method public a(Lcom/integralads/avid/library/inmobi/session/internal/a/a$a;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/integralads/avid/library/inmobi/session/internal/a/a;->e:Lcom/integralads/avid/library/inmobi/session/internal/a/a$a;

    .line 41
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNativeViewState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/integralads/avid/library/inmobi/session/internal/a/a;->d(Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method public a(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/integralads/avid/library/inmobi/session/internal/a/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/integralads/avid/library/inmobi/session/internal/a/a;->b(Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 77
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/a/a;->f:Ljava/util/ArrayList;

    new-instance v1, Lcom/integralads/avid/library/inmobi/session/internal/a/b;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1, p2}, Lcom/integralads/avid/library/inmobi/session/internal/a/b;-><init>(ILjava/lang/String;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/a/a;->b:Z

    return v0
.end method

.method public b()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/integralads/avid/library/inmobi/session/internal/a/a;->e()V

    .line 45
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAppState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lorg/json/JSONObject;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/integralads/avid/library/inmobi/session/internal/a/a;->d(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/integralads/avid/library/inmobi/session/internal/a/a;->a(Landroid/webkit/WebView;)V

    .line 56
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/a/a;->c:Lcom/integralads/avid/library/inmobi/h/b;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/h/b;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/WebView;

    invoke-static {v0, p1}, Lcom/integralads/avid/library/inmobi/a;->c(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/integralads/avid/library/inmobi/session/internal/a/a;->d:Z

    .line 60
    invoke-direct {p0}, Lcom/integralads/avid/library/inmobi/session/internal/a/a;->f()V

    .line 61
    return-void
.end method
