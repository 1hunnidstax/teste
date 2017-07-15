.class public abstract Lcom/vungle/publisher/cp;
.super Lcom/vungle/publisher/dl;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/vungle/publisher/cp$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/vungle/publisher/cq",
        "<TT;TP;TE;*>;P:",
        "Lcom/vungle/publisher/cp",
        "<TT;TP;TE;>;E:",
        "Lcom/vungle/publisher/cr",
        "<TP;>;>",
        "Lcom/vungle/publisher/dl",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/vungle/publisher/cq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/Integer;

.field public c:Ljava/lang/Long;

.field d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/vungle/publisher/dl;-><init>()V

    return-void
.end method

.method private f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lcom/vungle/publisher/cp;->d:Ljava/util/List;

    .line 82
    if-nez v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/vungle/publisher/cp;->b()Lcom/vungle/publisher/cr$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/vungle/publisher/cr$a;->a(Lcom/vungle/publisher/cp;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/vungle/publisher/cp;->d:Ljava/util/List;

    .line 85
    :cond_0
    return-object v0
.end method

.method private g()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/vungle/publisher/cp;->a:Lcom/vungle/publisher/cq;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/vungle/publisher/cp;->a:Lcom/vungle/publisher/cq;

    invoke-virtual {v0}, Lcom/vungle/publisher/cq;->w()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    goto :goto_0
.end method


# virtual methods
.method protected final a(Z)Landroid/content/ContentValues;
    .locals 3

    .prologue
    .line 99
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 100
    if-eqz p1, :cond_0

    .line 101
    const-string v1, "report_id"

    invoke-direct {p0}, Lcom/vungle/publisher/cp;->g()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 107
    :goto_0
    return-object v0

    .line 104
    :cond_0
    const-string v1, "start_millis"

    iget-object v2, p0, Lcom/vungle/publisher/cp;->c:Ljava/lang/Long;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 105
    const-string v1, "watched_millis"

    iget-object v2, p0, Lcom/vungle/publisher/cp;->b:Ljava/lang/Integer;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0
.end method

.method public final a(Lcom/vungle/publisher/ji;Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/vungle/publisher/cp;->f()Ljava/util/List;

    move-result-object v1

    .line 60
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    const/16 v2, 0x3e8

    if-lt v0, v2, :cond_0

    .line 61
    const-string v0, "VungleReport"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ignoring report event "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " because the event buffer is full!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :goto_0
    return-void

    .line 64
    :cond_0
    const-string v2, "VungleReport"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "adding report event "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p2, :cond_1

    const-string v0, ""

    :goto_1
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/vungle/log/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0}, Lcom/vungle/publisher/cp;->b()Lcom/vungle/publisher/cr$a;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcom/vungle/publisher/cr$a;->a(Lcom/vungle/publisher/cp;Lcom/vungle/publisher/ji;Ljava/lang/Object;)Lcom/vungle/publisher/cr;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/vungle/publisher/cr;->v()Ljava/lang/Object;

    .line 68
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 64
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, ", value "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " for "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/vungle/publisher/cp;->z()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method protected abstract b()Lcom/vungle/publisher/cr$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/vungle/publisher/cr$a",
            "<TP;TE;>;"
        }
    .end annotation
.end method

.method protected final c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    const-string v0, "ad_play"

    return-object v0
.end method

.method public final e()[Lcom/vungle/publisher/cr;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TE;"
        }
    .end annotation

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/vungle/publisher/cp;->f()Ljava/util/List;

    move-result-object v0

    .line 75
    invoke-virtual {p0}, Lcom/vungle/publisher/cp;->b()Lcom/vungle/publisher/cr$a;

    move-result-object v1

    .line 76
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/vungle/publisher/cr$a;->a(I)[Lcom/vungle/publisher/dl;

    move-result-object v1

    .line 74
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vungle/publisher/cr;

    return-object v0
.end method

.method protected final m()Ljava/lang/StringBuilder;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 112
    invoke-super {p0}, Lcom/vungle/publisher/dl;->m()Ljava/lang/StringBuilder;

    move-result-object v0

    .line 113
    const-string v1, "report_id"

    invoke-direct {p0}, Lcom/vungle/publisher/cp;->g()Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lcom/vungle/publisher/dl;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 114
    const-string v1, "start_millis"

    iget-object v2, p0, Lcom/vungle/publisher/cp;->c:Ljava/lang/Long;

    invoke-static {v0, v1, v2, v3}, Lcom/vungle/publisher/dl;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 115
    const-string v1, "watched_millis"

    iget-object v2, p0, Lcom/vungle/publisher/cp;->b:Ljava/lang/Integer;

    invoke-static {v0, v1, v2, v3}, Lcom/vungle/publisher/dl;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Z)V

    .line 116
    return-object v0
.end method
