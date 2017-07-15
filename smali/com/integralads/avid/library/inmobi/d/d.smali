.class public Lcom/integralads/avid/library/inmobi/d/d;
.super Ljava/lang/Object;
.source "AvidViewProcessor.java"

# interfaces
.implements Lcom/integralads/avid/library/inmobi/d/e;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Landroid/view/View;Ljava/util/List;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;)I"
        }
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 59
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_0

    .line 72
    :goto_0
    return v1

    .line 62
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getZ()F

    move-result v4

    .line 63
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    .line 64
    const/4 v2, 0x0

    .line 65
    add-int/lit8 v0, v5, -0x1

    move v3, v0

    :goto_1
    if-ltz v3, :cond_3

    .line 66
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 67
    invoke-virtual {v0}, Landroid/view/View;->getZ()F

    move-result v0

    cmpl-float v0, v4, v0

    if-ltz v0, :cond_2

    .line 68
    add-int/lit8 v0, v3, 0x1

    .line 72
    :goto_2
    if-ne v0, v5, :cond_1

    move v0, v1

    :cond_1
    move v1, v0

    goto :goto_0

    .line 65
    :cond_2
    add-int/lit8 v0, v3, -0x1

    move v3, v0

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method private a(Landroid/view/ViewGroup;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 44
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_2

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 46
    invoke-virtual {p0, v3}, Lcom/integralads/avid/library/inmobi/d/d;->d(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 47
    invoke-direct {p0, v3, v1}, Lcom/integralads/avid/library/inmobi/d/d;->a(Landroid/view/View;Ljava/util/List;)I

    move-result v4

    .line 48
    if-gez v4, :cond_1

    .line 49
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {v1, v4, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 55
    :cond_2
    return-object v1
.end method


# virtual methods
.method public a(Landroid/view/View;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 21
    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 22
    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 23
    const/4 v3, 0x0

    aget v3, v2, v3

    const/4 v4, 0x1

    aget v2, v2, v4

    invoke-static {v3, v2, v0, v1}, Lcom/integralads/avid/library/inmobi/f/d;->a(IIII)Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/view/View;Lorg/json/JSONObject;)V
    .locals 0

    .prologue
    .line 39
    return-void
.end method

.method public b(Landroid/view/View;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/view/ViewGroup;

    invoke-direct {p0, p1}, Lcom/integralads/avid/library/inmobi/d/d;->a(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0
.end method

.method public c(Landroid/view/View;)Lcom/integralads/avid/library/inmobi/d/e;
    .locals 0

    .prologue
    .line 33
    return-object p0
.end method

.method d(Landroid/view/View;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 77
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    .line 83
    :cond_0
    :goto_0
    return v0

    .line 80
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    .line 81
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    move-result v2

    float-to-double v2, v2

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-gtz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method
