.class public Lcom/inmobi/ads/NativeStrandAssetStyle;
.super Ljava/lang/Object;
.source "NativeStrandAssetStyle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;,
        Lcom/inmobi/ads/NativeStrandAssetStyle$a;,
        Lcom/inmobi/ads/NativeStrandAssetStyle$b;
    }
.end annotation


# instance fields
.field protected a:Lcom/inmobi/ads/NativeStrandAssetStyle$b;

.field protected b:Lcom/inmobi/ads/NativeStrandAssetStyle$a;

.field protected c:Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;

.field protected d:F

.field protected e:Ljava/lang/String;

.field protected f:Ljava/lang/String;

.field private g:Landroid/graphics/Point;

.field private h:Landroid/graphics/Point;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/inmobi/ads/NativeStrandAssetStyle;->g:Landroid/graphics/Point;

    .line 96
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/inmobi/ads/NativeStrandAssetStyle;->h:Landroid/graphics/Point;

    .line 97
    sget-object v0, Lcom/inmobi/ads/NativeStrandAssetStyle$b;->a:Lcom/inmobi/ads/NativeStrandAssetStyle$b;

    iput-object v0, p0, Lcom/inmobi/ads/NativeStrandAssetStyle;->a:Lcom/inmobi/ads/NativeStrandAssetStyle$b;

    .line 98
    sget-object v0, Lcom/inmobi/ads/NativeStrandAssetStyle$a;->b:Lcom/inmobi/ads/NativeStrandAssetStyle$a;

    iput-object v0, p0, Lcom/inmobi/ads/NativeStrandAssetStyle;->b:Lcom/inmobi/ads/NativeStrandAssetStyle$a;

    .line 99
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/inmobi/ads/NativeStrandAssetStyle;->d:F

    .line 100
    const-string v0, "#ff000000"

    iput-object v0, p0, Lcom/inmobi/ads/NativeStrandAssetStyle;->e:Ljava/lang/String;

    .line 101
    const-string v0, "#00000000"

    iput-object v0, p0, Lcom/inmobi/ads/NativeStrandAssetStyle;->f:Ljava/lang/String;

    .line 102
    sget-object v0, Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;->CONTENT_MODE_FILL:Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;

    iput-object v0, p0, Lcom/inmobi/ads/NativeStrandAssetStyle;->c:Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;

    .line 103
    return-void
.end method

.method public constructor <init>(IIIILcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;Lcom/inmobi/ads/NativeStrandAssetStyle$b;Lcom/inmobi/ads/NativeStrandAssetStyle$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p6    # Lcom/inmobi/ads/NativeStrandAssetStyle$b;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p7    # Lcom/inmobi/ads/NativeStrandAssetStyle$a;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p8    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p9    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p3, p4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/inmobi/ads/NativeStrandAssetStyle;->g:Landroid/graphics/Point;

    .line 123
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0, p1, p2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/inmobi/ads/NativeStrandAssetStyle;->h:Landroid/graphics/Point;

    .line 124
    iput-object p6, p0, Lcom/inmobi/ads/NativeStrandAssetStyle;->a:Lcom/inmobi/ads/NativeStrandAssetStyle$b;

    .line 125
    iput-object p7, p0, Lcom/inmobi/ads/NativeStrandAssetStyle;->b:Lcom/inmobi/ads/NativeStrandAssetStyle$a;

    .line 126
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/inmobi/ads/NativeStrandAssetStyle;->d:F

    .line 127
    iput-object p5, p0, Lcom/inmobi/ads/NativeStrandAssetStyle;->c:Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;

    .line 128
    invoke-virtual {p8}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string p8, "#ff000000"

    :cond_0
    iput-object p8, p0, Lcom/inmobi/ads/NativeStrandAssetStyle;->e:Ljava/lang/String;

    .line 129
    invoke-virtual {p9}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    const-string p9, "#00000000"

    :cond_1
    iput-object p9, p0, Lcom/inmobi/ads/NativeStrandAssetStyle;->f:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public constructor <init>(IIIILcom/inmobi/ads/NativeStrandAssetStyle$b;Lcom/inmobi/ads/NativeStrandAssetStyle$a;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
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
    .line 110
    sget-object v5, Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;->CONTENT_MODE_FILL:Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Lcom/inmobi/ads/NativeStrandAssetStyle;-><init>(IIIILcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;Lcom/inmobi/ads/NativeStrandAssetStyle$b;Lcom/inmobi/ads/NativeStrandAssetStyle$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandAssetStyle;->g:Landroid/graphics/Point;

    return-object v0
.end method

.method public b()Landroid/graphics/Point;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandAssetStyle;->h:Landroid/graphics/Point;

    return-object v0
.end method

.method public c()Lcom/inmobi/ads/NativeStrandAssetStyle$b;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandAssetStyle;->a:Lcom/inmobi/ads/NativeStrandAssetStyle$b;

    return-object v0
.end method

.method public d()Lcom/inmobi/ads/NativeStrandAssetStyle$a;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandAssetStyle;->b:Lcom/inmobi/ads/NativeStrandAssetStyle$a;

    return-object v0
.end method

.method public e()F
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/inmobi/ads/NativeStrandAssetStyle;->d:F

    return v0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandAssetStyle;->e:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandAssetStyle;->f:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Lcom/inmobi/ads/NativeStrandAssetStyle;->c:Lcom/inmobi/ads/NativeStrandAssetStyle$ContentMode;

    return-object v0
.end method
