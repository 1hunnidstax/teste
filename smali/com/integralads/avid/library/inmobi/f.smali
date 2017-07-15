.class public Lcom/integralads/avid/library/inmobi/f;
.super Ljava/lang/Object;
.source "AvidTreeWalker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/integralads/avid/library/inmobi/f$b;,
        Lcom/integralads/avid/library/inmobi/f$a;
    }
.end annotation


# static fields
.field private static a:Lcom/integralads/avid/library/inmobi/f;

.field private static b:Lcom/integralads/avid/library/inmobi/f$b;

.field private static final j:Ljava/lang/Runnable;


# instance fields
.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/integralads/avid/library/inmobi/f$a;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private final e:Lcom/integralads/avid/library/inmobi/f/b;

.field private final f:Lcom/integralads/avid/library/inmobi/f/c;

.field private final g:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:J

.field private i:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/integralads/avid/library/inmobi/f;

    invoke-direct {v0}, Lcom/integralads/avid/library/inmobi/f;-><init>()V

    sput-object v0, Lcom/integralads/avid/library/inmobi/f;->a:Lcom/integralads/avid/library/inmobi/f;

    .line 90
    new-instance v0, Lcom/integralads/avid/library/inmobi/f$1;

    invoke-direct {v0}, Lcom/integralads/avid/library/inmobi/f$1;-><init>()V

    sput-object v0, Lcom/integralads/avid/library/inmobi/f;->j:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/integralads/avid/library/inmobi/f;->c:Ljava/util/List;

    .line 34
    new-instance v0, Lcom/integralads/avid/library/inmobi/f/b;

    invoke-direct {v0}, Lcom/integralads/avid/library/inmobi/f/b;-><init>()V

    iput-object v0, p0, Lcom/integralads/avid/library/inmobi/f;->e:Lcom/integralads/avid/library/inmobi/f/b;

    .line 35
    new-instance v0, Lcom/integralads/avid/library/inmobi/f/c;

    invoke-direct {v0}, Lcom/integralads/avid/library/inmobi/f/c;-><init>()V

    iput-object v0, p0, Lcom/integralads/avid/library/inmobi/f;->f:Lcom/integralads/avid/library/inmobi/f/c;

    .line 36
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/integralads/avid/library/inmobi/f;->g:Ljava/util/HashSet;

    return-void
.end method

.method public static a()Lcom/integralads/avid/library/inmobi/f;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/integralads/avid/library/inmobi/f;->a:Lcom/integralads/avid/library/inmobi/f;

    return-object v0
.end method

.method private a(Landroid/view/View;Lcom/integralads/avid/library/inmobi/d/e;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 8

    .prologue
    .line 110
    invoke-interface {p2, p1}, Lcom/integralads/avid/library/inmobi/d/e;->a(Landroid/view/View;)Lorg/json/JSONObject;

    move-result-object v2

    .line 111
    invoke-direct {p0, p1, v2}, Lcom/integralads/avid/library/inmobi/f;->a(Landroid/view/View;Lorg/json/JSONObject;)Z

    move-result v0

    .line 112
    iget-object v1, p0, Lcom/integralads/avid/library/inmobi/f;->f:Lcom/integralads/avid/library/inmobi/f/c;

    invoke-static {}, Lcom/integralads/avid/library/inmobi/e/a;->a()Lcom/integralads/avid/library/inmobi/e/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/integralads/avid/library/inmobi/e/a;->b()Ljava/util/Collection;

    move-result-object v3

    invoke-virtual {v1, p1, v2, v3}, Lcom/integralads/avid/library/inmobi/f/c;->a(Landroid/view/View;Lorg/json/JSONObject;Ljava/util/Collection;)V

    .line 113
    if-eqz v0, :cond_0

    .line 114
    iget-object v1, p0, Lcom/integralads/avid/library/inmobi/f;->f:Lcom/integralads/avid/library/inmobi/f/c;

    invoke-virtual {v1}, Lcom/integralads/avid/library/inmobi/f/c;->b()V

    .line 116
    :cond_0
    if-nez v0, :cond_1

    invoke-interface {p2, p1}, Lcom/integralads/avid/library/inmobi/d/e;->b(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    .line 117
    :goto_0
    iget-object v1, p0, Lcom/integralads/avid/library/inmobi/f;->e:Lcom/integralads/avid/library/inmobi/f/b;

    invoke-virtual {v1, p3}, Lcom/integralads/avid/library/inmobi/f/b;->b(Lorg/json/JSONObject;)Lorg/json/JSONArray;

    move-result-object v3

    .line 118
    iget-object v1, p0, Lcom/integralads/avid/library/inmobi/f;->e:Lcom/integralads/avid/library/inmobi/f/b;

    invoke-virtual {v1, v0, v3}, Lcom/integralads/avid/library/inmobi/f/b;->a(Ljava/util/List;Lorg/json/JSONArray;)V

    .line 120
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 121
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 122
    const/4 v1, 0x0

    .line 123
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 124
    iget-object v6, p0, Lcom/integralads/avid/library/inmobi/f;->e:Lcom/integralads/avid/library/inmobi/f/b;

    invoke-virtual {v6, v3, v1}, Lcom/integralads/avid/library/inmobi/f/b;->a(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v6

    .line 125
    invoke-interface {p2, p1}, Lcom/integralads/avid/library/inmobi/d/e;->c(Landroid/view/View;)Lcom/integralads/avid/library/inmobi/d/e;

    move-result-object v7

    invoke-direct {p0, v0, v7, v6}, Lcom/integralads/avid/library/inmobi/f;->a(Landroid/view/View;Lcom/integralads/avid/library/inmobi/d/e;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 126
    invoke-virtual {v4, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 127
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 128
    goto :goto_1

    .line 116
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    .line 131
    :cond_2
    :try_start_0
    const-string v0, "childViews"

    invoke-virtual {v2, v0, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :cond_3
    :goto_2
    invoke-interface {p2, p1, v2}, Lcom/integralads/avid/library/inmobi/d/e;->a(Landroid/view/View;Lorg/json/JSONObject;)V

    .line 137
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/f;->e:Lcom/integralads/avid/library/inmobi/f/b;

    invoke-virtual {v0, v2, p3}, Lcom/integralads/avid/library/inmobi/f/b;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    .line 138
    iget v0, p0, Lcom/integralads/avid/library/inmobi/f;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/integralads/avid/library/inmobi/f;->d:I

    .line 139
    return-object v2

    .line 132
    :catch_0
    move-exception v0

    .line 133
    const-string v1, "AvidTreeWalker.walkViewTree(): error with populating children"

    invoke-static {v1, v0}, Lcom/integralads/avid/library/inmobi/f/a;->a(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_2
.end method

.method private a(J)V
    .locals 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/integralads/avid/library/inmobi/f$a;

    .line 199
    iget v2, p0, Lcom/integralads/avid/library/inmobi/f;->d:I

    invoke-interface {v0, v2, p1, p2}, Lcom/integralads/avid/library/inmobi/f$a;->a(IJ)V

    goto :goto_0

    .line 202
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/integralads/avid/library/inmobi/f;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/integralads/avid/library/inmobi/f;->i()V

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 5

    .prologue
    .line 185
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/f;->g:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 186
    invoke-static {p1}, Lcom/integralads/avid/library/inmobi/f/d;->a(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    .line 187
    :goto_0
    invoke-static {}, Lcom/integralads/avid/library/inmobi/e/a;->a()Lcom/integralads/avid/library/inmobi/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/e/a;->b()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/integralads/avid/library/inmobi/session/internal/a;

    .line 188
    iget-object v3, p0, Lcom/integralads/avid/library/inmobi/f;->g:Ljava/util/HashSet;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/internal/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 189
    invoke-virtual {v0, v1}, Lcom/integralads/avid/library/inmobi/session/internal/a;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 186
    :cond_0
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_0

    .line 191
    :cond_1
    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/session/internal/a;->o()V

    goto :goto_1

    .line 194
    :cond_2
    return-void
.end method

.method private a(Landroid/view/View;Lorg/json/JSONObject;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 143
    if-nez p1, :cond_1

    .line 152
    :cond_0
    :goto_0
    return v0

    .line 146
    :cond_1
    invoke-static {}, Lcom/integralads/avid/library/inmobi/e/a;->a()Lcom/integralads/avid/library/inmobi/e/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/integralads/avid/library/inmobi/e/a;->a(Landroid/view/View;)Lcom/integralads/avid/library/inmobi/session/internal/a;

    move-result-object v1

    .line 147
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/integralads/avid/library/inmobi/session/internal/a;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 150
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/f;->g:Ljava/util/HashSet;

    invoke-virtual {v1}, Lcom/integralads/avid/library/inmobi/session/internal/a;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 151
    invoke-virtual {v1}, Lcom/integralads/avid/library/inmobi/session/internal/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/integralads/avid/library/inmobi/f/d;->a(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 152
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic e()Lcom/integralads/avid/library/inmobi/f$b;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/integralads/avid/library/inmobi/f;->b:Lcom/integralads/avid/library/inmobi/f$b;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/integralads/avid/library/inmobi/f;->j:Ljava/lang/Runnable;

    return-object v0
.end method

.method private g()V
    .locals 4

    .prologue
    .line 77
    sget-object v0, Lcom/integralads/avid/library/inmobi/f;->b:Lcom/integralads/avid/library/inmobi/f$b;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/integralads/avid/library/inmobi/f$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/integralads/avid/library/inmobi/f$b;-><init>(Lcom/integralads/avid/library/inmobi/f$1;)V

    sput-object v0, Lcom/integralads/avid/library/inmobi/f;->b:Lcom/integralads/avid/library/inmobi/f$b;

    .line 79
    sget-object v0, Lcom/integralads/avid/library/inmobi/f;->b:Lcom/integralads/avid/library/inmobi/f$b;

    sget-object v1, Lcom/integralads/avid/library/inmobi/f;->j:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/integralads/avid/library/inmobi/f$b;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 81
    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    .prologue
    .line 84
    sget-object v0, Lcom/integralads/avid/library/inmobi/f;->b:Lcom/integralads/avid/library/inmobi/f$b;

    if-eqz v0, :cond_0

    .line 85
    sget-object v0, Lcom/integralads/avid/library/inmobi/f;->b:Lcom/integralads/avid/library/inmobi/f$b;

    sget-object v1, Lcom/integralads/avid/library/inmobi/f;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/integralads/avid/library/inmobi/f$b;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 86
    const/4 v0, 0x0

    sput-object v0, Lcom/integralads/avid/library/inmobi/f;->b:Lcom/integralads/avid/library/inmobi/f$b;

    .line 88
    :cond_0
    return-void
.end method

.method private i()V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/integralads/avid/library/inmobi/f;->j()V

    .line 157
    invoke-direct {p0}, Lcom/integralads/avid/library/inmobi/f;->l()V

    .line 158
    invoke-direct {p0}, Lcom/integralads/avid/library/inmobi/f;->k()V

    .line 159
    return-void
.end method

.method private j()V
    .locals 2

    .prologue
    .line 162
    const/4 v0, 0x0

    iput v0, p0, Lcom/integralads/avid/library/inmobi/f;->d:I

    .line 163
    invoke-static {}, Lcom/integralads/avid/library/inmobi/f/d;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/integralads/avid/library/inmobi/f;->h:J

    .line 164
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/f;->e:Lcom/integralads/avid/library/inmobi/f/b;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/f/b;->c()V

    .line 165
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/f;->f:Lcom/integralads/avid/library/inmobi/f/c;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/f/c;->a()V

    .line 166
    return-void
.end method

.method private k()V
    .locals 4

    .prologue
    .line 169
    invoke-static {}, Lcom/integralads/avid/library/inmobi/f/d;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/integralads/avid/library/inmobi/f;->i:J

    .line 170
    iget-wide v0, p0, Lcom/integralads/avid/library/inmobi/f;->i:J

    iget-wide v2, p0, Lcom/integralads/avid/library/inmobi/f;->h:J

    sub-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/integralads/avid/library/inmobi/f;->a(J)V

    .line 171
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/f;->g:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 172
    return-void
.end method

.method private l()V
    .locals 3

    .prologue
    .line 175
    invoke-static {}, Lcom/integralads/avid/library/inmobi/e/a;->a()Lcom/integralads/avid/library/inmobi/e/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/e/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    invoke-static {}, Lcom/integralads/avid/library/inmobi/d/b;->a()Lcom/integralads/avid/library/inmobi/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/d/b;->b()Lcom/integralads/avid/library/inmobi/d/e;

    move-result-object v0

    .line 177
    :goto_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/integralads/avid/library/inmobi/f;->e:Lcom/integralads/avid/library/inmobi/f/b;

    invoke-virtual {v2}, Lcom/integralads/avid/library/inmobi/f/b;->b()Lorg/json/JSONObject;

    move-result-object v2

    invoke-direct {p0, v1, v0, v2}, Lcom/integralads/avid/library/inmobi/f;->a(Landroid/view/View;Lcom/integralads/avid/library/inmobi/d/e;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/integralads/avid/library/inmobi/f;->e:Lcom/integralads/avid/library/inmobi/f/b;

    invoke-virtual {v1}, Lcom/integralads/avid/library/inmobi/f/b;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    iget-object v1, p0, Lcom/integralads/avid/library/inmobi/f;->e:Lcom/integralads/avid/library/inmobi/f/b;

    invoke-virtual {v1, v0}, Lcom/integralads/avid/library/inmobi/f/b;->a(Lorg/json/JSONObject;)V

    .line 180
    invoke-direct {p0, v0}, Lcom/integralads/avid/library/inmobi/f;->a(Lorg/json/JSONObject;)V

    .line 182
    :cond_0
    return-void

    .line 176
    :cond_1
    invoke-static {}, Lcom/integralads/avid/library/inmobi/d/b;->a()Lcom/integralads/avid/library/inmobi/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/d/b;->d()Lcom/integralads/avid/library/inmobi/d/e;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public b()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/integralads/avid/library/inmobi/f;->i()V

    .line 62
    invoke-direct {p0}, Lcom/integralads/avid/library/inmobi/f;->g()V

    .line 63
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/integralads/avid/library/inmobi/f;->d()V

    .line 67
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/f;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 68
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/f;->e:Lcom/integralads/avid/library/inmobi/f/b;

    invoke-virtual {v0}, Lcom/integralads/avid/library/inmobi/f/b;->d()V

    .line 69
    iget-object v0, p0, Lcom/integralads/avid/library/inmobi/f;->g:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 70
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/integralads/avid/library/inmobi/f;->h()V

    .line 74
    return-void
.end method
