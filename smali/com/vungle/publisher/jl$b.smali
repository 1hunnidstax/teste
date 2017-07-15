.class abstract Lcom/vungle/publisher/jl$b;
.super Lcom/vungle/publisher/ed$a;
.source "vungle"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/vungle/publisher/jl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Lcom/vungle/publisher/aed;",
        ">",
        "Lcom/vungle/publisher/ed$a",
        "<",
        "Lcom/vungle/publisher/jl;",
        "Lcom/vungle/publisher/aep;",
        "TR;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/vungle/publisher/ed$a;-><init>()V

    return-void
.end method

.method private a(Lcom/vungle/publisher/jl;Landroid/database/Cursor;Z)Lcom/vungle/publisher/jl;
    .locals 2

    .prologue
    .line 126
    invoke-super {p0, p1, p2, p3}, Lcom/vungle/publisher/ed$a;->a(Lcom/vungle/publisher/ed;Landroid/database/Cursor;Z)Lcom/vungle/publisher/ed;

    .line 127
    const-string v0, "event"

    const-class v1, Lcom/vungle/publisher/jl$a;

    invoke-static {p2, v0, v1}, Lcom/vungle/publisher/cb;->a(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vungle/publisher/ji;

    iput-object v0, p1, Lcom/vungle/publisher/jl;->c:Lcom/vungle/publisher/ji;

    .line 128
    return-object p1
.end method


# virtual methods
.method protected final bridge synthetic a(Lcom/vungle/publisher/dl;Landroid/database/Cursor;)Lcom/vungle/publisher/dl;
    .locals 1

    .prologue
    .line 71
    check-cast p1, Lcom/vungle/publisher/jl;

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/vungle/publisher/jl$b;->a(Lcom/vungle/publisher/jl;Landroid/database/Cursor;Z)Lcom/vungle/publisher/jl;

    move-result-object v0

    return-object v0
.end method

.method protected final bridge synthetic a(Lcom/vungle/publisher/ed;Landroid/database/Cursor;Z)Lcom/vungle/publisher/ed;
    .locals 1

    .prologue
    .line 71
    check-cast p1, Lcom/vungle/publisher/jl;

    invoke-direct {p0, p1, p2, p3}, Lcom/vungle/publisher/jl$b;->a(Lcom/vungle/publisher/jl;Landroid/database/Cursor;Z)Lcom/vungle/publisher/jl;

    move-result-object v0

    return-object v0
.end method

.method final synthetic a(Ljava/lang/String;Lcom/vungle/publisher/aeo;)Ljava/util/Map;
    .locals 12

    .prologue
    const/4 v1, 0x0

    .line 71
    check-cast p2, Lcom/vungle/publisher/aep;

    if-eqz p2, :cond_7

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-object v2, Lcom/vungle/publisher/jl$a;->a:Lcom/vungle/publisher/jl$a;

    invoke-virtual {p2}, Lcom/vungle/publisher/aep;->g()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/vungle/publisher/jl$b;->a(Ljava/lang/String;Ljava/util/Map;Lcom/vungle/publisher/ji;Ljava/util/List;)V

    sget-object v2, Lcom/vungle/publisher/jl$a;->b:Lcom/vungle/publisher/jl$a;

    invoke-virtual {p2}, Lcom/vungle/publisher/aep;->h()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/vungle/publisher/jl$b;->a(Ljava/lang/String;Ljava/util/Map;Lcom/vungle/publisher/ji;Ljava/util/List;)V

    invoke-virtual {p2}, Lcom/vungle/publisher/aep;->j()[Lcom/vungle/publisher/acc;

    move-result-object v4

    if-eqz v4, :cond_6

    array-length v2, v4

    if-lez v2, :cond_6

    array-length v5, v4

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_6

    aget-object v6, v4, v3

    iget-object v2, v6, Lcom/vungle/publisher/acc;->a:Ljava/lang/Float;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v7, 0x0

    cmpl-float v7, v2, v7

    if-nez v7, :cond_1

    sget-object v2, Lcom/vungle/publisher/jl$a;->c:Lcom/vungle/publisher/jl$a;

    :goto_1
    if-eqz v2, :cond_0

    iget-object v6, v6, Lcom/vungle/publisher/acc;->b:Ljava/util/List;

    invoke-virtual {p0, p1, v0, v2, v6}, Lcom/vungle/publisher/jl$b;->a(Ljava/lang/String;Ljava/util/Map;Lcom/vungle/publisher/ji;Ljava/util/List;)V

    :cond_0
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto :goto_0

    :cond_1
    float-to-double v8, v2

    const-wide/high16 v10, 0x3fd0000000000000L    # 0.25

    cmpl-double v7, v8, v10

    if-nez v7, :cond_2

    sget-object v2, Lcom/vungle/publisher/jl$a;->d:Lcom/vungle/publisher/jl$a;

    goto :goto_1

    :cond_2
    float-to-double v8, v2

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    cmpl-double v7, v8, v10

    if-nez v7, :cond_3

    sget-object v2, Lcom/vungle/publisher/jl$a;->e:Lcom/vungle/publisher/jl$a;

    goto :goto_1

    :cond_3
    float-to-double v8, v2

    const-wide/high16 v10, 0x3fe8000000000000L    # 0.75

    cmpl-double v7, v8, v10

    if-nez v7, :cond_4

    sget-object v2, Lcom/vungle/publisher/jl$a;->f:Lcom/vungle/publisher/jl$a;

    goto :goto_1

    :cond_4
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v2, v7

    if-nez v7, :cond_5

    sget-object v2, Lcom/vungle/publisher/jl$a;->h:Lcom/vungle/publisher/jl$a;

    goto :goto_1

    :cond_5
    const-string v7, "VungleDatabase"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "invalid play percent: "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Lcom/vungle/log/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    move-object v2, v1

    goto :goto_1

    :cond_6
    sget-object v1, Lcom/vungle/publisher/jl$a;->i:Lcom/vungle/publisher/jl$a;

    invoke-virtual {p2}, Lcom/vungle/publisher/aep;->c()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/vungle/publisher/jl$b;->a(Ljava/lang/String;Ljava/util/Map;Lcom/vungle/publisher/ji;Ljava/util/List;)V

    sget-object v1, Lcom/vungle/publisher/jl$a;->j:Lcom/vungle/publisher/jl$a;

    invoke-virtual {p2}, Lcom/vungle/publisher/aep;->k()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/vungle/publisher/jl$b;->a(Ljava/lang/String;Ljava/util/Map;Lcom/vungle/publisher/ji;Ljava/util/List;)V

    sget-object v1, Lcom/vungle/publisher/jl$a;->l:Lcom/vungle/publisher/jl$a;

    invoke-virtual {p2}, Lcom/vungle/publisher/aep;->e()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/vungle/publisher/jl$b;->a(Ljava/lang/String;Ljava/util/Map;Lcom/vungle/publisher/ji;Ljava/util/List;)V

    sget-object v1, Lcom/vungle/publisher/jl$a;->m:Lcom/vungle/publisher/jl$a;

    invoke-virtual {p2}, Lcom/vungle/publisher/aep;->f()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/vungle/publisher/jl$b;->a(Ljava/lang/String;Ljava/util/Map;Lcom/vungle/publisher/ji;Ljava/util/List;)V

    sget-object v1, Lcom/vungle/publisher/jl$a;->n:Lcom/vungle/publisher/jl$a;

    invoke-virtual {p2}, Lcom/vungle/publisher/aep;->i()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/vungle/publisher/jl$b;->a(Ljava/lang/String;Ljava/util/Map;Lcom/vungle/publisher/ji;Ljava/util/List;)V

    sget-object v1, Lcom/vungle/publisher/jl$a;->o:Lcom/vungle/publisher/jl$a;

    invoke-virtual {p2}, Lcom/vungle/publisher/aep;->l()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/vungle/publisher/jl$b;->a(Ljava/lang/String;Ljava/util/Map;Lcom/vungle/publisher/ji;Ljava/util/List;)V

    sget-object v1, Lcom/vungle/publisher/jl$a;->k:Lcom/vungle/publisher/jl$a;

    invoke-virtual {p2}, Lcom/vungle/publisher/aep;->m()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/vungle/publisher/jl$b;->a(Ljava/lang/String;Ljava/util/Map;Lcom/vungle/publisher/ji;Ljava/util/List;)V

    :goto_2
    return-object v0

    :cond_7
    move-object v0, v1

    goto :goto_2
.end method

.method protected final bridge synthetic a(I)[Lcom/vungle/publisher/dl;
    .locals 1

    .prologue
    .line 71
    new-array v0, p1, [Lcom/vungle/publisher/jl;

    return-object v0
.end method
