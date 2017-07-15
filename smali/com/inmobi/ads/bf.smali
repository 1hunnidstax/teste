.class public Lcom/inmobi/ads/bf;
.super Ljava/lang/Object;
.source "VastBestFitCompanionFinder.java"


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/inmobi/ads/bf;->a:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/inmobi/ads/av;Lcom/inmobi/ads/NativeV2Asset;)Lcom/inmobi/ads/bg;
    .locals 28
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 22
    invoke-virtual/range {p1 .. p1}, Lcom/inmobi/ads/av;->D()Lcom/inmobi/ads/bk;

    move-result-object v2

    .line 23
    invoke-virtual/range {p2 .. p2}, Lcom/inmobi/ads/NativeV2Asset;->b()Lcom/inmobi/ads/NativeStrandAssetStyle;

    move-result-object v3

    invoke-virtual {v3}, Lcom/inmobi/ads/NativeStrandAssetStyle;->a()Landroid/graphics/Point;

    move-result-object v3

    .line 24
    invoke-interface {v2}, Lcom/inmobi/ads/bk;->f()Ljava/util/List;

    move-result-object v2

    .line 26
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->a()Lcom/inmobi/commons/core/utilities/info/c;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inmobi/commons/core/utilities/info/c;->c()F

    move-result v4

    .line 27
    iget v5, v3, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    div-float/2addr v5, v4

    float-to-double v12, v5

    .line 28
    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    div-float/2addr v3, v4

    float-to-double v14, v3

    .line 29
    div-double v16, v14, v12

    .line 30
    mul-double v18, v14, v12

    .line 31
    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    .line 32
    const-wide/16 v6, 0x0

    .line 33
    const/4 v3, 0x0

    .line 35
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_0
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inmobi/ads/bg;

    .line 36
    sget-object v4, Lcom/inmobi/ads/bg$a$a;->b:Lcom/inmobi/ads/bg$a$a;

    .line 37
    invoke-virtual {v2, v4}, Lcom/inmobi/ads/bg;->a(Lcom/inmobi/ads/bg$a$a;)Ljava/util/List;

    move-result-object v4

    .line 38
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 41
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/inmobi/ads/bf;->a:Z

    .line 42
    invoke-virtual {v2}, Lcom/inmobi/ads/bg;->b()I

    move-result v21

    .line 43
    invoke-virtual {v2}, Lcom/inmobi/ads/bg;->a()I

    move-result v22

    .line 45
    move/from16 v0, v22

    int-to-double v4, v0

    move/from16 v0, v21

    int-to-double v8, v0

    div-double/2addr v4, v8

    .line 47
    cmpl-double v4, v16, v4

    if-lez v4, :cond_1

    .line 48
    move/from16 v0, v22

    int-to-double v4, v0

    move/from16 v0, v21

    int-to-double v8, v0

    div-double v8, v12, v8

    mul-double/2addr v4, v8

    move-wide v8, v4

    move-wide v4, v12

    .line 55
    :goto_1
    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v24, v0

    const-wide v26, 0x3fd51eb851eb851fL    # 0.33

    mul-double v26, v26, v4

    cmpg-double v23, v24, v26

    if-ltz v23, :cond_0

    .line 58
    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    const-wide v24, 0x3fd51eb851eb851fL    # 0.33

    mul-double v24, v24, v8

    cmpg-double v22, v22, v24

    if-ltz v22, :cond_0

    .line 62
    mul-double/2addr v8, v4

    .line 63
    const-wide/high16 v22, 0x3fe0000000000000L    # 0.5

    mul-double v22, v22, v18

    cmpg-double v22, v8, v22

    if-lez v22, :cond_0

    .line 67
    cmpl-double v22, v8, v10

    if-lez v22, :cond_2

    .line 70
    move/from16 v0, v21

    int-to-double v6, v0

    div-double v4, v6, v4

    move-wide v6, v8

    :goto_2
    move-object v3, v2

    move-wide v10, v6

    move-wide v6, v4

    .line 80
    goto :goto_0

    .line 52
    :cond_1
    move/from16 v0, v21

    int-to-double v4, v0

    move/from16 v0, v22

    int-to-double v8, v0

    div-double v8, v14, v8

    mul-double/2addr v4, v8

    move-wide v8, v14

    goto :goto_1

    .line 71
    :cond_2
    cmpl-double v8, v8, v10

    if-nez v8, :cond_6

    .line 73
    invoke-static {}, Lcom/inmobi/commons/core/utilities/info/DisplayInfo;->a()Lcom/inmobi/commons/core/utilities/info/c;

    move-result-object v8

    invoke-virtual {v8}, Lcom/inmobi/commons/core/utilities/info/c;->c()F

    move-result v8

    .line 74
    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    div-double v4, v22, v4

    .line 75
    cmpl-double v9, v4, v6

    if-lez v9, :cond_3

    float-to-double v0, v8

    move-wide/from16 v22, v0

    cmpg-double v9, v6, v22

    if-ltz v9, :cond_4

    :cond_3
    float-to-double v0, v8

    move-wide/from16 v22, v0

    cmpl-double v9, v6, v22

    if-lez v9, :cond_6

    cmpg-double v9, v4, v6

    if-gez v9, :cond_6

    float-to-double v8, v8

    cmpl-double v8, v4, v8

    if-lez v8, :cond_6

    :cond_4
    move-wide v6, v10

    .line 77
    goto :goto_2

    .line 82
    :cond_5
    return-object v3

    :cond_6
    move-object v2, v3

    move-wide v4, v6

    move-wide v6, v10

    goto :goto_2
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/inmobi/ads/bf;->a:Z

    return v0
.end method
