.class Lcom/inmobi/ads/ar$a;
.super Lcom/inmobi/ads/NativeStrandAssetStyle;
.source "NativeV2TextAsset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/ar$a$a;,
        Lcom/inmobi/ads/ar$a$b;
    }
.end annotation


# instance fields
.field protected g:I

.field protected h:Ljava/lang/String;

.field protected i:I

.field protected j:[Lcom/inmobi/ads/ar$a$b;

.field private k:Lcom/inmobi/ads/ar$a$a;


# direct methods
.method public constructor <init>(IIIILcom/inmobi/ads/NativeStrandAssetStyle$b;Lcom/inmobi/ads/NativeStrandAssetStyle$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p5    # Lcom/inmobi/ads/NativeStrandAssetStyle$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/inmobi/ads/NativeStrandAssetStyle$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 76
    const/16 v9, 0xc

    sget-object v10, Lcom/inmobi/ads/ar$a$a;->a:Lcom/inmobi/ads/ar$a$a;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v10}, Lcom/inmobi/ads/ar$a;-><init>(IIIILcom/inmobi/ads/NativeStrandAssetStyle$b;Lcom/inmobi/ads/NativeStrandAssetStyle$a;Ljava/lang/String;Ljava/lang/String;ILcom/inmobi/ads/ar$a$a;)V

    .line 77
    return-void
.end method

.method public constructor <init>(IIIILcom/inmobi/ads/NativeStrandAssetStyle$b;Lcom/inmobi/ads/NativeStrandAssetStyle$a;Ljava/lang/String;Ljava/lang/String;ILcom/inmobi/ads/ar$a$a;)V
    .locals 12
    .param p5    # Lcom/inmobi/ads/NativeStrandAssetStyle$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/inmobi/ads/NativeStrandAssetStyle$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 85
    const-string v11, "#ff000000"

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v11}, Lcom/inmobi/ads/ar$a;-><init>(IIIILcom/inmobi/ads/NativeStrandAssetStyle$b;Lcom/inmobi/ads/NativeStrandAssetStyle$a;Ljava/lang/String;Ljava/lang/String;ILcom/inmobi/ads/ar$a$a;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public constructor <init>(IIIILcom/inmobi/ads/NativeStrandAssetStyle$b;Lcom/inmobi/ads/NativeStrandAssetStyle$a;Ljava/lang/String;Ljava/lang/String;ILcom/inmobi/ads/ar$a$a;ILjava/lang/String;[Lcom/inmobi/ads/ar$a$b;)V
    .locals 5
    .param p5    # Lcom/inmobi/ads/NativeStrandAssetStyle$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/inmobi/ads/NativeStrandAssetStyle$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p12    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 115
    invoke-direct/range {p0 .. p8}, Lcom/inmobi/ads/NativeStrandAssetStyle;-><init>(IIIILcom/inmobi/ads/NativeStrandAssetStyle$b;Lcom/inmobi/ads/NativeStrandAssetStyle$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    iput p9, p0, Lcom/inmobi/ads/ar$a;->g:I

    .line 117
    invoke-virtual/range {p12 .. p12}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const-string p12, "#ff000000"

    :cond_0
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/inmobi/ads/ar$a;->h:Ljava/lang/String;

    .line 118
    move/from16 v0, p11

    iput v0, p0, Lcom/inmobi/ads/ar$a;->i:I

    .line 119
    move-object/from16 v0, p13

    array-length v1, v0

    const/4 v2, 0x4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 120
    new-array v2, v1, [Lcom/inmobi/ads/ar$a$b;

    iput-object v2, p0, Lcom/inmobi/ads/ar$a;->j:[Lcom/inmobi/ads/ar$a$b;

    .line 121
    iput-object p10, p0, Lcom/inmobi/ads/ar$a;->k:Lcom/inmobi/ads/ar$a$a;

    .line 122
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/inmobi/ads/ar$a;->j:[Lcom/inmobi/ads/ar$a$b;

    const/4 v4, 0x0

    move-object/from16 v0, p13

    invoke-static {v0, v2, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 123
    return-void
.end method

.method public constructor <init>(IIIILcom/inmobi/ads/NativeStrandAssetStyle$b;Lcom/inmobi/ads/NativeStrandAssetStyle$a;Ljava/lang/String;Ljava/lang/String;ILcom/inmobi/ads/ar$a$a;Ljava/lang/String;)V
    .locals 13
    .param p5    # Lcom/inmobi/ads/NativeStrandAssetStyle$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/inmobi/ads/NativeStrandAssetStyle$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 94
    const/4 v0, 0x1

    new-array v12, v0, [Lcom/inmobi/ads/ar$a$b;

    const/4 v0, 0x0

    sget-object v1, Lcom/inmobi/ads/ar$a$b;->a:Lcom/inmobi/ads/ar$a$b;

    aput-object v1, v12, v0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-direct/range {v0 .. v12}, Lcom/inmobi/ads/ar$a;-><init>(IIIILcom/inmobi/ads/NativeStrandAssetStyle$b;Lcom/inmobi/ads/NativeStrandAssetStyle$a;Ljava/lang/String;Ljava/lang/String;ILcom/inmobi/ads/ar$a$a;Ljava/lang/String;[Lcom/inmobi/ads/ar$a$b;)V

    .line 96
    return-void
.end method

.method public constructor <init>(IIIILcom/inmobi/ads/NativeStrandAssetStyle$b;Lcom/inmobi/ads/NativeStrandAssetStyle$a;Ljava/lang/String;Ljava/lang/String;ILcom/inmobi/ads/ar$a$a;Ljava/lang/String;[Lcom/inmobi/ads/ar$a$b;)V
    .locals 14
    .param p5    # Lcom/inmobi/ads/NativeStrandAssetStyle$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/inmobi/ads/NativeStrandAssetStyle$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 104
    const v11, 0x7fffffff

    move-object v0, p0

    move v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lcom/inmobi/ads/ar$a;-><init>(IIIILcom/inmobi/ads/NativeStrandAssetStyle$b;Lcom/inmobi/ads/NativeStrandAssetStyle$a;Ljava/lang/String;Ljava/lang/String;ILcom/inmobi/ads/ar$a$a;ILjava/lang/String;[Lcom/inmobi/ads/ar$a$b;)V

    .line 106
    return-void
.end method


# virtual methods
.method public g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/inmobi/ads/ar$a;->f:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 126
    iget v0, p0, Lcom/inmobi/ads/ar$a;->g:I

    return v0
.end method

.method public j()Ljava/lang/String;
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/inmobi/ads/ar$a;->h:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()[Lcom/inmobi/ads/ar$a$b;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/inmobi/ads/ar$a;->j:[Lcom/inmobi/ads/ar$a$b;

    return-object v0
.end method

.method public l()Lcom/inmobi/ads/ar$a$a;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/inmobi/ads/ar$a;->k:Lcom/inmobi/ads/ar$a$a;

    return-object v0
.end method
