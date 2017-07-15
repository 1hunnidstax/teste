.class public final Lcom/vungle/publisher/agb;
.super Lcom/vungle/publisher/afx;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/agb$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/vungle/publisher/afx",
        "<",
        "Lcom/vungle/publisher/dm;",
        ">;"
    }
.end annotation


# instance fields
.field h:Lcom/vungle/publisher/ck$a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/vungle/publisher/afx;-><init>()V

    return-void
.end method


# virtual methods
.method protected final a()V
    .locals 0

    .prologue
    .line 30
    return-void
.end method

.method public final onEvent(Lcom/vungle/publisher/aq;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/vungle/publisher/aq",
            "<",
            "Lcom/vungle/publisher/dm;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "startMraidAdEvent":Lcom/vungle/publisher/aq;, "Lcom/vungle/publisher/aq<Lcom/vungle/publisher/dm;>;"
    invoke-super {p0, p1}, Lcom/vungle/publisher/afx;->onEvent(Lcom/vungle/publisher/aq;)V

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/vungle/publisher/agb;->b:Lcom/vungle/publisher/cp;

    iget-wide v2, p1, Lcom/vungle/publisher/qd;->e:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/vungle/publisher/cp;->c:Ljava/lang/Long;

    .line 58
    iget-object v0, p0, Lcom/vungle/publisher/agb;->b:Lcom/vungle/publisher/cp;

    invoke-virtual {v0}, Lcom/vungle/publisher/cp;->b_()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    return-void

    .line 60
    :catch_0
    move-exception v0

    .line 61
    iget-object v1, p0, Lcom/vungle/publisher/agb;->e:Lcom/vungle/publisher/gm$a;

    const-string v2, "VungleReport"

    const-string v3, "error updating play start millis"

    invoke-virtual {v1, v2, v3, v0}, Lcom/vungle/publisher/gm$a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public final onEvent(Lcom/vungle/publisher/tv;)V
    .locals 4
    .param p1, "event"    # Lcom/vungle/publisher/tv;

    .prologue
    .line 45
    const-string v0, "VungleReport"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "received mraid tpat event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/vungle/publisher/tw;->a:Lcom/vungle/publisher/ji;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v1, p1, Lcom/vungle/publisher/tw;->a:Lcom/vungle/publisher/ji;

    iget-object v0, p0, Lcom/vungle/publisher/agb;->a:Lcom/vungle/publisher/cj;

    if-nez v0, :cond_0

    const-string v0, "VungleReport"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "null ad in AdReportingHandler - cannot track event "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :goto_0
    return-void

    .line 46
    :cond_0
    const-string v0, "VungleReport"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "tpat event "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/vungle/log/Logger;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/vungle/publisher/agb;->g:Lcom/vungle/publisher/vl;

    iget-object v3, p0, Lcom/vungle/publisher/agb;->a:Lcom/vungle/publisher/cj;

    iget-object v0, p0, Lcom/vungle/publisher/agb;->a:Lcom/vungle/publisher/cj;

    check-cast v0, Lcom/vungle/publisher/dm;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/dm;->a(Lcom/vungle/publisher/ji;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v3, v1, v0}, Lcom/vungle/publisher/vl;->a(Lcom/vungle/publisher/cj;Lcom/vungle/publisher/ji;Ljava/util/List;)V

    goto :goto_0
.end method

.method public final onEvent(Lcom/vungle/publisher/tx;)V
    .locals 6
    .param p1, "event"    # Lcom/vungle/publisher/tx;

    .prologue
    .line 33
    iget-object v1, p1, Lcom/vungle/publisher/tw;->a:Lcom/vungle/publisher/ji;

    .line 34
    iget-object v2, p1, Lcom/vungle/publisher/tx;->b:Ljava/lang/String;

    .line 35
    const-string v3, "VungleReport"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "received mraid user action event: "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v2, :cond_2

    const-string v0, ""

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0, v1, v2}, Lcom/vungle/publisher/agb;->a(Lcom/vungle/publisher/ji;Ljava/lang/Object;)V

    .line 38
    sget-object v0, Lcom/vungle/publisher/tn;->a:Lcom/vungle/publisher/tn;

    invoke-virtual {v0, v1}, Lcom/vungle/publisher/tn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/vungle/publisher/tn;->b:Lcom/vungle/publisher/tn;

    .line 39
    invoke-virtual {v0, v1}, Lcom/vungle/publisher/tn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    :cond_0
    iget-wide v0, p1, Lcom/vungle/publisher/qd;->e:J

    invoke-virtual {p0, v0, v1}, Lcom/vungle/publisher/agb;->a(J)V

    .line 42
    :cond_1
    return-void

    .line 35
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, ", w/ value "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final onEvent(Lcom/vungle/publisher/ub;)V
    .locals 3
    .param p1, "event"    # Lcom/vungle/publisher/ub;

    .prologue
    .line 50
    iget-object v1, p0, Lcom/vungle/publisher/agb;->h:Lcom/vungle/publisher/ck$a;

    iget-object v0, p0, Lcom/vungle/publisher/agb;->c:Lcom/vungle/publisher/cq;

    invoke-virtual {v0}, Lcom/vungle/publisher/cq;->w()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v2, p1, Lcom/vungle/publisher/ub;->a:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/vungle/publisher/ck$a;->a()Lcom/vungle/publisher/ck;

    move-result-object v1

    iput-object v2, v1, Lcom/vungle/publisher/ck;->a:Ljava/lang/String;

    iput-object v0, v1, Lcom/vungle/publisher/ck;->b:Ljava/lang/Integer;

    .line 51
    invoke-virtual {v1}, Lcom/vungle/publisher/ck;->v()Ljava/lang/Object;

    .line 52
    return-void
.end method
