.class public abstract Lcom/vungle/publisher/afx;
.super Lcom/vungle/publisher/qe;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Lcom/vungle/publisher/cj;",
        ">",
        "Lcom/vungle/publisher/qe;"
    }
.end annotation


# instance fields
.field protected a:Lcom/vungle/publisher/cj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field protected b:Lcom/vungle/publisher/cp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/cp",
            "<***>;"
        }
    .end annotation
.end field

.field protected c:Lcom/vungle/publisher/cq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/vungle/publisher/cq",
            "<***TA;>;"
        }
    .end annotation
.end field

.field d:Lcom/vungle/publisher/cq$b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field e:Lcom/vungle/publisher/gm$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field f:Lcom/vungle/publisher/afy;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field g:Lcom/vungle/publisher/vl;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/vungle/publisher/qe;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected final a(J)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 112
    invoke-virtual {p0}, Lcom/vungle/publisher/afx;->unregister()V

    .line 113
    iget-object v0, p0, Lcom/vungle/publisher/afx;->c:Lcom/vungle/publisher/cq;

    .line 114
    if-nez v0, :cond_0

    .line 115
    const-string v0, "VungleReport"

    const-string v1, "no current ad report"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    :goto_0
    iget-object v0, p0, Lcom/vungle/publisher/afx;->f:Lcom/vungle/publisher/afy;

    invoke-virtual {v0}, Lcom/vungle/publisher/afy;->a()V

    .line 123
    iput-object v2, p0, Lcom/vungle/publisher/afx;->a:Lcom/vungle/publisher/cj;

    iput-object v2, p0, Lcom/vungle/publisher/afx;->c:Lcom/vungle/publisher/cq;

    iput-object v2, p0, Lcom/vungle/publisher/afx;->b:Lcom/vungle/publisher/cp;

    invoke-virtual {p0}, Lcom/vungle/publisher/afx;->a()V

    .line 124
    return-void

    .line 118
    :cond_0
    sget-object v1, Lcom/vungle/publisher/cq$c;->d:Lcom/vungle/publisher/cq$c;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/cq;->a(Lcom/vungle/publisher/cq$c;)V

    .line 119
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/cq;->a(Ljava/lang/Long;)V

    .line 120
    invoke-virtual {v0}, Lcom/vungle/publisher/cq;->y()Ljava/lang/Object;

    goto :goto_0
.end method

.method public final a(Lcom/vungle/publisher/cj;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lcom/vungle/publisher/afx;->a:Lcom/vungle/publisher/cj;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/vungle/publisher/afx;->a:Lcom/vungle/publisher/cj;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/cj;->a(Lcom/vungle/publisher/cj;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 52
    :cond_0
    const-string v0, "VungleReport"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "new ad "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vungle/publisher/cj;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    iput-object p1, p0, Lcom/vungle/publisher/afx;->a:Lcom/vungle/publisher/cj;

    .line 54
    iget-object v0, p0, Lcom/vungle/publisher/afx;->d:Lcom/vungle/publisher/cq$b;

    invoke-virtual {v0, p1}, Lcom/vungle/publisher/cq$b;->a(Lcom/vungle/publisher/cj;)Lcom/vungle/publisher/cq;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/afx;->c:Lcom/vungle/publisher/cq;

    .line 55
    iget-object v0, p0, Lcom/vungle/publisher/afx;->c:Lcom/vungle/publisher/cq;

    invoke-virtual {v0}, Lcom/vungle/publisher/cq;->s()Lcom/vungle/publisher/cp;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/afx;->b:Lcom/vungle/publisher/cp;

    .line 56
    const-string v0, "VungleReport"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "current play: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vungle/publisher/afx;->b:Lcom/vungle/publisher/cp;

    invoke-virtual {v2}, Lcom/vungle/publisher/cp;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0}, Lcom/vungle/publisher/afx;->a()V

    .line 62
    :goto_0
    return-void

    .line 60
    :cond_1
    const-string v0, "VungleReport"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "same ad "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/vungle/publisher/cj;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected final a(Lcom/vungle/publisher/ji;)V
    .locals 1

    .prologue
    .line 99
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/vungle/publisher/afx;->a(Lcom/vungle/publisher/ji;Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method protected final a(Lcom/vungle/publisher/ji;Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 104
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/afx;->b:Lcom/vungle/publisher/cp;

    invoke-virtual {v0, p1, p2}, Lcom/vungle/publisher/cp;->a(Lcom/vungle/publisher/ji;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    iget-object v1, p0, Lcom/vungle/publisher/afx;->e:Lcom/vungle/publisher/gm$a;

    const-string v2, "VungleReport"

    const-string v3, "error reporting event"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/gm$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method protected final a(Lcom/vungle/publisher/y;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/y",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-interface {p1}, Lcom/vungle/publisher/y;->a()Lcom/vungle/publisher/cj;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/vungle/publisher/afx;->a(Lcom/vungle/publisher/cj;)V

    .line 48
    return-void
.end method

.method public onEvent(Lcom/vungle/publisher/aq;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/aq",
            "<TA;>;)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lcom/vungle/publisher/afx;, "Lcom/vungle/publisher/afx<TA;>;"
    .local p1, "startPlayAdEvent":Lcom/vungle/publisher/aq;, "Lcom/vungle/publisher/aq<TA;>;"
    :try_start_0
    const-string v0, "VungleReport"

    const-string v1, "received play ad start"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p1, Lcom/vungle/publisher/aq;->a:Lcom/vungle/publisher/n;

    .line 68
    iget-object v1, p0, Lcom/vungle/publisher/afx;->c:Lcom/vungle/publisher/cq;

    .line 69
    sget-object v2, Lcom/vungle/publisher/cq$c;->c:Lcom/vungle/publisher/cq$c;

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/cq;->a(Lcom/vungle/publisher/cq$c;)V

    .line 70
    invoke-interface {v0}, Lcom/vungle/publisher/n;->getExtras()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/cq;->a(Ljava/util/Map;)V

    .line 71
    invoke-interface {v0}, Lcom/vungle/publisher/n;->isIncentivized()Z

    move-result v2

    .line 72
    invoke-virtual {v1, v2}, Lcom/vungle/publisher/cq;->b(Z)V

    .line 73
    if-eqz v2, :cond_0

    .line 74
    invoke-interface {v0}, Lcom/vungle/publisher/n;->getIncentivizedUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/cq;->b(Ljava/lang/String;)V

    .line 76
    :cond_0
    invoke-interface {v0}, Lcom/vungle/publisher/n;->getPlacement()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-static {v0}, Lcom/vungle/publisher/ags;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 78
    invoke-virtual {v1, v0}, Lcom/vungle/publisher/cq;->c(Ljava/lang/String;)V

    .line 80
    :cond_1
    iget-wide v2, p1, Lcom/vungle/publisher/qd;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/vungle/publisher/cq;->c(Ljava/lang/Long;)V

    .line 81
    invoke-virtual {v1}, Lcom/vungle/publisher/cq;->y()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    return-void

    .line 83
    :catch_0
    move-exception v0

    .line 84
    iget-object v1, p0, Lcom/vungle/publisher/afx;->e:Lcom/vungle/publisher/gm$a;

    const-string v2, "VungleReport"

    const-string v3, "error processing ad start event"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/gm$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onEvent(Lcom/vungle/publisher/bn;)V
    .locals 2
    .param p1, "destroyedErrorEndPlayEvent"    # Lcom/vungle/publisher/bn;

    .prologue
    .line 90
    .local p0, "this":Lcom/vungle/publisher/afx;, "Lcom/vungle/publisher/afx<TA;>;"
    :try_start_0
    const-string v0, "VungleReport"

    const-string v1, "received destroyed ad end"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-wide v0, p1, Lcom/vungle/publisher/qd;->e:J

    invoke-virtual {p0, v0, v1}, Lcom/vungle/publisher/afx;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-void

    .line 94
    :catch_0
    move-exception v0

    const-string v0, "VungleReport"

    const-string v1, "error processing destroyed ad end"

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
