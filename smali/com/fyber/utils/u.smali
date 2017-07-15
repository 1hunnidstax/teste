.class public final Lcom/fyber/utils/u;
.super Ljava/lang/Object;
.source "UrlBuilder.java"


# static fields
.field private static a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/fyber/utils/o;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private b:Ljava/lang/String;

.field private c:Lcom/fyber/a/a;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/util/Map;
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

.field private g:Z

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1007
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 1008
    const/4 v1, 0x6

    new-instance v2, Lcom/fyber/utils/g;

    invoke-direct {v2}, Lcom/fyber/utils/g;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1009
    const/4 v1, 0x3

    new-instance v2, Lcom/fyber/utils/h$e;

    invoke-direct {v2}, Lcom/fyber/utils/h$e;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1010
    const/4 v1, 0x4

    new-instance v2, Lcom/fyber/utils/h$d;

    invoke-direct {v2}, Lcom/fyber/utils/h$d;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1011
    const/4 v1, 0x5

    new-instance v2, Lcom/fyber/utils/h$c;

    invoke-direct {v2}, Lcom/fyber/utils/h$c;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1012
    const/4 v1, 0x2

    new-instance v2, Lcom/fyber/utils/h$b;

    invoke-direct {v2}, Lcom/fyber/utils/h$b;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1013
    const/4 v1, 0x1

    new-instance v2, Lcom/fyber/utils/h$a;

    invoke-direct {v2}, Lcom/fyber/utils/h$a;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1014
    const/4 v1, 0x0

    new-instance v2, Lcom/fyber/utils/p;

    invoke-direct {v2}, Lcom/fyber/utils/p;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1015
    const/16 v1, 0x8

    new-instance v2, Lcom/fyber/utils/q;

    invoke-direct {v2}, Lcom/fyber/utils/q;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1016
    const/4 v1, 0x7

    new-instance v2, Lcom/fyber/utils/s;

    invoke-direct {v2}, Lcom/fyber/utils/s;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 35
    sput-object v0, Lcom/fyber/utils/u;->a:Landroid/util/SparseArray;

    .line 36
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/fyber/a/a;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-boolean v1, p0, Lcom/fyber/utils/u;->g:Z

    .line 56
    iput-boolean v1, p0, Lcom/fyber/utils/u;->h:Z

    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/utils/u;->i:Z

    .line 58
    iput-boolean v1, p0, Lcom/fyber/utils/u;->j:Z

    .line 60
    iput-boolean v1, p0, Lcom/fyber/utils/u;->k:Z

    .line 61
    iput-boolean v1, p0, Lcom/fyber/utils/u;->l:Z

    .line 64
    iput-object p1, p0, Lcom/fyber/utils/u;->b:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/fyber/utils/u;->c:Lcom/fyber/a/a;

    .line 66
    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/fyber/a/a;)Lcom/fyber/utils/u;
    .locals 1

    .prologue
    .line 230
    new-instance v0, Lcom/fyber/utils/u;

    invoke-direct {v0, p0, p1}, Lcom/fyber/utils/u;-><init>(Ljava/lang/String;Lcom/fyber/a/a;)V

    return-object v0
.end method

.method private static a(Ljava/util/Map;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 203
    sget-object v0, Lcom/fyber/utils/u;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fyber/utils/o;

    .line 204
    if-eqz v0, :cond_0

    .line 205
    invoke-interface {v0}, Lcom/fyber/utils/o;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 207
    :cond_0
    return-void
.end method

.method private g()Ljava/util/Map;
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
    .line 210
    iget-object v0, p0, Lcom/fyber/utils/u;->f:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 211
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fyber/utils/u;->f:Ljava/util/Map;

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/fyber/utils/u;->f:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/fyber/utils/u;
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/utils/u;->g:Z

    .line 84
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/fyber/utils/u;
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/fyber/utils/u;->d:Ljava/lang/String;

    .line 109
    return-object p0
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/fyber/utils/u;
    .locals 1

    .prologue
    .line 76
    invoke-static {p1}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    invoke-direct {p0}, Lcom/fyber/utils/u;->g()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    :cond_0
    return-object p0
.end method

.method public final a(Ljava/util/Map;)Lcom/fyber/utils/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/fyber/utils/u;"
        }
    .end annotation

    .prologue
    .line 69
    if-eqz p1, :cond_0

    .line 70
    invoke-direct {p0}, Lcom/fyber/utils/u;->g()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 72
    :cond_0
    return-object p0
.end method

.method public final a(Z)Lcom/fyber/utils/u;
    .locals 0

    .prologue
    .line 93
    iput-boolean p1, p0, Lcom/fyber/utils/u;->i:Z

    .line 94
    return-object p0
.end method

.method public final b()Lcom/fyber/utils/u;
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/utils/u;->h:Z

    .line 89
    return-object p0
.end method

.method public final b(Ljava/lang/String;)Lcom/fyber/utils/u;
    .locals 0

    .prologue
    .line 113
    iput-object p1, p0, Lcom/fyber/utils/u;->e:Ljava/lang/String;

    .line 114
    return-object p0
.end method

.method public final c()Lcom/fyber/utils/u;
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/utils/u;->j:Z

    .line 99
    return-object p0
.end method

.method public final d()Lcom/fyber/utils/u;
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/utils/u;->k:Z

    .line 104
    return-object p0
.end method

.method public final e()Lcom/fyber/utils/u;
    .locals 1

    .prologue
    .line 118
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fyber/utils/u;->l:Z

    .line 119
    return-object p0
.end method

.method public final f()Ljava/lang/String;
    .locals 6

    .prologue
    .line 132
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 134
    const/4 v0, 0x6

    invoke-static {v2, v0}, Lcom/fyber/utils/u;->a(Ljava/util/Map;I)V

    .line 136
    iget-object v0, p0, Lcom/fyber/utils/u;->f:Ljava/util/Map;

    invoke-static {v0}, Lcom/fyber/utils/m;->b(Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/fyber/utils/u;->f:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 140
    :cond_0
    const-string v0, "appid"

    iget-object v1, p0, Lcom/fyber/utils/u;->c:Lcom/fyber/a/a;

    invoke-virtual {v1}, Lcom/fyber/a/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-boolean v0, p0, Lcom/fyber/utils/u;->i:Z

    if-eqz v0, :cond_1

    .line 143
    const-string v0, "uid"

    iget-object v1, p0, Lcom/fyber/utils/u;->c:Lcom/fyber/a/a;

    invoke-virtual {v1}, Lcom/fyber/a/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    :cond_1
    const/4 v0, 0x0

    invoke-static {v2, v0}, Lcom/fyber/utils/u;->a(Ljava/util/Map;I)V

    .line 148
    const/4 v0, 0x2

    invoke-static {v2, v0}, Lcom/fyber/utils/u;->a(Ljava/util/Map;I)V

    .line 150
    const/4 v0, 0x1

    invoke-static {v2, v0}, Lcom/fyber/utils/u;->a(Ljava/util/Map;I)V

    .line 152
    const/16 v0, 0x8

    invoke-static {v2, v0}, Lcom/fyber/utils/u;->a(Ljava/util/Map;I)V

    .line 154
    const/4 v0, 0x7

    invoke-static {v2, v0}, Lcom/fyber/utils/u;->a(Ljava/util/Map;I)V

    .line 156
    iget-object v0, p0, Lcom/fyber/utils/u;->e:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 157
    const-string v0, "placement_id"

    iget-object v1, p0, Lcom/fyber/utils/u;->e:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    :cond_2
    iget-boolean v0, p0, Lcom/fyber/utils/u;->g:Z

    if-eqz v0, :cond_3

    .line 161
    const/4 v0, 0x3

    invoke-static {v2, v0}, Lcom/fyber/utils/u;->a(Ljava/util/Map;I)V

    .line 164
    :cond_3
    iget-boolean v0, p0, Lcom/fyber/utils/u;->h:Z

    if-eqz v0, :cond_4

    .line 165
    const/4 v0, 0x4

    invoke-static {v2, v0}, Lcom/fyber/utils/u;->a(Ljava/util/Map;I)V

    .line 168
    :cond_4
    const/4 v0, 0x5

    invoke-static {v2, v0}, Lcom/fyber/utils/u;->a(Ljava/util/Map;I)V

    .line 170
    iget-object v0, p0, Lcom/fyber/utils/u;->d:Ljava/lang/String;

    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 171
    const-string v0, "request_id"

    iget-object v1, p0, Lcom/fyber/utils/u;->d:Ljava/lang/String;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/fyber/utils/u;->b:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    .line 179
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 180
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_2
    invoke-virtual {v3, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 172
    :cond_6
    iget-boolean v0, p0, Lcom/fyber/utils/u;->k:Z

    if-eqz v0, :cond_5

    .line 173
    const-string v0, "request_id"

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 180
    :cond_7
    const-string v0, ""

    goto :goto_2

    .line 183
    :cond_8
    iget-boolean v0, p0, Lcom/fyber/utils/u;->j:Z

    if-eqz v0, :cond_9

    .line 184
    iget-object v0, p0, Lcom/fyber/utils/u;->c:Lcom/fyber/a/a;

    invoke-virtual {v0}, Lcom/fyber/a/a;->c()Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-static {v0}, Lcom/fyber/utils/StringUtils;->notNullNorEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 186
    const-string v1, "signature"

    .line 187
    invoke-static {v2, v0}, Lcom/fyber/utils/r;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 186
    invoke-virtual {v3, v1, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 193
    :cond_9
    :goto_3
    iget-boolean v0, p0, Lcom/fyber/utils/u;->l:Z

    if-eqz v0, :cond_a

    .line 194
    const-string v0, "http"

    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 197
    :cond_a
    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 199
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 189
    :cond_b
    const-string v0, "UrlBuilder"

    const-string v1, "It was impossible to add the signature, the SecretKey has not been provided"

    invoke-static {v0, v1}, Lcom/fyber/utils/FyberLogger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method
