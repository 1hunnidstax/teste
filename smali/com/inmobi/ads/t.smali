.class Lcom/inmobi/ads/t;
.super Ljava/lang/Object;
.source "ImpressionTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/t$c;,
        Lcom/inmobi/ads/t$b;,
        Lcom/inmobi/ads/t$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/inmobi/ads/bq;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final c:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/inmobi/ads/t$b;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Map;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/inmobi/ads/t$b;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroid/os/Handler;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final f:Lcom/inmobi/ads/t$c;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private final g:J

.field private h:Lcom/inmobi/ads/bq$c;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private i:Lcom/inmobi/ads/t$a;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lcom/inmobi/ads/t;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/inmobi/ads/t;->a:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/inmobi/ads/c$h;Lcom/inmobi/ads/bq;Lcom/inmobi/ads/t$a;)V
    .locals 7
    .param p2    # Lcom/inmobi/ads/bq;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/inmobi/ads/t$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 80
    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    new-instance v2, Ljava/util/WeakHashMap;

    invoke-direct {v2}, Ljava/util/WeakHashMap;-><init>()V

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    move-object v0, p0

    move-object v3, p2

    move-object v5, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/inmobi/ads/t;-><init>(Ljava/util/Map;Ljava/util/Map;Lcom/inmobi/ads/bq;Landroid/os/Handler;Lcom/inmobi/ads/c$h;Lcom/inmobi/ads/t$a;)V

    .line 86
    return-void
.end method

.method constructor <init>(Ljava/util/Map;Ljava/util/Map;Lcom/inmobi/ads/bq;Landroid/os/Handler;Lcom/inmobi/ads/c$h;Lcom/inmobi/ads/t$a;)V
    .locals 2
    .param p1    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/inmobi/ads/bq;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/Handler;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p5    # Lcom/inmobi/ads/c$h;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/inmobi/ads/t$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/inmobi/ads/t$b;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lcom/inmobi/ads/t$b;",
            ">;",
            "Lcom/inmobi/ads/bq;",
            "Landroid/os/Handler;",
            "Lcom/inmobi/ads/c$h;",
            "Lcom/inmobi/ads/t$a;",
            ")V"
        }
    .end annotation

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/inmobi/ads/t;->c:Ljava/util/Map;

    .line 95
    iput-object p2, p0, Lcom/inmobi/ads/t;->d:Ljava/util/Map;

    .line 96
    iput-object p3, p0, Lcom/inmobi/ads/t;->b:Lcom/inmobi/ads/bq;

    .line 97
    invoke-virtual {p5}, Lcom/inmobi/ads/c$h;->f()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/inmobi/ads/t;->g:J

    .line 98
    new-instance v0, Lcom/inmobi/ads/t$1;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/t$1;-><init>(Lcom/inmobi/ads/t;)V

    iput-object v0, p0, Lcom/inmobi/ads/t;->h:Lcom/inmobi/ads/bq$c;

    .line 128
    iget-object v0, p0, Lcom/inmobi/ads/t;->b:Lcom/inmobi/ads/bq;

    iget-object v1, p0, Lcom/inmobi/ads/t;->h:Lcom/inmobi/ads/bq$c;

    invoke-virtual {v0, v1}, Lcom/inmobi/ads/bq;->a(Lcom/inmobi/ads/bq$c;)V

    .line 129
    iput-object p4, p0, Lcom/inmobi/ads/t;->e:Landroid/os/Handler;

    .line 130
    new-instance v0, Lcom/inmobi/ads/t$c;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/t$c;-><init>(Lcom/inmobi/ads/t;)V

    iput-object v0, p0, Lcom/inmobi/ads/t;->f:Lcom/inmobi/ads/t$c;

    .line 131
    iput-object p6, p0, Lcom/inmobi/ads/t;->i:Lcom/inmobi/ads/t$a;

    .line 132
    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/t;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/inmobi/ads/t;->c:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic a(JI)Z
    .locals 2

    .prologue
    .line 23
    invoke-static {p0, p1, p2}, Lcom/inmobi/ads/t;->b(JI)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/inmobi/ads/t;)Ljava/util/Map;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/inmobi/ads/t;->d:Ljava/util/Map;

    return-object v0
.end method

.method private static b(JI)Z
    .locals 4

    .prologue
    .line 264
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p0

    int-to-long v2, p2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic c(Lcom/inmobi/ads/t;)Lcom/inmobi/ads/t$a;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/inmobi/ads/t;->i:Lcom/inmobi/ads/t$a;

    return-object v0
.end method


# virtual methods
.method a(Ljava/lang/Object;)Landroid/view/View;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 163
    const/4 v2, 0x0

    .line 164
    iget-object v0, p0, Lcom/inmobi/ads/t;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 166
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 167
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 168
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inmobi/ads/t$b;

    iget-object v1, v1, Lcom/inmobi/ads/t$b;->a:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 173
    :goto_0
    if-eqz v0, :cond_1

    .line 174
    invoke-virtual {p0, v0}, Lcom/inmobi/ads/t;->a(Landroid/view/View;)V

    .line 176
    :cond_1
    return-object v0

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method a()V
    .locals 3

    .prologue
    .line 180
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/t;->a:Ljava/lang/String;

    const-string v2, "Impression Tracker paused"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/inmobi/ads/t;->b:Lcom/inmobi/ads/bq;

    invoke-virtual {v0}, Lcom/inmobi/ads/bq;->g()V

    .line 182
    iget-object v0, p0, Lcom/inmobi/ads/t;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 183
    iget-object v0, p0, Lcom/inmobi/ads/t;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 184
    return-void
.end method

.method a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/inmobi/ads/t;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v0, p0, Lcom/inmobi/ads/t;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v0, p0, Lcom/inmobi/ads/t;->b:Lcom/inmobi/ads/bq;

    invoke-virtual {v0, p1}, Lcom/inmobi/ads/bq;->a(Landroid/view/View;)V

    .line 160
    return-void
.end method

.method a(Landroid/view/View;Ljava/lang/Object;II)V
    .locals 2
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 142
    iget-object v0, p0, Lcom/inmobi/ads/t;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/t$b;

    .line 143
    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/inmobi/ads/t$b;->a:Ljava/lang/Object;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-virtual {p0, p1}, Lcom/inmobi/ads/t;->a(Landroid/view/View;)V

    .line 148
    new-instance v0, Lcom/inmobi/ads/t$b;

    invoke-direct {v0, p2, p3, p4}, Lcom/inmobi/ads/t$b;-><init>(Ljava/lang/Object;II)V

    .line 152
    iget-object v1, p0, Lcom/inmobi/ads/t;->c:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v1, p0, Lcom/inmobi/ads/t;->b:Lcom/inmobi/ads/bq;

    iget v0, v0, Lcom/inmobi/ads/t$b;->b:I

    invoke-virtual {v1, p1, p2, v0}, Lcom/inmobi/ads/bq;->a(Landroid/view/View;Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method b()V
    .locals 5

    .prologue
    .line 187
    sget-object v0, Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;->INTERNAL:Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;

    sget-object v1, Lcom/inmobi/ads/t;->a:Ljava/lang/String;

    const-string v2, "Impression Tracker resumed"

    invoke-static {v0, v1, v2}, Lcom/inmobi/commons/core/utilities/Logger;->a(Lcom/inmobi/commons/core/utilities/Logger$InternalLogLevel;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/inmobi/ads/t;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 189
    iget-object v4, p0, Lcom/inmobi/ads/t;->b:Lcom/inmobi/ads/bq;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/ads/t$b;

    iget-object v2, v2, Lcom/inmobi/ads/t$b;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/ads/t$b;

    iget v0, v0, Lcom/inmobi/ads/t$b;->b:I

    invoke-virtual {v4, v1, v2, v0}, Lcom/inmobi/ads/bq;->a(Landroid/view/View;Ljava/lang/Object;I)V

    goto :goto_0

    .line 191
    :cond_0
    invoke-virtual {p0}, Lcom/inmobi/ads/t;->f()V

    .line 192
    iget-object v0, p0, Lcom/inmobi/ads/t;->b:Lcom/inmobi/ads/bq;

    invoke-virtual {v0}, Lcom/inmobi/ads/bq;->d()V

    .line 193
    return-void
.end method

.method c()V
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/inmobi/ads/t;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 197
    iget-object v0, p0, Lcom/inmobi/ads/t;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 198
    iget-object v0, p0, Lcom/inmobi/ads/t;->b:Lcom/inmobi/ads/bq;

    invoke-virtual {v0}, Lcom/inmobi/ads/bq;->g()V

    .line 199
    iget-object v0, p0, Lcom/inmobi/ads/t;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 200
    return-void
.end method

.method d()Z
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/inmobi/ads/t;->c:Ljava/util/Map;

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

.method e()V
    .locals 1

    .prologue
    .line 209
    invoke-virtual {p0}, Lcom/inmobi/ads/t;->c()V

    .line 210
    iget-object v0, p0, Lcom/inmobi/ads/t;->b:Lcom/inmobi/ads/bq;

    invoke-virtual {v0}, Lcom/inmobi/ads/bq;->e()V

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/inmobi/ads/t;->h:Lcom/inmobi/ads/bq$c;

    .line 212
    return-void
.end method

.method f()V
    .locals 4

    .prologue
    .line 216
    iget-object v0, p0, Lcom/inmobi/ads/t;->e:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 220
    :goto_0
    return-void

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/t;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/inmobi/ads/t;->f:Lcom/inmobi/ads/t$c;

    iget-wide v2, p0, Lcom/inmobi/ads/t;->g:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
