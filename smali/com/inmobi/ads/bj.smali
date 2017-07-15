.class public Lcom/inmobi/ads/bj;
.super Ljava/lang/Object;
.source "VastResponse.java"

# interfaces
.implements Lcom/inmobi/ads/bk;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/bi;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/ah;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/bg;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/inmobi/ads/bg;

.field private h:Lcom/inmobi/ads/c$g;

.field private i:Lcom/inmobi/ads/VastErrorCode;

.field private j:Lcom/inmobi/ads/bi;


# direct methods
.method public constructor <init>(Lcom/inmobi/ads/c$g;)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/ads/bj;->j:Lcom/inmobi/ads/bi;

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/bj;->a:Ljava/util/List;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/bj;->e:Ljava/util/List;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/inmobi/ads/bj;->f:Ljava/util/List;

    .line 33
    iput-object p1, p0, Lcom/inmobi/ads/bj;->h:Lcom/inmobi/ads/c$g;

    .line 34
    sget-object v0, Lcom/inmobi/ads/VastErrorCode;->NO_ERROR:Lcom/inmobi/ads/VastErrorCode;

    iput-object v0, p0, Lcom/inmobi/ads/bj;->i:Lcom/inmobi/ads/VastErrorCode;

    .line 35
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/inmobi/ads/c$g;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/ah;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/bg;",
            ">;",
            "Lcom/inmobi/ads/c$g;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p4, p6}, Lcom/inmobi/ads/bj;-><init>(Ljava/util/List;Lcom/inmobi/ads/c$g;)V

    .line 56
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/inmobi/ads/bj;->f:Ljava/util/List;

    .line 59
    :cond_0
    iput-object p1, p0, Lcom/inmobi/ads/bj;->b:Ljava/lang/String;

    .line 60
    iget-object v0, p0, Lcom/inmobi/ads/bj;->a:Ljava/util/List;

    new-instance v1, Lcom/inmobi/ads/bi;

    const/16 v2, 0x3e8

    invoke-direct {v1, p1, v2}, Lcom/inmobi/ads/bi;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    iput-object p2, p0, Lcom/inmobi/ads/bj;->c:Ljava/lang/String;

    .line 62
    iput-object p3, p0, Lcom/inmobi/ads/bj;->d:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/inmobi/ads/c$g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/ah;",
            ">;",
            "Lcom/inmobi/ads/c$g;",
            ")V"
        }
    .end annotation

    .prologue
    .line 38
    invoke-direct {p0, p2}, Lcom/inmobi/ads/bj;-><init>(Lcom/inmobi/ads/c$g;)V

    .line 39
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/inmobi/ads/bj;->e:Ljava/util/List;

    .line 42
    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/inmobi/ads/bj;->d:Ljava/lang/String;

    return-object v0
.end method

.method a(Lcom/inmobi/ads/VastErrorCode;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/inmobi/ads/bj;->i:Lcom/inmobi/ads/VastErrorCode;

    .line 180
    return-void
.end method

.method a(Lcom/inmobi/ads/ah;)V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/inmobi/ads/bj;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    return-void
.end method

.method public a(Lcom/inmobi/ads/bg;)V
    .locals 0

    .prologue
    .line 150
    iput-object p1, p0, Lcom/inmobi/ads/bj;->g:Lcom/inmobi/ads/bg;

    .line 151
    return-void
.end method

.method a(Lcom/inmobi/ads/bi;)V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/inmobi/ads/bj;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/inmobi/ads/bj;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 124
    iput-object p1, p0, Lcom/inmobi/ads/bj;->b:Ljava/lang/String;

    .line 126
    :cond_0
    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 15

    .prologue
    const-wide/32 v8, 0x100000

    const/4 v1, 0x0

    .line 71
    iget-object v0, p0, Lcom/inmobi/ads/bj;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/inmobi/ads/bj;->b:Ljava/lang/String;

    .line 118
    :goto_0
    return-object v0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/bj;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 78
    const-wide/16 v2, 0x2

    iget-object v0, p0, Lcom/inmobi/ads/bj;->h:Lcom/inmobi/ads/c$g;

    invoke-virtual {v0}, Lcom/inmobi/ads/c$g;->b()J

    move-result-wide v6

    div-long/2addr v6, v8

    mul-long/2addr v2, v6

    long-to-double v6, v2

    .line 79
    iget-object v0, p0, Lcom/inmobi/ads/bj;->h:Lcom/inmobi/ads/c$g;

    invoke-virtual {v0}, Lcom/inmobi/ads/c$g;->c()J

    move-result-wide v2

    div-long/2addr v2, v8

    long-to-double v8, v2

    move-object v2, v1

    .line 80
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 81
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/bi;

    .line 82
    iget-object v3, p0, Lcom/inmobi/ads/bj;->c:Ljava/lang/String;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 84
    const/4 v4, 0x1

    :try_start_0
    aget-object v4, v3, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3c

    const/4 v10, 0x2

    aget-object v3, v3, v10

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    add-int/2addr v3, v4

    .line 89
    :goto_2
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0}, Lcom/inmobi/ads/bi;->b()I

    move-result v4

    int-to-double v12, v4

    mul-double/2addr v10, v12

    int-to-double v12, v3

    mul-double/2addr v10, v12

    const-wide/high16 v12, 0x40c0000000000000L    # 8192.0

    div-double/2addr v10, v12

    .line 90
    invoke-virtual {v0, v10, v11}, Lcom/inmobi/ads/bi;->a(D)V

    .line 93
    const-wide/16 v12, 0x0

    cmpl-double v3, v10, v12

    if-lez v3, :cond_2

    cmpg-double v3, v10, v6

    if-gtz v3, :cond_2

    .line 94
    if-nez v2, :cond_1

    move-object v14, v1

    move-object v1, v0

    move-object v0, v14

    :goto_3
    move-object v2, v1

    move-object v1, v0

    .line 110
    goto :goto_1

    .line 85
    :catch_0
    move-exception v3

    move-object v4, v3

    .line 86
    const/4 v3, 0x0

    .line 87
    invoke-static {}, Lcom/inmobi/commons/core/d/c;->a()Lcom/inmobi/commons/core/d/c;

    move-result-object v10

    new-instance v11, Lcom/inmobi/commons/core/d/b;

    invoke-direct {v11, v4}, Lcom/inmobi/commons/core/d/b;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v10, v11}, Lcom/inmobi/commons/core/d/c;->a(Lcom/inmobi/commons/core/d/g;)V

    goto :goto_2

    .line 97
    :cond_1
    invoke-virtual {v2}, Lcom/inmobi/ads/bi;->c()D

    move-result-wide v12

    cmpl-double v3, v10, v12

    if-lez v3, :cond_7

    move-object v14, v1

    move-object v1, v0

    move-object v0, v14

    .line 98
    goto :goto_3

    .line 101
    :cond_2
    cmpl-double v3, v10, v6

    if-lez v3, :cond_7

    cmpg-double v3, v10, v8

    if-gtz v3, :cond_7

    .line 102
    if-nez v1, :cond_3

    move-object v1, v2

    .line 103
    goto :goto_3

    .line 105
    :cond_3
    invoke-virtual {v1}, Lcom/inmobi/ads/bi;->c()D

    move-result-wide v12

    cmpg-double v3, v10, v12

    if-gez v3, :cond_7

    move-object v1, v2

    .line 106
    goto :goto_3

    .line 111
    :cond_4
    if-eqz v2, :cond_6

    .line 112
    iput-object v2, p0, Lcom/inmobi/ads/bj;->j:Lcom/inmobi/ads/bi;

    .line 113
    invoke-virtual {v2}, Lcom/inmobi/ads/bi;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/bj;->b:Ljava/lang/String;

    .line 118
    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/inmobi/ads/bj;->b:Ljava/lang/String;

    goto/16 :goto_0

    .line 114
    :cond_6
    if-eqz v1, :cond_5

    .line 115
    iput-object v1, p0, Lcom/inmobi/ads/bj;->j:Lcom/inmobi/ads/bi;

    .line 116
    invoke-virtual {v1}, Lcom/inmobi/ads/bi;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/ads/bj;->b:Ljava/lang/String;

    goto :goto_4

    :cond_7
    move-object v0, v1

    move-object v1, v2

    goto :goto_3
.end method

.method b(Lcom/inmobi/ads/bg;)V
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/inmobi/ads/bj;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    return-void
.end method

.method b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 175
    iput-object p1, p0, Lcom/inmobi/ads/bj;->d:Ljava/lang/String;

    .line 176
    return-void
.end method

.method public c()Lcom/inmobi/ads/VastErrorCode;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/inmobi/ads/bj;->i:Lcom/inmobi/ads/VastErrorCode;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 187
    iput-object p1, p0, Lcom/inmobi/ads/bj;->c:Ljava/lang/String;

    .line 188
    return-void
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/bi;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/inmobi/ads/bj;->a:Ljava/util/List;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/ah;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/inmobi/ads/bj;->e:Ljava/util/List;

    return-object v0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/inmobi/ads/bg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/inmobi/ads/bj;->f:Ljava/util/List;

    return-object v0
.end method

.method public g()Lcom/inmobi/ads/bg;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/inmobi/ads/bj;->g:Lcom/inmobi/ads/bg;

    return-object v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/inmobi/ads/bj;->c:Ljava/lang/String;

    return-object v0
.end method
