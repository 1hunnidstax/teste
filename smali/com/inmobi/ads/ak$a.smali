.class Lcom/inmobi/ads/ak$a;
.super Lcom/inmobi/ads/ar$a;
.source "NativeV2CtaAsset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inmobi/ads/ak;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(IIIILcom/inmobi/ads/NativeStrandAssetStyle$b;Lcom/inmobi/ads/NativeStrandAssetStyle$a;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[Lcom/inmobi/ads/ar$a$b;)V
    .locals 3
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
    const/4 v2, 0x0

    .line 50
    invoke-direct/range {p0 .. p8}, Lcom/inmobi/ads/ar$a;-><init>(IIIILcom/inmobi/ads/NativeStrandAssetStyle$b;Lcom/inmobi/ads/NativeStrandAssetStyle$a;Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iput p9, p0, Lcom/inmobi/ads/ak$a;->g:I

    .line 52
    const v0, 0x7fffffff

    iput v0, p0, Lcom/inmobi/ads/ak$a;->i:I

    .line 53
    invoke-virtual {p10}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string p10, "#ff000000"

    :cond_0
    iput-object p10, p0, Lcom/inmobi/ads/ak$a;->h:Ljava/lang/String;

    .line 54
    array-length v0, p11

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 55
    new-array v1, v0, [Lcom/inmobi/ads/ar$a$b;

    iput-object v1, p0, Lcom/inmobi/ads/ak$a;->j:[Lcom/inmobi/ads/ar$a$b;

    .line 56
    iget-object v1, p0, Lcom/inmobi/ads/ak$a;->j:[Lcom/inmobi/ads/ar$a$b;

    invoke-static {p11, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 57
    return-void
.end method
