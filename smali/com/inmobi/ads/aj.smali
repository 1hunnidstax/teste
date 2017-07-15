.class public Lcom/inmobi/ads/aj;
.super Lcom/inmobi/ads/NativeV2Asset;
.source "NativeV2ContainerAsset.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inmobi/ads/aj$b;,
        Lcom/inmobi/ads/aj$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/inmobi/ads/NativeV2Asset;",
        "Ljava/lang/Iterable",
        "<",
        "Lcom/inmobi/ads/NativeV2Asset;",
        ">;"
    }
.end annotation


# instance fields
.field private A:I

.field private x:J

.field private y:Lcom/inmobi/ads/aj$a;

.field private z:[Lcom/inmobi/ads/NativeV2Asset;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeStrandAssetStyle;Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;Lorg/json/JSONObject;Lcom/inmobi/ads/aj$a;)V
    .locals 8

    .prologue
    .line 64
    const/4 v0, 0x0

    new-array v4, v0, [Lcom/inmobi/ads/ah;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/inmobi/ads/aj;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeStrandAssetStyle;[Lcom/inmobi/ads/ah;Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;Lorg/json/JSONObject;Lcom/inmobi/ads/aj$a;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeStrandAssetStyle;[Lcom/inmobi/ads/ah;Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;Lorg/json/JSONObject;Lcom/inmobi/ads/aj$a;)V
    .locals 6

    .prologue
    .line 74
    sget-object v3, Lcom/inmobi/ads/NativeV2Asset$AssetType;->ASSET_TYPE_CONTAINER:Lcom/inmobi/ads/NativeV2Asset$AssetType;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/inmobi/ads/NativeV2Asset;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/inmobi/ads/NativeV2Asset$AssetType;Lcom/inmobi/ads/NativeStrandAssetStyle;[Lcom/inmobi/ads/ah;)V

    .line 16
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/inmobi/ads/aj;->x:J

    .line 75
    iput-object p6, p0, Lcom/inmobi/ads/aj;->f:Lorg/json/JSONObject;

    .line 76
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/inmobi/ads/NativeV2Asset;

    iput-object v0, p0, Lcom/inmobi/ads/aj;->z:[Lcom/inmobi/ads/NativeV2Asset;

    .line 77
    iput-object p5, p0, Lcom/inmobi/ads/aj;->i:Lcom/inmobi/ads/NativeV2Asset$AssetInteractionMode;

    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/inmobi/ads/aj;->A:I

    .line 79
    iput-object p7, p0, Lcom/inmobi/ads/aj;->y:Lcom/inmobi/ads/aj$a;

    .line 80
    return-void
.end method

.method static synthetic a(Lcom/inmobi/ads/aj;)I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/inmobi/ads/aj;->A:I

    return v0
.end method

.method static synthetic b(Lcom/inmobi/ads/aj;)[Lcom/inmobi/ads/NativeV2Asset;
    .locals 1

    .prologue
    .line 13
    iget-object v0, p0, Lcom/inmobi/ads/aj;->z:[Lcom/inmobi/ads/NativeV2Asset;

    return-object v0
.end method

.method private c(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 112
    new-array v0, p1, [Lcom/inmobi/ads/NativeV2Asset;

    .line 113
    iget-object v1, p0, Lcom/inmobi/ads/aj;->z:[Lcom/inmobi/ads/NativeV2Asset;

    iget v2, p0, Lcom/inmobi/ads/aj;->A:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 114
    iput-object v0, p0, Lcom/inmobi/ads/aj;->z:[Lcom/inmobi/ads/NativeV2Asset;

    .line 115
    return-void
.end method


# virtual methods
.method public A()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/inmobi/ads/aj;->A:I

    return v0
.end method

.method public B()Z
    .locals 2

    .prologue
    .line 104
    const-string v0, "root"

    iget-object v1, p0, Lcom/inmobi/ads/aj;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public C()Z
    .locals 2

    .prologue
    .line 108
    const-string v0, "card_scrollable"

    iget-object v1, p0, Lcom/inmobi/ads/aj;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public a(J)V
    .locals 1

    .prologue
    .line 33
    iput-wide p1, p0, Lcom/inmobi/ads/aj;->x:J

    .line 34
    return-void
.end method

.method public b(I)Lcom/inmobi/ads/NativeV2Asset;
    .locals 1

    .prologue
    .line 92
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/inmobi/ads/aj;->A()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/aj;->z:[Lcom/inmobi/ads/NativeV2Asset;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(Lcom/inmobi/ads/NativeV2Asset;)Z
    .locals 3

    .prologue
    .line 83
    iget v0, p0, Lcom/inmobi/ads/aj;->A:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_1

    .line 84
    iget v0, p0, Lcom/inmobi/ads/aj;->A:I

    iget-object v1, p0, Lcom/inmobi/ads/aj;->z:[Lcom/inmobi/ads/NativeV2Asset;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/inmobi/ads/aj;->z:[Lcom/inmobi/ads/NativeV2Asset;

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/inmobi/ads/aj;->c(I)V

    .line 85
    :cond_0
    iget-object v0, p0, Lcom/inmobi/ads/aj;->z:[Lcom/inmobi/ads/NativeV2Asset;

    iget v1, p0, Lcom/inmobi/ads/aj;->A:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/inmobi/ads/aj;->A:I

    aput-object p1, v0, v1

    .line 86
    const/4 v0, 0x1

    .line 88
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Lcom/inmobi/ads/NativeV2Asset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 29
    new-instance v0, Lcom/inmobi/ads/aj$b;

    invoke-direct {v0, p0}, Lcom/inmobi/ads/aj$b;-><init>(Lcom/inmobi/ads/aj;)V

    return-object v0
.end method

.method public y()J
    .locals 2

    .prologue
    .line 37
    iget-wide v0, p0, Lcom/inmobi/ads/aj;->x:J

    return-wide v0
.end method

.method public z()Lcom/inmobi/ads/aj$a;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/inmobi/ads/aj;->y:Lcom/inmobi/ads/aj$a;

    return-object v0
.end method
