.class public Lcom/inmobi/commons/core/network/NetworkRequest;
.super Ljava/lang/Object;
.source "NetworkRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/String;


# instance fields
.field protected a:Ljava/util/Map;
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

.field protected b:Ljava/util/Map;
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

.field protected c:Ljava/util/Map;
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

.field private e:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

.field private f:Ljava/lang/String;

.field private g:Lcom/inmobi/commons/core/utilities/uid/d;

.field private h:I

.field private i:I

.field private j:Z

.field private k:Z

.field private l:[B

.field private m:[B

.field private n:Z

.field private o:J

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/inmobi/commons/core/network/NetworkRequest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/commons/core/network/NetworkRequest;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;Ljava/lang/String;ZLcom/inmobi/commons/core/utilities/uid/d;)V
    .locals 6

    .prologue
    .line 51
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/commons/core/network/NetworkRequest;-><init>(Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;Ljava/lang/String;ZLcom/inmobi/commons/core/utilities/uid/d;Z)V

    .line 52
    return-void
.end method

.method public constructor <init>(Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;Ljava/lang/String;ZLcom/inmobi/commons/core/utilities/uid/d;Z)V
    .locals 3

    .prologue
    const v2, 0xea60

    const/4 v1, 0x1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->a:Ljava/util/Map;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->b:Ljava/util/Map;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->c:Ljava/util/Map;

    .line 34
    iput v2, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->h:I

    .line 35
    iput v2, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->i:I

    .line 36
    iput-boolean v1, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->j:Z

    .line 42
    iput-boolean v1, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->n:Z

    .line 43
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->o:J

    .line 56
    iput-object p1, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->e:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    .line 57
    iput-object p2, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->f:Ljava/lang/String;

    .line 58
    iput-boolean p3, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->k:Z

    .line 59
    iput-object p4, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->g:Lcom/inmobi/commons/core/utilities/uid/d;

    .line 61
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->a:Ljava/util/Map;

    const-string v1, "User-Agent"

    invoke-static {}, Lcom/inmobi/commons/a/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    iput-boolean p5, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->p:Z

    .line 63
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 208
    const/16 v0, 0x8

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/a/b;->a(I)[B

    move-result-object v3

    .line 209
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/a/b;->a(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->l:[B

    .line 210
    invoke-static {}, Lcom/inmobi/commons/core/utilities/a/b;->b()[B

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->m:[B

    .line 211
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 213
    new-instance v7, Lcom/inmobi/commons/core/configs/f;

    invoke-direct {v7}, Lcom/inmobi/commons/core/configs/f;-><init>()V

    .line 214
    invoke-static {}, Lcom/inmobi/commons/core/configs/b;->a()Lcom/inmobi/commons/core/configs/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v7, v1}, Lcom/inmobi/commons/core/configs/b;->a(Lcom/inmobi/commons/core/configs/a;Lcom/inmobi/commons/core/configs/b$b;)V

    .line 216
    iget-object v1, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->m:[B

    iget-object v2, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->l:[B

    invoke-virtual {v7}, Lcom/inmobi/commons/core/configs/f;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7}, Lcom/inmobi/commons/core/configs/f;->e()Ljava/lang/String;

    move-result-object v5

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/inmobi/commons/core/utilities/a/b;->a(Ljava/lang/String;[B[B[BLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 217
    const-string v1, "sm"

    invoke-interface {v6, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 218
    const-string v0, "sn"

    invoke-virtual {v7}, Lcom/inmobi/commons/core/configs/f;->g()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    const-string v0, "&"

    invoke-static {v6, v0}, Lcom/inmobi/commons/core/utilities/d;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Ljava/util/Map;)V
    .locals 1
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
    .line 194
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/a;->a()Lcom/inmobi/commons/core/utilities/info/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/core/utilities/info/a;->c()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 195
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/b;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 196
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/d;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 198
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->g:Lcom/inmobi/commons/core/utilities/uid/d;

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/inmobi/commons/core/network/NetworkRequest;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->g:Lcom/inmobi/commons/core/utilities/uid/d;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/utilities/uid/d;->a()Ljava/util/HashMap;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 202
    :cond_1
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->g:Lcom/inmobi/commons/core/utilities/uid/d;

    invoke-virtual {v0}, Lcom/inmobi/commons/core/utilities/uid/d;->b()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 127
    iget-boolean v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->n:Z

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->e:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    sget-object v1, Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;->GET:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    if-ne v0, v1, :cond_1

    .line 129
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->b:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/inmobi/commons/core/network/NetworkRequest;->a(Ljava/util/Map;)V

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->e:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    sget-object v1, Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;->POST:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    if-ne v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->c:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/inmobi/commons/core/network/NetworkRequest;->a(Ljava/util/Map;)V

    goto :goto_0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 66
    iput-wide p1, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->o:J

    .line 67
    return-void
.end method

.method public a(Z)V
    .locals 0

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->n:Z

    .line 79
    return-void
.end method

.method protected a([B)[B
    .locals 5
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 225
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1, v0}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v0

    iget-object v1, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->m:[B

    iget-object v2, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->l:[B

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/a/b;->a([B[B[B)[B
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 229
    :goto_0
    return-object v0

    .line 227
    :catch_0
    move-exception v0

    .line 228
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/commons/core/network/NetworkRequest;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Msg : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 174
    iput p1, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->h:I

    .line 175
    return-void
.end method

.method public b(Z)V
    .locals 0

    .prologue
    .line 162
    iput-boolean p1, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->j:Z

    .line 163
    return-void
.end method

.method public c(I)V
    .locals 0

    .prologue
    .line 178
    iput p1, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->i:I

    .line 179
    return-void
.end method

.method public c(Ljava/util/Map;)V
    .locals 1
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
    .line 86
    if-eqz p1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 89
    :cond_0
    return-void
.end method

.method public d(Ljava/util/Map;)V
    .locals 1
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
    .line 92
    if-eqz p1, :cond_0

    .line 93
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 95
    :cond_0
    return-void
.end method

.method public e(Ljava/util/Map;)V
    .locals 1
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
    .line 98
    if-eqz p1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 101
    :cond_0
    return-void
.end method

.method public g()J
    .locals 2

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->o:J

    return-wide v0
.end method

.method public h()Z
    .locals 4

    .prologue
    .line 74
    iget-wide v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->o:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->f:Ljava/lang/String;

    return-object v0
.end method

.method public j()Ljava/util/Map;
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
    .line 104
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->a:Ljava/util/Map;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/d;->a(Ljava/util/Map;)V

    .line 105
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->a:Ljava/util/Map;

    return-object v0
.end method

.method public k()Ljava/lang/String;
    .locals 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->f:Ljava/lang/String;

    .line 110
    invoke-virtual {p0}, Lcom/inmobi/commons/core/network/NetworkRequest;->l()Ljava/lang/String;

    move-result-object v1

    .line 112
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    .line 113
    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    :cond_0
    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "?"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 118
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 121
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 123
    :cond_2
    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 5

    .prologue
    .line 137
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->b:Ljava/util/Map;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/d;->a(Ljava/util/Map;)V

    .line 138
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->b:Ljava/util/Map;

    const-string v1, "&"

    invoke-static {v0, v1}, Lcom/inmobi/commons/core/utilities/d;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 140
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/commons/core/network/NetworkRequest;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Get params: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 5

    .prologue
    .line 145
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->c:Ljava/util/Map;

    invoke-static {v0}, Lcom/inmobi/commons/core/utilities/d;->a(Ljava/util/Map;)V

    .line 146
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->c:Ljava/util/Map;

    const-string v1, "&"

    invoke-static {v0, v1}, Lcom/inmobi/commons/core/utilities/d;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/commons/core/network/NetworkRequest;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Post body url: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/inmobi/commons/core/network/NetworkRequest;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/commons/core/network/NetworkRequest;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Post body: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    invoke-virtual {p0}, Lcom/inmobi/commons/core/network/NetworkRequest;->r()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    invoke-direct {p0, v0}, Lcom/inmobi/commons/core/network/NetworkRequest;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 152
    sget-object v1, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v2, Lcom/inmobi/commons/core/network/NetworkRequest;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Encrypted post body: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    :cond_0
    return-object v0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 158
    iget-boolean v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->j:Z

    return v0
.end method

.method public o()Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->e:Lcom/inmobi/commons/core/network/NetworkRequest$RequestType;

    return-object v0
.end method

.method public p()I
    .locals 1

    .prologue
    .line 170
    iget v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->h:I

    return v0
.end method

.method public q()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->i:I

    return v0
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 186
    iget-boolean v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->k:Z

    return v0
.end method

.method public s()Z
    .locals 1

    .prologue
    .line 190
    iget-boolean v0, p0, Lcom/inmobi/commons/core/network/NetworkRequest;->p:Z

    return v0
.end method

.method public t()J
    .locals 5

    .prologue
    .line 234
    const-wide/16 v0, 0x0

    .line 237
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/commons/core/network/NetworkRequest;->m()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 238
    invoke-virtual {p0}, Lcom/inmobi/commons/core/network/NetworkRequest;->l()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    int-to-long v2, v2

    add-long/2addr v0, v2

    .line 243
    :goto_0
    return-wide v0

    .line 239
    :catch_0
    move-exception v2

    .line 240
    sget-object v2, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v3, Lcom/inmobi/commons/core/network/NetworkRequest;->d:Ljava/lang/String;

    const-string v4, "Error in getting request size"

    invoke-static {v2, v3, v4}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
