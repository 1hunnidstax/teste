.class abstract Lcom/inmobi/ads/bq;
.super Ljava/lang/Object;
.source "VisibilityTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/bq$b;,
        Lcom/inmobi/ads/bq$d;,
        Lcom/inmobi/ads/bq$a;,
        Lcom/inmobi/ads/bq$c;
    }
.end annotation


# static fields
.field static final a:Lcom/inmobi/ads/bq$a;

.field private static final b:Ljava/lang/String;


# instance fields
.field private final c:Ljava/util/ArrayList;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private d:J

.field private e:Z

.field private final f:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/inmobi/ads/bq$d;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/inmobi/ads/bq$a;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private h:Lcom/inmobi/ads/bq$c;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final i:Lcom/inmobi/ads/bq$b;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final j:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/inmobi/ads/bq;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/bq;->b:Ljava/lang/String;

    .line 82
    new-instance v0, Lcom/inmobi/ads/bq$1;

    invoke-direct {v0}, Lcom/inmobi/ads/bq$1;-><init>()V

    sput-object v0, Lcom/inmobi/ads/bq;->a:Lcom/inmobi/ads/bq$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/inmobi/ads/bq;->a:Lcom/inmobi/ads/bq$a;

    invoke-direct {p0, v0}, Lcom/inmobi/ads/bq;-><init>(Lcom/inmobi/ads/bq$a;)V

    .line 115
    return-void
.end method

.method constructor <init>(Lcom/inmobi/ads/bq$a;)V
    .locals 3

    .prologue
    .line 118
    new-instance v0, Ljava/util/WeakHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/WeakHashMap;-><init>(I)V

    new-instance v1, Landroid/os/Handler;

    .line 120
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 118
    invoke-direct {p0, v0, p1, v1}, Lcom/inmobi/ads/bq;-><init>(Ljava/util/Map;Lcom/inmobi/ads/bq$a;Landroid/os/Handler;)V

    .line 121
    return-void
.end method

.method private constructor <init>(Ljava/util/Map;Lcom/inmobi/ads/bq$a;Landroid/os/Handler;)V
    .locals 2
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/inmobi/ads/bq$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/inmobi/ads/bq$d;",
            ">;",
            "Lcom/inmobi/ads/bq$a;",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/ads/bq;->d:J

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/bq;->e:Z

    .line 127
    iput-object p1, p0, Lcom/inmobi/ads/bq;->f:Ljava/util/Map;

    .line 128
    iput-object p2, p0, Lcom/inmobi/ads/bq;->g:Lcom/inmobi/ads/bq$a;

    .line 129
    iput-object p3, p0, Lcom/inmobi/ads/bq;->j:Landroid/os/Handler;

    .line 130
    new-instance v0, Lcom/inmobi/ads/bq$b;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/bq$b;-><init>(Lcom/inmobi/ads/bq;)V

    iput-object v0, p0, Lcom/inmobi/ads/bq;->i:Lcom/inmobi/ads/bq$b;

    .line 131
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/inmobi/ads/bq;->c:Ljava/util/ArrayList;

    .line 132
    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/bq;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/inmobi/ads/bq;->f:Ljava/util/Map;

    return-object v0
.end method

.method private a(J)V
    .locals 7

    .prologue
    .line 190
    iget-object v0, p0, Lcom/inmobi/ads/bq;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 191
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/bq$d;

    iget-wide v4, v1, Lcom/inmobi/ads/bq$d;->b:J

    cmp-long v1, v4, p1

    if-gez v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/inmobi/ads/bq;->c:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/bq;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 197
    invoke-virtual {p0, v0}, Lcom/inmobi/ads/bq;->a(Landroid/view/View;)V

    goto :goto_1

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/inmobi/ads/bq;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 200
    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/bq;Z)Z
    .locals 0

    .prologue
    .line 21
    iput-boolean p1, p0, Lcom/inmobi/ads/bq;->k:Z

    return p1
.end method

.method static synthetic b(Lcom/inmobi/ads/bq;)Lcom/inmobi/ads/bq$a;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/inmobi/ads/bq;->g:Lcom/inmobi/ads/bq$a;

    return-object v0
.end method

.method static synthetic c(Lcom/inmobi/ads/bq;)Lcom/inmobi/ads/bq$c;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/inmobi/ads/bq;->h:Lcom/inmobi/ads/bq$c;

    return-object v0
.end method


# virtual methods
.method protected abstract a()I
.end method

.method a(Ljava/lang/Object;)Landroid/view/View;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 225
    if-nez p1, :cond_1

    move-object v0, v2

    .line 242
    :cond_0
    :goto_0
    return-object v0

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/inmobi/ads/bq;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 232
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 233
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 234
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/bq$d;

    iget-object v1, v1, Lcom/inmobi/ads/bq$d;->d:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 235
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 239
    :goto_1
    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {p0, v0}, Lcom/inmobi/ads/bq;->a(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_1
.end method

.method protected a(Landroid/view/View;)V
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 206
    iget-object v0, p0, Lcom/inmobi/ads/bq;->f:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/bq$d;

    .line 207
    if-eqz v0, :cond_0

    .line 208
    iget-wide v0, p0, Lcom/inmobi/ads/bq;->d:J

    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/inmobi/ads/bq;->d:J

    .line 209
    iget-object v0, p0, Lcom/inmobi/ads/bq;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 210
    invoke-virtual {p0}, Lcom/inmobi/ads/bq;->c()V

    .line 213
    :cond_0
    return-void
.end method

.method protected a(Landroid/view/View;Landroid/view/View;Ljava/lang/Object;I)V
    .locals 8
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const-wide/16 v6, 0x32

    .line 167
    iget-object v0, p0, Lcom/inmobi/ads/bq;->f:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/bq$d;

    .line 168
    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lcom/inmobi/ads/bq$d;

    invoke-direct {v0}, Lcom/inmobi/ads/bq$d;-><init>()V

    .line 170
    iget-object v1, p0, Lcom/inmobi/ads/bq;->f:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-wide v2, p0, Lcom/inmobi/ads/bq;->d:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/inmobi/ads/bq;->d:J

    .line 174
    :cond_0
    iput p4, v0, Lcom/inmobi/ads/bq$d;->a:I

    .line 175
    iget-wide v2, p0, Lcom/inmobi/ads/bq;->d:J

    iput-wide v2, v0, Lcom/inmobi/ads/bq$d;->b:J

    .line 176
    iput-object p1, v0, Lcom/inmobi/ads/bq$d;->c:Landroid/view/View;

    .line 177
    iput-object p3, v0, Lcom/inmobi/ads/bq$d;->d:Ljava/lang/Object;

    .line 179
    iget-wide v0, p0, Lcom/inmobi/ads/bq;->d:J

    rem-long/2addr v0, v6

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 180
    iget-wide v0, p0, Lcom/inmobi/ads/bq;->d:J

    sub-long/2addr v0, v6

    invoke-direct {p0, v0, v1}, Lcom/inmobi/ads/bq;->a(J)V

    .line 183
    :cond_1
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/inmobi/ads/bq;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 184
    invoke-virtual {p0}, Lcom/inmobi/ads/bq;->d()V

    .line 186
    :cond_2
    return-void
.end method

.method protected a(Landroid/view/View;Ljava/lang/Object;I)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 159
    invoke-virtual {p0, p1, p1, p2, p3}, Lcom/inmobi/ads/bq;->a(Landroid/view/View;Landroid/view/View;Ljava/lang/Object;I)V

    .line 160
    return-void
.end method

.method a(Lcom/inmobi/ads/bq$c;)V
    .locals 0
    .param p1    # Lcom/inmobi/ads/bq$c;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 136
    iput-object p1, p0, Lcom/inmobi/ads/bq;->h:Lcom/inmobi/ads/bq$c;

    .line 137
    return-void
.end method

.method protected abstract b()V
.end method

.method public c()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/inmobi/ads/bq;->j:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/ads/bq;->k:Z

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/bq;->e:Z

    .line 143
    return-void
.end method

.method public d()V
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/ads/bq;->e:Z

    .line 147
    invoke-virtual {p0}, Lcom/inmobi/ads/bq;->i()V

    .line 148
    return-void
.end method

.method protected e()V
    .locals 1

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/inmobi/ads/bq;->g()V

    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/ads/bq;->h:Lcom/inmobi/ads/bq$c;

    .line 255
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/bq;->e:Z

    .line 256
    return-void
.end method

.method public f()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/inmobi/ads/bq;->e:Z

    return v0
.end method

.method protected g()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 219
    iget-object v0, p0, Lcom/inmobi/ads/bq;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 220
    iget-object v0, p0, Lcom/inmobi/ads/bq;->j:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 221
    iput-boolean v1, p0, Lcom/inmobi/ads/bq;->k:Z

    .line 222
    return-void
.end method

.method h()Z
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/inmobi/ads/bq;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected i()V
    .locals 4

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/inmobi/ads/bq;->k:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/inmobi/ads/bq;->e:Z

    if-eqz v0, :cond_1

    .line 268
    :cond_0
    :goto_0
    return-void

    .line 265
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/inmobi/ads/bq;->k:Z

    .line 266
    iget-object v0, p0, Lcom/inmobi/ads/bq;->j:Landroid/os/Handler;

    iget-object v1, p0, Lcom/inmobi/ads/bq;->i:Lcom/inmobi/ads/bq$b;

    .line 267
    invoke-virtual {p0}, Lcom/inmobi/ads/bq;->a()I

    move-result v2

    int-to-long v2, v2

    .line 266
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
