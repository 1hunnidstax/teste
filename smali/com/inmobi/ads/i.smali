.class final Lcom/inmobi/ads/i;
.super Ljava/lang/Object;
.source "AdStoreRequest.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:J

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Lcom/inmobi/ads/c$b;

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/inmobi/commons/core/utilities/uid/d;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/inmobi/ads/i;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 30
    iput p1, p0, Lcom/inmobi/ads/i;->b:I

    .line 31
    return-void
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 54
    iput-wide p1, p0, Lcom/inmobi/ads/i;->d:J

    .line 55
    return-void
.end method

.method public a(Lcom/inmobi/ads/c$b;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/inmobi/ads/i;->j:Lcom/inmobi/ads/c$b;

    .line 79
    return-void
.end method

.method public a(Lcom/inmobi/commons/core/utilities/uid/d;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/inmobi/ads/i;->l:Lcom/inmobi/commons/core/utilities/uid/d;

    .line 87
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 38
    iput-object p1, p0, Lcom/inmobi/ads/i;->a:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    iput-object p1, p0, Lcom/inmobi/ads/i;->g:Ljava/util/Map;

    .line 71
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/inmobi/ads/i;->b:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 46
    iput p1, p0, Lcom/inmobi/ads/i;->c:I

    .line 47
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/inmobi/ads/i;->e:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 110
    iput-object p1, p0, Lcom/inmobi/ads/i;->k:Ljava/util/Map;

    .line 111
    return-void
.end method

.method public c()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/inmobi/ads/i;->c:I

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 94
    iput-object p1, p0, Lcom/inmobi/ads/i;->h:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public d()J
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/inmobi/ads/i;->d:J

    return-wide v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 102
    iput-object p1, p0, Lcom/inmobi/ads/i;->i:Ljava/lang/String;

    .line 103
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/inmobi/ads/i;->e:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/inmobi/ads/i;->f:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public f()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lcom/inmobi/ads/i;->g:Ljava/util/Map;

    return-object v0
.end method

.method public g()Lcom/inmobi/ads/c$b;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/inmobi/ads/i;->j:Lcom/inmobi/ads/c$b;

    return-object v0
.end method

.method public h()Lcom/inmobi/commons/core/utilities/uid/d;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/inmobi/ads/i;->l:Lcom/inmobi/commons/core/utilities/uid/d;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/inmobi/ads/i;->h:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/inmobi/ads/i;->i:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lcom/inmobi/ads/i;->k:Ljava/util/Map;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/inmobi/ads/i;->f:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/inmobi/ads/i;->k:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/inmobi/ads/i;->k:Ljava/util/Map;

    const-string v1, "preload-request"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 125
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method
